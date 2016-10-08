package com.sina.weibo.sdk.openapi;

import android.util.SparseArray;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;

public class CommentsAPI
  extends AbsOpenAPI
{
  private static final String API_BASE_URL = "https://api.weibo.com/2/comments";
  public static final int AUTHOR_FILTER_ALL = 0;
  public static final int AUTHOR_FILTER_ATTENTIONS = 1;
  public static final int AUTHOR_FILTER_STRANGER = 2;
  private static final int READ_API_BY_ME = 1;
  private static final int READ_API_MENTIONS = 4;
  private static final int READ_API_SHOW = 2;
  private static final int READ_API_SHOW_BATCH = 5;
  private static final int READ_API_TIMELINE = 3;
  private static final int READ_API_TO_ME = 0;
  public static final int SRC_FILTER_ALL = 0;
  public static final int SRC_FILTER_WEIBO = 1;
  public static final int SRC_FILTER_WEIQUN = 2;
  private static final int WRITE_API_CREATE = 6;
  private static final int WRITE_API_DESTROY = 7;
  private static final int WRITE_API_REPLY = 9;
  private static final int WRITE_API_SDESTROY_BATCH = 8;
  private static final SparseArray<String> sAPIList;
  
  static
  {
    SparseArray localSparseArray = new SparseArray();
    sAPIList = localSparseArray;
    localSparseArray.put(0, "https://api.weibo.com/2/comments/to_me.json");
    sAPIList.put(1, "https://api.weibo.com/2/comments/by_me.json");
    sAPIList.put(2, "https://api.weibo.com/2/comments/show.json");
    sAPIList.put(3, "https://api.weibo.com/2/comments/timeline.json");
    sAPIList.put(4, "https://api.weibo.com/2/comments/mentions.json");
    sAPIList.put(5, "https://api.weibo.com/2/comments/show_batch.json");
    sAPIList.put(6, "https://api.weibo.com/2/comments/create.json");
    sAPIList.put(7, "https://api.weibo.com/2/comments/destroy.json");
    sAPIList.put(8, "https://api.weibo.com/2/comments/sdestroy_batch.json");
    sAPIList.put(9, "https://api.weibo.com/2/comments/reply.json");
  }
  
  public CommentsAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters buildCreateParams(String paramString, long paramLong, boolean paramBoolean)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("comment", paramString);
    localWeiboParameters.put("id", paramLong);
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      localWeiboParameters.put("comment_ori", i);
      return localWeiboParameters;
    }
  }
  
  private WeiboParameters buildReplyParams(long paramLong1, long paramLong2, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    int j = 1;
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("cid", paramLong1);
    localWeiboParameters.put("id", paramLong2);
    localWeiboParameters.put("comment", paramString);
    if (paramBoolean1)
    {
      i = 1;
      localWeiboParameters.put("without_mention", i);
      if (!paramBoolean2) {
        break label81;
      }
    }
    label81:
    for (int i = j;; i = 0)
    {
      localWeiboParameters.put("comment_ori", i);
      return localWeiboParameters;
      i = 0;
      break;
    }
  }
  
  private WeiboParameters buildShowOrDestoryBatchParams(long[] paramArrayOfLong)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfLong.length;
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
        localWeiboParameters.put("cids", localStringBuilder.toString());
        return localWeiboParameters;
      }
      localStringBuilder.append(paramArrayOfLong[i]).append(",");
      i += 1;
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
  
  public void byME(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2);
    localWeiboParameters.put("filter_by_source", paramInt3);
    requestAsync((String)sAPIList.get(1), localWeiboParameters, "GET", paramRequestListener);
  }
  
  public String byMESync(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2);
    localWeiboParameters.put("filter_by_source", paramInt3);
    return requestSync((String)sAPIList.get(1), localWeiboParameters, "GET");
  }
  
  public void create(String paramString, long paramLong, boolean paramBoolean, RequestListener paramRequestListener)
  {
    paramString = buildCreateParams(paramString, paramLong, paramBoolean);
    requestAsync((String)sAPIList.get(6), paramString, "POST", paramRequestListener);
  }
  
  public String createSync(String paramString, long paramLong, boolean paramBoolean)
  {
    paramString = buildCreateParams(paramString, paramLong, paramBoolean);
    return requestSync((String)sAPIList.get(6), paramString, "POST");
  }
  
  public void destroy(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("cid", paramLong);
    requestAsync((String)sAPIList.get(7), localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void destroyBatch(long[] paramArrayOfLong, RequestListener paramRequestListener)
  {
    paramArrayOfLong = buildShowOrDestoryBatchParams(paramArrayOfLong);
    requestAsync((String)sAPIList.get(8), paramArrayOfLong, "POST", paramRequestListener);
  }
  
  public String destroyBatchSync(long[] paramArrayOfLong)
  {
    paramArrayOfLong = buildShowOrDestoryBatchParams(paramArrayOfLong);
    return requestSync((String)sAPIList.get(8), paramArrayOfLong, "POST");
  }
  
  public String destroySync(long paramLong)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("cid", paramLong);
    return requestSync((String)sAPIList.get(7), localWeiboParameters, "POST");
  }
  
  public void mentions(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2);
    localWeiboParameters.put("filter_by_author", paramInt3);
    localWeiboParameters.put("filter_by_source", paramInt4);
    requestAsync((String)sAPIList.get(4), localWeiboParameters, "GET", paramRequestListener);
  }
  
  public String mentionsSync(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2);
    localWeiboParameters.put("filter_by_author", paramInt3);
    localWeiboParameters.put("filter_by_source", paramInt4);
    return requestSync((String)sAPIList.get(4), localWeiboParameters, "GET");
  }
  
  public void reply(long paramLong1, long paramLong2, String paramString, boolean paramBoolean1, boolean paramBoolean2, RequestListener paramRequestListener)
  {
    paramString = buildReplyParams(paramLong1, paramLong2, paramString, paramBoolean1, paramBoolean2);
    requestAsync((String)sAPIList.get(9), paramString, "POST", paramRequestListener);
  }
  
  public String replySync(long paramLong1, long paramLong2, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    paramString = buildReplyParams(paramLong1, paramLong2, paramString, paramBoolean1, paramBoolean2);
    return requestSync((String)sAPIList.get(9), paramString, "POST");
  }
  
  public void show(long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, int paramInt3, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong2, paramLong3, paramInt1, paramInt2);
    localWeiboParameters.put("id", paramLong1);
    localWeiboParameters.put("filter_by_author", paramInt3);
    requestAsync((String)sAPIList.get(2), localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void showBatch(long[] paramArrayOfLong, RequestListener paramRequestListener)
  {
    paramArrayOfLong = buildShowOrDestoryBatchParams(paramArrayOfLong);
    requestAsync((String)sAPIList.get(5), paramArrayOfLong, "GET", paramRequestListener);
  }
  
  public String showBatchSync(long[] paramArrayOfLong)
  {
    paramArrayOfLong = buildShowOrDestoryBatchParams(paramArrayOfLong);
    return requestSync((String)sAPIList.get(5), paramArrayOfLong, "GET");
  }
  
  public String showSync(long paramLong1, long paramLong2, long paramLong3, int paramInt1, int paramInt2, int paramInt3)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong2, paramLong3, paramInt1, paramInt2);
    localWeiboParameters.put("id", paramLong1);
    localWeiboParameters.put("filter_by_author", paramInt3);
    return requestSync((String)sAPIList.get(2), localWeiboParameters, "GET");
  }
  
  public void timeline(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("trim_user", paramInt1);
      requestAsync((String)sAPIList.get(3), localWeiboParameters, "GET", paramRequestListener);
      return;
    }
  }
  
  public String timelineSync(long paramLong1, long paramLong2, int paramInt1, int paramInt2, boolean paramBoolean)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2);
    if (paramBoolean) {}
    for (paramInt1 = 1;; paramInt1 = 0)
    {
      localWeiboParameters.put("trim_user", paramInt1);
      return requestSync((String)sAPIList.get(3), localWeiboParameters, "GET");
    }
  }
  
  public void toME(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2);
    localWeiboParameters.put("filter_by_author", paramInt3);
    localWeiboParameters.put("filter_by_source", paramInt4);
    requestAsync((String)sAPIList.get(0), localWeiboParameters, "GET", paramRequestListener);
  }
  
  public String toMESync(long paramLong1, long paramLong2, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    WeiboParameters localWeiboParameters = buildTimeLineParamsBase(paramLong1, paramLong2, paramInt1, paramInt2);
    localWeiboParameters.put("filter_by_author", paramInt3);
    localWeiboParameters.put("filter_by_source", paramInt4);
    return requestSync((String)sAPIList.get(0), localWeiboParameters, "GET");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\CommentsAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */