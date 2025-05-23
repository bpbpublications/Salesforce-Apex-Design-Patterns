public class UpdateTaskCommand implements TaskCommand {
    private TaskService taskService;
    private Task task;
    private String newTaskName;

    public UpdateTaskCommand(TaskService taskService, Task task, String newTaskName) {
        this.taskService = taskService;
        this.task = task;
        this.newTaskName = newTaskName;
    }

    public void execute() {
        taskService.updateTask(task, newTaskName);
    }
}