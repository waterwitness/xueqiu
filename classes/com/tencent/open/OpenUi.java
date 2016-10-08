package com.tencent.open;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.Signature;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.tencent.plus.ImageActivity;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.Constants;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import java.security.MessageDigest;
import org.json.JSONException;
import org.json.JSONObject;

public class OpenUi
{
  private TContext a;
  private int b = 5656;
  private SparseArray c = new SparseArray();
  
  public OpenUi(TContext paramTContext)
  {
    this.a = paramTContext;
  }
  
  private int a(String paramString1, String paramString2)
  {
    int j = -1;
    paramString1 = paramString1.split("\\.");
    paramString2 = paramString2.split("\\.");
    int i = 0;
    for (;;)
    {
      int k;
      int m;
      try
      {
        if ((i < paramString1.length) && (i < paramString2.length))
        {
          k = Integer.parseInt(paramString1[i]);
          m = Integer.parseInt(paramString2[i]);
          if (k >= m) {
            break label83;
          }
          return -1;
        }
        if (paramString1.length > i) {
          return 1;
        }
        k = paramString2.length;
        if (k <= i) {
          return 0;
        }
      }
      catch (Exception paramString1)
      {
        j = 0;
      }
      return j;
      label83:
      if (k > m) {
        return 1;
      }
      i += 1;
    }
  }
  
