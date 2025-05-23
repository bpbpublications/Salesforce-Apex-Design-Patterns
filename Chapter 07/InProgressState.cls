public class InProgressState implements TaskState {
    public void assign(Task task, User assignedTo) {
        // Cannot reassign an in-progress task
        System.debug('Cannot reassign an in-progress task');
    }

    public void start(Task task) {
        // Task is already in progress
        System.debug('Task is already in progress');
    }

    public void complete(Task task) {
        // Complete the task
        task.setState(new CompletedState());
    }

    public void cancel(Task task) {
        // Cancel the task
        task.setState(new CancelledState());
    }
}