public with sharing class AccountService {

    public static List<Account> getAccounts() {
        return [
            SELECT Id, Name, Industry
            FROM Account
            ORDER BY Name
            LIMIT 10
        ];
    }

    public static Account getAccountById(Id accountId) {
        return [
            SELECT Id, Name, Industry, Phone
            FROM Account
            WHERE Id = :accountId
            LIMIT 1
        ];
    }
}