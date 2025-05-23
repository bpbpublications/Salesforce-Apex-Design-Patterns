public class OpenState implements TaskState {
    public void assign(Task task, User assignedTo) {
        // Assign the task to a user
        task.setAssignedTo(assignedTo);
        task.setState(new InProgressState());
    }

    public void start(Task task) {
        // Cannot start an open task
        System.debug('Cannot start an open task');
    }

    public void complete(Task task) {
        // Cannot complete an open task
        System.debug('Cannot complete an open task');
    }

    public void cancel(Task task) {
        // Cancel the task
        task.setState(new CancelledState());
    }
}