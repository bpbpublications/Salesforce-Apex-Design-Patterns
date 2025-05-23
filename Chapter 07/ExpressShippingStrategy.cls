public class ExpressShippingStrategy implements ShippingCalculationStrategy {
    public Decimal calculateShippingCost(ShippingDetails details) {
        // Implement express shipping cost calculation
        return (details.getWeight() * 1.5) + 10; // Example calculation based on weight and fixed fee
    }
}