package com.sina.weibo.sdk.openapi;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;

public class LogoutAPI
  extends AbsOpenAPI
{
  private static final String REVOKE_OAUTH_URL = "https://api.weibo.com/oauth2/revokeoauth2";
  
  public LogoutAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  public void logout(RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/oauth2/revokeoauth2", new WeiboParameters(), "POST", paramRequestListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\LogoutAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */