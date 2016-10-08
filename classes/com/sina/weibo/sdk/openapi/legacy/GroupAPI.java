package com.sina.weibo.sdk.openapi.legacy;

import android.text.TextUtils;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class GroupAPI
  extends AbsOpenAPI
{
  public static final int FEATURE_ALL = 0;
  public static final int FEATURE_MUSICE = 4;
  public static final int FEATURE_ORIGINAL = 1;
  public static final int FEATURE_PICTURE = 2;
  public static final int FEATURE_VIDEO = 3;
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/friendships/groups";
  
  public GroupAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters buildeMembersParams(long paramLong1, long paramLong2)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("list_id", paramLong1);
    localWeiboParameters.put("uid", paramLong2);
    return localWeiboParameters;
  }
  
  public void addMember(long paramLong1, long paramLong2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/friendships/groups/members/add.json", buildeMembersParams(paramLong1, paramLong2), "POST", paramRequestListener);
  }
  
  public void addMemberBatch(long paramLong, String paramString1, String paramString2, RequestListener paramRequestListener)
  {
    paramString1 = buildeMembersParams(paramLong, Long.valueOf(paramString1).longValue());
    paramString1.put("group_descriptions", paramString2);
    requestAsync("https://api.weibo.com/2/friendships/groups/members/add_batch.json", paramString1, "POST", paramRequestListener);
  }
  
  public void create(String paramString1, String paramString2, String paramString3, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("name", paramString1);
    if (!TextUtils.isEmpty(paramString2)) {
      localWeiboParameters.put("description", paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      localWeiboParameters.put("tags", paramString3);
    }
    requestAsync("https://api.weibo.com/2/friendships/groups/create.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void deleteGroup(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("list_id", paramLong);
    requestAsync("https://api.weibo.com/2/friendships/groups/destroy.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void deleteMembers(long paramLong1, long paramLong2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/friendships/groups/members/destroy.json", buildeMembersParams(paramLong1, paramLong2), "POST", paramRequestListener);
  }
  
  public void groups(RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/friendships/groups.json", new WeiboParameters(), "GET", paramRequestListener);
  }
  
  public void isMember(long paramLong1, long paramLong2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/friendships/groups/is_member.json", buildeMembersParams(paramLong2, paramLong1), "GET", paramRequestListener);
  }
  
  public void listed() {}
  
  public void memberDescriptionPatch() {}
  
  public void members(long paramLong, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("list_id", paramLong);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("cursor", paramInt2);
    requestAsync("https://api.weibo.com/2/friendships/groups/members.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void membersIds() {}
  
  public void order(String paramString, int paramInt, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("list_id", paramString);
    localWeiboParameters.put("count", paramInt);
    requestAsync("https://api.weibo.com/2/friendships/groups/order.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void showGroup(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("list_id", paramLong);
    requestAsync("https://api.weibo.com/2/friendships/groups/show.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void showGroupBatch(String paramString, long paramLong, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/friendships/groups/show_batch.json", buildeMembersParams(Long.valueOf(paramString).longValue(), paramLong), "GET", paramRequestListener);
  }
  
  public void timeline(long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("list_id", paramLong1);
    localWeiboParameters.put("since_id", paramLong2);
    localWeiboParameters.put("max_id", paramLong3);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("base_app", paramInt1);
      localWeiboParameters.put("feature", paramInt3);
      requestAsync("https://api.weibo.com/2/friendships/groups/timeline.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void timelineIds() {}
  
  public void update(long paramLong, String paramString1, String paramString2, String paramString3, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("list_id", paramLong);
    if (!TextUtils.isEmpty(paramString1)) {
      localWeiboParameters.put("name", paramString1);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      localWeiboParameters.put("description", paramString2);
    }
    if (!TextUtils.isEmpty(paramString3)) {
      localWeiboParameters.put("tags", paramString3);
    }
    requestAsync("https://api.weibo.com/2/friendships/groups/update.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void updateMembers(long paramLong1, long paramLong2, String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildeMembersParams(paramLong1, paramLong2);
    if (!TextUtils.isDigitsOnly(paramString)) {
      localWeiboParameters.put("group_description", paramString);
    }
    requestAsync("https://api.weibo.com/2/friendships/groups/members/update.json", localWeiboParameters, "POST", paramRequestListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\GroupAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */