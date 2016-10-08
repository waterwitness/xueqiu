package com.xueqiu.android.community;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.WebViewActivity;
import com.xueqiu.android.common.b;

@SuppressLint({"SetJavaScriptEnabled"})
public class PromotionActivity
  extends b
{
  private String j = "https://xueqiu.com/c/pin";
  private WebView k;
  
  public void onBackPressed()
  {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903092);
    long l = getIntent().getLongExtra("extra_status_id", -1L);
    int i = getIntent().getIntExtra("extra_top_type", -1);
    if (i == 1) {
      setTitle(2131166127);
    }
    for (;;)
    {
      this.k = ((WebView)findViewById(2131624298));
      this.k.getSettings().setJavaScriptEnabled(true);
      this.k.getSettings().setCacheMode(2);
      this.k.getSettings().setAllowFileAccess(true);
      this.k.getSettings().setUseWideViewPort(true);
      this.k.getSettings().setSupportZoom(true);
      this.k.getSettings().setBuiltInZoomControls(false);
      this.k.setWebChromeClient(new com.xueqiu.android.common.u(this));
      this.k.setWebViewClient(new WebViewClient()
      {
        public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
        {
          PromotionActivity.this.i();
          super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        }
        
        public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
        {
          super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
          PromotionActivity.this.h();
        }
      });
      try
      {
        paramBundle = getPackageManager().getPackageInfo(getPackageName(), 0);
        this.k.getSettings().setUserAgentString("Xueqiu Android " + paramBundle.versionName);
        if (com.xueqiu.android.base.u.a().d)
        {
          t.a(this, true);
          return;
          setTitle(2131166126);
        }
      }
      catch (PackageManager.NameNotFoundException paramBundle)
      {
        for (;;)
        {
          aa.a(paramBundle);
        }
        this.j = (this.j + "?status_id=" + l + "&top_type=" + i);
        this.k.loadUrl(this.j);
      }
    }
  }
  
  public void onDestroy()
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
    if ((this.k != null) && (this.k.canGoBack()) && (paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      this.k.goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onRestart()
  {
    super.onRestart();
    this.k.reload();
  }
  
  protected final Boolean w_()
  {
    boolean bool = true;
    v.a(WebViewActivity.class.getSimpleName(), String.format("scrollX : %d", new Object[] { Integer.valueOf(this.k.getScrollX()) }));
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\PromotionActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */