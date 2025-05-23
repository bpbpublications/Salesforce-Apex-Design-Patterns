// Separate class for calculating order total
public class OrderTotalCalculator {
    
    public Decimal calculateOrderTotal(List<Order> orders) {
        Decimal totalAmount = 0;
        for(Order ord : orders) {
            totalAmount += ord.Amount__c;
        }
        return totalAmount;
    }
    
}