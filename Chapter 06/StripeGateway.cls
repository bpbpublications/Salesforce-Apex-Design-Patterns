// ConcreteImplementorB class
public class StripeGateway implements PaymentGateway {
    public void processPayment(Integer amount) {
        System.debug('Processing payment of $' + amount + ' using Stripe');
        // Actual Stripe payment processing logic here
    }
}