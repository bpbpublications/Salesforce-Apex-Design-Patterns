// Client class for using product configurations
public class ECommerceApplication {
    public static void main(String[] args) {
        // Example usage
        ProductConfiguration config1 = ProductConfigurationFactory.getProductConfiguration('123', 'Large', 'Red', 'Cotton');
        ProductConfiguration config2 = ProductConfigurationFactory.getProductConfiguration('123', 'Large', 'Red', 'Cotton');

        // Both configurations share the same instance
        System.assertEquals(config1, config2);

        // Display product configurations
        config1.displayConfiguration();
        config2.displayConfiguration();
    }
}