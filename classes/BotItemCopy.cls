public class BotItemCopy {

    @AuraEnabled public String name { get;set; }
    @AuraEnabled public String linkURL { get;set; }
    
    public BotItemCopy(String name) {
        this.name = name;
    }
    
    public BotItemCopy(String name, string linkURL) {
        this.name = name;
        this.linkURL = linkURL;
    }

}