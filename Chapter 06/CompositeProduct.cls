// Composite class representing composite products (collections of sub-products)
public class CompositeProduct implements Product {
    private String name;
    private List<Product> products;

    public CompositeProduct(String name) {
        this.name = name;
        this.products = new List<Product>();
    }

    public void addProduct(Product product) {
        products.add(product);
    }

    public void removeProduct(Product product) {
        products.remove(product);
    }

    public Decimal getPrice() {
        Decimal totalPrice = 0;
        for(Product product : products) {
            totalPrice += product.getPrice();
        }
        return totalPrice;
    }
}