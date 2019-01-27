trigger Vehicle on Vehicle__c (before insert ,after Insert,before update, after update,before delete,after delete) {
     If(Trigger.IsUpdate)
    {
        System.debug('After Update');
        If(Trigger.IsAfter)
        {
         System.debug('I am here');
         vehicleHelper.UpdateCase(Trigger.new);
        }
    }

}