// Concrete aggregate implementation representing a list of tasks
public class TaskList implements TaskAggregate {
    private List<Task> tasks;

    public TaskList() {
        tasks = new List<Task>();
    }

    public void addTask(Task task) {
        tasks.add(task);
    }

    public TaskIterator createIterator() {
        return new TaskListIterator(tasks);
    }
}