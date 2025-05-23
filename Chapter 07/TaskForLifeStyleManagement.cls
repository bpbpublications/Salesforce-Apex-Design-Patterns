public class TaskForLifeStyleManagement {
    private TaskState state;
    private User assignedTo;

    public Task() {
        this.state = new OpenState(); // Initial state is Open
    }

    public void setState(TaskState state) {
        this.state = state;
    }

    public void assign(User assignedTo) {
        state.assign(this, assignedTo);
    }

    public void start() {
        state.start(this);
    }

    public void complete() {
        state.complete(this);
    }

    public void cancel() {
        state.cancel(this);
    }

    // Getters and setters for other attributes
}