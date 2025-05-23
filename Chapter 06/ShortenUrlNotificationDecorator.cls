public class ShortenUrlNotificationDecorator extends NotificationDecorator {
    public ShortenUrlNotificationDecorator(NotificationSender notificationSender) {
        super(notificationSender);
    }

    public void sendNotification(String recipient, String message) {
        // Shorten URLs in the message
        String shortenedMessage = message.replace('example.com', 'exmpl.com');
        super.sendNotification(recipient, shortenedMessage);
    }
}