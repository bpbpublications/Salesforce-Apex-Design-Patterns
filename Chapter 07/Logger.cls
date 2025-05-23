public class Logger {
    private LoggerHandler firstHandler;

    public Logger(LoggerHandler firstHandler) {
        this.firstHandler = firstHandler;
    }

    public void log(LogMessage message) {
        firstHandler.logMessage(message);
    }
}