public class MessageProcessor {
    private MessageHandler firstHandler;

    public MessageProcessor(MessageHandler firstHandler) {
        this.firstHandler = firstHandler;
    }

    public void processMessage(Message message) {
        firstHandler.handleMessage(message);
    }
}