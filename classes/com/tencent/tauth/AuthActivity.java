package com.tencent.tauth;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.tencent.open.BrowserAuth;
import com.tencent.open.BrowserAuth.Auth;
import com.tencent.open.TDialog;
import com.tencent.open.TemporaryStorage;
import com.tencent.open.Util;
import org.json.JSONException;
import org.json.JSONObject;

public class AuthActivity
  extends Activity
{
  private static final String TAG = "AuthActivity";
  
  private void execAuthCallback(Bundle paramBundle, String paramString)
  {
    BrowserAuth localBrowserAuth = BrowserAuth.a();
    String str = paramBundle.getString("serial");
    BrowserAuth.Auth localAuth = localBrowserAuth.a(str);
    if (localAuth != null)
    {
      if (paramString.indexOf("://cancel") == -1) {
        break label64;
      }
      localAuth.a.onCancel();
      localAuth.b.dismiss();
    }
    for (;;)
    {
      localBrowserAuth.b(str);
      finish();
      return;
      label64:
      paramString = paramBundle.getString("access_token");
      if (paramString != null) {
        paramBundle.putString("access_token", localBrowserAuth.a(paramString, localAuth.c));
      }
      paramBundle = Util.a(paramBundle);
      paramBundle = Util.a(new JSONObject(), paramBundle);
      paramString = paramBundle.optString("cb");
      if (!"".equals(paramString))
      {
        localAuth.b.a(paramString, paramBundle.toString());
      }
      else
      {
        localAuth.a.onComplete(paramBundle);
        localAuth.b.dismiss();
      }
    }
  }
  
  private void execShareToQQCallback(Bundle paramBundle)
  {
    Object localObject = TemporaryStorage.a("shareToQQ");
    if (localObject == null)
    {
      finish();
      return;
    }
    localObject = (IUiListener)localObject;
    String str = paramBundle.getString("result");
    paramBundle = paramBundle.getString("response");
    if (str.equals("cancel")) {
      ((IUiListener)localObject).onCancel();
    }
    do
    {
      for (;;)
      {
        finish();
        return;
        if (!str.equals("error")) {
          break;
        }
        ((IUiListener)localObject).onError(new UiError(-6, "unknown error", paramBundle));
      }
    } while (!str.equals("complete"));
    if (paramBundle == null) {
      paramBundle = "{\"ret\": 0}";
    }
    for (;;)
    {
      try
      {
        ((IUiListener)localObject).onComplete(new JSONObject(paramBundle));
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        ((IUiListener)localObject).onError(new UiError(-4, "json error", paramBundle));
      }
      break;
    }
  }
  
  private void handleActionUri(Uri paramUri)
  {
    if ((paramUri == null) || (paramUri.toString().equals("")))
    {
      finish();
      return;
    }
    paramUri = paramUri.toString();
    Bundle localBundle = Util.a(paramUri.substring(paramUri.indexOf("#") + 1));
    String str = localBundle.getString("action");
    if ((str != null) && (str.equals("shareToQQ")))
    {
      execShareToQQCallback(localBundle);
      return;
    }
    execAuthCallback(localBundle, paramUri);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    handleActionUri(getIntent().getData());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\AuthActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */