// Adapter for Salesforce REST API
public class SalesforceRestApiAdapter implements DataService {
    private LegacyDataService legacyDataService;

    public SalesforceRestApiAdapter(LegacyDataService legacyDataService) {
        this.legacyDataService = legacyDataService;
    }

    public List<String> fetchData() {
        // Adapt the call to Salesforce REST API to match the DataService interface
        List<String> legacyData = legacyDataService.retrieveDataFromLegacySystem();
        List<String> adaptedData = new List<String>();
        
        for (String data : legacyData) {
            // Adapt the data format if needed
            adaptedData.add(data);
        }
        
        return adaptedData;
    }
}