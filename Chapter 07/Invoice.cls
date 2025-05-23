// Define the Invoice class representing an invoice record
public class Invoice {
    public Decimal amount { get; private set; }

    public Invoice(Decimal amount) {
        this.amount = amount;
    }
}