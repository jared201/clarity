public with sharing class ClientController {

    public ClientController() {

    }

    /**
     * This is just simple save action.
     */
    public void saveRecord(String clientKey, String clientName, String clientGender, 
            String clientTags, String countryOfBirth, Date dateOfBirth, String estDateOfBirthFlag, 
            String mainLangAtHome, String orgPath, String profEnglish, String slk){
        
        Client__c client = new Client__c(Client_Key__c = clientKey, Name = clientName, 
                            Client_Tags__c = clientTags, Country_Of_Birth__c = countryOfBirth,
                            Date_Of_Birth__c = dateOfBirth, Est_Date_Of_Birth_Flag__c = estDateOfBirthFlag,
                            Main_Lang_At_Home__c = mainLangAtHome, Organisation_Path__c = orgPath,
                            Prof_English__c = profEnglish, Slk__c = slk);

        insert client;
        
            
    }

    public void deleteClient(Id id) {

    }

    public List<Client__c> getClientByName (String name){
        List<Client__c> clients = new List<Client__c>();
        return clients;
    }

    public List<Client__c> getClientById (Id id) {
        List<Client__c> clients = new List<Client__c>();
        return clients;
    }

    public void updateClient(Id id) {

    }

}
