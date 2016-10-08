package com.sina.weibo.sdk.auth.sso;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import com.sina.a.a;
import com.sina.a.b;
import com.sina.weibo.sdk.auth.Oauth2AccessToken;
import com.sina.weibo.sdk.auth.WeiboAuth;
import com.sina.weibo.sdk.auth.WeiboAuth.AuthInfo;
import com.sina.weibo.sdk.auth.WeiboAuthListener;
import com.sina.weibo.sdk.exception.WeiboDialogException;
import com.sina.weibo.sdk.utils.LogUtil;
import com.sina.weibo.sdk.utils.SecurityHelper;
import java.util.Iterator;
import java.util.List;

public class SsoHandler
{
  private static final String DEFAULT_SINA_WEIBO_PACKAGE_NAME = "com.sina.weibo";
  private static final String DEFAULT_WEIBO_REMOTE_SSO_SERVICE_NAME = "com.sina.weibo.remotessoservice";
  private static final int REQUEST_CODE_SSO_AUTH = 32973;
  private static final String TAG = "Weibo_SSO_login";
  private Activity mAuthActivity;
  private WeiboAuthListener mAuthListener;
  private ServiceConnection mConnection = new ServiceConnection()
  {
    public void onServiceConnected(ComponentName paramAnonymousComponentName, IBinder paramAnonymousIBinder)
    {
      paramAnonymousIBinder = b.a(paramAnonymousIBinder);
      try
      {
        paramAnonymousComponentName = paramAnonymousIBinder.a();
        paramAnonymousIBinder = paramAnonymousIBinder.b();
        SsoHandler.this.mAuthActivity.getApplicationContext().unbindService(SsoHandler.this.mConnection);
        if (!SsoHandler.this.startSingleSignOn(paramAnonymousComponentName, paramAnonymousIBinder)) {
          SsoHandler.this.mWeiboAuth.anthorize(SsoHandler.this.mAuthListener);
        }
        return;
      }
      catch (RemoteException paramAnonymousComponentName)
      {
        paramAnonymousComponentName.printStackTrace();
      }
    }
    
    public void onServiceDisconnected(ComponentName paramAnonymousComponentName)
    {
      SsoHandler.this.mWeiboAuth.anthorize(SsoHandler.this.mAuthListener);
    }
  };
  private int mSSOAuthRequestCode;
  private WeiboAuth mWeiboAuth;
  
  public SsoHandler(Activity paramActivity, WeiboAuth paramWeiboAuth)
  {
    this.mAuthActivity = paramActivity;
    this.mWeiboAuth = paramWeiboAuth;
  }
  
  private boolean bindRemoteSSOService(Context paramContext, String paramString)
  {
    boolean bool = true;
    String str;
    if (!TextUtils.isEmpty(paramString))
    {
      str = paramString;
      if (!paramString.trim().equals("")) {}
    }
    else
    {
      str = "com.sina.weibo";
    }
    paramString = new Intent("com.sina.weibo.remotessoservice");
    paramString.setPackage(str);
    if (!paramContext.bindService(paramString, this.mConnection, 1)) {
      bool = paramContext.bindService(new Intent("com.sina.weibo.remotessoservice"), this.mConnection, 1);
    }
    return bool;
  }
  
