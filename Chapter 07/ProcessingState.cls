public class ProcessingState implements OrderState {
    public void process(Order order) {
        // Additional processing logic (e.g., prepare for shipment)
        order.setState(new ShippedState());
    }

    public void cancel(Order order) {
        // Handle cancellation logic
        order.setState(new CancelledState());
    }
}