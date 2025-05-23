// Concrete flyweight class representing a product configuration
public class ConcreteProductConfiguration implements ProductConfiguration {
    private String productId;
    private String size;
    private String color;
    private String material;

    public ConcreteProductConfiguration(String productId, String size, String color, String material) {
        this.productId = productId;
        this.size = size;
        this.color = color;
        this.material = material;
    }

    public void displayConfiguration() {
        System.debug('Product Configuration - Product ID: ' + productId + ', Size: ' + size + ', Color: ' + color + ', Material: ' + material);
        // Additional configuration display logic
    }
}