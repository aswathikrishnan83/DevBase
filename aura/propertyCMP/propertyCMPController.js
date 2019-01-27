({
	doInit : function(cmp, event, helper) {
        var actions=[
            {label:'show details',name:'showdetails'},
            {label:'Delete',name:'Delete'}
        ]
        
           cmp.set('v.columns',[
               {label:'Name',fieldName:'Name'},
               {label:'Type',fieldName:'Type__c'},
               {type:'action',typeAttributes:{rowActions:actions}}
               
               
               
           ])
       
        
             
            var getPropRecords=cmp.get("c.getProperty");
            getPropRecords.setCallback(this,function(response){ 
            var state = response.getState();
                console.log('status'+state);
            if (state === "SUCCESS") {
                
                
                
                var returnValue=response.getReturnValue();
                console.log('return value'+returnValue);
                cmp.set("v.Property", returnValue);
            }
        });
        $A.enqueueAction(getPropRecords);
        
    },
    
    action:function(cmp,evt,helper)
    {
        
        var toastEvent=$A.get("e.force:showToast");
            toastEvent.setParams({
                "title":"delete",
                "message":"record deleted"
            })
        
    },

    handleRowAction: function(cmp,event,helper){
    var action=event.getParam('action');
    console.log('action'+action);
    var row=event.getParam('row');
    switch(action.name){
            case 'showdetails':
            console.log('show details');
            var navEvt=$A.get("e.force:navigateToSObject");
            console.log('id---'+row.Id);
            navEvt.setParams({
            'recordId':row.Id,
            'SlideDevName':"details"
               });
            navEvt.fire();
            break;
            case 'Delete':
             console.log('inside delete');
             var rows=cmp.get('v.data');
             //var rowIndex=rows.indexOf(row);
            console.log('rowinde'+rowIndex);
            console.log('delete----');
            console.log('Id---'+row.Id);
            var deleteProp=cmp.get("c.deleteProperty");
            
             deleteProp.setParams({Name:'KAISER Apartments'});
            
           deleteProp.setCallback(this,function(response){ 
            var state = response.getState();
                console.log('status'+state);
            if (state === "SUCCESS") {
                
                console.log('Delete successful');
                
                
            }
        });
       
            $A.enqueueAction(deleteProp);
            var toastEvent=$A.get("e.force:showToast");
            toastEvent.setParams({
                "title":"sucess",
                "message":"record deleted"
            })
            
            
            break;
}
}
    
    
    
    
    
    

    

        
		
	
})