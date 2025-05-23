public class BankTransferPaymentStrategy implements PaymentStrategy {
    public Boolean processPayment(Decimal amount) {
        // Implement bank transfer payment processing logic
        System.debug('Processing bank transfer payment for amount: $' + amount);
        // Logic for processing payment via bank transfer
        return true; // Payment processed successfully
    }
}