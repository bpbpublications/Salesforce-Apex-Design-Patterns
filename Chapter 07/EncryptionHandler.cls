public class EncryptionHandler implements MessageHandler {
    private MessageHandler nextHandler;

    public void handleMessage(Message message) {
        // Encrypt the message content
        // Pass the encrypted message to the next handler
        if (nextHandler != null) {
            nextHandler.handleMessage(encryptedMessage);
        }
    }

    public void setNextHandler(MessageHandler nextHandler) {
        this.nextHandler = nextHandler;
    }
}