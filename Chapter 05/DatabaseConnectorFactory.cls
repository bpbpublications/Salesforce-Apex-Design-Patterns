// Factory for creating DatabaseConnectors
public class DatabaseConnectorFactory implements DataConnectorFactory {
    public DataConnector createConnector() {
        return new DatabaseConnector();
    }
}