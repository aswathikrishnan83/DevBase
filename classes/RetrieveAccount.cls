@RestResource(urlMapping='/RestExample/*')
global with sharing class RetrieveAccount {
    @HttpGet
    Global Static List<Account> doGet(){
        RestRequest req=RestContext.request;
        RestResponse resp=RestContext.response;
        String AccountId=req.requestURI.substring(req.requestURI.LastIndexof('/')+1);
        List<Account>Result=[Select Name,Phone From Account where Id=:AccountId];
        return Result;
      
    }
    @HttpPost
    Global Static String doPost(String Name,String Phone){
        Account Acc=new Account();
        Acc.Name=Name;
        Acc.Phone=Phone;
        insert Acc;
        return Acc.Id;
    }
    @HttpDelete
        Global Static Void doDelete(){
        RestRequest req=RestContext.request;
        RestResponse resp=RestContext.response;
        String AccountId=req.requestURI.substring(req.requestURI.LastIndexof('/')+1);
            try{
        Account acc=[Select Name,Phone From Account where Id=:AccountId];
        delete acc;
            }
            Catch(Exception ex)
            {
                System.debug('ERROR'+ex.getMessage());
            }
      
      
    }
    

}