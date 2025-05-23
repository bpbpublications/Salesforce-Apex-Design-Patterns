// Factory for creating RestApiConnectors
public class RestApiConnectorFactory implements DataConnectorFactory {
    public DataConnector createConnector() {
        return new RestApiConnector();
    }
}