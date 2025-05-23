// Step 2: Implement the Concrete Component
public class ConsoleLogger implements Logger {
    public void log(String message) {
        System.debug('Console: ' + message);
    }
}