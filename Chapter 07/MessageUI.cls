// Concrete Observer class - UI component
public class MessageUI implements MessageObserver {
    public void notifyNewMessage(Message message) {
        // Update UI to display the new message
        System.debug('New message received: ' + message.getContent());
    }
}