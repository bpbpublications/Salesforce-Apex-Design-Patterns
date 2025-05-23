// Better approach with default method implementations
public interface Payable {
    void makePayment();
    
    default void trackPayment() {
        // Default implementation for tracking payments
    }
}