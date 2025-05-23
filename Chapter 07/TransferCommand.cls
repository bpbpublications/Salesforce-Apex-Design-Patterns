public class TransferCommand implements TransactionCommand {
    private Account sourceAccount;
    private Account destinationAccount;
    private Decimal amount;

    public TransferCommand(Account sourceAccount, Account destinationAccount, Decimal amount) {
        this.sourceAccount = sourceAccount;
        this.destinationAccount = destinationAccount;
        this.amount = amount;
    }

    public void execute() {
        sourceAccount.withdraw(amount);
        destinationAccount.deposit(amount);
    }
}