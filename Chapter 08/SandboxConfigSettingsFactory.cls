public class SandboxConfigSettingsFactory extends ConfigSettingsFactory {
    public override ConfigSettings__c createSettings() {
        return SandboxConfigSettings__c.getInstance();
    }
}