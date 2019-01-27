trigger checkStatus on Property__c (before insert,before delete,After insert,After delete,before update,After update) {
    public static boolean firstRun = true;
    if(Trigger.isAfter)
    {
        System.debug('Inside after');
        if(Trigger.isInsert||Trigger.isUpdate)
        {
            System.debug('Inside Update');
            if(firstRun)
            {
            propertyHelper.updateStatus(Trigger.new);
            }
        }
    }

}