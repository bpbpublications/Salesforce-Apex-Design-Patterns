// Concrete Observer class - SMS notification
public class SmsNotification implements OrderObserver {
    public void notifyNewOrder(Order order) {
        // Send SMS notification for the new order
        System.debug('SMS notification sent for new order: ' + order.getOrderNumber());
    }
}