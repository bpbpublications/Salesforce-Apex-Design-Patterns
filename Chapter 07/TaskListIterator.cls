// Concrete iterator implementation for iterating over a list of tasks
public class TaskListIterator implements TaskIterator {
    private List<Task> tasks;
    private Integer position;

    public TaskListIterator(List<Task> tasks) {
        this.tasks = tasks;
        this.position = 0;
    }

    public Boolean hasNext() {
        return position < tasks.size();
    }

    public Task next() {
        if (hasNext()) {
            Task task = tasks[position];
            position++;
            return task;
        }
        return null;
    }
}