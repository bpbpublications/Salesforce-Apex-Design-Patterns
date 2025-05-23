// Concrete PayPal Payment Processor
public class PayPalPaymentProcessor implements PaymentProcessor {
    public void processPayment() {
        System.debug('Processing PayPal payment...');
    }
}