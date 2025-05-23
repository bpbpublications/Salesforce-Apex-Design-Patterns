// Client
public class OrderApprovalProcessor {
    private ApprovalHandler firstHandler;

    public OrderApprovalProcessor(ApprovalHandler firstHandler) {
        this.firstHandler = firstHandler;
    }

    public void processOrder(Order order) {
        firstHandler.handleApproval(order);
    }
}