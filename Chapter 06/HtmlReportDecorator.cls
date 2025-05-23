public class HtmlReportDecorator extends ReportDecorator {
    public HtmlReportDecorator(ReportGenerator reportGenerator) {
        super(reportGenerator);
    }

    public String generateReport(List<String> data) {
        String textReport = super.generateReport(data);
        // Add HTML formatting to the text report
        return '<html><body><pre>' + textReport + '</pre></body></html>';
    }
}