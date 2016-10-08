package com.sina.weibo.sdk.openapi.legacy;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class TagsAPI
  extends AbsOpenAPI
{
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/tags";
  
  public TagsAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  public void create(String[] paramArrayOfString, RequestListener paramRequestListener)
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
        localWeiboParameters.put("tags", localStringBuilder.toString());
        requestAsync("https://api.weibo.com/2/tags/create.json", localWeiboParameters, "POST", paramRequestListener);
        return;
      }
      localStringBuilder.append(paramArrayOfString[i]).append(",");
      i += 1;
    }
  }
  
  public void destroy(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("tag_id", paramLong);
    requestAsync("https://api.weibo.com/2/tags/destroy.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void destroyBatch(String[] paramArrayOfString, RequestListener paramRequestListener)
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
        requestAsync("https://api.weibo.com/2/tags/destroy_batch.json", localWeiboParameters, "POST", paramRequestListener);
        return;
      }
      localStringBuilder.append(paramArrayOfString[i]).append(",");
      i += 1;
    }
  }
  
  public void suggestions(int paramInt, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("count", paramInt);
    requestAsync("https://api.weibo.com/2/tags/suggestions.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void tags(long paramLong, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("uid", paramLong);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    requestAsync("https://api.weibo.com/2/tags.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void tagsBatch(String[] paramArrayOfString, RequestListener paramRequestListener)
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
        localWeiboParameters.put("uids", localStringBuilder.toString());
        requestAsync("https://api.weibo.com/2/tags/tags_batch.json", localWeiboParameters, "GET", paramRequestListener);
        return;
      }
      localStringBuilder.append(paramArrayOfString[i]).append(",");
      i += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\TagsAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */