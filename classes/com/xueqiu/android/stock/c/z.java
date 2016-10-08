package com.xueqiu.android.stock.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.a.i;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.common.c;
import com.xueqiu.android.common.q;
import com.xueqiu.android.common.u;
import com.xueqiu.android.stock.model.StockQuote;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public final class z
  extends c
{
  public WebView a;
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    e_(true);
    d(2131165197);
    return paramLayoutInflater.inflate(2130903376, null);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    d(2131166151);
    this.a = ((WebView)c(2131625251));
    this.a.setBackgroundColor(-1);
    if (Build.VERSION.SDK_INT >= 11) {
      this.a.setLayerType(1, null);
    }
    y();
    this.a.getSettings().setJavaScriptEnabled(true);
    this.a.getSettings().setCacheMode(2);
    this.a.getSettings().setAllowFileAccess(true);
    this.a.getSettings().setUseWideViewPort(true);
    this.a.getSettings().setSupportZoom(true);
    this.a.getSettings().setBuiltInZoomControls(false);
    this.a.setWebChromeClient(new u(g()));
    this.a.setWebViewClient(new WebViewClient()
    {
      public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        z.this.z();
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
      }
      
      public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        z.this.y();
      }
      
      public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        try
        {
          if (URLDecoder.decode(paramAnonymousString, "utf-8").equals("js:searchStock")) {
            return true;
          }
          if ((paramAnonymousString.startsWith("https://xueqiu.com/S/")) || (paramAnonymousString.startsWith("http://xueqiu.com/S/")))
          {
            q.a(paramAnonymousString, z.this.f());
            return true;
          }
        }
        catch (UnsupportedEncodingException paramAnonymousWebView)
        {
          aa.a(paramAnonymousWebView);
          return true;
        }
        paramAnonymousWebView.loadUrl(paramAnonymousString);
        return true;
      }
    });
    paramView = (StockQuote)this.r.getParcelable("extra_stock_info");
    try
    {
      paramBundle = f().getPackageManager().getPackageInfo(f().getPackageName(), 0);
      this.a.getSettings().setUserAgentString("Xueqiu Android " + paramBundle.versionName);
      this.a.loadUrl(String.format("%s?symbol=%s", new Object[] { "https://xueqiu.com/setting/mobile/stock-alert", paramView.getSymbol() }));
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
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stock\c\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */