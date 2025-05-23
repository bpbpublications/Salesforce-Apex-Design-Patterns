// Client code using the iterator to iterate over tasks
public class Client {
    public void iterateTasks(TaskAggregate taskAggregate) {
        TaskIterator iterator = taskAggregate.createIterator();
        while (iterator.hasNext()) {
            Task task = iterator.next();
            System.debug('Task Name: ' + task.name);
        }
    }
}