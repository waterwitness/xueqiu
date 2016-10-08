package com.sina.weibo.sdk.openapi.legacy;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class SearchAPI
  extends AbsOpenAPI
{
  public static final int FRIEND_TYPE_ATTENTIONS = 0;
  public static final int FRIEND_TYPE_FELLOWS = 1;
  public static final int RANGE_ALL = 2;
  public static final int RANGE_ATTENTIONS = 0;
  public static final int RANGE_ATTENTION_TAGS = 1;
  public static final int SCHOOL_TYPE_COLLEGE = 1;
  public static final int SCHOOL_TYPE_JUNIOR = 4;
  public static final int SCHOOL_TYPE_PRIMARY = 5;
  public static final int SCHOOL_TYPE_SENIOR = 2;
  public static final int SCHOOL_TYPE_TECHNICAL = 3;
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/search";
  
  public SearchAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters buildBaseParams(String paramString, int paramInt)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("q", paramString);
    localWeiboParameters.put("count", paramInt);
    return localWeiboParameters;
  }
  
  public void apps(String paramString, int paramInt, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/search/suggestions/apps.json", buildBaseParams(paramString, paramInt), "GET", paramRequestListener);
  }
  
  public void atUsers(String paramString, int paramInt1, int paramInt2, int paramInt3, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("q", paramString);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("type", paramInt2);
    localWeiboParameters.put("range", paramInt3);
    requestAsync("https://api.weibo.com/2/search/suggestions/at_users.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void companies(String paramString, int paramInt, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/search/suggestions/companies.json", buildBaseParams(paramString, paramInt), "GET", paramRequestListener);
  }
  
  public void schools(String paramString, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    paramString = buildBaseParams(paramString, paramInt1);
    paramString.put("type", paramInt2);
    requestAsync("https://api.weibo.com/2/search/suggestions/schools.json", paramString, "GET", paramRequestListener);
  }
  
  public void statuses(String paramString, int paramInt, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/search/suggestions/statuses.json", buildBaseParams(paramString, paramInt), "GET", paramRequestListener);
  }
  
  public void users(String paramString, int paramInt, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/search/suggestions/users.json", buildBaseParams(paramString, paramInt), "GET", paramRequestListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\SearchAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */