package com.xueqiu.android.base.h5;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xueqiu.android.common.widget.SNBWebView;

public final class n
  extends WebViewClient
{
  private final l a;
  private o b = null;
  private int c = 0;
  
  public n(l paraml, o paramo)
  {
    this.a = paraml;
    this.b = paramo;
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    if (this.b.a()) {
      this.b.b();
    }
    super.onPageFinished(paramWebView, paramString);
    this.c = 0;
  }
  
  public final void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    this.c += 1;
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    this.b.c();
    this.a.a.z();
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (this.a.a(paramString)) {
      return true;
    }
    if (this.c > 0) {
      return false;
    }
    ((SNBWebView)paramWebView).loadUrl(paramString);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\h5\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */