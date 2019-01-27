public with sharing class retrieveProperty {
@AuraEnabled
    public static List<Property__c> getProperty() {
        List<Property__c> property =[SELECT Type__c, Name FROM Property__c];

        //Add isAccessible() check
        return property;
    }
    @AuraEnabled
    public static void deleteProperty(String Ids) {
        Delete [Select Id From Property__c where Id=:Ids];
        
    }


}