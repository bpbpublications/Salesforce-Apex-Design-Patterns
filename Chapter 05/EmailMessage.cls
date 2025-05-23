public class EmailMessage {
    private String subject;
    private String body;
    private List<String> recipients;
    private List<String> attachments;

    private EmailMessage(EmailBuilder builder) {
        this.subject = builder.subject;
        this.body = builder.body;
        this.recipients = builder.recipients;
        this.attachments = builder.attachments;
    }
    public static class EmailBuilder {
        private String subject;
        private String body;
        private List<String> recipients;
        private List<String> attachments;

        public EmailBuilder(String subject, String body) {
            this.subject = subject;
            this.body = body;
            this.recipients = new List<String>();
            this.attachments = new List<String>();
        }

        public EmailBuilder addRecipient(String recipient) {
            this.recipients.add(recipient);
            return this;
        }

        public EmailBuilder addAttachment(String attachment) {
            this.attachments.add(attachment);
            return this;
        }

        public EmailMessage build() {
            return new EmailMessage(this);
        }
    }

    public void sendEmail() {
        // Logic to send the email using Salesforce's email service
        Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
        email.setSubject(subject);
        email.setPlainTextBody(body);
        email.setToAddresses(recipients);
        // Attachments logic here...

        Messaging.sendEmail(new List<Messaging.Email> { email });
    }
}