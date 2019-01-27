public class surveyHelper {
    public static void updateEmail(List<Survey__c>sList)
    {
        set<Id>contactName=new Set<Id>();
        List<Survey__c>updatedSurvey=new List<Survey__c>();
            for(Survey__c s:sList)
            {
                System.debug('Inside first loop');
                contactName.add(s.ContactEmail__c);
            }
        Map<Id,Contact>cMap=new Map<Id,Contact>([Select Email from Contact where Id IN :contactName]);
        for(Survey__c s:sList)
        {
              String Email=cMap.get(s.ContactEmail__c).Email;
              System.debug('Inside second loop ------');
              System.debug('email is-----'+s.Contact_Email__c);
              s.test__c=Email;
              System.debug('email after update  is-----'+s.test__c);
             
           
              
        }
        
      
        
        //System.debug('size'+updatedSurvey.Size());
        
        
        
        
    }

}