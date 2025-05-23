public class PdfReportDecorator extends ReportDecorator {
    public PdfReportDecorator(ReportGenerator reportGenerator) {
        super(reportGenerator);
    }

    public String generateReport(List<String> data) {
        String textReport = super.generateReport(data);
        // Convert text report to PDF format
        return 'PDF: ' + textReport;
    }
}