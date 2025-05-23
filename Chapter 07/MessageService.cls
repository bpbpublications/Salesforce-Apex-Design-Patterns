// Subject class
public class MessageService {
    private List<MessageObserver> observers = new List<MessageObserver>();

    public void registerObserver(MessageObserver observer) {
        observers.add(observer);
    }

    public void removeObserver(MessageObserver observer) {
        observers.remove(observer);
    }

    public void receiveMessage(Message message) {
        // Process the received message
        // ...

        // Notify observers of the new message
        notifyObservers(message);
    }

    private void notifyObservers(Message message) {
        for (MessageObserver observer : observers) {
            observer.notifyNewMessage(message);
        }
    }
}