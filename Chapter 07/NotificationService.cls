// Concrete Observer class - Notification service
public class NotificationService implements MessageObserver {
    public void notifyNewMessage(Message message) {
        // Send notification to users
        System.debug('Notification sent for new message: ' + message.getContent());
    }
}