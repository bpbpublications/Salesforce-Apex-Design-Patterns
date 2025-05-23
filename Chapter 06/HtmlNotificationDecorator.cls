public class HtmlNotificationDecorator extends NotificationDecorator {
    public HtmlNotificationDecorator(NotificationSender notificationSender) {
        super(notificationSender);
    }

    public void sendNotification(String recipient, String message) {
        // Add HTML formatting to the message
        String htmlMessage = "<html><body>" + message + "</body></html>";
        super.sendNotification(recipient, htmlMessage);
    }
}