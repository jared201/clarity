/**
 * Test class for unit testing ClientController
 */
@isTest
public with sharing class TestClientController {
    
    Client__c client = null;
    public TestClientController() {

    }
    
    @TestSetup
    static void makeData(){
        client = new Client__c();
    }

    @isTest
    static void testSaveRecord(){
        
        ClientController clientController = ClientController.newInstance();
                        
    }

    @isTest
    static void testUpdateClient() {

    }
    
    @isTest
    static void testDeleteClient() {

    }
}
