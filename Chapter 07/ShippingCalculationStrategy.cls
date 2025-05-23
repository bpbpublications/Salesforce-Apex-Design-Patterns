// Strategy interface
public interface ShippingCalculationStrategy {
    Decimal calculateShippingCost(ShippingDetails details);
}
