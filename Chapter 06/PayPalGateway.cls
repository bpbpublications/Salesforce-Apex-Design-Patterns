// ConcreteImplementorA class
public class PayPalGateway implements PaymentGateway {
    public void processPayment(Integer amount) {
        System.debug('Processing payment of $' + amount + ' using PayPal');
        // Actual PayPal payment processing logic here
    }
}