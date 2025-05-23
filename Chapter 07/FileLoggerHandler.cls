public class FileLoggerHandler implements LoggerHandler {
    private LoggerHandler nextHandler;

    public void logMessage(LogMessage message) {
        if (message.getLevel() == LogLevel.DEBUG || message.getLevel() == LogLevel.INFO) {
            // Log the message to a file
        } else if (nextHandler != null) {
            nextHandler.logMessage(message);
        }
    }

    public void setNextHandler(LoggerHandler nextHandler) {
        this.nextHandler = nextHandler;
    }
}