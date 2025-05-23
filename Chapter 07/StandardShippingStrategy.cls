// Concrete strategies
public class StandardShippingStrategy implements ShippingCalculationStrategy {
    public Decimal calculateShippingCost(ShippingDetails details) {
        // Implement standard shipping cost calculation
        return details.getWeight() * 0.5; // Example calculation based on weight
    }
}