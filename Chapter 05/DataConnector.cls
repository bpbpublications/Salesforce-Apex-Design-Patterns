// Interface for data connectors
public interface DataConnector {
    void connect();
    void fetchData();
    void disconnect();
}