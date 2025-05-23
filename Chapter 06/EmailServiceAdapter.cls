public class EmailServiceAdapter implements EmailService {
    private String externalApiEndpoint;

    public EmailServiceAdapter(String externalApiEndpoint) {
        this.externalApiEndpoint = externalApiEndpoint;
    }

    public Boolean sendEmail(EmailMessage email) {
        // Convert the EmailMessage object to JSON format expected by the external service
        String jsonPayload = convertEmailToJson(email);

        // Send the JSON payload to the external email service API
        Boolean result = sendToExternalService(externalApiEndpoint, jsonPayload);

        return result;
    }

    // Convert EmailMessage object to JSON format (not shown in detail here)
    private String convertEmailToJson(EmailMessage email) {
        // Implement JSON conversion logic here
    }

    // Send JSON payload to external email service API (not shown in detail here)
    private Boolean sendToExternalService(String endpoint, String payload) {
        // Implement HTTP callout logic here
    }
}