  public static ComponentName isServiceExisted(Context paramContext, String paramString)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningServices(Integer.MAX_VALUE).iterator();
    ComponentName localComponentName;
    do
    {
      if (!paramContext.hasNext()) {
        return null;
      }
      localComponentName = ((ActivityManager.RunningServiceInfo)paramContext.next()).service;
    } while ((!localComponentName.getPackageName().equals(paramString)) || (!localComponentName.getClassName().equals(paramString + ".business.RemoteSSOService")));
    return localComponentName;
  }
  
  private boolean startSingleSignOn(String paramString1, String paramString2)
  {
    boolean bool = true;
    Intent localIntent = new Intent();
    localIntent.setClassName(paramString1, paramString2);
    localIntent.putExtras(this.mWeiboAuth.getAuthInfo().getAuthBundle());
    localIntent.putExtra("_weibo_command_type", 3);
    localIntent.putExtra("_weibo_transaction", String.valueOf(System.currentTimeMillis()));
    if (!SecurityHelper.validateAppSignatureForIntent(this.mAuthActivity, localIntent)) {
      return false;
    }
    try
    {
      this.mAuthActivity.startActivityForResult(localIntent, this.mSSOAuthRequestCode);
      return bool;
    }
    catch (ActivityNotFoundException paramString1)
    {
      for (;;)
      {
        bool = false;
      }
    }
  }
  
  public void authorize(int paramInt, WeiboAuthListener paramWeiboAuthListener, String paramString)
  {
    this.mSSOAuthRequestCode = paramInt;
    this.mAuthListener = paramWeiboAuthListener;
    if ((!bindRemoteSSOService(this.mAuthActivity.getApplicationContext(), paramString)) && (this.mWeiboAuth != null)) {
      this.mWeiboAuth.anthorize(this.mAuthListener);
    }
  }
  
  public void authorize(WeiboAuthListener paramWeiboAuthListener)
  {
    authorize(32973, paramWeiboAuthListener, null);
  }
  
  public void authorize(WeiboAuthListener paramWeiboAuthListener, String paramString)
  {
    authorize(32973, paramWeiboAuthListener, paramString);
  }
  
  public void authorizeCallBack(int paramInt1, int paramInt2, Intent paramIntent)
  {
    LogUtil.d("Weibo_SSO_login", "requestCode: " + paramInt1 + ", resultCode: " + paramInt2 + ", data: " + paramIntent);
    if (paramInt1 == this.mSSOAuthRequestCode)
    {
      if (paramInt2 != -1) {
        break label303;
      }
      if (SecurityHelper.checkResponseAppLegal(this.mAuthActivity, paramIntent)) {
        break label64;
      }
    }
    label64:
    label303:
    while (paramInt2 != 0)
    {
      return;
      String str = paramIntent.getStringExtra("error");
      Object localObject = str;
      if (str == null) {
        localObject = paramIntent.getStringExtra("error_type");
      }
      if (localObject != null)
      {
        if ((((String)localObject).equals("access_denied")) || (((String)localObject).equals("OAuthAccessDeniedException")))
        {
          LogUtil.d("Weibo_SSO_login", "Login canceled by user.");
          this.mAuthListener.onCancel();
          return;
        }
        str = paramIntent.getStringExtra("error_description");
        paramIntent = (Intent)localObject;
        if (str != null) {
          paramIntent = localObject + ":" + str;
        }
        LogUtil.d("Weibo_SSO_login", "Login failed: " + paramIntent);
        this.mAuthListener.onWeiboException(new WeiboDialogException(paramIntent, paramInt2, str));
        return;
      }
      paramIntent = paramIntent.getExtras();
      localObject = Oauth2AccessToken.parseAccessToken(paramIntent);
      if ((localObject != null) && (((Oauth2AccessToken)localObject).isSessionValid()))
      {
        LogUtil.d("Weibo_SSO_login", "Login Success! " + ((Oauth2AccessToken)localObject).toString());
        this.mAuthListener.onComplete(paramIntent);
        return;
      }
      LogUtil.d("Weibo_SSO_login", "Failed to receive access token by SSO");
      this.mWeiboAuth.anthorize(this.mAuthListener);
      return;
    }
    if (paramIntent != null)
    {
      LogUtil.d("Weibo_SSO_login", "Login failed: " + paramIntent.getStringExtra("error"));
      this.mAuthListener.onWeiboException(new WeiboDialogException(paramIntent.getStringExtra("error"), paramIntent.getIntExtra("error_code", -1), paramIntent.getStringExtra("failing_url")));
      return;
    }
    LogUtil.d("Weibo_SSO_login", "Login canceled by user.");
    this.mAuthListener.onCancel();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\auth\sso\SsoHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */