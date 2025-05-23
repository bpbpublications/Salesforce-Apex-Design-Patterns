// Example of Trigger and Handler Pattern
trigger AccountTrigger on Account (before insert) {
    // Instantiate handler class and delegate processing
    AccountTriggerHandler handler = new AccountTriggerHandler();
    handler.handleBeforeInsert(Trigger.new);
}