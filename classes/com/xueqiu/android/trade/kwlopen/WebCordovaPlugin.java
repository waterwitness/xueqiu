package com.xueqiu.android.trade.kwlopen;

import android.app.Activity;
import android.view.View;
import com.kwlopen.sdk.b;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.f;

public class WebCordovaPlugin
  extends b
{
  public void refresh()
  {
    CordovaWebView localCordovaWebView = (CordovaWebView)this.b.getActivity().getCurrentFocus().findViewById(2131625276);
    if ("file:///android_asset/www/error.html".equals(localCordovaWebView.getUrl()))
    {
      localCordovaWebView.goBack();
      return;
    }
    localCordovaWebView.reload();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\kwlopen\WebCordovaPlugin.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */