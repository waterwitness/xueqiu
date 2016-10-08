package com.sina.weibo.sdk.auth;

import android.content.Context;
import android.os.Bundle;
import com.sina.weibo.sdk.utils.Utility;

public class WeiboAuth$AuthInfo
{
  private String mAppKey = "";
  private Bundle mBundle = null;
  private String mKeyHash = "";
  private String mPackageName = "";
  private String mRedirectUrl = "";
  private String mScope = "";
  
  public WeiboAuth$AuthInfo(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    this.mAppKey = paramString1;
    this.mRedirectUrl = paramString2;
    this.mScope = paramString3;
    this.mPackageName = paramContext.getPackageName();
    this.mKeyHash = Utility.getSign(paramContext, this.mPackageName);
    initAuthBundle();
  }
  
  private void initAuthBundle()
  {
    this.mBundle = new Bundle();
    this.mBundle.putString("appKey", this.mAppKey);
    this.mBundle.putString("redirectUri", this.mRedirectUrl);
    this.mBundle.putString("scope", this.mScope);
    this.mBundle.putString("packagename", this.mPackageName);
    this.mBundle.putString("key_hash", this.mKeyHash);
  }
  
  public String getAppKey()
  {
    return this.mAppKey;
  }
  
  public Bundle getAuthBundle()
  {
    return this.mBundle;
  }
  
  public String getKeyHash()
  {
    return this.mKeyHash;
  }
  
  public String getPackageName()
  {
    return this.mPackageName;
  }
  
  public String getRedirectUrl()
  {
    return this.mRedirectUrl;
  }
  
  public String getScope()
  {
    return this.mScope;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\auth\WeiboAuth$AuthInfo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */