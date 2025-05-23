// Define the Concrete Iterator implementation for iterating over a list of employee records
public class EmployeeListIterator implements EmployeeIterator {
    private List<Employee> employees;
    private Integer position;

    public EmployeeListIterator(List<Employee> employees) {
        this.employees = employees;
        this.position = 0;
    }

    public Boolean hasNext() {
        return position < employees.size();
    }

    public Employee next() {
        if (hasNext()) {
            Employee employee = employees[position];
            position++;
            return employee;
        }
        return null;
    }
}