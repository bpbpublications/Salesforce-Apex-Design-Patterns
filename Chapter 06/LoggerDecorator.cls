// Step 3: Implement the Decorator
public abstract class LoggerDecorator implements Logger {
    protected Logger logger;

    public LoggerDecorator(Logger logger) {
        this.logger = logger;
    }

    public void log(String message) {
        logger.log(message);
    }
}