trigger CaseTrigger on Case (before insert) {
    CaseTriggerHandler.handleBeforeInsert(Trigger.new);
}