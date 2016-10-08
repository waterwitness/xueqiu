package com.tencent.tauth;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

final class e
  extends WebViewClient
{
  private e(TAuthView paramTAuthView) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    TAuthView.access$4(this.a).sendEmptyMessage(0);
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    TAuthView.access$4(this.a).sendEmptyMessage(1);
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    TAuthView.access$4(this.a).sendEmptyMessage(0);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    paramSslErrorHandler.proceed();
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith(TAuthView.access$2(this.a) + "?"))
    {
      TAuthView.access$3(this.a, paramString);
      TAuthView.access$4(this.a).sendEmptyMessage(0);
      TAuthView.access$5(this.a);
      return true;
    }
    TAuthView.access$4(this.a).sendEmptyMessage(1);
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */