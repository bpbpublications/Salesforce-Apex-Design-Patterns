// Concrete Credit Card Payment Validator
public class CreditCardPaymentValidator implements PaymentValidator {
    public Boolean validatePayment() {
        System.debug('Validating credit card payment...');
        // Validation logic here...
        return true;
    }
}