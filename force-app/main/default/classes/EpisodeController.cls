public with sharing class EpisodeController {

    public EpisodeController() {

    }
    
    /**
     * Saves an episode record
     * @param episode object
     * @return list of episode inserted. 
     */
    public List<Episode__c> saveRecord(List<Episode__c> listOfEpisodes) {
        List<Episode__c> episodes = new List<Episode__c>();
        if (listOfEpisodes.size() > 0){
            try {
                episodes = listOfEpisodes;
                insert episodes; //A single insert call can handle a maximum of 10,000 records.
            } catch (DmlException e) {
                System.debug('An unexpected exception occurred ' + e.getMessage());
            } 
        }
        return episodes;
    }

    /**
     * Deletes a record in the Episode object, when a record is deleted the list must return size = 0
     * @return the list of episode
     * @param listOfEpisodes list of episode
     */
    public List<Episode__c> deleteRecord(List<Episode__c> listOfEpisodes){
        List<Episode__c> episodes = new List<Episode__c>();
        if (listOfEpisodes.size() > 0){
            try {
                episodes = listOfEpisodes;
                delete episodes; //A single delete call can handle a maximum of 10,000 records.
            } catch (DmlException e) {
                System.debug('An unexpected exception occurred ' + e.getMessage());
            } 
        }
        return episodes;
    }

    public List<Episode__c> updateRecord(List<Episode__c> listOfEpisodes){
        List<Episode__c> episodes = new List<Episode__c>();
        if (listOfEpisodes.size() > 0){
            try {
                episodes = listOfEpisodes;
                update episodes; //A single update call can handle a maximum of 10,000 records.
            } catch (DmlException e) {
                System.debug('An unexpected exception occurred ' + e.getMessage());
            } 
        }
        return episodes;
    }

    /**
     * 
     */
    public List<Episode__c> getEpisodeById (Id id){
        
        Episode__c[] episodes = [SELECT Id FROM Episode__c WHERE Id = :id WITH SECURITY_ENFORCED];
        return episodes;

    }

    public List<Episode__c> getEpisodeByName (String name){
        
        Episode__c[] episodes = [SELECT Id FROM Episode__c WHERE Name = :name WITH SECURITY_ENFORCED];
        return episodes;

    }

    public List<Episode__c> getEpisodeList (){
        Episode__c[] episodes = [SELECT Id FROM Episode__c WITH SECURITY_ENFORCED];
        return episodes;
    }

}
