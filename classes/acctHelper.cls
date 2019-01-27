public class acctHelper {
    public static void checkContact(List<Account>accList)
    {
        Set<Id>acId=new Set<Id>();
        for(Account a:accList)
        {
            acId.add(a.Id);
            System.debug('id--'+a.Id);
        }
        List<Contact>cList=[Select Id,Name From Contact where AccountId=:acId];
        System.debug('size--'+cList.Size());
        if(cList.Size()>0)
        {
            for(Account a:accList)
            {
                a.addError('cannot delete');
            }
        }
    }

}