package com.xueqiu.android.common;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.xueqiu.android.base.v;

@SuppressLint({"SetJavaScriptEnabled"})
public class AppRecommendActivity
  extends b
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903240);
    paramBundle = (WebView)findViewById(2131624751);
    h();
    paramBundle.loadUrl(v.b("/service/affiliates?type=android"));
    WebSettings localWebSettings = paramBundle.getSettings();
    paramBundle.clearCache(true);
    localWebSettings.setJavaScriptEnabled(true);
    paramBundle.setWebChromeClient(new WebChromeClient()
    {
      public final void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
      {
        super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
        if (paramAnonymousInt >= 5) {
          AppRecommendActivity.this.i();
        }
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\AppRecommendActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */