package com.sina.weibo.sdk.openapi;

import android.text.TextUtils;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.AsyncWeiboRunner;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.LogUtil;

public abstract class AbsOpenAPI
{
  protected static final String API_SERVER = "https://api.weibo.com/2";
  protected static final String HTTPMETHOD_GET = "GET";
  protected static final String HTTPMETHOD_POST = "POST";
  protected static final String KEY_ACCESS_TOKEN = "access_token";
  private static final String TAG = AbsOpenAPI.class.getName();
  protected Oauth2AccessToken mAccessToken;
  
  public AbsOpenAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    this.mAccessToken = paramOauth2AccessToken;
  }
  
  public void requestAsync(String paramString1, WeiboParameters paramWeiboParameters, String paramString2, RequestListener paramRequestListener)
  {
    if ((this.mAccessToken == null) || (TextUtils.isEmpty(paramString1)) || (paramWeiboParameters == null) || (TextUtils.isEmpty(paramString2)) || (paramRequestListener == null))
    {
      LogUtil.e(TAG, "Argument error!");
      return;
    }
    paramWeiboParameters.put("access_token", this.mAccessToken.getToken());
    AsyncWeiboRunner.requestAsync(paramString1, paramWeiboParameters, paramString2, paramRequestListener);
  }
  
  public String requestSync(String paramString1, WeiboParameters paramWeiboParameters, String paramString2)
  {
    if ((this.mAccessToken == null) || (TextUtils.isEmpty(paramString1)) || (paramWeiboParameters == null) || (TextUtils.isEmpty(paramString2)))
    {
      LogUtil.e(TAG, "Argument error!");
      return "";
    }
    paramWeiboParameters.put("access_token", this.mAccessToken.getToken());
    return AsyncWeiboRunner.request(paramString1, paramWeiboParameters, paramString2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\AbsOpenAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */