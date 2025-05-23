// Concrete strategies
public class CreditCardPaymentStrategy implements PaymentStrategy {
    public Boolean processPayment(Decimal amount) {
        // Implement credit card payment processing logic
        System.debug('Processing credit card payment for amount: $' + amount);
        // Logic for charging the credit card
        return true; // Payment processed successfully
    }
}