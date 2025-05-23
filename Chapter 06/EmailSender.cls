// ConcreteImplementorA class
public class EmailSender implements NotificationSender {
    public void sendNotification(String recipient, String message) {
        System.debug('Sending email to ' + recipient + ': ' + message);
        // Actual email sending logic here
    }
}