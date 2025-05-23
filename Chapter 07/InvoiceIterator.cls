// Define the Iterator interface for iterating over invoice records
public interface InvoiceIterator {
    Boolean hasNext();
    Invoice next();
}