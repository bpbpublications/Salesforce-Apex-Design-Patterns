// Factory for creating AccountRecordCreators
public class AccountRecordCreatorFactory implements RecordCreatorFactory {
    public RecordCreator createRecordCreator() {
        return new AccountRecordCreator();
    }
}