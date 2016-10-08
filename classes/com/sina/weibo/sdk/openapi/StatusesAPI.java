package com.sina.weibo.sdk.openapi;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.SparseArray;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;

public class StatusesAPI
  extends AbsOpenAPI
{
  private static final String API_BASE_URL = "https://api.weibo.com/2/statuses";
  public static final int AUTHOR_FILTER_ALL = 0;
  public static final int AUTHOR_FILTER_ATTENTIONS = 1;
  public static final int AUTHOR_FILTER_STRANGER = 2;
  public static final int FEATURE_ALL = 0;
  public static final int FEATURE_MUSICE = 4;
  public static final int FEATURE_ORIGINAL = 1;
  public static final int FEATURE_PICTURE = 2;
  public static final int FEATURE_VIDEO = 3;
  private static final int READ_API_FRIENDS_TIMELINE = 0;
  private static final int READ_API_MENTIONS = 1;
  public static final int SRC_FILTER_ALL = 0;
  public static final int SRC_FILTER_WEIBO = 1;
  public static final int SRC_FILTER_WEIQUN = 2;
  public static final int TYPE_FILTER_ALL = 0;
  public static final int TYPE_FILTER_ORIGAL = 1;
  private static final int WRITE_API_REPOST = 3;
  private static final int WRITE_API_UPDATE = 2;
  private static final int WRITE_API_UPLOAD = 4;
  private static final int WRITE_API_UPLOAD_URL_TEXT = 5;
  private static final SparseArray<String> sAPIList;
  
  static
  {
    SparseArray localSparseArray = new SparseArray();
    sAPIList = localSparseArray;
    localSparseArray.put(0, "https://api.weibo.com/2/statuses/friends_timeline.json");
    sAPIList.put(1, "https://api.weibo.com/2/statuses/mentions.json");
    sAPIList.put(3, "https://api.weibo.com/2/statuses/repost.json");
    sAPIList.put(2, "https://api.weibo.com/2/statuses/update.json");
    sAPIList.put(4, "https://api.weibo.com/2/statuses/upload.json");
    sAPIList.put(5, "https://api.weibo.com/2/statuses/upload_url_text.json");
  }
  
  public StatusesAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters buildMentionsParams(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("since_id", paramLong1);
    localWeiboParameters.put("max_id", paramLong2);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    localWeiboParameters.put("filter_by_author", paramInt3);
    localWeiboParameters.put("filter_by_source", paramInt4);
    localWeiboParameters.put("filter_by_type", paramInt5);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("trim_user", paramInt1);
      return localWeiboParameters;
    }
  }
  
  private WeiboParameters buildTimeLineParamsBase(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3)
  {
    int i = 1;
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("since_id", paramLong1);
    localWeiboParameters.put("max_id", paramLong2);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    if (paramBoolean1)
    {
      paramInt1 = 1;
      localWeiboParameters.put("base_app", paramInt1);
      if (!paramBoolean2) {
        break label99;
      }
    }
    label99:
    for (paramInt1 = i;; paramInt1 = 0)
    {
      localWeiboParameters.put("trim_user", paramInt1);
      localWeiboParameters.put("feature", paramInt3);
      return localWeiboParameters;
      paramInt1 = 0;
      break;
    }
  }
  
  private WeiboParameters buildUpdateParams(String paramString1, String paramString2, String paramString3)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("status", paramString1);
    if (!TextUtils.isEmpty(paramString3)) {
      localWeiboParameters.put("long", paramString3);
    }
    if (!TextUtils.isEmpty(paramString2)) {
      localWeiboParameters.put("lat", paramString2);
    }
    return localWeiboParameters;
  }
  
  public void friendsTimeline(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3);
    requestAsync((String)sAPIList.get(0), localWeiboParameters, "GET", paramRequestListener);
  }
  
  public String friendsTimelineSync(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3);
    return requestSync((String)sAPIList.get(0), localWeiboParameters, "GET");
  }
  
  public void mentions(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildMentionsParams(paramLong1, paramLong2, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramBoolean);
    requestAsync((String)sAPIList.get(1), localWeiboParameters, "GET", paramRequestListener);
  }
  
  public String mentionsSync(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean)
  {
    WeiboParameters localWeiboParameters = buildMentionsParams(paramLong1, paramLong2, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5, paramBoolean);
    return requestSync((String)sAPIList.get(1), localWeiboParameters, "GET");
  }
  
  public void update(String paramString1, String paramString2, String paramString3, RequestListener paramRequestListener)
  {
    paramString1 = buildUpdateParams(paramString1, paramString2, paramString3);
    requestAsync((String)sAPIList.get(2), paramString1, "POST", paramRequestListener);
  }
  
  public String updateSync(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = buildUpdateParams(paramString1, paramString2, paramString3);
    return requestSync((String)sAPIList.get(2), paramString1, "POST");
  }
  
  public void upload(String paramString1, Bitmap paramBitmap, String paramString2, String paramString3, RequestListener paramRequestListener)
  {
    paramString1 = buildUpdateParams(paramString1, paramString2, paramString3);
    paramString1.put("pic", paramBitmap);
    requestAsync((String)sAPIList.get(4), paramString1, "POST", paramRequestListener);
  }
  
  public String uploadSync(String paramString1, Bitmap paramBitmap, String paramString2, String paramString3)
  {
    paramString1 = buildUpdateParams(paramString1, paramString2, paramString3);
    paramString1.put("pic", paramBitmap);
    return requestSync((String)sAPIList.get(4), paramString1, "POST");
  }
  
  public void uploadUrlText(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, RequestListener paramRequestListener)
  {
    paramString1 = buildUpdateParams(paramString1, paramString4, paramString5);
    paramString1.put("url", paramString2);
    paramString1.put("pic_id", paramString3);
    requestAsync((String)sAPIList.get(5), paramString1, "POST", paramRequestListener);
  }
  
  public String uploadUrlTextSync(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    paramString1 = buildUpdateParams(paramString1, paramString4, paramString5);
    paramString1.put("url", paramString2);
    paramString1.put("pic_id", paramString3);
    return requestSync((String)sAPIList.get(5), paramString1, "POST");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\StatusesAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */