// Concrete PayPal Payment Validator
public class PayPalPaymentValidator implements PaymentValidator {
    public Boolean validatePayment() {
        System.debug('Validating PayPal payment...');
        // Validation logic here...
        return true;
    }
}