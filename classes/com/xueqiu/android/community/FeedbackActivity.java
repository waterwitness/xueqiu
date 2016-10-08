package com.xueqiu.android.community;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xueqiu.android.base.util.i;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.b;
import com.xueqiu.android.common.u;

@SuppressLint({"SetJavaScriptEnabled"})
public class FeedbackActivity
  extends b
{
  public static final String j = v.b("/service/app_feedback");
  private WebView k;
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903092);
    setTitle(2131165197);
    this.k = ((WebView)findViewById(2131624298));
    this.k.setBackgroundColor(-1);
    if (Build.VERSION.SDK_INT >= 11) {
      this.k.setLayerType(1, null);
    }
    h();
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
        FeedbackActivity.this.i();
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        paramAnonymousWebView = i.b(FeedbackActivity.this);
        FeedbackActivity.a(FeedbackActivity.this).loadUrl(String.format("javascript:window.deviceInfo='%s'));", new Object[] { paramAnonymousWebView }));
      }
      
      public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        FeedbackActivity.this.h();
      }
    });
    setTitle(2131165530);
    this.k.loadUrl(j);
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
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\FeedbackActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */