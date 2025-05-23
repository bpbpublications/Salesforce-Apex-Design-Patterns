// Handler Interface
public interface ApprovalHandler {
    void handleApproval(Order order);
    void setNextHandler(ApprovalHandler nextHandler);
}
