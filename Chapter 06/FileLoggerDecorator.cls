// Step 4: Implement the Concrete Decorator
public class FileLoggerDecorator extends LoggerDecorator {
    public FileLoggerDecorator(Logger logger) {
        super(logger);
    }

    public void log(String message) {
        super.log(message);
        logToFile(message);
    }

    private void logToFile(String message) {
        // Logic to log message to a file
        System.debug('File: ' + message);
    }
}