({
	goToRecord : function(component, event, helper) {
        var gotoRecord=$A.get("e.force:navigateToSObject");
        gotoRecord.setParams({
            "recordId": component.get("v.Contact.Id")
        })
		
	}
})