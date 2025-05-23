public class ReportPrototypeExample {

    public abstract class ReportTemplate implements Cloneable {
        public String title;
        public String header;
        public abstract void generateReport();
        
        // Define the clone method for prototypes
        public ReportTemplate clone() {
            try {
                return (ReportTemplate) super.clone();
            } catch (CloneNotSupportedException e) {
                return null;
            }
        }
    }

    public class SalesReport extends ReportTemplate {
        public override void generateReport() {
            // Generate a sales report based on the template
            System.debug('Generating Sales Report: ' + title);
            System.debug('Header: ' + header);
            // Add report generation logic here...
        }
    }

    public class ExpenseReport extends ReportTemplate {
        public override void generateReport() {
            // Generate an expense report based on the template
            System.debug('Generating Expense Report: ' + title);
            System.debug('Header: ' + header);
            // Add report generation logic here...
        }
    }

    public static void main(String[] args) {
        ReportPrototypeExample example = new ReportPrototypeExample();

        // Create a prototype SalesReport template
        ReportTemplate salesReportTemplate = example.new SalesReport();
        salesReportTemplate.title = "Q4 Sales Report";
        salesReportTemplate.header = "Sales Data for Q4";

        // Clone the SalesReport template to create a new report
        ReportTemplate newSalesReport = salesReportTemplate.clone();
        newSalesReport.generateReport();

        // Create a prototype ExpenseReport template
        ReportTemplate expenseReportTemplate = example.new ExpenseReport();
        expenseReportTemplate.title = "Yearly Expense Report";
        expenseReportTemplate.header = "Expense Data for the Year";

        // Clone the ExpenseReport template to create a new report
        ReportTemplate newExpenseReport = expenseReportTemplate.clone();
        newExpenseReport.generateReport();
    }
}