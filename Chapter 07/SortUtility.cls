// Context class
public class SortUtility {
    private SortingStrategy strategy;

    public SortUtility(SortingStrategy strategy) {
        this.strategy = strategy;
    }

    public void setStrategy(SortingStrategy strategy) {
        this.strategy = strategy;
    }

    public List<Integer> sortNumbers(List<Integer> numbers) {
        return strategy.sort(numbers);
    }
}