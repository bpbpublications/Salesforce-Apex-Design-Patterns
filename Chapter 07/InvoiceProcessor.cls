// Define the InvoiceProcessor class using the iterator to iterate over invoice records
public class InvoiceProcessor {
    public Decimal calculateTotalAmount(InvoiceAggregate invoiceAggregate) {
        Decimal totalAmount = 0;
        InvoiceIterator iterator = invoiceAggregate.createIterator();
        while (iterator.hasNext()) {
            Invoice invoice = iterator.next();
            totalAmount += invoice.amount;
        }
        return totalAmount;
    }
}