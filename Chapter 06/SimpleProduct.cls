// Leaf class representing simple products
public class SimpleProduct implements Product {
    private String name;
    private Decimal price;

    public SimpleProduct(String name, Decimal price) {
        this.name = name;
        this.price = price;
    }

    public Decimal getPrice() {
        return price;
    }
}