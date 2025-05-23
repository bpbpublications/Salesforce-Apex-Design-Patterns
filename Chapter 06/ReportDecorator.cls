public abstract class ReportDecorator implements ReportGenerator {
    protected ReportGenerator reportGenerator;

    public ReportDecorator(ReportGenerator reportGenerator) {
        this.reportGenerator = reportGenerator;
    }

    public String generateReport(List<String> data) {
        return reportGenerator.generateReport(data);
    }
}