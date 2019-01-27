({
	doInit : function(component, event, helper) {
        var userId=$A.get("$SObjectType.CurrentUser.Id");
        component.set('v.userId',userId);
		component.set('v.initDone',true);
        /*var action=component.get("c.getUserInfo");
        action.setCallback(this, function(response)
                          
        {
             var state = response.getState();
            console.log('outside success');
            console.log('state'+state);
            

            if(state==="SUCCESS")
                {
                  var response1=response.getReturnValue();
                  console.log('User name from controller  is!!!!!:');
                  component.set("v.userInfo",response1);
                  console.log('User name from controller  is:' + JSON.stringify(response.getReturnValue()));
                  console.log('inside success');
                }
             
            
        });
        $A.enqueueAction(action);*/
        },
    handleRecordUpdated:function(cmp,evt,helper){
        console.log('----'+cmp.get('v.simpleRecord'));
    }
		
	
})