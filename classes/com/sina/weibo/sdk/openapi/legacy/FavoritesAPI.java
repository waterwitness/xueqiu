package com.sina.weibo.sdk.openapi.legacy;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class FavoritesAPI
  extends AbsOpenAPI
{
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/favorites";
  
  public FavoritesAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters buildCountPage(int paramInt1, int paramInt2)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    return localWeiboParameters;
  }
  
  public void byTags(long paramLong, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildCountPage(paramInt1, paramInt2);
    localWeiboParameters.put("tid", paramLong);
    requestAsync("https://api.weibo.com/2/favorites/by_tags.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void byTagsIds(long paramLong, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = buildCountPage(paramInt1, paramInt2);
    localWeiboParameters.put("tid", paramLong);
    requestAsync("https://api.weibo.com/2/favorites/by_tags/ids.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void create(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("id", paramLong);
    requestAsync("https://api.weibo.com/2/favorites/create.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void destroy(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("id", paramLong);
    requestAsync("https://api.weibo.com/2/favorites/destroy.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void destroyBatch(long[] paramArrayOfLong, RequestListener paramRequestListener)
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
        localWeiboParameters.put("ids", localStringBuilder.toString());
        requestAsync("https://api.weibo.com/2/favorites/destroy_batch.json", localWeiboParameters, "POST", paramRequestListener);
        return;
      }
      localStringBuilder.append(paramArrayOfLong[i]).append(",");
      i += 1;
    }
  }
  
  public void favorites(int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/favorites.json", buildCountPage(paramInt1, paramInt2), "GET", paramRequestListener);
  }
  
  public void ids(int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/favorites/ids.json", buildCountPage(paramInt1, paramInt2), "GET", paramRequestListener);
  }
  
  public void show(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("id", paramLong);
    requestAsync("https://api.weibo.com/2/favorites/show.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void tags(int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/favorites/tags.json", buildCountPage(paramInt1, paramInt2), "GET", paramRequestListener);
  }
  
  public void tagsDestroyBatch(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("tid", paramLong);
    requestAsync("https://api.weibo.com/2/favorites/tags/destroy_batch.json", localWeiboParameters, "POST", paramRequestListener);
  }
  
  public void tagsUpdate(long paramLong, String[] paramArrayOfString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("id", paramLong);
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfString.length;
    int i = 0;
    for (;;)
    {
      if (i >= j)
      {
        localStringBuilder.deleteCharAt(localStringBuilder.length() - 1);
        localWeiboParameters.put("tags", localStringBuilder.toString());
        requestAsync("https://api.weibo.com/2/favorites/tags/update.json", localWeiboParameters, "POST", paramRequestListener);
        return;
      }
      localStringBuilder.append(paramArrayOfString[i]).append(",");
      i += 1;
    }
  }
  
  public void tagsUpdateBatch(long paramLong, String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("tid", paramLong);
    localWeiboParameters.put("tag", paramString);
    requestAsync("https://api.weibo.com/2/favorites/tags/update_batch.json", localWeiboParameters, "POST", paramRequestListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\FavoritesAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */