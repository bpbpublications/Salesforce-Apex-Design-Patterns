public class DatabaseLoggerHandler implements LoggerHandler {
    private LoggerHandler nextHandler;

    public void logMessage(LogMessage message) {
        if (message.getLevel() == LogLevel.WARNING || message.getLevel() == LogLevel.ERROR) {
            // Log the message to a database
        } else if (nextHandler != null) {
            nextHandler.logMessage(message);
        }
    }

    public void setNextHandler(LoggerHandler nextHandler) {
        this.nextHandler = nextHandler;
    }
}