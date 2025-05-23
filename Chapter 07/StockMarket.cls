// Subject class
public class StockMarket {
    private Map<String, Decimal> prices = new Map<String, Decimal>();
    private List<StockObserver> observers = new List<StockObserver>();

    public void registerObserver(StockObserver observer) {
        observers.add(observer);
    }

    public void removeObserver(StockObserver observer) {
        observers.remove(observer);
    }

    public void setPrice(String stockName, Decimal price) {
        prices.put(stockName, price);
        notifyObservers(stockName, price);
    }

    private void notifyObservers(String stockName, Decimal price) {
        for (StockObserver observer : observers) {
            observer.update(stockName, price);
        }
    }
}