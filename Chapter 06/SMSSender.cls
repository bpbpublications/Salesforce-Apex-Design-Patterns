// ConcreteImplementorB class
public class SMSSender implements NotificationSender {
    public void sendNotification(String recipient, String message) {
        System.debug('Sending SMS to ' + recipient + ': ' + message);
        // Actual SMS sending logic here
    }
}