public class PayPalPaymentStrategy implements PaymentStrategy {
    public Boolean processPayment(Decimal amount) {
        // Implement PayPal payment processing logic
        System.debug('Processing PayPal payment for amount: $' + amount);
        // Logic for processing payment via PayPal
        return true; // Payment processed successfully
    }
}