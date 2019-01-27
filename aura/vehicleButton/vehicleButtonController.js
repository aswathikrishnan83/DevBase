({

    getvehicleInfo : function(component) {
      
        var action = component.get("c.vehicleInfo");
        action.setCallback(this, function(response) { 
              var state = response.getState();
           if (state === "SUCCESS") {
               
               var returnValue =response.getReturnValue();
                component.set("v.vehicles", returnValue);
           }
        });
        $A.enqueueAction(action);
    },
    getvehicleInfo1: function(component) {
      
        var action = component.get("c.vehicleInfo1");
        action.setCallback(this, function(response) { 
              var state = response.getState();
           if (state === "SUCCESS") {
               
               var returnValue =response.getReturnValue();
                component.set("v.vehicles", returnValue);
           }
        });
        $A.enqueueAction(action);
    }
})