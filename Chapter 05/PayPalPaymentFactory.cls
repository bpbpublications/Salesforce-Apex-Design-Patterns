// Concrete PayPal Payment Factory
public class PayPalPaymentFactory implements PaymentFactory {
    public PaymentProcessor createPaymentProcessor() {
        return new PayPalPaymentProcessor();
    }

    public PaymentValidator createPaymentValidator() {
        return new PayPalPaymentValidator();
    }
}