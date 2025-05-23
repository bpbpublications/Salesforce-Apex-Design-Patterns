// Concrete implementation for creating Account records
public class AccountRecordCreator implements RecordCreator {
    public void createRecord(Map<String, Object> fields) {
        // Logic to create an Account record with the provided fields
        Account newAccount = new Account();
        newAccount.Name = (String)fields.get('Name');
        newAccount.Phone = (String)fields.get('Phone');
        insert newAccount;
    }
}