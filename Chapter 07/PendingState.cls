public class PendingState implements OrderState {
    public void process(Order order) {
        // Update inventory, send confirmation email, etc.
        order.setState(new ProcessingState());
    }

    public void cancel(Order order) {
        // Handle cancellation logic
        order.setState(new CancelledState());
    }
}