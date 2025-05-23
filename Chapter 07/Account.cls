// Receiver class
public class Account {
    private Decimal balance;

    public Account(Decimal initialBalance) {
        this.balance = initialBalance;
    }

    public void deposit(Decimal amount) {
        balance += amount;
    }

    public void withdraw(Decimal amount) {
        balance -= amount;
    }

    public Decimal getBalance() {
        return balance;
    }
}