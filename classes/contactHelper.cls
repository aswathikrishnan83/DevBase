public class contactHelper {
    public static void updateTest(List<Contact>conList)
    {
        Set<Id>conId=new Set<Id>();
        for(Contact c:conList)
        {
            conId.add(c.Id);
        }
        List<Contact>contacts=new List<Contact>([Select Id,test__c from contact where Id In:conId]);
        
        
        List<Contact>updatedContact=new List<Contact>();
        for(Contact c:contacts)
        {
            c.test__c='test';
            System.debug('updated');
            updatedContact.add(c);
            
            
        }
        If(updatedContact.Size()>0)
        {
            update updatedContact;
        }
        
    }

}