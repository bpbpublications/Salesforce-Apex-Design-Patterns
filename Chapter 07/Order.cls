public class Order {
    private OrderState state;

    public Order() {
        this.state = new PendingState(); // Initial state is Pending
    }

    public void setState(OrderState state) {
        this.state = state;
    }

    public void process() {
        state.process(this);
    }

    public void cancel() {
        state.cancel(this);
    }
}