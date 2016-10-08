package com.tencent.open;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.webkit.CookieSyncManager;
import com.tencent.record.debug.WnsClientLog;
import com.tencent.tauth.IUiListener;
import com.tencent.tauth.UiError;
import org.json.JSONException;
import org.json.JSONObject;

final class j
  implements IUiListener
{
  private IUiListener b;
  private boolean c;
  
  public j(OpenUi paramOpenUi, IUiListener paramIUiListener, boolean paramBoolean)
  {
    this.b = paramIUiListener;
    this.c = paramBoolean;
    WnsClientLog.b("openSDK_LOG", "OpenUi, TokenListener()");
  }
  
  public final void onCancel()
  {
    WnsClientLog.b("openSDK_LOG", "OpenUi, TokenListener() onCancel");
    this.b.onCancel();
    WnsClientLog.a().b();
  }
  
  public final void onComplete(JSONObject paramJSONObject)
  {
    WnsClientLog.b("openSDK_LOG", "OpenUi, TokenListener() onComplete");
    for (;;)
    {
      try
      {
        str1 = paramJSONObject.getString("access_token");
        String str2 = paramJSONObject.getString("expires_in");
        String str3 = paramJSONObject.getString("openid");
        if ((str1 != null) && (OpenUi.a(this.a) != null) && (str3 != null))
        {
          OpenUi.a(this.a).a(str1, str2);
          OpenUi.a(this.a).a(str3);
          TencentStat.b(OpenUi.a(this.a), str3);
        }
        str1 = paramJSONObject.getString("pf");
        if (str1 == null) {}
      }
      catch (JSONException localJSONException)
      {
        String str1;
        localJSONException.printStackTrace();
        WnsClientLog.a("openSDK_LOG", "OpenUi, TokenListener() onComplete error", localJSONException);
        continue;
      }
      try
      {
        OpenUi.a(this.a).f().getSharedPreferences("pfStore", 0).edit().putString("pf", str1).commit();
        if (this.c) {
          CookieSyncManager.getInstance().sync();
        }
        this.b.onComplete(paramJSONObject);
        WnsClientLog.a().b();
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        WnsClientLog.a("openSDK_LOG", "OpenUi, TokenListener() onComplete error", localException);
      }
    }
  }
  
  public final void onError(UiError paramUiError)
  {
    WnsClientLog.b("openSDK_LOG", "OpenUi, TokenListener() onError");
    this.b.onError(paramUiError);
    WnsClientLog.a().b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */