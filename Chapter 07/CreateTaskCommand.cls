// Concrete command classes
public class CreateTaskCommand implements TaskCommand {
    private TaskService taskService;
    private String taskName;

    public CreateTaskCommand(TaskService taskService, String taskName) {
        this.taskService = taskService;
        this.taskName = taskName;
    }

    public void execute() {
        taskService.createTask(taskName);
    }
}