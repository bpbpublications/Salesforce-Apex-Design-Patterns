// Invoker class
public class TaskController {
    public void executeCommand(TaskCommand command) {
        command.execute();
    }
}