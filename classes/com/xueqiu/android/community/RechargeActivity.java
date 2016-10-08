package com.xueqiu.android.community;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.v;
import com.xueqiu.android.common.WebViewActivity;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.u;
import com.xueqiu.android.community.model.PayResult;

@SuppressLint({"SetJavaScriptEnabled"})
public class RechargeActivity
  extends b
{
  private String j = "https://xueqiu.com/c/deposit";
  private WebView k;
  private Handler p = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      switch (paramAnonymousMessage.what)
      {
      default: 
        return;
      case 1: 
        paramAnonymousMessage = new PayResult((String)paramAnonymousMessage.obj).getResultStatus();
        if (TextUtils.equals(paramAnonymousMessage, "9000"))
        {
          aa.a("支付成功");
          return;
        }
        if (TextUtils.equals(paramAnonymousMessage, "8000"))
        {
          aa.a("支付结果确认中");
          return;
        }
        aa.a("支付失败");
        return;
      }
      aa.a("检查结果为：" + paramAnonymousMessage.obj);
    }
  };
  
  public void finish()
  {
    setResult(99);
    super.finish();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == 2)) {
      finish();
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903092);
    setTitle(2131166583);
    this.k = ((WebView)findViewById(2131624298));
    this.k.getSettings().setJavaScriptEnabled(true);
    this.k.getSettings().setCacheMode(2);
    this.k.getSettings().setAllowFileAccess(true);
    this.k.getSettings().setUseWideViewPort(true);
    this.k.getSettings().setSupportZoom(true);
    this.k.getSettings().setBuiltInZoomControls(false);
    this.k.setWebChromeClient(new u(this));
    this.k.setWebViewClient(new WebViewClient()
    {
      public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        RechargeActivity.this.i();
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
      }
      
      public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        RechargeActivity.this.h();
      }
      
      public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        paramAnonymousWebView.loadUrl(paramAnonymousString);
        return true;
      }
    });
    this.k.addJavascriptInterface(new j(this), "Android");
    try
    {
      paramBundle = getPackageManager().getPackageInfo(getPackageName(), 0);
      this.k.getSettings().setUserAgentString("Xueqiu Android " + paramBundle.versionName);
      this.k.loadUrl(this.j);
      return;
    }
    catch (PackageManager.NameNotFoundException paramBundle)
    {
      for (;;)
      {
        aa.a(paramBundle);
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\RechargeActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */