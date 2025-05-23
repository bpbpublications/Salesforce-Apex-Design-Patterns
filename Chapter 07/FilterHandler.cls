public class FilterHandler implements MessageHandler {
    private MessageHandler nextHandler;

    public void handleMessage(Message message) {
        // Filter the message based on predefined criteria
        if (message.containsSensitiveContent()) {
            // Handle sensitive content
        } else if (nextHandler != null) {
            nextHandler.handleMessage(message);
        }
    }

    public void setNextHandler(MessageHandler nextHandler) {
        this.nextHandler = nextHandler;
    }
}