package com.xueqiu.android.common;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

public final class u
  extends WebChromeClient
{
  public Activity a = null;
  
  public u(Activity paramActivity)
  {
    this.a = paramActivity;
  }
  
  private void a(boolean paramBoolean, String paramString, final JsResult paramJsResult)
  {
    paramString = new AlertDialog.Builder(this.a).setTitle(2131166217).setMessage(paramString).setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramJsResult.confirm();
      }
    });
    if (paramBoolean) {
      paramString.setNegativeButton(17039360, new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramJsResult.cancel();
        }
      });
    }
    paramString.create().show();
  }
  
  public final boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    a(false, paramString2, paramJsResult);
    return true;
  }
  
  public final boolean onJsConfirm(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    a(true, paramString2, paramJsResult);
    return true;
  }
  
  public final boolean onJsPrompt(WebView paramWebView, String paramString1, String paramString2, String paramString3, JsPromptResult paramJsPromptResult)
  {
    a(false, paramString2, paramJsPromptResult);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */