// Define the Concrete Aggregate implementation representing a list of invoice records
public class InvoiceList implements InvoiceAggregate {
    private List<Invoice> invoices;

    public InvoiceList() {
        invoices = new List<Invoice>();
    }

    public void addInvoice(Invoice invoice) {
        invoices.add(invoice);
    }

    public InvoiceIterator createIterator() {
        return new InvoiceListIterator(invoices);
    }
}