// RefinedAbstraction class
public class OnlinePaymentProcessor implements PaymentProcessor {
    private PaymentGateway gateway;

    public OnlinePaymentProcessor(PaymentGateway gateway) {
        this.gateway = gateway;
    }

    public void processPayment(Integer amount) {
        gateway.processPayment(amount);
    }
}