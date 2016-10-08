package com.kwlopen.sdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.b.a.a.d;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.cordova.CordovaWebView;
import org.apache.cordova.c;
import org.apache.cordova.e;
import org.apache.cordova.g;
import org.apache.cordova.l;

public class KwlOpenActivity
  extends Activity
  implements View.OnClickListener, org.apache.cordova.f
{
  public static g cordovaPlugin = null;
  private ImageButton backBtn;
  private boolean canBack = false;
  CordovaWebView cordovaWebView;
  private String openUrl = "";
  private ProgressBar pbLoading;
  private ProgressBar progressBar;
  private ImageButton refreshBtn;
  private final ExecutorService threadPool = Executors.newCachedThreadPool();
  private String title = "";
  private RelativeLayout titleBar;
  private int titleBarBg = -16777216;
  private TextView tvTitle;
  
  public static void show(Context paramContext, String paramString1, String paramString2, int paramInt, boolean paramBoolean)
  {
    Intent localIntent = new Intent(paramContext, KwlOpenActivity.class);
    localIntent.putExtra("openUrl", paramString1);
    localIntent.putExtra("title", paramString2);
    localIntent.putExtra("canBack", paramBoolean);
    localIntent.putExtra("titleBarBg", paramInt);
    paramContext.startActivity(localIntent);
  }
  
  public static void show(Context paramContext, String paramString1, String paramString2, boolean paramBoolean)
  {
    show(paramContext, paramString1, paramString2, -16777216, paramBoolean);
  }
  
  public Activity getActivity()
  {
    return this;
  }
  
  public ExecutorService getThreadPool()
  {
    return this.threadPool;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    d.b("onActivityResult webMallFragment");
    if (cordovaPlugin == null)
    {
      Toast.makeText(getActivity(), "cordovaPlugin插件为空 ", 1).show();
      d.b("=====================                   ==================");
      return;
    }
    cordovaPlugin.a(paramInt1, paramInt2, paramIntent);
  }
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == com.b.a.a.f.a(this, "titlebar_ibtn_left")) {
      if (this.cordovaWebView.canGoBack()) {
        this.cordovaWebView.goBack();
      }
    }
    while (paramView.getId() != com.b.a.a.f.a(this, "title_refresh"))
    {
      return;
      getActivity().onBackPressed();
      return;
    }
    startRefresh();
    if (!this.openUrl.equals(this.cordovaWebView.getUrl()))
    {
      this.cordovaWebView.loadUrl(this.openUrl);
      return;
    }
    this.cordovaWebView.reload();
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(com.b.a.a.f.f(this, "kwlopen_my_cordova_frag"));
    this.openUrl = getIntent().getStringExtra("openUrl");
    this.title = getIntent().getStringExtra("title");
    this.canBack = getIntent().getBooleanExtra("canBack", false);
    this.titleBarBg = getIntent().getIntExtra("titleBarBg", -16777216);
    this.cordovaWebView = ((CordovaWebView)findViewById(com.b.a.a.f.a(this, "cordovaWebView")));
    c.a(getActivity());
    this.progressBar = ((ProgressBar)findViewById(com.b.a.a.f.a(this, "progressBar1")));
    this.pbLoading = ((ProgressBar)findViewById(com.b.a.a.f.a(this, "pb_title_refresh")));
    this.refreshBtn = ((ImageButton)findViewById(com.b.a.a.f.a(this, "title_refresh")));
    this.backBtn = ((ImageButton)findViewById(com.b.a.a.f.a(this, "titlebar_ibtn_left")));
    this.titleBar = ((RelativeLayout)findViewById(com.b.a.a.f.a(this, "titleBar")));
    this.titleBar.setBackgroundColor(this.titleBarBg);
    if (this.canBack) {
      this.backBtn.setVisibility(0);
    }
    for (;;)
    {
      this.tvTitle = ((TextView)findViewById(com.b.a.a.f.a(this, "titlebar_tv_title")));
      this.tvTitle.setText(this.title);
      this.backBtn.setOnClickListener(this);
      this.refreshBtn.setOnClickListener(this);
      c.a("*");
      if (!this.openUrl.equals("")) {
        break;
      }
      return;
      this.backBtn.setVisibility(8);
    }
    this.cordovaWebView.loadUrl(this.openUrl);
    paramBundle = this.cordovaWebView.getSettings();
    paramBundle.setJavaScriptEnabled(true);
    paramBundle.setCacheMode(2);
    paramBundle.setDatabaseEnabled(false);
    this.cordovaWebView.setWebViewClient(new l(this, this.cordovaWebView)
    {
      public void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
        Log.e("onPageFinished", paramAnonymousString);
      }
      
      public void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        Log.e("onPageStarted", paramAnonymousString);
      }
      
      public void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2) {}
      
      public boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        paramAnonymousWebView.loadUrl(paramAnonymousString);
        Log.e("shouldOverrideUrlLoading", paramAnonymousString);
        return true;
      }
    });
    this.cordovaWebView.setWebChromeClient(new e(this, this.cordovaWebView)
    {
      public void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
      {
        super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
        KwlOpenActivity.this.progressBar.setProgress(paramAnonymousInt);
        Log.e("onProgressChanged", "");
        if (paramAnonymousInt == 100)
        {
          KwlOpenActivity.this.progressBar.setVisibility(8);
          KwlOpenActivity.this.stopRefresh();
        }
        while (KwlOpenActivity.this.progressBar.getVisibility() != 8) {
          return;
        }
        KwlOpenActivity.this.progressBar.setVisibility(0);
      }
    });
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (this.cordovaWebView != null) {
      this.cordovaWebView.a();
    }
    cordovaPlugin = null;
    d.b("onActivityResult onDestroy");
  }
  
  public Object onMessage(String paramString, Object paramObject)
  {
    Log.e("onMessage", paramString);
    return null;
  }
  
  public void onResume()
  {
    super.onResume();
    d.b("onActivityResult onResume");
  }
  
  public void setActivityResultCallback(g paramg)
  {
    d.b("webMallFragment setActivityResultCallback");
    if (cordovaPlugin == null) {
      cordovaPlugin = paramg;
    }
  }
  
  public void startActivityForResult(g paramg, Intent paramIntent, int paramInt)
  {
    if (cordovaPlugin == null) {
      cordovaPlugin = paramg;
    }
    startActivityForResult(paramIntent, paramInt);
    d.b("startActivityForResult webMallFragment");
  }
  
  public void startRefresh()
  {
    this.refreshBtn.setVisibility(8);
    this.pbLoading.setVisibility(0);
  }
  
  public void stopRefresh()
  {
    this.refreshBtn.setVisibility(0);
    this.pbLoading.setVisibility(8);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\kwlopen\sdk\activity\KwlOpenActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */