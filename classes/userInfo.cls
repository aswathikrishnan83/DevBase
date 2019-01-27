public class userInfo {
    @AuraEnabled
    Public  User ouser;
    
    @AuraEnabled
   
    
    Public static user getUserInfo()
    {
        system.debug('i am here');
       
        //System.debug('id'+UserInfo.getUserId());

        User ouser=[Select UserName From User where Id='005f40000040oIrAAI'];
        System.debug('user name!!!!!!'+ouser);
        return ouser;
    }

}