/**
 * See https://github.com/financialforcedev/fflib-apex-common for more info
 *
 * Install library via
 *   https://githubsfdeploy.herokuapp.com/app/githubdeploy/financialforcedev/fflib-apex-common
 */

/**
 * Encapsulates all service layer logic for a given function or module in the application
 * 
 * For more guidelines and details see 
 *   https://developer.salesforce.com/page/Apex_Enterprise_Patterns_-_Service_Layer
 *
 **/
public class surverHelper
{
	public static void updatePhone(List<Survey__c>sList)
	{

		Set<String>email=new Set<String>();
			for(Survey__c s:sList)
			{
	            email.add(s.email__c);

			}

		Map<String,Contact>cMap=new Map<String,Contact>();
		List<Contact>cList=new List<Contact>();
		cList=[Select Phone,Id,Email From Contact where Email=:email];
		System.debug('size'+cList.Size());
			for(contact c:cList)
					{
						cMap.put(c.Email,c);
					}
		    for(Survey__c s:sList)
		       {
		       	s.Phone__c=cMap.get(s.email__c).Phone;
		       }







	}
}