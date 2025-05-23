public class OpportunityController {
    
    // Method to fetch open opportunities
    public List<Opportunity> getOpenOpportunities() {
        List<Opportunity> openOpportunities = new List<Opportunity>();
        for(Opportunity opp : [SELECT Id, Name, StageName FROM Opportunity WHERE IsClosed = false]) {
            openOpportunities.add(opp);
        }
        return openOpportunities;
    }
    
    // Method to fetch closed opportunities
    public List<Opportunity> getClosedOpportunities() {
        List<Opportunity> closedOpportunities = new List<Opportunity>();
        for(Opportunity opp : [SELECT Id, Name, StageName FROM Opportunity WHERE IsClosed = true]) {
            closedOpportunities.add(opp);
        }
        return closedOpportunities;
    }
    
    // Method to update opportunity stage
    public void updateOpportunityStage(Id opportunityId, String newStage) {
        Opportunity opp = [SELECT Id, StageName FROM Opportunity WHERE Id = :opportunityId];
        opp.StageName = newStage;
        update opp;
    }
    
    // Method to calculate opportunity revenue
    public Decimal calculateOpportunityRevenue(Id opportunityId) {
        Opportunity opp = [SELECT Id, Amount FROM Opportunity WHERE Id = :opportunityId];
        return opp.Amount;
    }
}