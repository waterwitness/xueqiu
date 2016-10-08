package com.xueqiu.android.common;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xueqiu.android.base.util.v;

@SuppressLint({"SetJavaScriptEnabled"})
public class AlipayWapActivity
  extends b
{
  private boolean j = false;
  private WebView k;
  private boolean p = false;
  
  public void onBackPressed()
  {
    if (this.p)
    {
      setResult(2);
      finish();
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903091);
    setTitle(2131165790);
    this.k = ((WebView)findViewById(2131624298));
    this.k.getSettings().setJavaScriptEnabled(true);
    this.k.getSettings().setCacheMode(2);
    this.k.getSettings().setAllowFileAccess(true);
    this.k.getSettings().setUseWideViewPort(true);
    this.k.getSettings().setSupportZoom(true);
    this.k.getSettings().setBuiltInZoomControls(false);
    this.k.setWebViewClient(new WebViewClient()
    {
      public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        AlipayWapActivity.this.i();
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
      }
      
      public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        AlipayWapActivity.this.h();
      }
      
      public final void onReceivedSslError(WebView paramAnonymousWebView, SslErrorHandler paramAnonymousSslErrorHandler, SslError paramAnonymousSslError)
      {
        if (paramAnonymousSslErrorHandler != null) {}
        try
        {
          paramAnonymousSslErrorHandler.proceed();
          return;
        }
        catch (Exception paramAnonymousWebView)
        {
          paramAnonymousWebView.printStackTrace();
        }
      }
      
      public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        if (paramAnonymousString.startsWith("js://rechargeSucceed"))
        {
          AlipayWapActivity.this.setResult(2);
          AlipayWapActivity.this.finish();
          return true;
        }
        if (paramAnonymousString.startsWith("js://rechargeFailed"))
        {
          AlipayWapActivity.this.finish();
          return true;
        }
        if (paramAnonymousString.contains("cashier/asyn_payment_result")) {
          AlipayWapActivity.a(AlipayWapActivity.this);
        }
        paramAnonymousWebView.loadUrl(paramAnonymousString);
        return true;
      }
    });
    this.k.setWebChromeClient(new WebChromeClient());
    paramBundle = getIntent().getExtras();
    if (paramBundle != null)
    {
      paramBundle = paramBundle.getString("extra_url_path");
      this.k.loadUrl(paramBundle);
    }
  }
  
  protected void onDestroy()
  {
    if ((this.k != null) && (this.k.getParent() != null))
    {
      ((ViewGroup)this.k.getParent()).removeView(this.k);
      this.k.removeAllViews();
      this.k.destroy();
      this.k = null;
    }
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((!this.j) && (this.k != null) && (this.k.canGoBack()) && (paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      if (this.p)
      {
        setResult(2);
        finish();
      }
      for (;;)
      {
        return true;
        this.k.goBack();
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected final Boolean w_()
  {
    boolean bool = true;
    v.a(AlipayWapActivity.class.getSimpleName(), String.format("scrollX : %d", new Object[] { Integer.valueOf(this.k.getScrollX()) }));
    if (this.k.getScrollX() <= 0) {}
    for (;;)
    {
      return Boolean.valueOf(bool);
      bool = false;
    }
  }
  
  public final void x_()
  {
    if (this.k.canGoBack())
    {
      this.k.goBack();
      return;
    }
    super.onBackPressed();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\AlipayWapActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */