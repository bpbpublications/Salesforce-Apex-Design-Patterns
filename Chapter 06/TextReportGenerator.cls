public class TextReportGenerator implements ReportGenerator {
    public String generateReport(List<String> data) {
        // Generate basic text report
        return String.join(data, '\n');
    }
}