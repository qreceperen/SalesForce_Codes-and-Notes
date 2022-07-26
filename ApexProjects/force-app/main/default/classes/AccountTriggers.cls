public with sharing class AccountTriggers {

    public static void updateAccountAdress(List<Account> accList) 
    {
        for(Account acc:accList){
            acc.ShippingState=acc.BillingState;
            acc.ShippingCity = acc.BillingCity;
            acc.ShippingStreet = acc.BillingStreet;
            acc.ShippingPostalCode = acc.BillingPostalCode;
            acc.ShippingCountry = acc.BillingCountry;
        }

    }
}
