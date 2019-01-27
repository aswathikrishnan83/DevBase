trigger getEmail on survey__c (before insert,before delete,before Update,After insert,After delete,After Update) {
    
            System.debug('new survey created');
            surveyHelper.updateEmail(Trigger.new);
      
    
    
}