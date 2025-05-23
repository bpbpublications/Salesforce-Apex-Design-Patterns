// Concrete Credit Card Payment Factory
public class CreditCardPaymentFactory implements PaymentFactory {
    public PaymentProcessor createPaymentProcessor() {
        return new CreditCardPaymentProcessor();
    }

    public PaymentValidator createPaymentValidator() {
        return new CreditCardPaymentValidator();
    }
}