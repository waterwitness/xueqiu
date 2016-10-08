package org.apache.cordova;

import android.annotation.TargetApi;
import android.net.Uri;
import android.os.Build.VERSION;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.io.FileNotFoundException;
import java.io.IOException;

@TargetApi(11)
public final class n
  extends l
{
  public n(f paramf, CordovaWebView paramCordovaWebView)
  {
    super(paramf, paramCordovaWebView);
  }
  
  public final WebResourceResponse shouldInterceptRequest(WebView paramWebView, String paramString)
  {
    int j = 1;
    int i;
    try
    {
      if (((paramString.startsWith("http:")) || (paramString.startsWith("https:"))) && (!c.b(paramString))) {
        break label280;
      }
      if (!paramString.contains("app_webview")) {
        break label286;
      }
    }
    catch (IOException paramWebView)
    {
      Uri localUri;
      if ((paramWebView instanceof FileNotFoundException)) {
        break label205;
      }
      o.a("IceCreamCordovaWebViewClient", "Error occurred while loading a file (returning a 404).", paramWebView);
      return new WebResourceResponse("text/plain", "UTF-8", null);
    }
    if (i != 0)
    {
      o.c("IceCreamCordovaWebViewClient", "URL blocked by whitelist: " + paramString);
      return new WebResourceResponse("text/plain", "UTF-8", null);
    }
    paramWebView = this.appView.getResourceApi();
    paramString = Uri.parse(paramString);
    localUri = paramWebView.b(paramString);
    if (paramString.equals(localUri))
    {
      if (h.a(paramString) != 1) {
        break label260;
      }
      if (paramString.getQuery() != null) {
        break label292;
      }
      if (paramString.getFragment() == null) {
        break label218;
      }
      break label292;
      label131:
      if (i == 0)
      {
        if ((Build.VERSION.SDK_INT < 19) || (!"content".equals(paramString.getScheme()))) {
          break label272;
        }
        i = j;
        break label298;
      }
    }
    for (;;)
    {
      paramWebView = paramWebView.c(localUri);
      paramWebView = new WebResourceResponse(paramWebView.c, "UTF-8", paramWebView.b);
      return paramWebView;
      label205:
      label218:
      if (paramString.toString().contains("%")) {
        i = Build.VERSION.SDK_INT;
      }
      switch (i)
      {
      default: 
        i = 0;
        break;
      case 14: 
      case 15: 
        label260:
        i = 1;
        break;
        label272:
        i = 0;
        label280:
        label286:
        label292:
        label298:
        while (i == 0)
        {
          return null;
          i = 1;
          break;
          i = 0;
          break;
          i = 1;
          break label131;
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */