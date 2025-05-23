// Context class
public class ShippingCalculator {
    private ShippingCalculationStrategy strategy;

    public ShippingCalculator(ShippingCalculationStrategy strategy) {
        this.strategy = strategy;
    }

    public void setStrategy(ShippingCalculationStrategy strategy) {
        this.strategy = strategy;
    }

    public Decimal calculateShippingCost(ShippingDetails details) {
        return strategy.calculateShippingCost(details);
    }
}