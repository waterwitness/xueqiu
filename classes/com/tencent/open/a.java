package com.tencent.open;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import com.tencent.tauth.UiError;
import java.lang.ref.WeakReference;

final class a
  extends WebViewClient
{
  private a(PKDialog paramPKDialog) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    PKDialog.access$600(this.a).setVisibility(0);
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    Util.a(PKDialog.access$300(), "Webview loading URL: " + paramString);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    PKDialog.access$500(this.a).onError(new UiError(paramInt, paramString1, paramString2));
    if ((PKDialog.access$400() != null) && (PKDialog.access$400().get() != null)) {
      Toast.makeText((Context)PKDialog.access$400().get(), "网络连接异常或系统错误", 0).show();
    }
    this.a.dismiss();
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    Util.a(PKDialog.access$300(), "Redirect URL: " + paramString);
    if (paramString.startsWith(ServerSetting.getInstance().getSettingUrl((Context)PKDialog.access$400().get(), 1)))
    {
      PKDialog.access$500(this.a).onComplete(Util.c(paramString));
      this.a.dismiss();
      return true;
    }
    if (paramString.startsWith("auth://cancel"))
    {
      PKDialog.access$500(this.a).onCancel();
      this.a.dismiss();
      return true;
    }
    if (paramString.startsWith("auth://close"))
    {
      this.a.dismiss();
      return true;
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */