// Concrete implementation for creating Contact records
public class ContactRecordCreator implements RecordCreator {
    public void createRecord(Map<String, Object> fields) {
        // Logic to create a Contact record with the provided fields
        Contact newContact = new Contact();
        newContact.FirstName = (String)fields.get('FirstName');
        newContact.LastName = (String)fields.get('LastName');
        newContact.Email = (String)fields.get('Email');
        insert newContact;
    }
}