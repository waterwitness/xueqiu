package com.xueqiu.android.trade.kwlopen;

import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.a.i;
import android.support.v4.a.k;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.xueqiu.android.base.util.aa;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.c;
import org.apache.cordova.e;
import org.apache.cordova.f;
import org.apache.cordova.g;
import org.apache.cordova.l;

public final class a
  extends i
  implements View.OnClickListener, f
{
  private static ProgressBar d;
  CordovaWebView a;
  private final String b = "Xueqiu Android ";
  private final ExecutorService c = Executors.newCachedThreadPool();
  private String e = "Xueqiu Android ";
  
  public static a a(String paramString)
  {
    a locala = new a();
    Bundle localBundle = new Bundle();
    localBundle.putString("arg_url", paramString);
    locala.e(localBundle);
    return locala;
  }
  
  public final View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    try
    {
      paramBundle = g().getPackageManager().getPackageInfo(g().getPackageName(), 0);
      this.e = ("Xueqiu Android " + paramBundle.versionName);
      paramLayoutInflater = paramLayoutInflater.cloneInContext(new com.kwlopen.sdk.a(g(), this)).inflate(2130903535, paramViewGroup, false);
      this.a = ((CordovaWebView)paramLayoutInflater.findViewById(2131625276));
      c.a(g());
      d = (ProgressBar)paramLayoutInflater.findViewById(2131625275);
      c.a("*");
      if (this.r != null)
      {
        paramViewGroup = this.r.getString("arg_url");
        this.a.loadUrl(paramViewGroup);
      }
      paramViewGroup = this.a.getSettings();
      paramViewGroup.setJavaScriptEnabled(true);
      paramViewGroup.setCacheMode(2);
      paramViewGroup.setDatabaseEnabled(false);
      paramViewGroup.setUserAgentString(this.e);
      this.a.setWebViewClient(new l(this, this.a)
      {
        public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
        {
          super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        }
        
        public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
        {
          super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        }
        
        public final void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
        {
          paramAnonymousWebView.loadUrl("file:///android_asset/www/error.html");
        }
        
        public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
        {
          paramAnonymousWebView.loadUrl(paramAnonymousString);
          Log.d("shouldOverrideUrlLoading", paramAnonymousString);
          return true;
        }
      });
      this.a.setWebChromeClient(new e(this, this.a)
      {
        public final void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
        {
          super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
          a.b().setProgress(paramAnonymousInt);
          Log.e("onProgressChanged", "");
          if (paramAnonymousInt == 100) {
            a.b().setVisibility(8);
          }
          while (a.b().getVisibility() != 8) {
            return;
          }
          a.b().setVisibility(0);
        }
      });
      return paramLayoutInflater;
    }
    catch (PackageManager.NameNotFoundException paramBundle)
    {
      for (;;)
      {
        paramBundle.printStackTrace(System.err);
      }
    }
  }
  
  public final void a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.a(paramInt1, paramInt2, paramIntent);
    if (KwlOpenActivity.j == null)
    {
      aa.a("cordovaPlugin插件为空");
      return;
    }
    KwlOpenActivity.j.a(paramInt1, paramInt2, paramIntent);
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
  }
  
  public final void e()
  {
    super.e();
    if (this.a != null) {
      this.a.a();
    }
  }
  
  public final ExecutorService getThreadPool()
  {
    return this.c;
  }
  
  public final void o()
  {
    super.o();
  }
  
  public final void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 2131625680: 
      if ((this.a.canGoBack()) && (!"file:///android_asset/www/error.html".equals(this.a.getUrl())))
      {
        this.a.goBack();
        return;
      }
      g().onBackPressed();
      return;
    }
    if ("file:///android_asset/www/error.html".equals(this.a.getUrl()))
    {
      this.a.goBack();
      return;
    }
    this.a.reload();
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public final Object onMessage(String paramString, Object paramObject)
  {
    Log.e("onMessage", paramString);
    return null;
  }
  
  public final void q()
  {
    super.q();
  }
  
  public final void startActivityForResult(g paramg, Intent paramIntent, int paramInt)
  {
    if (KwlOpenActivity.j == null) {
      KwlOpenActivity.j = paramg;
    }
    a(paramIntent, paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\kwlopen\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */