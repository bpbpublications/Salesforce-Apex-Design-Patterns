public class SingletonExample {

    // Private static instance variable to hold the single instance
    private static SingletonExample instance;

    // Private constructor to prevent external instantiation
    private SingletonExample() {
        // Initialization code here (if needed)
    }

    // Public method to access the single instance
    public static SingletonExample getInstance() {
        if (instance == null) {
            // Create the instance if it doesn't exist
            instance = new SingletonExample();
        }
        return instance;
    }

    // Add other methods and properties as needed
    public void doSomething() {
        System.debug('Singleton is doing something.');
    }
}