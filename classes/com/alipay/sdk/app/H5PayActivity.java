package com.alipay.sdk.app;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebSettings.TextSize;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.sdk.i.h;
import java.lang.reflect.Method;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class H5PayActivity
  extends Activity
{
  private WebView a;
  private com.alipay.sdk.j.a b;
  private Handler c = new Handler();
  private boolean d;
  private boolean e;
  private Runnable f = new g(this);
  
  public void finish()
  {
    try
    {
      synchronized (c.a)
      {
        ???.notify();
        super.finish();
        return;
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  public void onBackPressed()
  {
    if (this.a.canGoBack())
    {
      if (this.d)
      {
        f localf = f.a(f.d.g);
        e.a = e.a(localf.g, localf.h, "");
        finish();
      }
      return;
    }
    e.a = e.a();
    finish();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject1 = getIntent().getExtras();
    if (localObject1 == null) {
      finish();
    }
    for (;;)
    {
      return;
      try
      {
        paramBundle = ((Bundle)localObject1).getString("url");
        if (!Pattern.compile("^http(s)?://([a-z0-9_\\-]+\\.)*(alipay|taobao)\\.(com|net)(:\\d+)?(/.*)?$").matcher(paramBundle).matches())
        {
          finish();
          return;
        }
      }
      catch (Exception paramBundle)
      {
        finish();
        return;
      }
      super.requestWindowFeature(1);
      localObject1 = ((Bundle)localObject1).getString("cookie");
      if (!TextUtils.isEmpty((CharSequence)localObject1))
      {
        CookieSyncManager.createInstance(this).sync();
        CookieManager.getInstance().setCookie(paramBundle, (String)localObject1);
        CookieSyncManager.getInstance().sync();
      }
      localObject1 = new LinearLayout(this);
      Object localObject2 = new LinearLayout.LayoutParams(-1, -1);
      ((LinearLayout)localObject1).setOrientation(1);
      setContentView((View)localObject1, (ViewGroup.LayoutParams)localObject2);
      this.a = new WebView(this);
      ((LinearLayout.LayoutParams)localObject2).weight = 1.0F;
      this.a.setVisibility(0);
      ((LinearLayout)localObject1).addView(this.a, (ViewGroup.LayoutParams)localObject2);
      localObject1 = this.a.getSettings();
      localObject2 = new StringBuilder().append(((WebSettings)localObject1).getUserAgentString());
      String str1 = h.a();
      String str2 = h.b();
      String str3 = h.c(this);
      String str4 = h.d(this);
      ((WebSettings)localObject1).setUserAgentString(new StringBuilder(" (").append(str1).append(";").append(str2).append(";").append(str3).append(";;").append(str4).append(")(sdk android)").toString());
      ((WebSettings)localObject1).setRenderPriority(WebSettings.RenderPriority.HIGH);
      ((WebSettings)localObject1).setSupportMultipleWindows(true);
      ((WebSettings)localObject1).setJavaScriptEnabled(true);
      ((WebSettings)localObject1).setSavePassword(false);
      ((WebSettings)localObject1).setJavaScriptCanOpenWindowsAutomatically(true);
      ((WebSettings)localObject1).setMinimumFontSize(((WebSettings)localObject1).getMinimumFontSize() + 8);
      ((WebSettings)localObject1).setAllowFileAccess(false);
      ((WebSettings)localObject1).setTextSize(WebSettings.TextSize.NORMAL);
      this.a.setVerticalScrollbarOverlay(true);
      this.a.setWebViewClient(new b(this, (byte)0));
      this.a.setWebChromeClient(new a(this, (byte)0));
      this.a.loadUrl(paramBundle);
      if (Build.VERSION.SDK_INT >= 7) {}
      for (;;)
      {
        try
        {
          paramBundle = this.a.getSettings().getClass().getMethod("setDomStorageEnabled", new Class[] { Boolean.TYPE });
          if (paramBundle != null) {
            paramBundle.invoke(this.a.getSettings(), new Object[] { Boolean.valueOf(true) });
          }
        }
        catch (Exception paramBundle)
        {
          continue;
        }
        try
        {
          paramBundle = this.a.getClass().getMethod("removeJavascriptInterface", new Class[0]);
          if (paramBundle == null) {
            break;
          }
          paramBundle.invoke(this.a, new Object[] { "searchBoxJavaBridge_" });
          return;
        }
        catch (Exception paramBundle) {}
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\app\H5PayActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */