public interface TaskState {
    void assign(Task task, User assignedTo);
    void start(Task task);
    void complete(Task task);
    
}