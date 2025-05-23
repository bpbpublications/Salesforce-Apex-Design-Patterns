// Aggregate interface defining method to create an iterator
public interface TaskAggregate {
    TaskIterator createIterator();
}