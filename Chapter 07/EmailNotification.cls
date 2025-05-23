// Concrete Observer class - Email notification
public class EmailNotification implements OrderObserver {
    public void notifyNewOrder(Order order) {
        // Send email notification for the new order
        System.debug('Email notification sent for new order: ' + order.getOrderNumber());
    }
}