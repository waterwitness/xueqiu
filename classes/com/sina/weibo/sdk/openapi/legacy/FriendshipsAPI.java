package com.sina.weibo.sdk.openapi.legacy;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class FriendshipsAPI
  extends AbsOpenAPI
{
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/friendships";
  
  public FriendshipsAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters buildFriendIDParam(long paramLong, int paramInt)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("uid", paramLong);
    localWeiboParameters.put("count", paramInt);
    return localWeiboParameters;
  }
  
  private WeiboParameters buildFriendsParam(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("cursor", paramInt2);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("trim_status", paramInt1);
      return localWeiboParameters;
    }
  }
  
  public void bilateral(long paramLong, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildFriendIDParam(paramLong, paramInt1);
    localWeiboParameters.put("page", paramInt2);
    requestAsync("https://api.weibo.com/2/friendships/friends/bilateral.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void bilateralIds(long paramLong, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildFriendIDParam(paramLong, paramInt1);
    localWeiboParameters.put("page", paramInt2);
    requestAsync("https://api.weibo.com/2/friendships/friends/bilateral/ids.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void chainFollowers(long paramLong, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildFriendIDParam(paramLong, paramInt1);
    localWeiboParameters.put("page", paramInt2);
    requestAsync("https://api.weibo.com/2/friendships/friends_chain/followers.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void create(long paramLong, String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("uid", paramLong);
    localWeiboParameters.put("screen_name", paramString);
    requestAsync("https://api.weibo.com/2/friendships/create.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  @Deprecated
  public void create(String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("screen_name", paramString);
    requestAsync("https://api.weibo.com/2/friendships/create.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void destroy(long paramLong, String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("uid", paramLong);
    localWeiboParameters.put("screen_name", paramString);
    requestAsync("https://api.weibo.com/2/friendships/destroy.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  @Deprecated
  public void destroy(String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("screen_name", paramString);
    requestAsync("https://api.weibo.com/2/friendships/destroy.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void followers(long paramLong, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildFriendIDParam(paramLong, paramInt1);
    localWeiboParameters.put("cursor", paramInt2);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("trim_status", paramInt1);
      requestAsync("https://api.weibo.com/2/friendships/followers.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void followers(String paramString, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildFriendsParam(paramInt1, paramInt2, paramBoolean);
    localWeiboParameters.put("screen_name", paramString);
    requestAsync("https://api.weibo.com/2/friendships/followers.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void followersActive(long paramLong, int paramInt, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/friendships/followers/active.json", buildFriendIDParam(paramLong, paramInt), "GET", paramRequestListener);
  }
  
  public void followersIds(long paramLong, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildFriendIDParam(paramLong, paramInt1);
    localWeiboParameters.put("cursor", paramInt2);
    requestAsync("https://api.weibo.com/2/friendships/followers/ids.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void followersIds(String paramString, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("screen_name", paramString);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("cursor", paramInt2);
    requestAsync("https://api.weibo.com/2/friendships/followers/ids.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void friends(long paramLong, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    new WeiboParameters();
    WeiboParameters localWeiboParameters = buildFriendsParam(paramInt1, paramInt2, paramBoolean);
    localWeiboParameters.put("uid", paramLong);
    requestAsync("https://api.weibo.com/2/friendships/friends.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void friends(String paramString, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildFriendsParam(paramInt1, paramInt2, paramBoolean);
    localWeiboParameters.put("screen_name", paramString);
    requestAsync("https://api.weibo.com/2/friendships/friends.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void friendsIds(long paramLong, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildFriendIDParam(paramLong, paramInt1);
    localWeiboParameters.put("cursor", paramInt2);
    requestAsync("https://api.weibo.com/2/friendships/friends/ids.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void friendsIds(String paramString, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("screen_name", paramString);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("cursor", paramInt2);
    requestAsync("https://api.weibo.com/2/friendships/friends/ids.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void inCommon(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildFriendIDParam(paramLong1, paramInt1);
    localWeiboParameters.put("suid", paramLong2);
    localWeiboParameters.put("page", paramInt2);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("trim_status", paramInt1);
      requestAsync("https://api.weibo.com/2/friendships/friends/in_common.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void show(long paramLong1, long paramLong2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("source_id", paramLong1);
    localWeiboParameters.put("target_id", paramLong2);
    requestAsync("https://api.weibo.com/2/friendships/show.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void show(long paramLong, String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("source_id", paramLong);
    localWeiboParameters.put("target_screen_name", paramString);
    requestAsync("https://api.weibo.com/2/friendships/show.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void show(String paramString, long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("source_screen_name", paramString);
    localWeiboParameters.put("target_id", paramLong);
    requestAsync("https://api.weibo.com/2/friendships/show.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void show(String paramString1, String paramString2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("target_screen_name", paramString2);
    localWeiboParameters.put("source_screen_name", paramString1);
    requestAsync("https://api.weibo.com/2/friendships/show.json", localWeiboParameters, "GET", paramRequestListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\FriendshipsAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */