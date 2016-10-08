package com.sina.weibo.sdk.openapi.legacy;

import android.graphics.Bitmap;
import android.text.TextUtils;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class StatusesAPI
  extends AbsOpenAPI
{
  public static final int AUTHOR_FILTER_ALL = 0;
  public static final int AUTHOR_FILTER_ATTENTIONS = 1;
  public static final int AUTHOR_FILTER_STRANGER = 2;
  public static final int COMMENTS_BOTH = 3;
  public static final int COMMENTS_CUR_STATUSES = 1;
  public static final int COMMENTS_NONE = 0;
  public static final int COMMENTS_RIGAL_STATUSES = 2;
  public static final String EMOTION_TYPE_ANI = "ani";
  public static final String EMOTION_TYPE_CARTOON = "cartoon";
  public static final String EMOTION_TYPE_FACE = "face";
  public static final int FEATURE_ALL = 0;
  public static final int FEATURE_MUSICE = 4;
  public static final int FEATURE_ORIGINAL = 1;
  public static final int FEATURE_PICTURE = 2;
  public static final int FEATURE_VIDEO = 3;
  public static final String LANGUAGE_CNNAME = "cnname";
  public static final String LANGUAGE_TWNAME = "twname";
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/statuses";
  public static final int SRC_FILTER_ALL = 0;
  public static final int SRC_FILTER_WEIBO = 1;
  public static final int SRC_FILTER_WEIQUN = 2;
  public static final int TYPE_COMMENTS = 2;
  public static final int TYPE_FILTER_ALL = 0;
  public static final int TYPE_FILTER_ORIGAL = 1;
  public static final int TYPE_MESSAGE = 3;
  public static final int TYPE_STATUSES = 1;
  
  public StatusesAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters buildHotParams(int paramInt, boolean paramBoolean)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("count", paramInt);
    if (paramBoolean) {}
    for (paramInt = 1;; paramInt = 0)
    {
      localWeiboParameters.put("base_app", paramInt);
      return localWeiboParameters;
    }
  }
  
  private WeiboParameters buildTimeLineBase(long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("since_id", paramLong1);
    localWeiboParameters.put("max_id", paramLong2);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    return localWeiboParameters;
  }
  
  private WeiboParameters buildTimeLineWithApp(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3)
  {
    WeiboParameters localWeiboParameters = buildTimeLineBase(paramLong1, paramLong2, paramInt1, paramInt2);
    localWeiboParameters.put("feature", paramInt3);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("base_app", paramInt1);
      return localWeiboParameters;
    }
  }
  
  private WeiboParameters buildTimeLineWithAppTrim(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, int paramInt3)
  {
    WeiboParameters localWeiboParameters = buildTimeLineWithApp(paramLong1, paramLong2, paramInt1, paramInt2, paramBoolean1, paramInt3);
    if (paramBoolean2) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("trim_user", paramInt1);
      return localWeiboParameters;
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
  
  public void bilateralTimeline(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/statuses/bilateral_timeline.json", buildTimeLineWithAppTrim(paramLong1, paramLong2, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3), "GET", paramRequestListener);
  }
  
  public void count(String[] paramArrayOfString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfString.length;
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
        localWeiboParameters.put("ids", localStringBuilder.toString());
        requestAsync("https://api.weibo.com/2/statuses/count.json", localWeiboParameters, "GET", paramRequestListener);
        return;
      }
      localStringBuilder.append(paramArrayOfString[i]).append(",");
      i += 1;
    }
  }
  
  public void destroy(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("id", paramLong);
    requestAsync("https://api.weibo.com/2/statuses/destroy.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void emotions(String paramString1, String paramString2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("type", paramString1);
    localWeiboParameters.put("language", paramString2);
    requestAsync("https://api.weibo.com/2/emotions.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void friendsTimeline(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/statuses/friends_timeline.json", buildTimeLineWithAppTrim(paramLong1, paramLong2, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3), "GET", paramRequestListener);
  }
  
  public void friendsTimelineIds(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/statuses/friends_timeline/ids.json", buildTimeLineWithApp(paramLong1, paramLong2, paramInt1, paramInt2, paramBoolean, paramInt3), "GET", paramRequestListener);
  }
  
  public void homeTimeline(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/statuses/home_timeline.json", buildTimeLineWithAppTrim(paramLong1, paramLong2, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3), "GET", paramRequestListener);
  }
  
  public void hotCommentsDaily(int paramInt, boolean paramBoolean, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/statuses/hot/comments_daily.json", buildHotParams(paramInt, paramBoolean), "GET", paramRequestListener);
  }
  
  public void hotCommentsWeekly(int paramInt, boolean paramBoolean, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/statuses/hot/comments_weekly.json", buildHotParams(paramInt, paramBoolean), "GET", paramRequestListener);
  }
  
  public void hotRepostDaily(int paramInt, boolean paramBoolean, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/statuses/hot/repost_daily.json", buildHotParams(paramInt, paramBoolean), "GET", paramRequestListener);
  }
  
  public void hotRepostWeekly(int paramInt, boolean paramBoolean, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/statuses/hot/repost_weekly.json", buildHotParams(paramInt, paramBoolean), "GET", paramRequestListener);
  }
  
  public void mentions(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineBase(paramLong1, paramLong2, paramInt1, paramInt2);
    localWeiboParameters.put("filter_by_author", paramInt3);
    localWeiboParameters.put("filter_by_source", paramInt4);
    localWeiboParameters.put("filter_by_type", paramInt5);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("trim_user", paramInt1);
      requestAsync("https://api.weibo.com/2/statuses/mentions.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void mentionsIds(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineBase(paramLong1, paramLong2, paramInt1, paramInt2);
    localWeiboParameters.put("filter_by_author", paramInt3);
    localWeiboParameters.put("filter_by_source", paramInt4);
    localWeiboParameters.put("filter_by_type", paramInt5);
    requestAsync("https://api.weibo.com/2/statuses/mentions/ids.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void publicTimeline(int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("base_app", paramInt1);
      requestAsync("https://api.weibo.com/2/statuses/public_timeline.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public void queryID(String[] paramArrayOfString, int paramInt, boolean paramBoolean1, boolean paramBoolean2, RequestListener paramRequestListener)
  {
    int j = 1;
    WeiboParameters localWeiboParameters = new WeiboParameters();
    if (paramArrayOfString != null)
    {
      if (1 == paramArrayOfString.length) {
        localWeiboParameters.put("mid", paramArrayOfString[0]);
      }
    }
    else
    {
      localWeiboParameters.put("type", paramInt);
      if (!paramBoolean1) {
        break label166;
      }
      paramInt = 1;
      label46:
      localWeiboParameters.put("inbox", paramInt);
      if (!paramBoolean2) {
        break label171;
      }
    }
    label166:
    label171:
    for (paramInt = j;; paramInt = 0)
    {
      localWeiboParameters.put("isBase62", paramInt);
      requestAsync("https://api.weibo.com/2/statuses/queryid.json", localWeiboParameters, "GET", paramRequestListener);
      return;
      localWeiboParameters.put("is_batch", 1);
      StringBuilder localStringBuilder = new StringBuilder();
      int k = paramArrayOfString.length;
      int i = 0;
      for (;;)
      {
        if (i >= k)
        {
          localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
          localWeiboParameters.put("mid", localStringBuilder.toString());
          break;
        }
        localStringBuilder.append(paramArrayOfString[i]).append(",");
        i += 1;
      }
      paramInt = 0;
      break label46;
    }
  }
  
  public void queryMID(long[] paramArrayOfLong, int paramInt, RequestListener paramRequestListener)
  {
    int i = 0;
    WeiboParameters localWeiboParameters = new WeiboParameters();
    if (1 == paramArrayOfLong.length)
    {
      localWeiboParameters.put("id", paramArrayOfLong[0]);
      localWeiboParameters.put("type", paramInt);
      requestAsync("https://api.weibo.com/2/statuses/querymid.json", localWeiboParameters, "GET", paramRequestListener);
      return;
    }
    localWeiboParameters.put("is_batch", 1);
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfLong.length;
    for (;;)
    {
      if (i >= j)
      {
        localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
        localWeiboParameters.put("id", localStringBuilder.toString());
        break;
      }
      localStringBuilder.append(paramArrayOfLong[i]).append(",");
      i += 1;
    }
  }
  
  public void repost(long paramLong, String paramString, int paramInt, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("id", paramLong);
    localWeiboParameters.put("status", paramString);
    localWeiboParameters.put("is_comment", paramInt);
    requestAsync("https://api.weibo.com/2/statuses/repost.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void repostByMe(long paramLong1, long paramLong2, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/statuses/repost_by_me.json", buildTimeLineBase(paramLong1, paramLong2, paramInt1, paramInt2), "GET", paramRequestListener);
  }
  
  public void repostTimeline(long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, int paramInt3, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineBase(paramLong2, paramLong3, paramInt1, paramInt2);
    localWeiboParameters.put("id", paramLong1);
    localWeiboParameters.put("filter_by_author", paramInt3);
    requestAsync("https://api.weibo.com/2/statuses/repost_timeline.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void repostTimelineIds(long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, int paramInt3, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineBase(paramLong2, paramLong3, paramInt1, paramInt2);
    localWeiboParameters.put("id", paramLong1);
    localWeiboParameters.put("filter_by_author", paramInt3);
    requestAsync("https://api.weibo.com/2/statuses/repost_timeline/ids.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void show(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("id", paramLong);
    requestAsync("https://api.weibo.com/2/statuses/show.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void update(String paramString1, String paramString2, String paramString3, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/statuses/update.json", buildUpdateParams(paramString1, paramString2, paramString3), "POST", paramRequestListener);
  }
  
  public void upload(String paramString1, Bitmap paramBitmap, String paramString2, String paramString3, RequestListener paramRequestListener)
  {
    paramString1 = buildUpdateParams(paramString1, paramString2, paramString3);
    paramString1.put("pic", paramBitmap);
    requestAsync("https://api.weibo.com/2/statuses/upload.json", paramString1, "POST", paramRequestListener);
  }
  
  public void uploadUrlText(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, RequestListener paramRequestListener)
  {
    paramString1 = buildUpdateParams(paramString1, paramString4, paramString5);
    paramString1.put("url", paramString2);
    paramString1.put("pic_id", paramString3);
    requestAsync("https://api.weibo.com/2/statuses/upload_url_text.json", paramString1, "POST", paramRequestListener);
  }
  
  public void userTimeline(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/statuses/user_timeline.json", buildTimeLineWithAppTrim(paramLong1, paramLong2, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3), "GET", paramRequestListener);
  }
  
  public void userTimeline(long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineWithAppTrim(paramLong2, paramLong3, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3);
    localWeiboParameters.put("uid", paramLong1);
    requestAsync("https://api.weibo.com/2/statuses/user_timeline.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void userTimeline(String paramString, long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineWithAppTrim(paramLong1, paramLong2, paramInt1, paramInt2, paramBoolean1, paramBoolean2, paramInt3);
    localWeiboParameters.put("screen_name", paramString);
    requestAsync("https://api.weibo.com/2/statuses/user_timeline.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void userTimelineIds(long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineWithApp(paramLong2, paramLong3, paramInt1, paramInt2, paramBoolean, paramInt3);
    localWeiboParameters.put("uid", paramLong1);
    requestAsync("https://api.weibo.com/2/statuses/user_timeline/ids.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void userTimelineIds(String paramString, long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean, int paramInt3, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineWithApp(paramLong1, paramLong2, paramInt1, paramInt2, paramBoolean, paramInt3);
    localWeiboParameters.put("screen_name", paramString);
    requestAsync("https://api.weibo.com/2/statuses/user_timeline/ids.json", localWeiboParameters, "GET", paramRequestListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\StatusesAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */