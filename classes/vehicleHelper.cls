public class vehicleHelper {
    public static void UpdateCase(List<Vehicle__c>vehicleList)
    {
       set<Id>vehicle_id=new Set<Id>();
            for(Vehicle__c v:vehicleList)
            {
                vehicle_id.add(v.Id);
            }
        List<Vehicle__c>updatedVehicles=new List<Vehicle__c>([Select Name ,(Select Type,Status From Cases__r) From Vehicle__c where Id IN:vehicle_id]);
        List<Case>newCase=new List<Case>(); 
        for(Vehicle__c v:updatedVehicles)
         {
             for(Case c:v.Cases__r)
             {
                 
                     If(c.Status=='Closed')
                     {
                         Case cnew=new Case();
                         cnew.Type='Mechanical';
                         cnew.Origin='Phone';
                         cnew.Vehicle_Name__c=v.Id;
                         newCase.add(cnew);
                     }
             }
         }
         If(newCase.Size()>0)
         {
             Insert newCase;
         }
    }

}