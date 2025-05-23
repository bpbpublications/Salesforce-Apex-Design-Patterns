public class SObjectPrototypePatternExample {

    public static Custom_Object__c cloneCustomObjectRecord(Custom_Object__c prototypeRecord) {
        // Clone the prototype record
        Custom_Object__c clonedRecord = prototypeRecord.clone(false, true, false, false);
        
        // Optionally modify some fields in the cloned record
        clonedRecord.Name = 'Cloned Record';
        // Modify other fields as needed
        
        return clonedRecord;
    }

    public static void main(String[] args) {
        // Retrieve an existing Custom_Object__c record (the prototype)
        Custom_Object__c prototypeRecord = [SELECT Id, Name, Field1__c, Field2__c FROM Custom_Object__c WHERE Id = 'a0123456789ABCDE'];
        
        // Clone the prototype to create a new record
        Custom_Object__c clonedRecord = cloneCustomObjectRecord(prototypeRecord);
        
        // Insert the cloned record into the database
        insert clonedRecord;
        
        System.debug('Cloned record ID: ' + clonedRecord.Id);
    }
}