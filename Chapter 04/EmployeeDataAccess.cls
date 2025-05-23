// Example of a class for data access
public class EmployeeDataAccess {
    public List<Employee__c> getEmployees() {
        return [SELECT Id, Name, Email FROM Employee__c];
    }
}
