public class ProductionConfigSettingsFactory extends ConfigSettingsFactory {
    public override ConfigSettings__c createSettings() {
        return ProductionConfigSettings__c.getInstance();
    }
}