public with sharing class ClientController {

    static ClientController clientController = null;
    
    private ClientController() {
        //initialize something here.
    }

    public static ClientController newInstance(){
        clientController = new ClientController();
        return clientController;
    }

    /**
     * This is just simple save action.
     * @return true if action is successful.
     */
    public List<Client__c> saveRecord(Client__c clientRecord){
                
        Client__c client = clientRecord;
        List<Client__c> clients = new List<Client__c>();
        clients.add(client);

        try {
            insert client;            
        } catch (DmlException e){            
            System.debug('An unexpected error has occurred: ' + e.getMessage());
        }
        
        return clients;
            
    }
    /**
     * Delete a record with a given id
     * 
     */
    public List<Client__c> deleteClient(Id id) {
        Client__c[] clients = [SELECT Id, Name FROM Client__c WHERE Id = :id WITH SECURITY_ENFORCED];
        try {
            delete clients;
        } catch (DmlException error) {
            System.debug('An unexpected error has occured: ' + error.getMessage());
        }
        return clients;
    }

    public List<Client__c> getClientByName (String name){
        
        Client__c[] clients = [SELECT Id FROM Client__c WHERE Name = :name WITH SECURITY_ENFORCED];
        return clients;
    }

    public List<Client__c> getClientById (Id id) {                
        Client__c[] clients = [SELECT Id FROM Client__c WHERE Id = :id WITH SECURITY_ENFORCED];
        return clients;
    }

    public  List<Client__c> updateClient(Client__c client) {        
        List<Client__c> clients = new List<Client__c>();
        clients.add(client);
        try {
            update clients;    
        } catch (DmlException e) {
            System.debug('An unexpected error has occured: ' + e.getMessage());
        }
        
        return clients;
    }

}
