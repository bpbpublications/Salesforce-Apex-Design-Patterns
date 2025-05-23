public class AppConfig {

    // Private static instance variable to hold the single instance
    private static AppConfig instance;

    // Configuration settings
    private Map<String, String> settings;

    // Private constructor to prevent external instantiation
    private AppConfig() {
        // Initialize the configuration settings
        settings = new Map<String, String>();
    }

    // Public method to access the single instance
    public static AppConfig getInstance() {
        if (instance == null) {
            // Create the instance if it doesn't exist
            instance = new AppConfig();
        }
        return instance;
    }

    // Methods to get and set configuration settings
    public String getSetting(String key) {
        return settings.get(key);
    }

    public void setSetting(String key, String value) {
        settings.put(key, value);
    }
}