// Concrete Handlers
public class JuniorApprover implements ApprovalHandler {
    private Decimal threshold;
    private ApprovalHandler nextHandler;

    public JuniorApprover(Decimal threshold) {
        this.threshold = threshold;
    }

    public void handleApproval(Order order) {
        if (order.getAmount() <= threshold) {
            // Logic to approve the order
        } else if (nextHandler != null) {
            nextHandler.handleApproval(order);
        }
    }

    public void setNextHandler(ApprovalHandler nextHandler) {
        this.nextHandler = nextHandler;
    }
}