public class AccountController {
    
    public void createNewAccount(String name, String industry, String billingCity) {
        Account acc = new Account();
        acc.Name = name;
        acc.Industry = industry;
        acc.BillingCity = billingCity;
        insert acc;
    }
    
}