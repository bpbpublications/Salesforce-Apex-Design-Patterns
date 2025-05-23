// Flyweight factory class for managing product configurations
public class ProductConfigurationFactory {
    private static Map<String, ProductConfiguration> configurations = new Map<String, ProductConfiguration>();

    public static ProductConfiguration getProductConfiguration(String productId, String size, String color, String material) {
        String key = productId + '-' + size + '-' + color + '-' + material;
        if (!configurations.containsKey(key)) {
            configurations.put(key, new ConcreteProductConfiguration(productId, size, color, material));
        }
        return configurations.get(key);
    }
}