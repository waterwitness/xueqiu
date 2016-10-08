package com.sina.weibo.sdk.openapi.legacy;

import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class ShortUrlAPI
  extends AbsOpenAPI
{
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/short_url";
  
  public ShortUrlAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters buildRequestParams(String paramString, long paramLong1, long paramLong2, int paramInt1, int paramInt2)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("url_short", paramString);
    localWeiboParameters.put("since_id", paramLong1);
    localWeiboParameters.put("max_id", paramLong2);
    localWeiboParameters.put("count", paramInt1);
    localWeiboParameters.put("page", paramInt2);
    return localWeiboParameters;
  }
  
  private WeiboParameters buildURLRequest(String[] paramArrayOfString, String paramString)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    int j;
    int i;
    if (paramArrayOfString != null)
    {
      j = paramArrayOfString.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j) {
        return localWeiboParameters;
      }
      localWeiboParameters.put(paramString, paramArrayOfString[i]);
      i += 1;
    }
  }
  
  public void clicks(String[] paramArrayOfString, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/short_url/clicks.json", buildURLRequest(paramArrayOfString, "url_short"), "GET", paramRequestListener);
  }
  
  public void commentCounts(String[] paramArrayOfString, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/short_url/comment/counts.json", buildURLRequest(paramArrayOfString, "url_short"), "GET", paramRequestListener);
  }
  
  public void comments(String paramString, long paramLong1, long paramLong2, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/short_url/comment/comments.json", buildRequestParams(paramString, paramLong1, paramLong2, paramInt1, paramInt2), "GET", paramRequestListener);
  }
  
  public void expand(String[] paramArrayOfString, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/short_url/expand.json", buildURLRequest(paramArrayOfString, "url_short"), "GET", paramRequestListener);
  }
  
  public String expandSync(String[] paramArrayOfString)
  {
    return requestSync("https://api.weibo.com/2/short_url/expand.json", buildURLRequest(paramArrayOfString, "url_short"), "GET");
  }
  
  public void locations(String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("url_short", paramString);
    requestAsync("https://api.weibo.com/2/short_url/locations.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void referers(String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("url_short", paramString);
    requestAsync("https://api.weibo.com/2/short_url/referers.json", localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void shareCounts(String[] paramArrayOfString, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/short_url/share/counts.json", buildURLRequest(paramArrayOfString, "url_short"), "GET", paramRequestListener);
  }
  
  public void shareStatuses(String paramString, long paramLong1, long paramLong2, int paramInt1, int paramInt2, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/short_url/share/statuses.json", buildRequestParams(paramString, paramLong1, paramLong2, paramInt1, paramInt2), "GET", paramRequestListener);
  }
  
  public void shorten(String[] paramArrayOfString, RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/short_url/shorten.json", buildURLRequest(paramArrayOfString, "url_long"), "GET", paramRequestListener);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\ShortUrlAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */