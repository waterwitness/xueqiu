package org.apache.cordova;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.util.Log;
import android.webkit.HttpAuthHandler;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Hashtable;
import org.json.JSONException;
import org.json.JSONObject;

public class l
  extends WebViewClient
{
  private static final String CORDOVA_EXEC_URL_PREFIX = "http://cdv_exec/";
  private static final String TAG = "CordovaWebViewClient";
  CordovaWebView appView;
  private Hashtable<String, a> authenticationTokens = new Hashtable();
  f cordova;
  private boolean doClearHistory = false;
  j helper;
  boolean isCurrentlyLoading;
  
  public l(f paramf)
  {
    this.cordova = paramf;
  }
  
  public l(f paramf, CordovaWebView paramCordovaWebView)
  {
    this.cordova = paramf;
    this.appView = paramCordovaWebView;
    this.helper = new j(paramf, paramCordovaWebView);
  }
  
  private void handleExecUrl(String paramString)
  {
    int i = paramString.indexOf('#', 17);
    int j = paramString.indexOf('#', i + 1);
    int k = paramString.indexOf('#', j + 1);
    if ((i == -1) || (j == -1) || (k == -1))
    {
      Log.e("CordovaWebViewClient", "Could not decode URL command: " + paramString);
      return;
    }
    String str1 = paramString.substring(16, i);
    String str2 = paramString.substring(i + 1, j);
    String str3 = paramString.substring(j + 1, k);
    paramString = paramString.substring(k + 1);
    this.appView.a.a(str1, str2, str3, paramString);
  }
  
  public void clearAuthenticationTokens()
  {
    this.authenticationTokens.clear();
  }
  
  public a getAuthenticationToken(String paramString1, String paramString2)
  {
    a locala = (a)this.authenticationTokens.get(paramString1.concat(paramString2));
    Object localObject = locala;
    if (locala == null)
    {
      localObject = (a)this.authenticationTokens.get(paramString1);
      paramString1 = (String)localObject;
      if (localObject == null) {
        paramString1 = (a)this.authenticationTokens.get(paramString2);
      }
      localObject = paramString1;
      if (paramString1 == null) {
        localObject = (a)this.authenticationTokens.get("");
      }
    }
    return (a)localObject;
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (!this.isCurrentlyLoading) {}
    do
    {
      return;
      this.isCurrentlyLoading = false;
      o.a("CordovaWebViewClient", "onPageFinished(" + paramString + ")");
      if (this.doClearHistory)
      {
        paramWebView.clearHistory();
        this.doClearHistory = false;
      }
      paramWebView = this.appView;
      paramWebView.c += 1;
      this.appView.a("onPageFinished", paramString);
      if (this.appView.getVisibility() == 4) {
        new Thread(new Runnable()
        {
          public final void run()
          {
            try
            {
              Thread.sleep(2000L);
              l.this.cordova.getActivity().runOnUiThread(new Runnable()
              {
                public final void run()
                {
                  l.this.appView.a("spinner", "stop");
                }
              });
              return;
            }
            catch (InterruptedException localInterruptedException) {}
          }
        }).start();
      }
    } while (!paramString.equals("about:blank"));
    this.appView.a("exit", null);
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    this.isCurrentlyLoading = true;
    o.a("CordovaWebViewClient", "onPageStarted(" + paramString + ")");
    this.appView.d.a();
    this.appView.a("onPageStarted", paramString);
    if (this.appView.a != null) {
      this.appView.a.c();
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    if (!this.isCurrentlyLoading) {
      return;
    }
    o.a("CordovaWebViewClient", "CordovaWebViewClient.onReceivedError: Error code=%s Description=%s URL=%s", new Object[] { Integer.valueOf(paramInt), paramString1, paramString2 });
    CordovaWebView localCordovaWebView = this.appView;
    localCordovaWebView.c += 1;
    if (paramInt == -10)
    {
      if (paramWebView.canGoBack())
      {
        paramWebView.goBack();
        return;
      }
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    }
    paramWebView = new JSONObject();
    try
    {
      paramWebView.put("errorCode", paramInt);
      paramWebView.put("description", paramString1);
      paramWebView.put("url", paramString2);
      this.appView.a("onReceivedError", paramWebView);
      return;
    }
    catch (JSONException paramString1)
    {
      for (;;)
      {
        paramString1.printStackTrace();
      }
    }
  }
  
  public void onReceivedHttpAuthRequest(WebView paramWebView, HttpAuthHandler paramHttpAuthHandler, String paramString1, String paramString2)
  {
    a locala = getAuthenticationToken(paramString1, paramString2);
    if (locala != null)
    {
      paramHttpAuthHandler.proceed(locala.a, locala.b);
      return;
    }
    super.onReceivedHttpAuthRequest(paramWebView, paramHttpAuthHandler, paramString1, paramString2);
  }
  
  @TargetApi(8)
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    String str = this.cordova.getActivity().getPackageName();
    PackageManager localPackageManager = this.cordova.getActivity().getPackageManager();
    try
    {
      if ((localPackageManager.getApplicationInfo(str, 128).flags & 0x2) != 0)
      {
        paramSslErrorHandler.proceed();
        return;
      }
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
    }
  }
  
  public a removeAuthenticationToken(String paramString1, String paramString2)
  {
    return (a)this.authenticationTokens.remove(paramString1.concat(paramString2));
  }
  
  public void setAuthenticationToken(a parama, String paramString1, String paramString2)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = "";
    }
    paramString1 = paramString2;
    if (paramString2 == null) {
      paramString1 = "";
    }
    this.authenticationTokens.put(str.concat(paramString1), parama);
  }
  
  public void setWebView(CordovaWebView paramCordovaWebView)
  {
    this.appView = paramCordovaWebView;
    this.helper = new j(this.cordova, paramCordovaWebView);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    return this.helper.a(paramString);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\org\apache\cordova\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */