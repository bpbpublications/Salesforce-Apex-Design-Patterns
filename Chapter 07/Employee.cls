// Define the Employee class representing an employee record
public class Employee {
    public String name { get; private set; }
    public Decimal salary { get; private set; }

    public Employee(String name, Decimal salary) {
        this.name = name;
        this.salary = salary;
    }
}