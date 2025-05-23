public class OrderUtility {
    
    // Method to calculate total order amount
    public Decimal calculateOrderTotal(List<Order> orders) {
        Decimal totalAmount = 0;
        for(Order ord : orders) {
            totalAmount += ord.Amount__c;
        }
        return totalAmount;
    }
    
    // Method to check if an order is eligible for discount
    public Boolean isEligibleForDiscount(Order order) {
        return order.Amount__c >= 1000;
    }
    
    // Method to process order and apply discount
    public void processOrder(Order order) {
        if(isEligibleForDiscount(order)) {
            order.Discount__c = 0.1 * order.Amount__c;
        }
    }
    
}