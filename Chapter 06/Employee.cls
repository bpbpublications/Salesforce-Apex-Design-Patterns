// Leaf class representing employees
public class Employee implements OrganizationalUnit {
    private String name;

    public Employee(String name) {
        this.name = name;
    }

    public void display() {
        System.debug('Employee: ' + name);
    }
}