// Composite class representing departments
public class Department implements OrganizationalUnit {
    private String name;
    private List<OrganizationalUnit> children;

    public Department(String name) {
        this.name = name;
        this.children = new List<OrganizationalUnit>();
    }

    public void add(OrganizationalUnit unit) {
        children.add(unit);
    }

    public void display() {
        System.debug('Department: ' + name);
        for(OrganizationalUnit unit : children) {
            unit.display();
        }
    }
}