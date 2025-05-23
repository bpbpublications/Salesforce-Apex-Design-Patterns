// Define the Concrete Iterator implementation for iterating over a list of invoice records
public class InvoiceListIterator implements InvoiceIterator {
    private List<Invoice> invoices;
    private Integer position;

    public InvoiceListIterator(List<Invoice> invoices) {
        this.invoices = invoices;
        this.position = 0;
    }

    public Boolean hasNext() {
        return position < invoices.size();
    }

    public Invoice next() {
        if (hasNext()) {
            Invoice invoice = invoices[position];
            position++;
            return invoice;
        }
        return null;
    }
}