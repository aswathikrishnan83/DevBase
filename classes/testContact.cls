@isTest
public class testContact {
    static testMethod Void checkTest()
    {
        contact c=new Contact();
        c.LastName='tomtest';
        insert c;
        c=[select test__c from Contact where Id=:c.Id];
        System.assertEquals('test',c.test__c);
    }

}