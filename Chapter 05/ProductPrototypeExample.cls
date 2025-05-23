public class ProductPrototypeExample {

    public static Product__c cloneProductWithVariation(Product__c prototypeProduct, Decimal newPrice, String newDescription) {
        // Clone the prototype product
        Product__c clonedProduct = prototypeProduct.clone(false, true, false, false);

        // Modify fields to create a variation
        clonedProduct.Price__c = newPrice;
        clonedProduct.Description__c = newDescription;

        return clonedProduct;
    }

    public static void main(String[] args) {
        // Retrieve an existing Product__c record (the prototype)
        Product__c prototypeProduct = [SELECT Id, Name, Price__c, Description__c FROM Product__c WHERE Id = 'a0123456789ABCDE'];

        // Clone the prototype to create a product variation
        Product__c productVariation = cloneProductWithVariation(prototypeProduct, 99.99, 'Special Edition Product');

        // Insert the cloned product variation into the database
        insert productVariation;

        System.debug('Cloned product ID: ' + productVariation.Id);
    }
}
