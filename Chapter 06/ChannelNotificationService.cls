// RefinedAbstraction class
public class ChannelNotificationService implements NotificationService {
    private NotificationSender sender;

    public ChannelNotificationService(NotificationSender sender) {
        this.sender = sender;
    }

    public void sendNotification(String recipient, String message) {
        sender.sendNotification(recipient, message);
    }
}