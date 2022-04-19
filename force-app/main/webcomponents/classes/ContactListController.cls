public with sharing class ContactListController {
    @AuraEnabled
    public static List<Account> getContact(String accountId){
        return [SELECT Id,Name,Website,Account__c FROM Contact WHERE Account__c = :accountId];
    }
}