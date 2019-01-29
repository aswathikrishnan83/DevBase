({
	doInit : function(component, event, helper) {
		var action=component.get("c.findContact");
		var objType="Contact";//component.get("v.objType");
		action.setParams({
			"objType":objType
		})
		action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                component.set("v.contactList", response.getReturnValue());
            }
            else {
                console.log("Failed with state: " + state);
            }
        });
		$A.enqueueAction(action);

	},
	doSearch: function(cmp,evt,helper){
		var key=evt.getParam("searchKey");
		var action=cmp.get("c.findCKey");
		action.setParams({
			"Key":key
		});
		action.setCallback(this,function(a)
		{
			cmp.set("v.contactList",a.getReturnValue());

		});
		$A.enqueueAction(action);

	}
})