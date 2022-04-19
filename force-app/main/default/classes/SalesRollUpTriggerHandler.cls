public with sharing class AccountAuditTriggerHandler {
    

    // After Insert
    public void OnAfterInsert(List<Sales> newRecordList) {
        Set<Account> setAccountIds = new Set<Account>();

        for(Sales s:newRecordList){
            setAccountIds.add(s.Account);
        }

        Map<Id,Account> mapAccountIdvsAccount = new Map<Id,Account> ([SELECT Id, Total_Sales_Standard_Wood__c,Total_Sales_Recycled_Wood__c FROM Account WHERE Id in :setAccountIds]);

        for(Sales s : newRecordList){
            if(mapAccountIdvsAccount.get(s.AccountId)){
                Account a = mapAccountIdvsAccount.get(s.AccountId);
                if(s.SalesType = 'Standard'){
                    a.Total_Sales_Standard_Wood__c = a.Total_Sales_Standard_Wood__c + s.Total;
                }
                if(s.SalesType = 'Recycled'){
                    a.Total_Sales_Recycled_Wood__c = a.Total_Sales_Recycled_Wood__c + s.Total;
                }
            }
        }

        update mapAccountIdvsAccount.values();

    }
}