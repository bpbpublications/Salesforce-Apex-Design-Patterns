// Abstract Payment Factory
public interface PaymentFactory {
    PaymentProcessor createPaymentProcessor();
    PaymentValidator createPaymentValidator();
}