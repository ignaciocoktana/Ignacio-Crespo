trigger SalesRollUpTrigger on Sales (after insert) {
    SalesRollUpTriggerHandler handler = new SalesRollUpTriggerHandler();
    if(Trigger.isInsert && Trigger.isAfter)  handler.OnAfterInsert(Trigger.new);
}