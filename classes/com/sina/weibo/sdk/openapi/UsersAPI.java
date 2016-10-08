package com.sina.weibo.sdk.openapi;

import android.util.SparseArray;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;

public class UsersAPI
  extends AbsOpenAPI
{
  private static final String API_BASE_URL = "https://api.weibo.com/2/users";
  private static final int READ_USER = 0;
  private static final int READ_USER_BY_DOMAIN = 1;
  private static final int READ_USER_COUNT = 2;
  private static final SparseArray<String> sAPIList;
  
  static
  {
    SparseArray localSparseArray = new SparseArray();
    sAPIList = localSparseArray;
    localSparseArray.put(0, "https://api.weibo.com/2/users/show.json");
    sAPIList.put(1, "https://api.weibo.com/2/users/domain_show.json");
    sAPIList.put(2, "https://api.weibo.com/2/users/counts.json");
  }
  
  public UsersAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  private WeiboParameters buildCountsParams(long[] paramArrayOfLong)
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
        localWeiboParameters.put("uids", localStringBuilder.toString());
        return localWeiboParameters;
      }
      localStringBuilder.append(paramArrayOfLong[i]).append(",");
      i += 1;
    }
  }
  
  public void counts(long[] paramArrayOfLong, RequestListener paramRequestListener)
  {
    paramArrayOfLong = buildCountsParams(paramArrayOfLong);
    requestAsync((String)sAPIList.get(2), paramArrayOfLong, "GET", paramRequestListener);
  }
  
  public String countsSync(long[] paramArrayOfLong)
  {
    paramArrayOfLong = buildCountsParams(paramArrayOfLong);
    return requestSync((String)sAPIList.get(2), paramArrayOfLong, "GET");
  }
  
  public void domainShow(String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("domain", paramString);
    requestAsync((String)sAPIList.get(1), localWeiboParameters, "GET", paramRequestListener);
  }
  
  public String domainShowSync(String paramString)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("domain", paramString);
    return requestSync((String)sAPIList.get(1), localWeiboParameters, "GET");
  }
  
  public void show(long paramLong, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("uid", paramLong);
    requestAsync((String)sAPIList.get(0), localWeiboParameters, "GET", paramRequestListener);
  }
  
  public void show(String paramString, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("screen_name", paramString);
    requestAsync((String)sAPIList.get(0), localWeiboParameters, "GET", paramRequestListener);
  }
  
  public String showSync(long paramLong)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("uid", paramLong);
    return requestSync((String)sAPIList.get(0), localWeiboParameters, "GET");
  }
  
  public String showSync(String paramString)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("screen_name", paramString);
    return requestSync((String)sAPIList.get(0), localWeiboParameters, "GET");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\UsersAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */