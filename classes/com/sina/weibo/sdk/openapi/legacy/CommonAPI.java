package com.sina.weibo.sdk.openapi.legacy;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class CommonAPI
  extends AbsOpenAPI
{
  public static final String LANGUAGE_EN = "english";
  public static final String LANGUAGE_ZH_CN = "zh-cn";
  public static final String LANGUAGE_ZH_TW = "zh-tw";
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/common";
  
  public CommonAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  public void getCity(String paramString1, String paramString2, String paramString3, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("province", paramString1);
    if (paramString2 != null) {
      localWeiboParameters.put("capital", paramString2);
    }
    localWeiboParameters.put("language", paramString3);
    requestAsync("https://api.weibo.com/2/common/get_city.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void getCountry(CommonAPI.CAPITAL paramCAPITAL, String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    if (paramCAPITAL != null) {
      localWeiboParameters.put("capital", paramCAPITAL.name().toLowerCase());
    }
    localWeiboParameters.put("language", paramString);
    requestAsync("https://api.weibo.com/2/common/get_country.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void getTimezone(String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("language", paramString);
    requestAsync("https://api.weibo.com/2/common/get_timezone.json", localWeiboParameters, "GET", paramRequestListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\CommonAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */