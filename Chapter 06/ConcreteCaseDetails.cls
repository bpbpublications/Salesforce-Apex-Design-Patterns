// Concrete flyweight class representing case details
public class ConcreteCaseDetails implements CaseDetails {
    private String status;
    private String priority;
    private String owner;

    public ConcreteCaseDetails(String status, String priority, String owner) {
        this.status = status;
        this.priority = priority;
        this.owner = owner;
    }

    public void displayDetails() {
        System.debug('Case Details - Status: ' + status + ', Priority: ' + priority + ', Owner: ' + owner);
        // Additional details display logic
    }
}