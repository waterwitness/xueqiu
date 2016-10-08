package com.sina.weibo.sdk.auth;

import android.content.Context;
import com.sina.weibo.sdk.net.WeiboParameters;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.NetworkHelper;
import com.sina.weibo.sdk.utils.ResourceManager;
import com.sina.weibo.sdk.utils.UIUtils;

public class WeiboAuth
{
  private static final String OAUTH2_BASE_URL = "https://open.weibo.cn/oauth2/authorize?";
  public static final int OBTAIN_AUTH_CODE = 0;
  public static final int OBTAIN_AUTH_TOKEN = 1;
  public static final String TAG = "Weibo_web_login";
  private WeiboAuth.AuthInfo mAuthInfo;
  private Context mContext;
  
  public WeiboAuth(Context paramContext, WeiboAuth.AuthInfo paramAuthInfo)
  {
    this.mContext = paramContext;
    this.mAuthInfo = paramAuthInfo;
  }
  
  public WeiboAuth(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this.mContext = paramContext;
    this.mAuthInfo = new WeiboAuth.AuthInfo(paramContext, paramString1, paramString2, paramString3);
  }
  
  private void startDialog(WeiboAuthListener paramWeiboAuthListener, int paramInt)
  {
    if (paramWeiboAuthListener == null) {
      return;
    }
    Object localObject = new WeiboParameters();
    ((WeiboParameters)localObject).put("client_id", WeiboAuth.AuthInfo.access$0(this.mAuthInfo));
    ((WeiboParameters)localObject).put("redirect_uri", WeiboAuth.AuthInfo.access$1(this.mAuthInfo));
    ((WeiboParameters)localObject).put("scope", WeiboAuth.AuthInfo.access$2(this.mAuthInfo));
    ((WeiboParameters)localObject).put("response_type", "code");
    ((WeiboParameters)localObject).put("display", "mobile");
    if (1 == paramInt)
    {
      ((WeiboParameters)localObject).put("packagename", WeiboAuth.AuthInfo.access$3(this.mAuthInfo));
      ((WeiboParameters)localObject).put("key_hash", WeiboAuth.AuthInfo.access$4(this.mAuthInfo));
    }
    localObject = "https://open.weibo.cn/oauth2/authorize?" + ((WeiboParameters)localObject).encodeUrl();
    if (!NetworkHelper.hasInternetPermission(this.mContext))
    {
      UIUtils.showAlert(this.mContext, "Error", "Application requires permission to access the Internet");
      return;
    }
    if (NetworkHelper.isNetworkAvailable(this.mContext))
    {
      new WeiboDialog(this.mContext, (String)localObject, paramWeiboAuthListener, this).show();
      return;
    }
    paramWeiboAuthListener = ResourceManager.getString(this.mContext, 2);
    LogUtil.i("Weibo_web_login", "String: " + paramWeiboAuthListener);
    UIUtils.showToast(this.mContext, paramWeiboAuthListener, 0);
  }
  
  public void anthorize(WeiboAuthListener paramWeiboAuthListener)
  {
    authorize(paramWeiboAuthListener, 1);
  }
  
  public void authorize(WeiboAuthListener paramWeiboAuthListener, int paramInt)
  {
    startDialog(paramWeiboAuthListener, paramInt);
  }
  
  public WeiboAuth.AuthInfo getAuthInfo()
  {
    return this.mAuthInfo;
  }
  
  public void setAuthInfo(WeiboAuth.AuthInfo paramAuthInfo)
  {
    this.mAuthInfo = paramAuthInfo;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\auth\WeiboAuth.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */