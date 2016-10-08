package org.apache.cordova;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;

public final class j
{
  private CordovaWebView a;
  private f b;
  
  j(f paramf, CordovaWebView paramCordovaWebView)
  {
    this.a = paramCordovaWebView;
    this.b = paramf;
  }
  
  public final boolean a(String paramString)
  {
    if ((paramString.startsWith("http:")) || (paramString.startsWith("https:")))
    {
      if (c.b(paramString)) {
        return false;
      }
    }
    else if (!this.a.a.a(paramString)) {
      if ((paramString.startsWith("file://") | paramString.startsWith("data:"))) {
        return paramString.contains("app_webview");
      }
    }
    try
    {
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse(paramString));
      localIntent.addCategory("android.intent.category.BROWSABLE");
      localIntent.setComponent(null);
      localIntent.setSelector(null);
      this.b.getActivity().startActivity(localIntent);
      return true;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      for (;;)
      {
        o.a("CordovaUriHelper", "Error loading url " + paramString, localActivityNotFoundException);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */