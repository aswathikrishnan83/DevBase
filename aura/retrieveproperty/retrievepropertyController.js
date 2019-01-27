({
	doInit : function(cmp, event, helper) {
       var action=cmp.get("c.getProperty");
        action.setCallback(this, function(response){
            var resp=response.getState();
            if(resp=="success")
            {
                cmp.set("v.propertyname",resp.getReturnValue());
            }});
        $A.enqueueAction(action);
            
        }
                           
                           
                           
                          
        
        
})