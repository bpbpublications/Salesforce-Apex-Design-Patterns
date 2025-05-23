public interface LoggerHandler {
    void logMessage(LogMessage message);
    void setNextHandler(LoggerHandler nextHandler);
}