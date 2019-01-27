public class propertyHelper {
    
    public static void updateStatus(List<Property__c>propList)
    {
        set<Id>propertyId=new set<Id>();
        for(Property__c p:propList)
            {
                
                if(p.Status__c=='InActive')
                    {
                      System.debug('Inside here');
                      propertyId.add(p.Id);
                    }
            }
        
        List<Property__c>updatedProperties=[Select Id,Status__c,(Select Status__c From Building_units__r) From Property__c where Id=:propertyId];
        System.debug('size---'+updatedProperties.Size());
        List<Property__c>updatedProps=new List<Property__c>();
        List<Building_units__c>updatedbusinessunits=new List<Building_units__c>();
        for(Property__c p:updatedProperties)
            {
                p.BuildingUnitSize__c=p.Building_units__r.Size();
                updatedProps.add(p);
                System.debug('BU Size'+p.Building_units__r.Size());
                for(Building_units__c b:p.Building_units__r)
                {
                    System.debug('Updating building units--');
                    b.Status__c='InActive';
                    updatedbusinessunits.add(b);
                    
                }
                
            }
        if(updatedbusinessunits.Size()>0)
        {
            propertyvar.firstRun=false;
            update updatedbusinessunits;
        }
        if(updatedProps.Size()>0)
        {
            update updatedProps;
        }
            
        
    }

}