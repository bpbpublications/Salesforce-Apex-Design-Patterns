public class OpportunityService {
    
    // Method to fetch opportunities by status
    public List<Opportunity> getOpportunitiesByStatus(Boolean isClosed) {
        return [SELECT Id, Name, StageName FROM Opportunity WHERE IsClosed = :isClosed];
    }
    
    // Method to update opportunity stage
    public void updateOpportunityStage(Id opportunityId, String newStage) {
        Opportunity oppToUpdate = new Opportunity(Id = opportunityId, StageName = newStage);
        update oppToUpdate;
    }
    
    // Method to calculate opportunity revenue
    public Decimal calculateOpportunityRevenue(Id opportunityId) {
        Opportunity opp = [SELECT Amount FROM Opportunity WHERE Id = :opportunityId];
        return opp.Amount;
    }
}