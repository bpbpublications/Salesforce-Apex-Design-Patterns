public interface OrderState {
    void process(Order order);
    void cancel(Order order);
    // Additional methods for state-specific behavior
}