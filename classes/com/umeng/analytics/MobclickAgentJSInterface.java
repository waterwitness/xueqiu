package com.umeng.analytics;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class MobclickAgentJSInterface
{
  private Context a;
  
  public MobclickAgentJSInterface(Context paramContext, WebView paramWebView)
  {
    this.a = paramContext;
    paramWebView.getSettings().setJavaScriptEnabled(true);
    paramWebView.setWebChromeClient(new MobclickAgentJSInterface.a(this, null));
  }
  
  public MobclickAgentJSInterface(Context paramContext, WebView paramWebView, WebChromeClient paramWebChromeClient)
  {
    this.a = paramContext;
    paramWebView.getSettings().setJavaScriptEnabled(true);
    paramWebView.setWebChromeClient(new MobclickAgentJSInterface.a(this, paramWebChromeClient));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\umeng\analytics\MobclickAgentJSInterface.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */