package com.tencent.open;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.view.View;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

final class e
  extends WebViewClient
{
  private e(TDialog paramTDialog) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if ((TDialog.b() != null) && (TDialog.b().get() != null)) {
      ((View)TDialog.b().get()).setVisibility(8);
    }
    TDialog.e(this.a).setVisibility(0);
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    Util.a("TDialog", "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    if ((TDialog.b() != null) && (TDialog.b().get() != null)) {
      ((View)TDialog.b().get()).setVisibility(0);
    }
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    TDialog.f(this.a).onError(new UiError(paramInt, paramString1, paramString2));
    if ((TDialog.a() != null) && (TDialog.a().get() != null)) {
      Toast.makeText((Context)TDialog.a().get(), "网络连接异常或系统错误", 0).show();
    }
    this.a.dismiss();
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Util.a("TDialog", "Redirect URL: " + paramString);
    if (paramString.startsWith("auth://browser"))
    {
      paramWebView = Util.c(paramString);
      TDialog.a(this.a, TDialog.b(this.a));
      if (!TDialog.c(this.a))
      {
        if (paramWebView.optString("fail_cb", null) == null) {
          break label87;
        }
        this.a.a(paramWebView.optString("fail_cb"), "");
      }
      for (;;)
      {
        return true;
        label87:
        if (paramWebView.optInt("fall_to_wv") == 1)
        {
          paramString = this.a;
          if (TDialog.d(this.a).indexOf("?") >= 0) {}
          for (paramWebView = "&";; paramWebView = "?")
          {
            TDialog.a(paramString, paramWebView);
            TDialog.a(this.a, "browser_error=1");
            TDialog.e(this.a).loadUrl(TDialog.d(this.a));
            break;
          }
        }
        paramWebView = paramWebView.optString("redir", null);
        if (paramWebView != null) {
          TDialog.e(this.a).loadUrl(paramWebView);
        }
      }
    }
    if (paramString.startsWith(ServerSetting.getInstance().getSettingUrl((Context)TDialog.a().get(), 1)))
    {
      TDialog.f(this.a).onComplete(Util.c(paramString));
      this.a.dismiss();
      return true;
    }
    if (paramString.startsWith("auth://cancel"))
    {
      TDialog.f(this.a).onCancel();
      this.a.dismiss();
      return true;
    }
    if (paramString.startsWith("auth://close"))
    {
      this.a.dismiss();
      return true;
    }
    if (paramString.startsWith("download://"))
    {
      paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(paramString.substring(11))));
      if ((TDialog.a() != null) && (TDialog.a().get() != null)) {
        ((Context)TDialog.a().get()).startActivity(paramWebView);
      }
      return true;
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */