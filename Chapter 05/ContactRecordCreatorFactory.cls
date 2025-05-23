// Factory for creating ContactRecordCreators
public class ContactRecordCreatorFactory implements RecordCreatorFactory {
    public RecordCreator createRecordCreator() {
        return new ContactRecordCreator();
    }
}