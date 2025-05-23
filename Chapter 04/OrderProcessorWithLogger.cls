// Example of constructor injection
public class OrderProcessorWithLogger {
    private Logger logger;

    public OrderProcessor(Logger logger) {
        this.logger = logger;
    }

    public void processOrder(Order__c order) {
        // ...
        logger.log("Order processed: " + order.Name);
    }
}