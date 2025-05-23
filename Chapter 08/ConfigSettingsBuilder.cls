public class ConfigSettingsBuilder {
    public ConfigSettings__c buildSettings(String environment) {
        ConfigSettings__c settings = new ConfigSettings__c();
        if(environment == 'Sandbox') {
            settings.Environment__c = 'Sandbox';
            settings.Api_URL__c = 'https://sandbox.api.com';
            settings.Api_Key__c = 'sandbox_api_key';
        } else {
            settings.Environment__c = 'Production';
            settings.Api_URL__c = 'https://api.com';
            settings.Api_Key__c = 'production_api_key';
        }
        return settings;
    }
}