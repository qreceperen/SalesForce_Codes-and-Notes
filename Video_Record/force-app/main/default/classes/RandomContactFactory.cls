public with sharing class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer numCon, String lName){

        List<Contact> multiCon = new List<Contact>();

        for(Integer i=0;i<numCon;i++){
        Contact singleCon = new Contact();
        singleCon.FirstName = 'Test'+i;
        singleCon.LastName = lName;
        multiCon.add(singleCon);

    }
    return multiCon;



    }
}