  private Intent a(Activity paramActivity, String paramString)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, getActivityIntent, action = " + paramString);
    Object localObject = new Intent();
    if ("action_avatar".equals(paramString))
    {
      ((Intent)localObject).setClass(paramActivity, ImageActivity.class);
      return (Intent)localObject;
    }
    String str = a(paramActivity);
    WnsClientLog.a("openSDK_LOG", "OpenUi, getActivityIntent, qzoneversion = " + str);
    if (str == null)
    {
      paramActivity = a(Constants.PACKAGE_QQ, paramActivity, paramString);
      if (paramActivity != null)
      {
        this.a.a = "QQ";
        return paramActivity;
      }
      return null;
    }
    localObject = OpenConfig.a(paramActivity, this.a.d()).a("Common_SSO_QzoneVersion");
    if (!TextUtils.isEmpty((CharSequence)localObject)) {}
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        localObject = "4.0";
      }
      if ((a(str, "3.4") < 0) || (a(str, (String)localObject) >= 0)) {
        break label198;
      }
      paramActivity = a(Constants.PACKAGE_QZONE, paramActivity, paramString);
      if (paramActivity == null) {
        break;
      }
      this.a.a = "qzone";
      return paramActivity;
    }
    return null;
    label198:
    localObject = a(Constants.PACKAGE_QQ, paramActivity, paramString);
    if (localObject != null)
    {
      this.a.a = "QQ";
      return (Intent)localObject;
    }
    paramActivity = a(Constants.PACKAGE_QZONE, paramActivity, paramString);
    if (paramActivity != null)
    {
      this.a.a = "qzone";
      return paramActivity;
    }
    return null;
  }
  
  private Intent a(Context paramContext, String paramString1, String paramString2)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, getSchemeIntent, action = " + paramString1);
    try
    {
      paramString1 = new Intent("android.intent.action.VIEW", Uri.parse(paramString2));
      if (paramString1 == null) {
        return null;
      }
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        paramString1.printStackTrace();
        WnsClientLog.a("openSDK_LOG", "OpenUi, getSchemeIntent parse scheme error", paramString1);
        paramString1 = null;
      }
      paramString1.putExtra("key_request_code", b());
      if (a(paramContext, paramString1))
      {
        WnsClientLog.a("openSDK_LOG", "OpenUi, getSchemeIntent, validatQQIntent success");
        return paramString1;
      }
      WnsClientLog.a("openSDK_LOG", "OpenUi, getSchemeIntent, validatQQIntent failed");
    }
    return null;
  }
  
  private Bundle a(Activity paramActivity, String paramString, Bundle paramBundle)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, fillParamsActivity action = " + paramString);
    paramBundle = new Bundle(paramBundle);
    if (("action_story".equals(paramString)) && (paramBundle.containsKey("shareurl"))) {
      paramBundle.putString("url", paramBundle.getString("shareurl"));
    }
    if ("action_login".equals(paramString))
    {
      if (this.a != null) {
        paramBundle.putString("client_id", this.a.d());
      }
      paramString = paramActivity.getResources();
      paramBundle.putString("oauth_app_name", paramString.getText(paramString.getIdentifier("app_name", "string", paramActivity.getPackageName())).toString());
      paramBundle.putString("pf", "openmobile_android");
      paramBundle.putString("need_pay", "1");
      paramActivity = System.currentTimeMillis() / 1000L;
      paramBundle.putString("sign", a(paramActivity));
      paramBundle.putString("time", paramActivity);
    }
    for (;;)
    {
      paramBundle.putString("sdkv", "1.8");
      paramBundle.putString("sdkp", "a");
      return paramBundle;
      if ("action_pay".equals(paramString))
      {
        if (this.a != null)
        {
          paramBundle.putString("oauth_consumer_key", this.a.d());
          paramBundle.putString("pf", "openmobile_android");
          paramBundle.putString("need_pay", "1");
          paramActivity = this.a.c();
          if (paramActivity != null) {
            paramBundle.putString("hopenid", paramActivity);
          }
          for (;;)
          {
            paramActivity = System.currentTimeMillis() / 1000L;
            paramBundle.putString("sign", a(paramActivity));
            paramBundle.putString("time", paramActivity);
            paramBundle.putString("sdkv", "1.8");
            paramBundle.putString("sdkp", "a");
            break;
            paramBundle.putString("hopenid", "");
          }
        }
      }
      else if (this.a != null)
      {
        paramBundle.putString("appid", this.a.d());
        if (this.a.a())
        {
          paramBundle.putString("keystr", this.a.b());
          paramBundle.putString("keytype", "0x80");
        }
        paramActivity = this.a.c();
        if (paramActivity != null) {
          paramBundle.putString("hopenid", paramActivity);
        }
        paramBundle.putString("platform", "androidqz");
        try
        {
          paramBundle.putString("pf", this.a.f().getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
        }
        catch (Exception paramActivity)
        {
          paramActivity.printStackTrace();
          paramBundle.putString("pf", "openmobile_android");
        }
      }
    }
  }
  
  private Bundle a(String paramString, Bundle paramBundle)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, fillParamsDialog action = " + paramString);
    paramBundle = new Bundle(paramBundle);
    if (("action_login".equals(paramString)) || ("action_pay".equals(paramString))) {
      if (this.a != null)
      {
        paramBundle.putString("client_id", this.a.d());
        paramBundle.putString("pf", "openmobile_android");
        paramBundle.putString("need_pay", "1");
        paramString = System.currentTimeMillis() / 1000L;
        paramBundle.putString("sign", a(paramString));
        paramBundle.putString("time", paramString);
      }
    }
    for (;;)
    {
      paramBundle.putString("sdkv", "1.8");
      paramBundle.putString("sdkp", "a");
      return paramBundle;
      if (this.a != null)
      {
        paramBundle.putString("oauth_consumer_key", this.a.d());
        if (this.a.a()) {
          paramBundle.putString("access_token", this.a.b());
        }
        paramString = this.a.c();
        if (paramString != null) {
          paramBundle.putString("openid", paramString);
        }
        try
        {
          paramBundle.putString("pf", this.a.f().getSharedPreferences("pfStore", 0).getString("pf", "openmobile_android"));
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
          paramBundle.putString("pf", "openmobile_android");
        }
      }
    }
  }
  
  private String a(String paramString)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, getSignValidString");
    try
    {
      String str = this.a.f().getApplicationContext().getPackageName();
      Object localObject = this.a.f().getApplicationContext().getPackageManager().getPackageInfo(str, 64).signatures;
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.update(localObject[0].toByteArray());
      localObject = Util.a(localMessageDigest.digest());
      localMessageDigest.reset();
      localMessageDigest.update((str + "_" + (String)localObject + "_" + paramString).getBytes());
      paramString = Util.a(localMessageDigest.digest());
      localException1.printStackTrace();
    }
    catch (Exception localException1)
    {
      try
      {
        localMessageDigest.reset();
        return paramString;
      }
      catch (Exception localException2)
      {
        for (;;) {}
      }
      localException1 = localException1;
      paramString = "";
    }
    WnsClientLog.a("openSDK_LOG", "OpenUi, getSignValidString error", localException1);
    return paramString;
  }
  
  private boolean a(Context paramContext, Intent paramIntent)
  {
    return paramContext.getPackageManager().resolveActivity(paramIntent, 0) != null;
  }
  
  private boolean a(Context paramContext, String paramString)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, validateAppSignatureForPackage");
    for (;;)
    {
      int i;
      try
      {
        paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 64);
        paramContext = paramContext.signatures;
        int j = paramContext.length;
        i = 0;
        if (i >= j) {
          break;
        }
        String str = Util.f(paramContext[i].toCharsString());
        if ((paramString.equals(Constants.PACKAGE_QZONE)) && (str.equals("ec96e9ac1149251acbb1b0c5777cae95"))) {
          return true;
        }
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        return false;
      }
      if (!paramString.equals(Constants.PACKAGE_QQ)) {
        i += 1;
      }
    }
    return false;
  }
  
  private int b()
  {
    u localu;
    do
    {
      this.b += 1;
      if (this.b == 6656) {
        this.b = 5656;
      }
      localu = (u)this.c.get(this.b);
      this.c.remove(this.b);
      if ((localu != null) && (localu.a != null)) {
        localu.a.onCancel();
      }
    } while (localu != null);
    return this.b;
  }
  
  private String b(String paramString, Bundle paramBundle)
  {
    paramBundle.putString("display", "mobile");
    StringBuilder localStringBuilder = new StringBuilder();
    if (("action_login".equals(paramString)) || ("action_pay".equals(paramString)))
    {
      paramBundle.putString("response_type", "token");
      paramBundle.putString("redirect_uri", ServerSetting.getInstance().getSettingUrl(this.a.f(), 1));
      paramBundle.putString("cancel_display", "1");
      paramBundle.putString("switch", "1");
      paramBundle.putString("sdkp", "a");
      paramBundle.putString("sdkv", "1.8");
      paramBundle.putString("status_userip", Util.a());
      paramBundle.putString("status_os", Build.VERSION.RELEASE);
      paramBundle.putString("status_version", Build.VERSION.SDK);
      paramBundle.putString("status_machine", Build.MODEL);
      localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 2));
      localStringBuilder.append(Util.a(paramBundle));
    }
    for (;;)
    {
      return localStringBuilder.toString();
      if ("action_story".equals(paramString))
      {
        localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 3));
        paramBundle.putString("sdkv", "1.8");
        localStringBuilder.append(Util.a(paramBundle));
      }
      else if ("action_invite".equals(paramString))
      {
        localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 4));
        paramBundle.putString("sdkv", "1.8");
        localStringBuilder.append(Util.a(paramBundle));
      }
      else if (("action_challenge".equals(paramString)) || ("action_brag".equals(paramString)))
      {
        localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 7));
        paramBundle.putString("sdkv", "1.8");
        localStringBuilder.append(Util.a(paramBundle));
      }
      else if ("action_ask".equals(paramString))
      {
        localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 8));
        paramBundle.putString("sdkv", "1.8");
        localStringBuilder.append(Util.a(paramBundle));
      }
      else if ("action_gift".equals(paramString))
      {
        localStringBuilder.append(ServerSetting.getInstance().getSettingUrl(this.a.f(), 9));
        paramBundle.putString("sdkv", "1.8");
        localStringBuilder.append(Util.a(paramBundle));
      }
    }
  }
  
  private boolean b(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramContext.getPackageManager().resolveActivity(paramIntent, 0);
    if (paramIntent == null) {
      return false;
    }
    boolean bool = a(paramContext, paramIntent.activityInfo.packageName);
    paramIntent = new StringBuilder("OpenUi, validateActivityIntent ");
    if (bool) {}
    for (paramContext = "success";; paramContext = "failed")
    {
      WnsClientLog.b("openSDK_LOG", paramContext);
      return bool;
    }
  }
  
  public int a(Activity paramActivity, String paramString, Bundle paramBundle, IUiListener paramIUiListener)
  {
    return a(paramActivity, paramString, paramBundle, paramIUiListener, false);
  }
  
  public int a(Activity paramActivity, String paramString, Bundle paramBundle, IUiListener paramIUiListener, boolean paramBoolean)
  {
    Object localObject = new StringBuilder("OpenUi, showUi, action = ").append(paramString).append(", forceLogin = ");
    if (paramBoolean) {}
    for (String str1 = "true";; str1 = "false")
    {
      WnsClientLog.a("openSDK_LOG", str1);
      if (paramBoolean) {
        break;
      }
      str1 = this.a.b();
      localObject = this.a.c();
      String str2 = this.a.d();
      if ((str1 == null) || (localObject == null) || (str2 == null) || (str1.length() <= 0) || (((String)localObject).length() <= 0) || (str2.length() <= 0) || (!"action_login".equals(paramString))) {
        break;
      }
      b(paramActivity, "action_check_token", paramBundle, paramIUiListener, true);
      WnsClientLog.a("openSDK_LOG", "OpenUi, showUi, return Constants.UI_CHECK_TOKEN");
      return 3;
    }
    if (b(paramActivity, paramString, paramBundle, paramIUiListener))
    {
      if (paramBoolean) {
        Util.a(paramActivity, "10785", 0L, this.a.d());
      }
      WnsClientLog.a("openSDK_LOG", "OpenUi, showUi, return Constants.UI_ACTIVITY");
      return 1;
    }
    if (("action_challenge".equals(paramString)) || ("action_brag".equals(paramString)) || ("action_ask".equals(paramString)) || ("action_gift".equals(paramString)) || ("action_story".equals(paramString)) || ("action_invite".equals(paramString)))
    {
      b(paramActivity, paramString, paramBundle, paramIUiListener, false);
      WnsClientLog.a("openSDK_LOG", "OpenUi, showUi, return Constants.UI_DIALOG");
      return 2;
    }
    WnsClientLog.a("openSDK_LOG", "OpenUi, showUi, return return showDialog");
    return a(paramActivity, paramString, paramBundle, paramIUiListener);
  }
  
  public int a(Context paramContext, String paramString, Bundle paramBundle, IUiListener paramIUiListener)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi, showDialog --start");
    CookieSyncManager.createInstance(paramContext);
    String str = b(paramString, a(paramString, paramBundle));
    if ("action_login".equals(paramString)) {
      paramBundle = new j(this, paramIUiListener, true);
    }
    for (;;)
    {
      if (("action_challenge".equals(paramString)) || ("action_brag".equals(paramString)))
      {
        WnsClientLog.b("openSDK_LOG", "OpenUi, showDialog PKDialog");
        new PKDialog(paramContext, paramString, str, paramBundle, this.a).show();
      }
      for (;;)
      {
        return 2;
        if (!"action_pay".equals(paramString)) {
          break label151;
        }
        paramBundle = new j(this, paramIUiListener, true);
        break;
        WnsClientLog.b("openSDK_LOG", "OpenUi, showDialog TDialog");
        new TDialog(paramContext, paramString, str, paramBundle, this.a).show();
      }
      label151:
      paramBundle = paramIUiListener;
    }
  }
  
  public Intent a(String paramString1, Activity paramActivity, String paramString2)
  {
    Intent localIntent1 = new Intent();
    Intent localIntent2 = new Intent();
    localIntent2.setClassName(paramString1, "com.tencent.open.agent.AgentActivity");
    localIntent2.setPackage(paramString1);
    localIntent2.putExtra("key_request_code", b());
    if ("action_challenge".equals(paramString2)) {
      localIntent1.setClassName(paramString1, "com.tencent.open.agent.ChallengeActivity");
    }
    while (b(paramActivity, localIntent1))
    {
      return localIntent2;
      if ("action_brag".equals(paramString2))
      {
        localIntent1.setClassName(paramString1, "com.tencent.open.agent.BragActivity");
      }
      else if (("action_ask".equals(paramString2)) || ("action_gift".equals(paramString2)))
      {
        localIntent1.setClassName(paramString1, "com.tencent.open.agent.RequestFreegiftActivity");
      }
      else if ("action_story".equals(paramString2))
      {
        localIntent1.setClassName(paramString1, "com.tencent.open.agent.SendStoryActivity");
      }
      else if ("action_invite".equals(paramString2))
      {
        localIntent1.setClassName(paramString1, "com.tencent.open.agent.AppInvitationActivity");
      }
      else if ("action_check_token".equals(paramString2))
      {
        localIntent1.setClassName(paramString1, "com.tencent.open.agent.EncryTokenActivity");
        localIntent2.setClassName(paramString1, "com.tencent.open.agent.EncryTokenActivity");
      }
      else
      {
        localIntent1.setClassName(paramString1, "com.tencent.open.agent.AgentActivity");
      }
    }
    return null;
  }
  
  public String a(Activity paramActivity)
  {
    try
    {
      paramActivity = paramActivity.getPackageManager().getPackageInfo(Constants.PACKAGE_QZONE, 0).versionName;
      return paramActivity;
    }
    catch (Exception paramActivity) {}
    return null;
  }
  
  public void a()
  {
    String str = this.a.b();
    Object localObject1 = this.a.d();
    Object localObject2 = this.a.c();
    if ((str != null) && (str.length() > 0) && (localObject1 != null) && (((String)localObject1).length() > 0) && (localObject2 != null) && (((String)localObject2).length() > 0)) {}
    for (str = Util.f("tencent&sdk&qazxc***14969%%" + str + (String)localObject1 + (String)localObject2 + "qzone3.4");; str = null)
    {
      localObject1 = new WebView(this.a.f());
      localObject2 = ((WebView)localObject1).getSettings();
      ((WebSettings)localObject2).setDomStorageEnabled(true);
      ((WebSettings)localObject2).setJavaScriptEnabled(true);
      ((WebSettings)localObject2).setDatabaseEnabled(true);
      str = "<!DOCTYPE HTML><html lang=\"en-US\"><head><meta charset=\"UTF-8\"><title>localStorage Test</title><script type=\"text/javascript\">document.domain = 'qq.com';localStorage[\"" + this.a.c() + "_" + this.a.d() + "\"]=\"" + str + "\";</script></head><body></body></html>";
      localObject2 = ServerSetting.getInstance().getSettingUrl(this.a.f(), 10);
      ((WebView)localObject1).loadDataWithBaseURL((String)localObject2, str, "text/html", "utf-8", (String)localObject2);
      return;
    }
  }
  
  public boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    WnsClientLog.a("openSDK_LOG", "OpenUi onActivityResult:" + paramInt1 + ",resultCode:" + paramInt2);
    if ((paramInt1 >= 5656) && (paramInt1 <= 6656))
    {
      u localu = (u)this.c.get(paramInt1);
      this.c.remove(paramInt1);
      if ((localu != null) && (localu.a != null))
      {
        if (paramInt2 == -1)
        {
          WnsClientLog.b("openSDK_LOG", "OpenUi, onActivityResult, Constants.ACTIVITY_OK");
          paramInt1 = paramIntent.getIntExtra("key_error_code", 0);
          if (paramInt1 == 0)
          {
            paramIntent = paramIntent.getStringExtra("key_response");
            if (paramIntent == null) {}
          }
        }
        for (;;)
        {
          try
          {
            localu.a.onComplete(Util.d(paramIntent));
            WnsClientLog.a().b();
            return true;
          }
          catch (JSONException localJSONException)
          {
            localu.a.onError(new UiError(-4, "服务器返回数据格式有误!", paramIntent));
            WnsClientLog.a("openSDK_LOG", "OpenUi, onActivityResult, json error", localJSONException);
            WnsClientLog.a().b();
            continue;
          }
          WnsClientLog.b("openSDK_LOG", "OpenUi, onActivityResult, onComplete");
          localu.a.onComplete(null);
          WnsClientLog.a().b();
          continue;
          WnsClientLog.d("openSDK_LOG", "OpenUi, onActivityResult, onError = " + paramInt1);
          String str = paramIntent.getStringExtra("key_error_msg");
          paramIntent = paramIntent.getStringExtra("key_error_detail");
          localu.a.onError(new UiError(paramInt1, str, paramIntent));
          WnsClientLog.a().b();
          continue;
          if (paramInt2 == 0)
          {
            WnsClientLog.b("openSDK_LOG", "OpenUi, onActivityResult, Constants.ACTIVITY_CANCEL");
            localu.a.onCancel();
            WnsClientLog.a().b();
          }
        }
      }
    }
    return false;
  }
  
  public void b(Activity paramActivity, String paramString, Bundle paramBundle, IUiListener paramIUiListener, boolean paramBoolean)
  {
    paramString = new i(this, paramActivity, paramBundle, paramIUiListener, this.a.d(), this.a.c(), this.a.b(), paramString);
    paramIUiListener = a(paramActivity, "action_login");
    Intent localIntent = a(paramActivity, "action_check_token");
    if ((localIntent != null) && (paramIUiListener != null) && (paramIUiListener.getPackage() != null) && (paramIUiListener.getPackage().equals(localIntent.getPackage())))
    {
      localIntent.putExtra("key_request_code", b());
      localIntent.putExtra("key_action", "action_check_token");
      localIntent.putExtra("oauth_consumer_key", this.a.d());
      localIntent.putExtra("openid", this.a.c());
      localIntent.putExtra("access_token", this.a.b());
      int i = b();
      paramActivity.startActivityForResult(localIntent, i);
      this.c.put(i, new u(paramActivity, "action_check_token", paramBundle, paramString));
      return;
    }
    paramActivity = this.a.b();
    paramBundle = this.a.d();
    paramIUiListener = this.a.c();
    if ((paramActivity != null) && (paramActivity.length() > 0) && (paramBundle != null) && (paramBundle.length() > 0) && (paramIUiListener != null) && (paramIUiListener.length() > 0))
    {
      paramBundle = Util.f("tencent&sdk&qazxc***14969%%" + paramActivity + paramBundle + paramIUiListener + "qzone3.4");
      paramActivity = new JSONObject();
      try
      {
        paramActivity.put("encry_token", paramBundle);
        paramString.onComplete(paramActivity);
        return;
      }
      catch (JSONException paramBundle)
      {
        for (;;)
        {
          paramBundle.printStackTrace();
        }
      }
    }
    paramActivity = new JSONObject();
    try
    {
      paramActivity.put("encry_token", "");
      paramString.onComplete(paramActivity);
      return;
    }
    catch (JSONException paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace();
      }
    }
  }
  
  public boolean b(Activity paramActivity, String paramString, Bundle paramBundle, IUiListener paramIUiListener)
  {
    boolean bool = false;
    WnsClientLog.a("openSDK_LOG", "OpenUi, showUi, showActivity --start");
    Intent localIntent;
    if ("action_share_qq".equals(paramString))
    {
      localIntent = a(paramActivity, paramString, paramBundle.getString("scheme"));
      WnsClientLog.b("openSDK_LOG", "OpenUi, showUi, showActivity getSchemeIntent");
      if (localIntent != null)
      {
        Bundle localBundle = a(paramActivity, paramString, paramBundle);
        localIntent.putExtra("key_action", paramString);
        localIntent.putExtra("key_params", localBundle);
      }
    }
    label241:
    label244:
    for (;;)
    {
      try
      {
        int i = localIntent.getIntExtra("key_request_code", 0);
        Log.v("sample", "start onActivityResult:" + i);
        paramActivity.startActivityForResult(localIntent, i);
        if (!"action_login".equals(paramString)) {
          break label244;
        }
        paramIUiListener = new j(this, paramIUiListener, false);
        WnsClientLog.b("openSDK_LOG", "OpenUi, showUi, showActivity ACTION_LOGIN");
        if (!"action_pay".equals(paramString)) {
          break label241;
        }
        paramIUiListener = new j(this, paramIUiListener, false);
        WnsClientLog.b("openSDK_LOG", "OpenUi, showUi, showActivity ACTION_PAY");
        this.c.put(i, new u(paramActivity, paramString, paramBundle, paramIUiListener));
        bool = true;
        return bool;
      }
      catch (ActivityNotFoundException paramActivity)
      {
        WnsClientLog.a("openSDK_LOG", "OpenUi, showUi, not such activity", paramActivity);
        return false;
      }
      localIntent = a(paramActivity, paramString);
      WnsClientLog.b("openSDK_LOG", "OpenUi, showUi, showActivity getActivityIntent");
      break;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\OpenUi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */