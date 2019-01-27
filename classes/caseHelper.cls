public class caseHelper {
    public static void updateCase(List<Case>caseList)
    {
      set<Id>caseId=new set<Id>();
        List<case>newCase=new List<Case>();
          for(case c:caseList)
          {
              if(c.Status=='Closed')
              {
                   Case cnew=new Case();
                   cnew.Type='Mechanical';
                   cnew.Origin='Phone';
                  
                   newCase.add(cnew);
                  
              }
             
          }
        if(newCase.size()>0)
        {
            update newCase;
        }
        
       
        
    }

}