public class Logger {

    // Private static instance variable to hold the single instance
    private static Logger instance;

    // Private constructor to prevent external instantiation
    private Logger() {
        // Initialization code here (e.g., setting up log file)
    }

    // Public method to access the single instance
    public static Logger getInstance() {
        if (instance == null) {
            // Create the instance if it doesn't exist
            instance = new Logger();
        }
        return instance;
    }
    // Method to log messages
    public void log(String message) {
        // Actual logging implementation (e.g., writing to a log file or sending to an external system)
        System.debug('Log: ' + message);
    }
}