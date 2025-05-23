public class OrderFacade {
    public static void placeOrder(OrderDetails orderDetails) {
        InventoryManager.checkAvailability(orderDetails);
        BillingSystem.processPayment(orderDetails);
        ShippingManager.shipOrder(orderDetails);
    }
}