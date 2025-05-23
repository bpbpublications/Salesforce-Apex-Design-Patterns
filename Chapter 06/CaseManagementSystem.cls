// Client class for using case details
public class CaseManagementSystem {
    public static void main(String[] args) {
        // Example usage
        CaseDetails case1 = CaseDetailsFactory.getCaseDetails('Open', 'High', 'John Doe');
        CaseDetails case2 = CaseDetailsFactory.getCaseDetails('Open', 'Medium', 'Jane Smith');

        // Both cases share the same instance for the same combination of status, priority, and owner
        System.assertEquals(case1, case2);

        // Display case details
        case1.displayDetails();
        case2.displayDetails();
    }
}