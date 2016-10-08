package com.sina.weibo.sdk.openapi.legacy;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class RegisterAPI
  extends AbsOpenAPI
{
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/register";
  
  public RegisterAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  public void suggestions(String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("nickname", paramString);
    requestAsync("https://api.weibo.com/2/register/verify_nickname.json", localWeiboParameters, "GET", paramRequestListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\RegisterAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */