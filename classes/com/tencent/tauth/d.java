package com.tencent.tauth;

import android.webkit.ConsoleMessage;
import android.webkit.WebChromeClient;
import android.webkit.WebView;

final class d
  extends WebChromeClient
{
  private d(TAuthView paramTAuthView) {}
  
  public final boolean onConsoleMessage(ConsoleMessage paramConsoleMessage)
  {
    return true;
  }
  
  public final void onReceivedTitle(WebView paramWebView, String paramString)
  {
    super.onReceivedTitle(paramWebView, paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */