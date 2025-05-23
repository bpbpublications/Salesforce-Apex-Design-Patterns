public class DeleteTaskCommand implements TaskCommand {
    private TaskService taskService;
    private Task task;

    public DeleteTaskCommand(TaskService taskService, Task task) {
        this.taskService = taskService;
        this.task = task;
    }

    public void execute() {
        taskService.deleteTask(task);
    }
}