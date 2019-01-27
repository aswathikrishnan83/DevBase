public class vehicleController {

   @AuraEnabled
    public Static List<EquipmentInfo> vehicleInfo(){

        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-superbadge-apex.herokuapp.com/equipment');
        req.setMethod('GET');
        HttpResponse res = h.send(req);
        System.debug('resp===='+res);
        List<EquipmentInfo> equipInfo = (List<EquipmentInfo>)JSON.deserialize(res.getBody(), List<EquipmentInfo>.class);
        System.debug('====List<EquipmentInfo>'+equipInfo);
        return (equipInfo);
    }
     @AuraEnabled
    public Static List<object> vehicleInfo1(){

        Http h = new Http();
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://th-superbadge-apex.herokuapp.com/equipment');
        req.setMethod('GET');
        HttpResponse res = h.send(req);
        System.debug('resp===='+res);
       // Map<String,Object>vMap=new Map<String,Object>(JSON.deserializeUntyped(res.getBody()));
       // List<Map<String,Object>> vList= new List<Map<String,Object>>();
       //vList    =   (List<Map<String,Object>>) (JSON.deserializeUntyped(res.getBody()));
       List<Object> vList= new List<Object>();
       vList    =   (List<Object>) (JSON.deserializeUntyped(res.getBody()));
       
        return vList;
    }
    
  }