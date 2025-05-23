// Define the Concrete Aggregate implementation representing a list of employee records
public class EmployeeList implements EmployeeAggregate {
    private List<Employee> employees;

    public EmployeeList() {
        employees = new List<Employee>();
    }

    public void addEmployee(Employee employee) {
        employees.add(employee);
    }

    public EmployeeIterator createIterator() {
        return new EmployeeListIterator(employees);
    }
}