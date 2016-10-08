package com.xueqiu.android.common.widget;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.xueqiu.android.base.util.v;

final class ab
  extends WebViewClient
{
  private ab(z paramz) {}
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    v.a(z.a(), "shouldOverrideUrlLoading view = " + paramWebView + " url = " + paramString);
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */