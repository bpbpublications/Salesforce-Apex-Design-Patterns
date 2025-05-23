public interface MessageHandler {
    void handleMessage(Message message);
    void setNextHandler(MessageHandler nextHandler);
}