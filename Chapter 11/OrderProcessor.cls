// Separate class for processing orders
public class OrderProcessor {
    
    public void processOrder(Order order) {
        DiscountCalculator discountCalculator = new DiscountCalculator();
        Decimal discount = discountCalculator.calculateDiscount(order);
        order.Discount__c = discount;
    }
    
}