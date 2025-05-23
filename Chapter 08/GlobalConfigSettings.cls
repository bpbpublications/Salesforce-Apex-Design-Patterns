public class GlobalConfigSettings {
    private static GlobalConfigSettings instance;
    public String apiUrl;
    public String apiKey;
    
    private GlobalConfigSettings() {
        // Load configuration from Custom Settings
        ConfigSettings__c settings = ConfigSettings__c.getInstance();
        apiUrl = settings.Api_URL__c;
        apiKey = settings.Api_Key__c;
    }
    
    public static GlobalConfigSettings getInstance() {
        if(instance == null) {
            instance = new GlobalConfigSettings();
        }
        return instance;
    }
}