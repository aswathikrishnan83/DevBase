({
	doSearch : function(cmp, event, helper) {
		var event=$A.get("searchKey");
		console.log('kiii');
		console.log('val'+event.target.value);
		event.setParams({
			"searchKey":event.target.value
		});
		event.fire();

	}
})