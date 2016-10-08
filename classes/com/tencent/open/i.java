package com.tencent.open;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

final class i
  implements IUiListener
{
  private IUiListener b;
  private Activity c;
  private Bundle d;
  private String e;
  private String f;
  private String g;
  private String h;
  private Handler i = new v(this);
  
  public i(OpenUi paramOpenUi, Activity paramActivity, Bundle paramBundle, IUiListener paramIUiListener, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.c = paramActivity;
    this.d = paramBundle;
    this.b = paramIUiListener;
    this.e = paramString1;
    this.f = paramString2;
    this.g = paramString3;
    this.h = paramString4;
    WnsClientLog.b("openSDK_LOG", "OpenUi, EncrytokenListener()");
  }
  
  private void a()
  {
    WnsClientLog.b("openSDK_LOG", "OpenUi, EncrytokenListener() relogin()");
    OpenUi.a(this.a).a(null);
    OpenUi.a(this.a).a(null, "0");
    this.a.a(this.c, "action_login", this.d, this.b);
  }
  
  public final void onCancel()
  {
    WnsClientLog.b("openSDK_LOG", "OpenUi, EncrytokenListener() onCancel");
    if (this.h.equals("action_check_token")) {
      a();
    }
  }
  
  public final void onComplete(JSONObject paramJSONObject)
  {
    WnsClientLog.b("openSDK_LOG", "OpenUi, EncrytokenListener() onComplete");
    try
    {
      paramJSONObject = paramJSONObject.getString("encry_token");
      if (this.h.equals("action_check_token")) {
        if ((paramJSONObject != null) && (paramJSONObject.length() > 0))
        {
          WnsClientLog.b("openSDK_LOG", "OpenUi, EncrytokenListener() onComplete validToken");
          WnsClientLog.b("openSDK_LOG", "OpenUi, EncrytokenListener() validToken()");
          OpenApi localOpenApi = new OpenApi(OpenUi.a(this.a));
          Bundle localBundle = new Bundle();
          localBundle.putString("oauth_consumer_key", this.e);
          localBundle.putString("openid", this.f);
          localBundle.putString("access_token", this.g);
          localBundle.putString("encrytoken", paramJSONObject);
          localOpenApi.a(OpenUi.a(this.a).f(), "https://openmobile.qq.com/user/user_login_statis", localBundle, "POST", new l(this), localBundle);
          WnsClientLog.b("openSDK_LOG", "OpenUi, EncrytokenListener() onComplete writeEncryToken");
          this.a.a();
          return;
        }
      }
    }
    catch (JSONException paramJSONObject)
    {
      for (;;)
      {
        paramJSONObject.printStackTrace();
        WnsClientLog.a("openSDK_LOG", "OpenUi, EncrytokenListener() onComplete error", paramJSONObject);
        paramJSONObject = null;
        continue;
        WnsClientLog.b("openSDK_LOG", "OpenUi, EncrytokenListener() onComplete relogin");
        a();
        continue;
        if (("action_challenge".equals(this.h)) || ("action_story".equals(this.h)) || ("action_invite".equals(this.h)) || ("action_brag".equals(this.h)) || ("action_ask".equals(this.h)) || ("action_gift".equals(this.h)))
        {
          this.d.putString("encrytoken", paramJSONObject);
          this.a.a(this.c, this.h, this.d, this.b);
          WnsClientLog.b("openSDK_LOG", "OpenUi, EncrytokenListener() onComplete showDialog");
        }
      }
    }
  }
  
  public final void onError(UiError paramUiError)
  {
    WnsClientLog.d("openSDK_LOG", "OpenUi, EncrytokenListener() onError");
    if (this.h.equals("action_check_token")) {
      a();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */