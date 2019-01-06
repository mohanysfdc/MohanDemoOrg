public class cccShortcutListenerController {

    // Id for the next Case work item
    public String nextCaseId {get; set;}
    // List of an agent's Case work items
    private List<Case> cases;
    // Pointer to next work item in agent's
    public integer counter {get; set;}    
    // Case id for case to be closed
    public String statusObjectId {get; set;}   
    
    // Initialize list of work items and next work item
    public cccShortcutListenerController() {
        cases = [SELECT id, lastmodifieddate FROM Case ORDER BY LastModifiedDate DESC];
        if (cases.isEmpty()==false){
            for(Case c:cases){
                nextCaseId = c.Id;
                counter = 0;
            }
        }
    }

    // Get the next case from work items list
    public PageReference getNextCase() {
        nextCaseId = cases.get(counter++).id;
        return null;
    }
    
    // Close case
    public PageReference closeCase() {
        Case statusCase = [SELECT id, status FROM Case WHERE id =: statusObjectId LIMIT 1];
        statusCase.status = 'Closed';
        update statusCase;
        return null;
    }
}