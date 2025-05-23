public class Product {
    private String name;
    private Double price;
    private String description;
    private Integer stock;

    private Product(ProductBuilder builder) {
        this.name = builder.name;
        this.price = builder.price;
        this.description = builder.description;
        this.stock = builder.stock;
    }

    public static class ProductBuilder {
        private String name;
        private Double price;
        private String description;
        private Integer stock;

        public ProductBuilder(String name, Double price) {
            this.name = name;
            this.price = price;
        }

        public ProductBuilder setDescription(String description) {
            this.description = description;
            return this;
        }

        public ProductBuilder setStock(Integer stock) {
            this.stock = stock;
            return this;
        }

        public Product build() {
            return new Product(this);
        }
    }
}