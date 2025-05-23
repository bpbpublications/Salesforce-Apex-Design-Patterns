// Example of dependency injection
public class BonusCalculatorClient {
    private BonusCalculator calculator;

    public BonusCalculatorClient(BonusCalculator calculator) {
        this.calculator = calculator;
    }

    public Decimal calculateBonus(Employee__c employee) {
        return calculator.calculateBonus(employee);
    }
}
