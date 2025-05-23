public with sharing class AccountService {
    
    // Method to create a new account
    public static void createAccount(String accName, String accIndustry) {
        Account newAccount = new Account(Name = accName, Industry = accIndustry);
        insert newAccount;
    }
    
    // Method to update an existing account
    public static void updateAccount(Id accId, String accName) {
        Account existingAccount = [SELECT Id, Name FROM Account WHERE Id = :accId LIMIT 1];
        existingAccount.Name = accName;
        update existingAccount;
    }
    
    // Method to delete an existing account
    public static void deleteAccount(Id accId) {
        Account existingAccount = [SELECT Id FROM Account WHERE Id = :accId LIMIT 1];
        delete existingAccount;
    }
}