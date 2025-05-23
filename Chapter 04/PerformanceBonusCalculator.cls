// Example of a subclass extending the BonusCalculator
public class PerformanceBonusCalculator extends BonusCalculator {
    public override Decimal calculateBonus(Employee__c employee) {
        // Custom bonus calculation logic based on performance
        return employee.Performance_Rating__c * 100;
    }
}
