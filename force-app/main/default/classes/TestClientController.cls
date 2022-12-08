/**
 * Test class for unit testing ClientController
 */
@isTest
public with sharing class TestClientController {
    
    
    public TestClientController() {

    }
    
    @TestSetup
    static void makeData(){
        Client__c client = new Client__c();
        client.client_atsi_status__c = 'test';
        client.Name = 'Test Name';
        client.Client_Gender__c = 'Male';
        client.Country_of_Birth__c = 'Australia';
        client.Date_of_Birth__c = Date.today();
        client.Est_Date_of_birth_Flag__c = 'Yes';
        client.Main_lang_at_home__c = 'English';
        client.Organisation_Path__c = '123:orgPath';
        client.prof_english__c = 'Yes';
        client.slk__c = 'Test SLK';
    }

    @isTest
    static void testSaveRecord(){

        Client__c client = new Client__c();
        client.client_atsi_status__c = 'test';
        client.Name = 'Test Name';
        client.Client_Gender__c = 'Male';
        client.Country_of_Birth__c = 'Australia';
        client.Date_of_Birth__c = Date.today();
        client.Est_Date_of_birth_Flag__c = 'Yes';
        client.Main_lang_at_home__c = 'English';
        client.Organisation_Path__c = '123:orgPath';
        client.prof_english__c = 'Yes';
        client.slk__c = 'Test SLK';
        ClientController clientController = ClientController.newInstance();
        List<Client__c> testClient = clientController.saveRecord(client);
        
        System.assert(testClient.size() > 0, 'Record not saved');   

    }

    @isTest
    static void testUpdateClient() {

        Client__c client = new Client__c();
        client.prof_english__c = 'No';
        ClientController clientController = ClientController.newInstance();
        List<Client__c> testClients = clientController.updateClient(client);
        for (Client__c testClient : testClients){
            String prof_english_c1 = (String)client.prof_english__c;
            String prof_english_c2 = (String)testClient.prof_english__c;
            System.assertEquals(prof_english_c1, prof_english_c2);
        }
    }
    
  /*   @isTest
    static void testDeleteClient() {

    } */

    /**
     * TODO run tests for the scenarios
     * 1. Bulk tests
     * 2. Permission tests
     */
}
