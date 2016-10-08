package com.sina.weibo.sdk.openapi.legacy;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class PlaceAPI
  extends AbsOpenAPI
{
  public static final int GENDER_ALL = 0;
  public static final int GENDER_MAN = 1;
  public static final int GENDER_WOMAM = 2;
  public static final int NEARBY_POIS_SORT_BY_CHECKIN_NUMBER = 2;
  public static final int NEARBY_POIS_SORT_BY_DISTENCE = 1;
  public static final int NEARBY_POIS_SORT_BY_WEIGHT = 0;
  public static final int NEARBY_USER_SORT_BY_DISTANCE = 1;
  public static final int NEARBY_USER_SORT_BY_SOCIAL_SHIP = 2;
  public static final int NEARBY_USER_SORT_BY_TIME = 0;
  public static final int POIS_SORT_BY_HOT = 1;
  public static final int POIS_SORT_BY_TIME = 0;
  public static final int RELATIONSHIP_FILTER_ALL = 0;
  public static final int RELATIONSHIP_FILTER_FOLLOW = 2;
  public static final int RELATIONSHIP_FILTER_STRANGER = 1;
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/place";
  public static final int SORT_BY_DISTENCE = 1;
  public static final int SORT_BY_TIME = 0;
  public static final int USER_LEVEL_ALL = 0;
  public static final int USER_LEVEL_NORMAL = 1;
  public static final int USER_LEVEL_STAR = 7;
  public static final int USER_LEVEL_VIP = 2;
  
  public PlaceAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters buildNearbyParams(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("lat", paramString1);
    localWeiboParameters.put("long", paramString2);
    localWeiboParameters.put("range", paramInt1);
    localWeiboParameters.put("count", paramInt2);
    localWeiboParameters.put("page", paramInt3);
    localWeiboParameters.put("sort", paramInt4);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("offset", paramInt1);
      return localWeiboParameters;
    }
  }
  
  private WeiboParameters buildPoiis(String paramString1, String paramString2, boolean paramBoolean)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("poiid", paramString1);
    localWeiboParameters.put("status", paramString2);
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localWeiboParameters.put("public", i);
      return localWeiboParameters;
    }
  }
  
  private WeiboParameters buildPoisParams(String paramString, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("poiid", paramString);
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localWeiboParameters.put("base_app", i);
      localWeiboParameters.put("count", paramInt1);
      localWeiboParameters.put("page", paramInt2);
      return localWeiboParameters;
    }
  }
  
  private WeiboParameters buildTimeLineParamsBase(long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("since_id", paramLong1);
    localWeiboParameters.put("max_id", paramLong2);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    return localWeiboParameters;
  }
  
  private WeiboParameters buildUserParams(long paramLong, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("uid", paramLong);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("base_app", paramInt1);
      return localWeiboParameters;
    }
  }
  
  public void friendsTimeline(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("type", paramInt1);
      requestAsync("https://api.weibo.com/2/place/friends_timeline.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void nearbyPhotos(String paramString1, String paramString2, int paramInt1, long paramLong1, long paramLong2, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean, RequestListener paramRequestListener)
  {
    paramString1 = buildNearbyParams(paramString1, paramString2, paramInt1, paramInt3, paramInt4, paramInt2, paramBoolean);
    paramString1.put("starttime", paramLong1);
    paramString1.put("endtime", paramLong2);
    requestAsync("https://api.weibo.com/2/place/nearby/photos.json", paramString1, "GET", paramRequestListener);
  }
  
  public void nearbyPois(String paramString1, String paramString2, int paramInt1, String paramString3, String paramString4, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean, RequestListener paramRequestListener)
  {
    paramString1 = buildNearbyParams(paramString1, paramString2, paramInt1, paramInt2, paramInt3, paramInt4, paramBoolean);
    paramString1.put("q", paramString3);
    paramString1.put("category", paramString4);
    requestAsync("https://api.weibo.com/2/place/nearby/pois.json", paramString1, "GET", paramRequestListener);
  }
  
  public void nearbyTimeline(String paramString1, String paramString2, int paramInt1, long paramLong1, long paramLong2, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean1, boolean paramBoolean2, RequestListener paramRequestListener)
  {
    paramString1 = buildNearbyParams(paramString1, paramString2, paramInt1, paramInt3, paramInt4, paramInt2, paramBoolean2);
    paramString1.put("starttime", paramLong1);
    paramString1.put("endtime", paramLong2);
    if (paramBoolean1) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      paramString1.put("base_app", paramInt1);
      requestAsync("https://api.weibo.com/2/place/nearby_timeline.json", paramString1, "GET", paramRequestListener);
      return;
    }
  }
  
  public void nearbyUserList(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, boolean paramBoolean, RequestListener paramRequestListener)
  {
    paramString1 = buildNearbyParams(paramString1, paramString2, paramInt3, paramInt1, paramInt2, paramInt4, paramBoolean);
    paramString1.put("filter", paramInt5);
    paramString1.put("gender", paramInt6);
    paramString1.put("level", paramInt7);
    paramString1.put("startbirth", paramInt8);
    paramString1.put("endbirth", paramInt9);
    requestAsync("https://api.weibo.com/2/place/nearby_users/list.json", paramString1, "GET", paramRequestListener);
  }
  
  public void nearbyUsers(String paramString1, String paramString2, int paramInt1, long paramLong1, long paramLong2, int paramInt2, int paramInt3, int paramInt4, boolean paramBoolean, RequestListener paramRequestListener)
  {
    paramString1 = buildNearbyParams(paramString1, paramString2, paramInt1, paramInt3, paramInt4, paramInt2, paramBoolean);
    paramString1.put("starttime", paramLong1);
    paramString1.put("endtime", paramLong2);
    requestAsync("https://api.weibo.com/2/place/nearby/users.json", paramString1, "GET", paramRequestListener);
  }
  
  public void nearbyUsersCreate(String paramString1, String paramString2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("lat", paramString1);
    localWeiboParameters.put("long", paramString2);
    requestAsync("https://api.weibo.com/2/place/nearby_users/create.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void nearbyUsersDestroy(RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/place/nearby_users/destory.json", new WeiboParameters(), "POST", paramRequestListener);
  }
  
  public void poiTimeline(String paramString, long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2);
    localWeiboParameters.put("poiid", paramString);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("base_app", paramInt1);
      requestAsync("https://api.weibo.com/2/place/poi_timeline.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void poisAddCheckin(String paramString1, String paramString2, String paramString3, boolean paramBoolean, RequestListener paramRequestListener)
  {
    paramString1 = buildPoiis(paramString1, paramString2, paramBoolean);
    paramString1.put("pic", paramString3);
    requestAsync("https://api.weibo.com/2/place/pois/add_checkin.json", paramString1, "POST", paramRequestListener);
  }
  
  public void poisAddPhoto(String paramString1, String paramString2, String paramString3, boolean paramBoolean, RequestListener paramRequestListener)
  {
    paramString1 = buildPoiis(paramString1, paramString2, paramBoolean);
    paramString1.put("pic", paramString3);
    requestAsync("https://api.weibo.com/2/place/pois/add_photo.json", paramString1, "POST", paramRequestListener);
  }
  
  public void poisAddTip(String paramString1, String paramString2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/place/pois/add_tip.json", buildPoiis(paramString1, paramString2, paramBoolean), "POST", paramRequestListener);
  }
  
  public void poisAddTodo(String paramString1, String paramString2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/place/pois/add_todo.json", buildPoiis(paramString1, paramString2, paramBoolean), "POST", paramRequestListener);
  }
  
  public void poisCategory(int paramInt, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("pid", paramInt);
    if (paramBoolean) {}
    for (paramInt = 1;; paramInt = 0)
    {
      localWeiboParameters.put("flag", paramInt);
      requestAsync("https://api.weibo.com/2/place/pois/category.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void poisCreate(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("title", paramString1);
    localWeiboParameters.put("address", paramString2);
    localWeiboParameters.put("category", paramString3);
    localWeiboParameters.put("lat", paramString4);
    localWeiboParameters.put("long", paramString5);
    localWeiboParameters.put("city", paramString6);
    localWeiboParameters.put("province", paramString7);
    localWeiboParameters.put("country", paramString8);
    localWeiboParameters.put("phone", paramString9);
    localWeiboParameters.put("postcode", paramString10);
    localWeiboParameters.put("extra", paramString11);
    requestAsync("https://api.weibo.com/2/place/pois/create.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void poisPhotos(String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, RequestListener paramRequestListener)
  {
    paramString = buildPoisParams(paramString, paramInt1, paramInt2, paramBoolean);
    paramString.put("sort", paramInt3);
    requestAsync("https://api.weibo.com/2/place/pois/photos.json", paramString, "GET", paramRequestListener);
  }
  
  public void poisSearch(String paramString1, String paramString2, String paramString3, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("keyword", paramString1);
    localWeiboParameters.put("city", paramString2);
    localWeiboParameters.put("category", paramString3);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    requestAsync("https://api.weibo.com/2/place/pois/search.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void poisShow(String paramString, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("poiid", paramString);
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localWeiboParameters.put("base_app", i);
      requestAsync("https://api.weibo.com/2/place/pois/show.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void poisTips(String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean, RequestListener paramRequestListener)
  {
    paramString = buildPoisParams(paramString, paramInt1, paramInt2, paramBoolean);
    paramString.put("sort", paramInt3);
    requestAsync("https://api.weibo.com/2/place/pois/tips.json", paramString, "GET", paramRequestListener);
  }
  
  public void poisUsers(String paramString, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/place/pois/users.json", buildPoisParams(paramString, paramInt1, paramInt2, paramBoolean), "GET", paramRequestListener);
  }
  
  public void pulicTimeline(long paramLong, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("count", paramLong);
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localWeiboParameters.put("base_app", i);
      requestAsync("https://api.weibo.com/2/place/public_timelin.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void statusesShow(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("id", paramLong);
    requestAsync("https://api.weibo.com/2/place/statuses/show.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void userTimeline(long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong2, paramLong3, paramInt1, paramInt2);
    localWeiboParameters.put("uid", paramLong1);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("base_app", paramInt1);
      requestAsync("https://api.weibo.com/2/place/user_timeline.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void usersCheckins(long paramLong, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/place/users/checkins.json", buildUserParams(paramLong, paramInt1, paramInt2, paramBoolean), "GET", paramRequestListener);
  }
  
  public void usersPhotos(long paramLong, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/place/users/photos.json", buildUserParams(paramLong, paramInt1, paramInt2, paramBoolean), "GET", paramRequestListener);
  }
  
  public void usersShow(long paramLong, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("uid", paramLong);
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localWeiboParameters.put("base_app", i);
      requestAsync("https://api.weibo.com/2/place/users/show.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void usersTips(long paramLong, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/place/users/tips.json", buildUserParams(paramLong, paramInt1, paramInt2, paramBoolean), "GET", paramRequestListener);
  }
  
  public void usersTodo(long paramLong, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/place/users/todos.json", buildUserParams(paramLong, paramInt1, paramInt2, paramBoolean), "GET", paramRequestListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\PlaceAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */