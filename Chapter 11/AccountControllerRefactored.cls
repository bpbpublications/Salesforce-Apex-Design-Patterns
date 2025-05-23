public class AccountController {
    
    public void createNewAccount(AccountDTO accountDTO) {
        try {
            Account acc = new Account();
            acc.Name = accountDTO.getName();
            acc.Industry = accountDTO.getIndustry();
            acc.BillingCity = accountDTO.getBillingCity();
            insert acc;
        } catch(Exception e) {
            // Handle the exception appropriately, such as logging it or displaying an error message to the user.
            System.debug('Error occurred while creating account: ' + e.getMessage());
        }
    }
    
}