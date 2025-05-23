// Separate class for discount calculation
public class DiscountCalculator {
    
    public static final Decimal DISCOUNT_RATE = 0.1;
    
    public Boolean isEligibleForDiscount(Order order) {
        return order.Amount__c >= 1000;
    }
    
    public Decimal calculateDiscount(Order order) {
        if(isEligibleForDiscount(order)) {
            return DISCOUNT_RATE * order.Amount__c;
        }
        return 0;
    }
    
}