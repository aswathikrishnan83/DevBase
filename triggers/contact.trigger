trigger contact on Contact (before insert,before update,before delete,after Insert,After Update,After delete) {
    if(Trigger.isAfter)
    {
        if(Trigger.IsInsert)
        {
            contactHelper.updateTest(Trigger.new);
        }
    }

}