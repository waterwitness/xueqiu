package com.sina.weibo.sdk.openapi.legacy;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class TrendsAPI
  extends AbsOpenAPI
{
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/trends";
  
  public TrendsAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  public void daily(boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localWeiboParameters.put("base_app", i);
      requestAsync("https://api.weibo.com/2/trends/daily.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void destroy(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("trend_id", paramLong);
    requestAsync("https://api.weibo.com/2/trends/destroy.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void follow(String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("trend_name", paramString);
    requestAsync("https://api.weibo.com/2/trends/follow.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void hourly(boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localWeiboParameters.put("base_app", i);
      requestAsync("https://api.weibo.com/2/trends/hourly.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void isFollow(String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("trend_name", paramString);
    requestAsync("https://api.weibo.com/2/trends/is_follow.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void trends(long paramLong, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("uid", paramLong);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    requestAsync("https://api.weibo.com/2/trends.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void weekly(boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localWeiboParameters.put("base_app", i);
      requestAsync("https://api.weibo.com/2/trends/weekly.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\TrendsAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */