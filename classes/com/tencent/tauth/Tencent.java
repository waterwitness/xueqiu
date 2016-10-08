package com.tencent.tauth;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.util.Base64;
import android.util.Log;
import android.webkit.CookieSyncManager;
import com.tencent.open.AsynLoadImg;
import com.tencent.open.OpenApi;
import com.tencent.open.OpenUi;
import com.tencent.open.TContext;
import com.tencent.open.TemporaryStorage;
import com.tencent.open.TencentStat;
import com.tencent.open.Util;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.record.info.Global;
import java.util.HashMap;
import org.json.JSONObject;

public class Tencent
{
  static HashMap sessionMap = null;
  private OpenApi mOpenApi;
  private OpenUi mOpenUi;
  private TContext mTContext;
  
  private Tencent(String paramString, Context paramContext)
  {
    WnsClientLog.a("openSDK_LOG", "new Tencent() --start");
    this.mTContext = new TContext(paramString, paramContext);
    this.mOpenApi = new OpenApi(this.mTContext);
    this.mOpenUi = new OpenUi(this.mTContext);
    TencentStat.a(this.mTContext, paramString);
    WnsClientLog.a("openSDK_LOG", "new Tencent() --end");
  }
  
  public static Tencent createInstance(String paramString, Context paramContext)
  {
    Global.a(paramContext.getApplicationContext());
    WnsClientLog.a("openSDK_LOG", "createInstance() --start");
    if (sessionMap == null) {
      sessionMap = new HashMap();
    }
    for (;;)
    {
      try
      {
        localObject = new ComponentName(paramContext.getPackageName(), "com.tencent.tauth.AuthActivity");
        paramContext.getPackageManager().getActivityInfo((ComponentName)localObject, 0);
        paramContext = new Tencent(paramString, paramContext);
        sessionMap.put(paramString, paramContext);
        WnsClientLog.a("openSDK_LOG", "createInstance()  --end");
        return paramContext;
      }
      catch (PackageManager.NameNotFoundException paramContext)
      {
        Object localObject = "没有在AndroidManifest.xml中检测到com.tencent.tauth.AuthActivity,请加上com.tencent.open.AuthActivity,并配置<data android:scheme=\"tencent" + paramString + "\" />,详细信息请查看官网文档.";
        new StringBuilder().append((String)localObject).append("\n配置示例如下: \n<activity\n     android:name=\"com.tencent.tauth.AuthActivity\"\n     android:noHistory=\"true\"\n     android:launchMode=\"singleTask\">\n<intent-filter>\n    <action android:name=\"android.intent.action.VIEW\" />\n     <category android:name=\"android.intent.category.DEFAULT\" />\n    <category android:name=\"android.intent.category.BROWSABLE\" />\n    <data android:scheme=\"tencent").append(paramString).append("\" />\n</intent-filter>\n</activity>");
        WnsClientLog.a("openSDK_LOG", "createInstance() error --end", paramContext);
      }
      if (sessionMap.containsKey(paramString))
      {
        WnsClientLog.a("openSDK_LOG", "createInstance() ,sessionMap.containsKey --end");
        return (Tencent)sessionMap.get(paramString);
      }
    }
    return null;
  }
  
  private void doShareToQQ(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    WnsClientLog.a("openSDK_LOG", "doShareToQQ() --start");
    Object localObject1 = paramBundle;
    if (paramBundle == null) {
      localObject1 = new Bundle();
    }
    paramBundle = "mqqapi://share/to_fri?src_type=app&version=1&file_type=news";
    String str7 = ((Bundle)localObject1).getString("imageUrl");
    String str5 = ((Bundle)localObject1).getString("title");
    Object localObject2 = ((Bundle)localObject1).getString("summary");
    String str3 = ((Bundle)localObject1).getString("targetUrl");
    String str1 = ((Bundle)localObject1).getString("appName");
    String str6 = ((Bundle)localObject1).getString("imageLocalUrl");
    String str4 = getAppId();
    String str2 = getOpenId();
    Log.v("shareToQQ", "openId:" + str2);
    if (!Util.e(str7)) {
      paramBundle = "mqqapi://share/to_fri?src_type=app&version=1&file_type=news" + "&image_url=" + Base64.encodeToString(str7.getBytes(), 2);
    }
    localObject1 = paramBundle;
    if (!Util.e(str6)) {
      localObject1 = paramBundle + "&file_data=" + Base64.encodeToString(str6.getBytes(), 2);
    }
    paramBundle = (Bundle)localObject1;
    if (!Util.e(str5)) {
      paramBundle = (String)localObject1 + "&title=" + Base64.encodeToString(str5.getBytes(), 2);
    }
    localObject1 = paramBundle;
    if (!Util.e((String)localObject2)) {
      localObject1 = paramBundle + "&description=" + Base64.encodeToString(((String)localObject2).getBytes(), 2);
    }
    localObject2 = localObject1;
    if (!Util.e(str4)) {
      localObject2 = (String)localObject1 + "&share_id=" + str4;
    }
    paramBundle = (Bundle)localObject2;
    if (!Util.e(str3)) {
      paramBundle = (String)localObject2 + "&url=" + Base64.encodeToString(str3.getBytes(), 2);
    }
    localObject1 = paramBundle;
    if (!Util.e(str1))
    {
      localObject1 = str1;
      if (str1.length() > 20) {
        localObject1 = str1.substring(0, 20) + "...";
      }
      localObject1 = paramBundle + "&app_name=" + Base64.encodeToString(((String)localObject1).getBytes(), 2);
    }
    paramBundle = (Bundle)localObject1;
    if (!Util.e(str2)) {
      paramBundle = (String)localObject1 + "&open_id=" + Base64.encodeToString(str2.getBytes(), 2);
    }
    Log.v("shareToQQ", paramBundle);
    TencentStat.a(this.mTContext, "requireApi", new String[] { "shareToNativeQQ" });
    localObject1 = new Bundle();
    ((Bundle)localObject1).putString("scheme", paramBundle);
    if ((!this.mOpenUi.b(paramActivity, "action_share_qq", (Bundle)localObject1, paramIUiListener)) && (paramIUiListener != null)) {
      paramIUiListener.onError(new UiError(-6, "分享的手机QQ失败!", null));
    }
    WnsClientLog.a("openSDK_LOG", "doShareToQQ() --end");
  }
  
  private String fillShareToQQParams(String paramString, Bundle paramBundle)
  {
    WnsClientLog.a("openSDK_LOG", "fillShareToQQParams() --start");
    paramBundle.putString("action", "shareToQQ");
    paramBundle.putString("appId", getAppId());
    paramBundle.putString("sdkp", "a");
    paramBundle.putString("sdkv", "1.8");
    paramBundle.putString("status_os", Build.VERSION.RELEASE);
    paramBundle.putString("status_machine", Build.MODEL);
    if ((paramBundle.containsKey("content")) && (paramBundle.getString("content").length() > 40)) {
      paramBundle.putString("content", paramBundle.getString("content").substring(0, 40) + "...");
    }
    if ((paramBundle.containsKey("summary")) && (paramBundle.getString("summary").length() > 80)) {
      paramBundle.putString("summary", paramBundle.getString("summary").substring(0, 80) + "...");
    }
    paramBundle = Util.a(paramBundle);
    paramString = paramString + "&" + paramBundle.replaceAll("\\+", "%20");
    WnsClientLog.a("openSDK_LOG", "fillShareToQQParams() --end");
    return paramString;
  }
  
  private void shareToH5QQ(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    WnsClientLog.a("openSDK_LOG", "shareToH5QQ() --start");
    Object localObject = TemporaryStorage.a("shareToQQ", paramIUiListener);
    if (localObject != null) {
      ((IUiListener)localObject).onCancel();
    }
    localObject = paramBundle;
    if (paramBundle == null) {
      localObject = new Bundle();
    }
    paramBundle = fillShareToQQParams("http://openmobile.qq.com/api/check?page=shareindex.html&style=9", (Bundle)localObject);
    TencentStat.a(this.mTContext, "requireApi", new String[] { "shareToH5QQ" });
    if ((!Util.a(paramActivity, paramBundle)) && (paramIUiListener != null)) {
      paramIUiListener.onError(new UiError(-6, "打开浏览器失败!", null));
    }
    WnsClientLog.a("openSDK_LOG", "shareToH5QQ() --end");
  }
  
  private void shareToMobileQQ(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    WnsClientLog.a("openSDK_LOG", "shareToMobileQQ() --start");
    Object localObject = TemporaryStorage.a("shareToQQ", paramIUiListener);
    if (localObject != null) {
      ((IUiListener)localObject).onCancel();
    }
    localObject = paramBundle.getString("imageUrl");
    String str1 = paramBundle.getString("title");
    String str2 = paramBundle.getString("summary");
    WnsClientLog.a("shareToQQ", "imageUrl:" + (String)localObject + ", title:" + str1 + ",summary:" + str2);
    if ((localObject != null) && (!((String)localObject).equals("")) && (((String)localObject).contains("http://")))
    {
      if ((Util.e(str1)) && (Util.e(str2)) && (!Util.b()))
      {
        paramIUiListener.onError(new UiError(-6, "分享图片失败，检测不到SD卡!", null));
        Log.v("shareToQQ", "分享图片失败，检测不到SD卡!");
        return;
      }
      new AsynLoadImg(paramActivity).a((String)localObject, new f(this, paramBundle, str1, str2, paramIUiListener, paramActivity));
    }
    for (;;)
    {
      WnsClientLog.a("openSDK_LOG", "shareToMobileQQ() --start");
      return;
      doShareToQQ(paramActivity, paramBundle, paramIUiListener);
    }
  }
  
  public int ask(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    paramBundle.putString("type", "request");
    WnsClientLog.b("openSDK_LOG", "ask(), params = " + paramBundle.toString());
    return this.mOpenUi.a(paramActivity, "action_ask", paramBundle, paramIUiListener);
  }
  
  public int brag(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    paramBundle.putString("type", "brag");
    WnsClientLog.b("openSDK_LOG", "brag(), params = " + paramBundle.toString());
    return this.mOpenUi.a(paramActivity, "action_brag", paramBundle, paramIUiListener);
  }
  
  public int challenge(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    paramBundle.putString("type", "pk");
    WnsClientLog.b("openSDK_LOG", "challenge(), params = " + paramBundle.toString());
    return this.mOpenUi.a(paramActivity, "action_challenge", paramBundle, paramIUiListener);
  }
  
  public String getAccessToken()
  {
    WnsClientLog.a("openSDK_LOG", "getAccessToken()");
    return this.mTContext.b();
  }
  
  public String getAppId()
  {
    WnsClientLog.a("openSDK_LOG", "getAppId()");
    return this.mTContext.d();
  }
  
  public long getExpiresIn()
  {
    WnsClientLog.a("openSDK_LOG", "getExpiresIn()");
    return this.mTContext.e();
  }
  
  public String getOpenId()
  {
    WnsClientLog.a("openSDK_LOG", "getOpenId()");
    return this.mTContext.c();
  }
  
  public String getSDKVersion()
  {
    return OpenApi.a();
  }
  
  public int gift(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    paramBundle.putString("type", "freegift");
    WnsClientLog.b("openSDK_LOG", "gift(), params = " + paramBundle.toString());
    return this.mOpenUi.a(paramActivity, "action_gift", paramBundle, paramIUiListener);
  }
  
  public int invite(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    WnsClientLog.b("openSDK_LOG", "invite(), params = " + paramBundle.toString());
    TencentStat.a(this.mTContext, "requireApi", new String[] { "invite" });
    return this.mOpenUi.a(paramActivity, "action_invite", paramBundle, paramIUiListener);
  }
  
  public boolean isSessionValid()
  {
    StringBuilder localStringBuilder = new StringBuilder("isSessionValid(), result = ");
    if (this.mTContext.a()) {}
    for (String str = "true";; str = "false")
    {
      WnsClientLog.a("openSDK_LOG", str);
      return this.mTContext.a();
    }
  }
  
  public int login(Activity paramActivity, String paramString, IUiListener paramIUiListener)
  {
    WnsClientLog.a("openSDK_LOG", "login()");
    Bundle localBundle = new Bundle();
    localBundle.putString("scope", paramString);
    sessionMap.put(getAppId(), this);
    return this.mOpenUi.a(paramActivity, "action_login", localBundle, paramIUiListener);
  }
  
  public void logout(Context paramContext)
  {
    WnsClientLog.a("openSDK_LOG", "logout() --start");
    CookieSyncManager.createInstance(paramContext);
    setAccessToken(null, null);
    setOpenId(null);
    sessionMap.remove(this.mTContext.d());
    WnsClientLog.a("openSDK_LOG", "logout() --end");
  }
  
  public boolean onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    WnsClientLog.c("openSDK_LOG", "onActivityResult() ,resultCode = " + paramInt2);
    return this.mOpenUi.a(paramInt1, paramInt2, paramIntent);
  }
  
  public int pay(Activity paramActivity, IUiListener paramIUiListener)
  {
    WnsClientLog.a("openSDK_LOG", "pay()");
    Bundle localBundle = new Bundle();
    localBundle.putString("scope", "");
    return this.mOpenUi.a(paramActivity, "action_pay", localBundle, paramIUiListener);
  }
  
  public int reAuth(Activity paramActivity, String paramString, IUiListener paramIUiListener)
  {
    WnsClientLog.a("openSDK_LOG", "reAuth()");
    Bundle localBundle = new Bundle();
    localBundle.putString("scope", paramString);
    localBundle.putString("isadd", "1");
    return this.mOpenUi.a(paramActivity, "action_login", localBundle, paramIUiListener, true);
  }
  
  public JSONObject request(String paramString1, Bundle paramBundle, String paramString2)
  {
    WnsClientLog.a("openSDK_LOG", "request() ,graphPath = " + paramString1);
    return this.mOpenApi.a(this.mTContext.f(), paramString1, paramBundle, paramString2);
  }
  
  public void requestAsync(String paramString1, Bundle paramBundle, String paramString2, IRequestListener paramIRequestListener, Object paramObject)
  {
    WnsClientLog.a("openSDK_LOG", "requestAsync() ,graphPath = " + paramString1);
    this.mOpenApi.a(this.mTContext.f(), paramString1, paramBundle, paramString2, paramIRequestListener, paramObject);
  }
  
  public JSONObject requestSync(String paramString1, Bundle paramBundle, String paramString2)
  {
    WnsClientLog.a("openSDK_LOG", "requestSync() ,graphPath = " + paramString1);
    try
    {
      paramString1 = this.mOpenApi.a(this.mTContext.f(), paramString1, paramBundle, paramString2);
      return paramString1;
    }
    catch (Exception paramString1)
    {
      WnsClientLog.a("openSDK_LOG", "requestSync() error", paramString1);
    }
    return null;
  }
  
  public void setAccessToken(String paramString1, String paramString2)
  {
    WnsClientLog.a("openSDK_LOG", "setAccessToken(), expiresIn = " + paramString2);
    this.mTContext.a(paramString1, paramString2);
  }
  
  public void setAvatar(Activity paramActivity, Bundle paramBundle)
  {
    WnsClientLog.a("openSDK_LOG", "setAvatar() --start");
    setAvatar(paramActivity, paramBundle, null);
    WnsClientLog.a("openSDK_LOG", "setAvatar() --end");
  }
  
  public void setAvatar(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    paramBundle.putString("appid", this.mTContext.d());
    paramBundle.putString("access_token", this.mTContext.b());
    paramBundle.putLong("expires_in", this.mTContext.e());
    paramBundle.putString("openid", this.mTContext.c());
    this.mOpenUi.b(paramActivity, "action_avatar", paramBundle, paramIUiListener);
  }
  
  public void setAvatar(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener, int paramInt1, int paramInt2)
  {
    paramBundle.putInt("exitAnim", paramInt2);
    paramActivity.overridePendingTransition(paramInt1, 0);
    setAvatar(paramActivity, paramBundle, paramIUiListener);
  }
  
  public void setOpenId(String paramString)
  {
    WnsClientLog.a("openSDK_LOG", "setOpenId() --start");
    this.mTContext.a(paramString);
    TencentStat.b(this.mTContext, paramString);
    WnsClientLog.a("openSDK_LOG", "setOpenId() --end");
  }
  
  public void shareToQQ(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    WnsClientLog.a("openSDK_LOG", "shareToQQ() --start");
    Object localObject2 = paramBundle.getString("imageUrl");
    String str2 = paramBundle.getString("title");
    String str3 = paramBundle.getString("summary");
    String str1 = paramBundle.getString("targetUrl");
    Object localObject1 = localObject2;
    if (!Util.e((String)localObject2))
    {
      localObject1 = localObject2;
      if (!((String)localObject2).contains("http://"))
      {
        localObject1 = localObject2;
        if (!((String)localObject2).contains("https://")) {
          localObject1 = "";
        }
      }
    }
    localObject2 = str1;
    if (!Util.e(str1))
    {
      localObject2 = str1;
      if (!str1.contains("http://"))
      {
        localObject2 = str1;
        if (!str1.contains("https://")) {
          localObject2 = "";
        }
      }
    }
    if (!Util.b())
    {
      paramIUiListener.onError(new UiError(-6, "分享图片失败，检测不到SD卡!", null));
      Log.v("shareToQQ", "分享图片失败，检测不到SD卡!");
      WnsClientLog.a("openSDK_LOG", "shareToQQ() sdcard is null--end");
      return;
    }
    if (((Util.e(str2)) && (Util.e(str3)) && (Util.e((String)localObject1))) || (Util.e((String)localObject2)))
    {
      paramIUiListener.onError(new UiError(-6, "传入参数有误!", null));
      WnsClientLog.a("openSDK_LOG", "shareToQQ() both null--end");
      return;
    }
    if ((!Util.e(str2)) && (str2.length() > 40)) {
      paramBundle.putString("title", str2.substring(0, 40) + "...");
    }
    if ((!Util.e(str3)) && (str3.length() > 80)) {
      paramBundle.putString("summary", str3.substring(0, 80) + "...");
    }
    if (Util.b(paramActivity)) {
      shareToMobileQQ(paramActivity, paramBundle, paramIUiListener);
    }
    for (;;)
    {
      WnsClientLog.a("openSDK_LOG", "shareToQQ() --end");
      return;
      shareToH5QQ(paramActivity, paramBundle, paramIUiListener);
    }
  }
  
  public int story(Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener)
  {
    WnsClientLog.b("openSDK_LOG", "story(), params = " + paramBundle.toString());
    TencentStat.a(this.mTContext, "requireApi", new String[] { "story" });
    return this.mOpenUi.a(paramActivity, "action_story", paramBundle, paramIUiListener);
  }
  
  public JSONObject upload(String paramString, Bundle paramBundle)
  {
    WnsClientLog.a("openSDK_LOG", "upload() ,graphPath = " + paramString);
    try
    {
      paramString = this.mOpenApi.a(this.mTContext.f(), paramString, paramBundle);
      return paramString;
    }
    catch (Exception paramString) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\Tencent.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */