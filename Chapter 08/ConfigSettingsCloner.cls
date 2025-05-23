public class ConfigSettingsCloner {
    public ConfigSettings__c cloneSettings(ConfigSettings__c originalSettings) {
        ConfigSettings__c clonedSettings = originalSettings.clone(false, true, false, false);
        clonedSettings.Name = originalSettings.Name + '_Clone';
        return clonedSettings;
    }
}