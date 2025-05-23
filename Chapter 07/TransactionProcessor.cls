// Invoker class
public class TransactionProcessor {
    public void processTransaction(TransactionCommand command) {
        command.execute();
    }
}