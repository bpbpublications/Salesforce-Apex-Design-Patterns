// Subject class
public class OrderService {
    private List<OrderObserver> observers = new List<OrderObserver>();

    public void registerObserver(OrderObserver observer) {
        observers.add(observer);
    }

    public void removeObserver(OrderObserver observer) {
        observers.remove(observer);
    }

    public void placeOrder(Order order) {
        // Process the order
        // ...

        // Notify observers of the new order
        notifyObservers(order);
    }

    private void notifyObservers(Order order) {
        for (OrderObserver observer : observers) {
            observer.notifyNewOrder(order);
        }
    }
}