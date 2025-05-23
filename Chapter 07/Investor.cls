// Concrete Observer class
public class Investor implements StockObserver {
    private String name;

    public Investor(String name) {
        this.name = name;
    }

    public void update(String stockName, Decimal price) {
        System.debug(name + ": Price of " + stockName + " is now " + price);
    }
}