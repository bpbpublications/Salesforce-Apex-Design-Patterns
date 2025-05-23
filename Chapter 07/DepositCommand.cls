// Concrete command classes
public class DepositCommand implements TransactionCommand {
    private Account account;
    private Decimal amount;

    public DepositCommand(Account account, Decimal amount) {
        this.account = account;
        this.amount = amount;
    }

    public void execute() {
        account.deposit(amount);
    }
}