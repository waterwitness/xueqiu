package com.tencent.tauth;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.HashMap;

public class TAuthView
  extends Activity
{
  public static final String ACCESS_TOKEN = "access_token";
  public static final String AUTH_BROADCAST = "com.tencent.auth.BROWSER";
  public static final String CALLBACK = "callback";
  public static final String CLIENT_ID = "client_id";
  public static final String ERROR_DES = "error_description";
  public static final String ERROR_RET = "error";
  public static final String EXPIRES_IN = "expires_in";
  public static final String SCOPE = "scope";
  public static final String TARGET = "target";
  private ProgressDialog dialog;
  private Handler handler = new Handler()
  {
    public final void handleMessage(Message paramAnonymousMessage)
    {
      super.handleMessage(paramAnonymousMessage);
      switch (paramAnonymousMessage.what)
      {
      default: 
        if (TAuthView.this.dialog == null)
        {
          TAuthView.this.dialog = new ProgressDialog(TAuthView.this);
          TAuthView.this.dialog.setMessage("请求中,请稍候...");
        }
        if ((!TAuthView.this.isFinishing()) && (!TAuthView.this.dialog.isShowing())) {
          TAuthView.this.dialog.show();
        }
        break;
      }
      do
      {
        return;
      } while ((TAuthView.this.dialog == null) || (!TAuthView.this.dialog.isShowing()));
      TAuthView.this.dialog.dismiss();
      TAuthView.this.dialog = null;
    }
  };
  private String mAccessToken;
  private String mAuthResult;
  private String mCallback = "auth://tauth.qq.com/";
  private String mErrorDes;
  private String mExpiresIn;
  private String mGraphURL;
  private String mRet;
  private WebView mWebView;
  protected LinearLayout root = null;
  
  private String getIp()
  {
    try
    {
      localObject = NetworkInterface.getNetworkInterfaces();
      boolean bool = ((Enumeration)localObject).hasMoreElements();
      if (bool) {
        break label20;
      }
    }
    catch (SocketException localSocketException)
    {
      for (;;)
      {
        Object localObject;
        label20:
        Enumeration localEnumeration;
        InetAddress localInetAddress;
        Log.d("TAG", localSocketException.toString());
      }
    }
    return "";
    localEnumeration = ((NetworkInterface)((Enumeration)localObject).nextElement()).getInetAddresses();
    do
    {
      if (!localEnumeration.hasMoreElements()) {
        break;
      }
      localInetAddress = (InetAddress)localEnumeration.nextElement();
    } while (localInetAddress.isLoopbackAddress());
    localObject = localInetAddress.getHostAddress().toString();
    return (String)localObject;
  }
  
  private String getMachine()
  {
    return Build.MODEL;
  }
  
  private String getOS()
  {
    return Build.VERSION.RELEASE;
  }
  
  private String getVersion()
  {
    return Build.VERSION.SDK;
  }
  
  private void parseResult(String paramString)
  {
    this.mAuthResult = paramString;
    HashMap localHashMap;
    int j;
    int i;
    if (paramString.startsWith(this.mCallback + "?#"))
    {
      paramString = paramString.substring(paramString.indexOf('#') + 1);
      paramString = paramString.split("&");
      localHashMap = new HashMap();
      j = paramString.length;
      i = 0;
    }
    for (;;)
    {
      if (i >= j)
      {
        this.mAccessToken = ((String)localHashMap.get("access_token"));
        this.mExpiresIn = ((String)localHashMap.get("expires_in"));
        this.mRet = ((String)localHashMap.get("error"));
        this.mErrorDes = ((String)localHashMap.get("error_description"));
        return;
        paramString = paramString.substring(paramString.indexOf('?') + 1);
        break;
      }
      String[] arrayOfString = paramString[i].split("=");
      localHashMap.put(arrayOfString[0], arrayOfString[1]);
      i += 1;
    }
  }
  
  private void returnResult()
  {
    sendBroadcastResult();
    finish();
  }
  
  private void sendBroadcastResult()
  {
    Intent localIntent = new Intent("com.tencent.auth.BROWSER");
    localIntent.putExtra("raw", this.mAuthResult);
    localIntent.putExtra("access_token", this.mAccessToken);
    localIntent.putExtra("expires_in", this.mExpiresIn);
    localIntent.putExtra("error", this.mRet);
    localIntent.putExtra("error_description", this.mErrorDes);
    sendBroadcast(localIntent);
  }
  
  public LinearLayout getRootView()
  {
    return this.root;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.mGraphURL = ("https://graph.qq.com/oauth2.0/authorize?response_type=token&display=mobile&client_id=%s&scope=%s&redirect_uri=%s&status_userip=%s&status_os=%s&status_machine=%s&status_version=%s#" + System.currentTimeMillis());
    paramBundle = getIntent().getExtras();
    if (paramBundle != null)
    {
      String str1 = paramBundle.getString("client_id");
      String str2 = paramBundle.getString("scope");
      String str3 = paramBundle.getString("callback");
      if ((str3 != null) && (!str3.equals(""))) {
        this.mCallback = str3;
      }
      str1 = String.format(this.mGraphURL, new Object[] { str1, str2, this.mCallback, getIp(), getOS(), getMachine(), getVersion() });
      if (paramBundle.getString("target").equals("_blank"))
      {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str1)));
        finish();
        return;
      }
      requestWindowFeature(1);
      getWindow().setFlags(2048, 2048);
      this.root = new LinearLayout(this);
      this.root.setOrientation(1);
      this.root.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      this.mWebView = new WebView(this);
      this.mWebView.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      this.root.addView(this.mWebView);
      this.mWebView.setInitialScale(100);
      this.mWebView.setVerticalScrollBarEnabled(false);
      this.mWebView.setWebViewClient(new e(this, (byte)0));
      paramBundle = this.mWebView.getSettings();
      paramBundle.setJavaScriptEnabled(true);
      paramBundle.setBuiltInZoomControls(true);
      this.mWebView.setWebChromeClient(new d(this, (byte)0));
      setContentView(this.root);
      this.mWebView.loadUrl(str1);
      return;
    }
    parseResult(getIntent().getData().toString());
    sendBroadcastResult();
    finish();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if ((this.dialog != null) && (this.dialog.isShowing())) {
      this.dialog.dismiss();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\TAuthView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */