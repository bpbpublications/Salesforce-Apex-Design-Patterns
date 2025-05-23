public class ConfigSettingsFactory {
    public static ConfigSettings__c getConfigSettings() {
        if(Test.isRunningTest()) {
            return TestConfigSettings__c.getInstance();
        } else if(UserInfo.isSandboxUser()) {
            return SandboxConfigSettings__c.getInstance();
        } else {
            return ProductionConfigSettings__c.getInstance();
        }
    }
}