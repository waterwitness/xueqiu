package com.sina.weibo.sdk.openapi.legacy;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class SuggestionsAPI
  extends AbsOpenAPI
{
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/suggestions";
  
  public SuggestionsAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters builderCountPage(int paramInt1, int paramInt2)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    return localWeiboParameters;
  }
  
  public void byStatus(String paramString, int paramInt, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("content", paramString);
    localWeiboParameters.put("num", paramInt);
    requestAsync("https://api.weibo.com/2/suggestions/users/may_interested.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void favoritesHot(int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/suggestions/favorites/hot.json", builderCountPage(paramInt1, paramInt2), "GET", paramRequestListener);
  }
  
  public void mayInterested(int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/suggestions/users/may_interested.json", builderCountPage(paramInt1, paramInt2), "GET", paramRequestListener);
  }
  
  public void notInterested(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("uid", paramLong);
    requestAsync("https://api.weibo.com/2/suggestions/users/not_interested.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void statusesHot(SuggestionsAPI.STATUSES_TYPE paramSTATUSES_TYPE, boolean paramBoolean, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = builderCountPage(paramInt1, paramInt2);
    localWeiboParameters.put("type", paramSTATUSES_TYPE.ordinal() + 1);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("is_pic", paramInt1);
      requestAsync("https://api.weibo.com/2/suggestions/statuses/hot.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void usersHot(SuggestionsAPI.USER_CATEGORY paramUSER_CATEGORY, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("category", paramUSER_CATEGORY.name());
    requestAsync("https://api.weibo.com/2/suggestions/users/hot.json", localWeiboParameters, "GET", paramRequestListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\SuggestionsAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */