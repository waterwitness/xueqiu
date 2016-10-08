package com.sina.weibo.sdk.openapi.legacy;

import android.text.TextUtils;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.net.RequestListener;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.openapi.AbsOpenAPI;

public class AccountAPI
  extends AbsOpenAPI
{
  public static final int SCHOOL_TYPE_COLLEGE = 1;
  public static final int SCHOOL_TYPE_JUNIOR = 4;
  public static final int SCHOOL_TYPE_PRIMARY = 5;
  public static final int SCHOOL_TYPE_SENIOR = 2;
  public static final int SCHOOL_TYPE_TECHNICAL = 3;
  private static final String SERVER_URL_PRIX = "https://api.weibo.com/2/account";
  
  public AccountAPI(Oauth2AccessToken paramOauth2AccessToken)
  {
    super(paramOauth2AccessToken);
  }
  
  public void endSession(RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/account/end_session.json", new WeiboParameters(), "POST", paramRequestListener);
  }
  
  public void getEmail(RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/account/profile/email.json", new WeiboParameters(), "GET", paramRequestListener);
  }
  
  public void getPrivacy(RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/account/get_privacy.json", new WeiboParameters(), "GET", paramRequestListener);
  }
  
  public void getUid(RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/account/get_uid.json", new WeiboParameters(), "GET", paramRequestListener);
  }
  
  public void rateLimitStatus(RequestListener paramRequestListener)
  {
    requestAsync("https://api.weibo.com/2/account/rate_limit_status.json", new WeiboParameters(), "GET", paramRequestListener);
  }
  
  public void schoolList(int paramInt1, int paramInt2, int paramInt3, int paramInt4, AccountAPI.CAPITAL paramCAPITAL, String paramString, int paramInt5, RequestListener paramRequestListener)
  {
    WeiboParameters localWeiboParameters = new WeiboParameters();
    localWeiboParameters.put("province", paramInt1);
    localWeiboParameters.put("city", paramInt2);
    localWeiboParameters.put("area", paramInt3);
    localWeiboParameters.put("type", paramInt4);
    if (!TextUtils.isEmpty(paramCAPITAL.name())) {
      localWeiboParameters.put("capital", paramCAPITAL.name());
    }
    for (;;)
    {
      localWeiboParameters.put("count", paramInt5);
      requestAsync("https://api.weibo.com/2/account/profile/school_list.json", localWeiboParameters, "GET", paramRequestListener);
      return;
      if (!TextUtils.isEmpty(paramString)) {
        localWeiboParameters.put("keyword", paramString);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\openapi\legacy\AccountAPI.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */