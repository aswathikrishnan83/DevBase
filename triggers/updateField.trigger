trigger updateField on Surveyx__c (before insert,before delete,before update,after Insert,after Update,after delete) {
    if(Trigger.isAfter)
    {
        //surverHelper.updatePhone(Trigger.new);
    }
  

}