({
    handleSuccess : function(component, event, helper) {
        var payload = event.getParams().response;
        console.log(JSON.stringify(payload));
    },
    
        handleSubmit: function(component, event, helper) {
            event.preventDefault();       // stop the form from submitting
            var fields = event.getParam('fields');
            fields.FirstName = '3test';
            component.find('myRecordForm').submit(fields);
        }
 
    
})