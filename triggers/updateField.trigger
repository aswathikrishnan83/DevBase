trigger updateField on Survey__c (before insert,before delete,before update,after Insert,after Update,after delete) {
    System.debug('hreeew');
    if(Trigger.isBefore)
    {
        system.debug('survey----');
        surverHelper.updatePhone(Trigger.new);
    }
  

}