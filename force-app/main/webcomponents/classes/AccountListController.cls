public with sharing class AccountListController {
    @AuraEnabled
    public static List<Account> getAccounts(){
        return [SELECT Id,Name,Website FROM Accounts ORDER BY Name];
    }
}