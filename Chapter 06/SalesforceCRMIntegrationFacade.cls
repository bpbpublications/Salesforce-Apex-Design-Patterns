public class SalesforceCRMIntegrationFacade {
    public static void syncContactsWithCRM(List<Contact> contacts) {
        try {
            SalesforceCRMService.authenticate(); // Step 1: Authenticate with CRM
            List<CRMContact> crmContacts = SalesforceCRMService.retrieveContacts(); // Step 2: Retrieve CRM contacts
            List<CRMContact> updatedCRMContacts = SalesforceCRMService.updateContacts(contacts); // Step 3: Update CRM contacts
            SalesforceCRMService.logSyncSuccess(updatedCRMContacts); // Step 4: Log successful synchronization
        } catch (CRMIntegrationException e) {
            SalesforceCRMService.logSyncFailure(e.getMessage()); // Step 5: Log synchronization failure
            throw e; // Rethrow the exception for handling at higher levels
        }
    }
}