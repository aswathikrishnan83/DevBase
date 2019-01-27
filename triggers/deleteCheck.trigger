trigger deleteCheck on Account (before delete) {
    if(Trigger.isBefore)
    {
        system.debug('hereeacc---');
        acctHelper.checkContact(Trigger.old);
    }

}