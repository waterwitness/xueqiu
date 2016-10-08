package com.alipay.sdk.app;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URLDecoder;

final class b
  extends WebViewClient
{
  private b(H5PayActivity paramH5PayActivity) {}
  
  public final void onFormResubmission(WebView paramWebView, Message paramMessage1, Message paramMessage2) {}
  
  public final void onLoadResource(WebView paramWebView, String paramString) {}
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    H5PayActivity.f(this.a);
    H5PayActivity.e(this.a).removeCallbacks(H5PayActivity.d(this.a));
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    H5PayActivity.c(this.a);
    H5PayActivity.e(this.a).postDelayed(H5PayActivity.d(this.a), 30000L);
    super.onPageStarted(paramWebView, paramString, paramBitmap);
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    H5PayActivity.a(this.a);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    if (H5PayActivity.b(this.a))
    {
      paramSslErrorHandler.proceed();
      H5PayActivity.a(this.a, false);
      return;
    }
    this.a.runOnUiThread(new n(this, paramSslErrorHandler));
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith("alipays://platformapi/startApp?")) {
      return false;
    }
    if ((TextUtils.equals(paramString, "sdklite://h5quit")) || (TextUtils.equals(paramString, "http://m.alipay.com/?action=h5quit")))
    {
      e.a = e.a();
      this.a.finish();
      return true;
    }
    if (paramString.startsWith("sdklite://h5quit?result=")) {
      for (;;)
      {
        try
        {
          paramWebView = paramString.substring(paramString.indexOf("sdklite://h5quit?result=") + 24);
          int i = Integer.parseInt(paramWebView.substring(paramWebView.lastIndexOf("&end_code=") + 10));
          if ((i != f.a.g) && (i != f.f.g)) {
            continue;
          }
          StringBuilder localStringBuilder = new StringBuilder();
          paramWebView = URLDecoder.decode(paramString);
          paramString = paramWebView.substring(paramWebView.indexOf("sdklite://h5quit?result=") + 24, paramWebView.lastIndexOf("&end_code="));
          paramWebView = paramString;
          if (paramString.contains("&return_url=\""))
          {
            paramWebView = paramString.split("&return_url=\"")[0];
            int j = paramString.indexOf("&return_url=\"") + 13;
            localStringBuilder.append(paramWebView).append("&return_url=\"").append(paramString.substring(j, paramString.indexOf("\"&", j))).append(paramString.substring(paramString.indexOf("\"&", j)));
            paramWebView = localStringBuilder.toString();
          }
          paramString = f.a(i);
          e.a = e.a(paramString.g, paramString.h, paramWebView);
        }
        catch (Exception paramWebView)
        {
          e.a = e.b();
          continue;
        }
        paramWebView = new d(this);
        this.a.runOnUiThread(paramWebView);
        return true;
        paramWebView = f.a(f.b.g);
        e.a = e.a(paramWebView.g, paramWebView.h, "");
      }
    }
    paramWebView.loadUrl(paramString);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\app\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */