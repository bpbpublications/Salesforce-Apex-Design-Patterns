public abstract class NotificationDecorator implements NotificationSender {
    protected NotificationSender notificationSender;

    public NotificationDecorator(NotificationSender notificationSender) {
        this.notificationSender = notificationSender;
    }

    public void sendNotification(String recipient, String message) {
        notificationSender.sendNotification(recipient, message);
    }
}