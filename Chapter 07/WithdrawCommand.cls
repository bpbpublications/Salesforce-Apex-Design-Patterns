public class WithdrawCommand implements TransactionCommand {
    private Account account;
    private Decimal amount;

    public WithdrawCommand(Account account, Decimal amount) {
        this.account = account;
        this.amount = amount;
    }

    public void execute() {
        account.withdraw(amount);
    }
}