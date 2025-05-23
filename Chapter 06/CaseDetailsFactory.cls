// Flyweight factory class for managing case details
public class CaseDetailsFactory {
    private static Map<String, CaseDetails> caseDetailsMap = new Map<String, CaseDetails>();

    public static CaseDetails getCaseDetails(String status, String priority, String owner) {
        String key = status + '-' + priority + '-' + owner;
        if (!caseDetailsMap.containsKey(key)) {
            caseDetailsMap.put(key, new ConcreteCaseDetails(status, priority, owner));
        }
        return caseDetailsMap.get(key);
    }
}