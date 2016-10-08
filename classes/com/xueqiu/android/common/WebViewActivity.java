package com.xueqiu.android.common;

import android.annotation.SuppressLint;
import android.app.AlertDialog.Builder;
import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.view.ak;
import android.text.Html;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import com.xueqiu.android.base.h5.o;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ao;
import com.xueqiu.android.base.util.e;
import com.xueqiu.android.base.v;
import com.xueqiu.android.common.account.LoginActivity;
import com.xueqiu.android.common.pdf.PDFViewerActivity;
import java.util.List;

@SuppressLint({"SetJavaScriptEnabled"})
public class WebViewActivity
  extends b
{
  private boolean j = false;
  private String k = null;
  private WebView p;
  private String q;
  private int r;
  private int s;
  private ProgressBar t;
  private o u = null;
  private boolean v = false;
  
  public static boolean a(Context paramContext)
  {
    try
    {
      if (Build.VERSION.SDK_INT < 9) {
        return false;
      }
      Intent localIntent = new Intent("android.intent.action.MAIN");
      localIntent.addCategory("android.intent.category.LAUNCHER");
      localIntent.setClassName("com.android.providers.downloads.ui", "com.android.providers.downloads.ui.DownloadList");
      int i = paramContext.getPackageManager().queryIntentActivities(localIntent, 65536).size();
      if (i > 0) {
        return true;
      }
    }
    catch (Exception paramContext) {}
    return false;
  }
  
  private boolean j()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (getIntent() != null)
    {
      bool1 = bool2;
      if (getIntent().getBooleanExtra("extra_from_ad", false)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public void finish()
  {
    Object localObject;
    if (j())
    {
      if (u.a().c) {
        break label58;
      }
      localObject = new Bundle();
      ((Bundle)localObject).putByte("extra_mode", (byte)2);
      Intent localIntent = new Intent(this, LoginActivity.class);
      localIntent.putExtras((Bundle)localObject);
      startActivity(localIntent);
    }
    for (;;)
    {
      super.finish();
      return;
      label58:
      localObject = new Intent(this, MainActivity.class);
      ((Intent)localObject).addFlags(1048576);
      startActivity((Intent)localObject);
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setTitle(2131165197);
    paramBundle = getIntent().getExtras();
    this.k = paramBundle.getString("extra_url_path");
    ao.a(this);
    if (v.a(this.k)) {
      setContentView(2130903092);
    }
    for (;;)
    {
      this.p = ((WebView)findViewById(2131624298));
      this.t = ((ProgressBar)findViewById(2131624299));
      this.t.setMax(100);
      if (v.a(this.k)) {}
      try
      {
        PackageInfo localPackageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
        this.p.getSettings().setUserAgentString("Xueqiu Android " + localPackageInfo.versionName);
        this.p.addJavascriptInterface(new ab(this), "AndroidShareJsObject");
        this.p.getSettings().setJavaScriptEnabled(true);
        this.p.getSettings().setCacheMode(2);
        this.p.getSettings().setAllowFileAccess(true);
        this.p.getSettings().setLoadWithOverviewMode(true);
        this.p.getSettings().setUseWideViewPort(true);
        this.p.getSettings().setSupportZoom(true);
        this.p.getSettings().setBuiltInZoomControls(false);
        this.p.getSettings().setDomStorageEnabled(true);
        this.p.setDownloadListener(new DownloadListener()
        {
          public final void onDownloadStart(final String paramAnonymousString1, final String paramAnonymousString2, String paramAnonymousString3, String paramAnonymousString4, long paramAnonymousLong)
          {
            if (WebViewActivity.this.isFinishing()) {
              return;
            }
            if ((!TextUtils.isEmpty(paramAnonymousString1)) && ((paramAnonymousString1.endsWith(".pdf")) || (paramAnonymousString1.endsWith(".PDF"))))
            {
              paramAnonymousString2 = new Bundle();
              paramAnonymousString2.putString("pdf_file_url", paramAnonymousString1);
              paramAnonymousString1 = new Intent(WebViewActivity.this.getApplicationContext(), PDFViewerActivity.class);
              paramAnonymousString1.putExtras(paramAnonymousString2);
              WebViewActivity.this.startActivity(paramAnonymousString1);
              return;
            }
            paramAnonymousString2 = "xueqiu-" + paramAnonymousString1.substring(paramAnonymousString1.lastIndexOf("/") + 1, paramAnonymousString1.length());
            new AlertDialog.Builder(WebViewActivity.this).setMessage(WebViewActivity.this.getString(2131165482, new Object[] { paramAnonymousString2 })).setPositiveButton(2131165361, new DialogInterface.OnClickListener()
            {
              public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                try
                {
                  if (WebViewActivity.a(WebViewActivity.this))
                  {
                    localObject = new DownloadManager.Request(Uri.parse(paramAnonymousString1));
                    ((DownloadManager.Request)localObject).setDescription("www.xueqiu.com");
                    if (Build.VERSION.SDK_INT >= 11)
                    {
                      ((DownloadManager.Request)localObject).allowScanningByMediaScanner();
                      ((DownloadManager.Request)localObject).setNotificationVisibility(1);
                    }
                    ((DownloadManager.Request)localObject).setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, paramAnonymousString2);
                    ((DownloadManager)WebViewActivity.this.getSystemService("download")).enqueue((DownloadManager.Request)localObject);
                    aa.b("文件保存至" + Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS) + "/" + paramAnonymousString2);
                    paramAnonymous2DialogInterface.cancel();
                    return;
                  }
                  Object localObject = new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymousString1));
                  WebViewActivity.this.startActivity((Intent)localObject);
                  paramAnonymous2DialogInterface.cancel();
                  return;
                }
                catch (Exception paramAnonymous2DialogInterface)
                {
                  aa.a(paramAnonymous2DialogInterface);
                }
              }
            }).setNegativeButton(2131165296, new DialogInterface.OnClickListener()
            {
              public final void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
              {
                paramAnonymous2DialogInterface.cancel();
              }
            }).show();
          }
        });
        this.p.setWebViewClient(new WebViewClient()
        {
          public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
          {
            if (WebViewActivity.a(WebViewActivity.this).a()) {
              WebViewActivity.a(WebViewActivity.this).b();
            }
            if (WebViewActivity.b(WebViewActivity.this).startsWith(q.a))
            {
              String str1 = String.format("#%06X", new Object[] { Integer.valueOf(WebViewActivity.c(WebViewActivity.this) & 0xFFFFFF) });
              String str2 = String.format("#%06X", new Object[] { Integer.valueOf(WebViewActivity.d(WebViewActivity.this) & 0xFFFFFF) });
              paramAnonymousWebView.loadUrl("javascript:(function () { var styleNode = document.createElement('style'); styleNode.type = 'text/css'; var styleText = document.createTextNode('body {color:" + str1 + ";background: " + str2 + ";}'); styleNode.appendChild(styleText); document.getElementsByTagName('head')[0].appendChild(styleNode);})()");
            }
            WebViewActivity.this.i();
            super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
          }
          
          public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
          {
            super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
          }
          
          public final void onReceivedError(WebView paramAnonymousWebView, int paramAnonymousInt, String paramAnonymousString1, String paramAnonymousString2)
          {
            WebViewActivity.a(WebViewActivity.this).c();
            super.onReceivedError(paramAnonymousWebView, paramAnonymousInt, paramAnonymousString1, paramAnonymousString2);
          }
          
          public final void onReceivedSslError(WebView paramAnonymousWebView, SslErrorHandler paramAnonymousSslErrorHandler, SslError paramAnonymousSslError)
          {
            if (paramAnonymousSslErrorHandler != null) {}
            try
            {
              paramAnonymousSslErrorHandler.proceed();
              return;
            }
            catch (Exception paramAnonymousWebView)
            {
              paramAnonymousWebView.printStackTrace();
            }
          }
          
          public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
          {
            if (paramAnonymousString.startsWith("tel:"))
            {
              paramAnonymousWebView = new Intent("android.intent.action.DIAL", Uri.parse(paramAnonymousString));
              WebViewActivity.this.startActivity(paramAnonymousWebView);
              return true;
            }
            if ((WebViewActivity.e(WebViewActivity.this)) && (v.a(paramAnonymousString)) && (q.b(paramAnonymousString, WebViewActivity.this)))
            {
              CookieManager.getInstance().setAcceptCookie(false);
              WebViewActivity.f(WebViewActivity.this);
              return true;
            }
            WebViewActivity.b(paramAnonymousString);
            if (paramAnonymousString.equals("close://"))
            {
              WebViewActivity.this.finish();
              return true;
            }
            if ((WebViewActivity.g(WebViewActivity.this) != null) && (paramAnonymousString != null) && (paramAnonymousString.equals(WebViewActivity.g(WebViewActivity.this))) && (!WebViewActivity.e(WebViewActivity.this)) && (!WebViewActivity.c(paramAnonymousString)))
            {
              if (WebViewActivity.h(WebViewActivity.this).canGoBack())
              {
                WebViewActivity.h(WebViewActivity.this).goBack();
                return true;
              }
              WebViewActivity.this.onBackPressed();
              return true;
            }
            if ((paramAnonymousString.startsWith("http")) || (paramAnonymousString.startsWith("ftp")))
            {
              WebViewActivity.h(WebViewActivity.this).loadUrl(paramAnonymousString);
              WebViewActivity.a(WebViewActivity.this, paramAnonymousString);
              return true;
            }
            return false;
          }
        });
        this.p.setWebChromeClient(new WebChromeClient()
        {
          public final void onProgressChanged(WebView paramAnonymousWebView, int paramAnonymousInt)
          {
            if (paramAnonymousInt == 100) {
              WebViewActivity.i(WebViewActivity.this).setVisibility(8);
            }
            for (;;)
            {
              WebViewActivity.i(WebViewActivity.this).setProgress(paramAnonymousInt);
              super.onProgressChanged(paramAnonymousWebView, paramAnonymousInt);
              return;
              WebViewActivity.i(WebViewActivity.this).setVisibility(0);
            }
          }
          
          public final void onReceivedTitle(WebView paramAnonymousWebView, String paramAnonymousString)
          {
            super.onReceivedTitle(paramAnonymousWebView, paramAnonymousString);
            WebViewActivity.this.setTitle(paramAnonymousString);
          }
        });
        this.u = new o(this.p, findViewById(2131624839));
        if (paramBundle.getString("extra_title") != null) {
          setTitle(paramBundle.getString("extra_title"));
        }
        paramBundle = getTheme().obtainStyledAttributes(new int[] { 2130772051, 2130772050 });
        if (this.k.startsWith(q.a))
        {
          this.r = getResources().getColor(paramBundle.getResourceId(0, 0));
          this.s = getResources().getColor(paramBundle.getResourceId(1, 0));
          this.p.setBackgroundColor(this.s);
        }
        this.p.loadUrl(this.k);
        paramBundle = this.p;
        if ((Build.VERSION.SDK_INT >= 11) && (Build.VERSION.SDK_INT < 17)) {
          paramBundle.removeJavascriptInterface("searchBoxJavaBridge_");
        }
        return;
        setContentView(2130903091);
        CookieManager.getInstance().setAcceptCookie(true);
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        for (;;)
        {
          aa.a(localNameNotFoundException);
        }
      }
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    TypedArray localTypedArray = getTheme().obtainStyledAttributes(new int[] { 2130772131 });
    SubMenu localSubMenu = paramMenu.addSubMenu(0, 1, 0, "更多");
    MenuItem localMenuItem = localSubMenu.getItem();
    localMenuItem.setIcon(localTypedArray.getResourceId(0, 0));
    ak.a(localMenuItem, 2);
    localSubMenu.add(0, 2, 0, getString(2131165774));
    localSubMenu.add(0, 3, 0, getString(2131165376));
    return super.onCreateOptionsMenu(paramMenu);
  }
  
  protected void onDestroy()
  {
    if ((this.p != null) && (this.p.getParent() != null))
    {
      ((ViewGroup)this.p.getParent()).removeView(this.p);
      this.p.removeAllViews();
      this.p.destroy();
      this.p = null;
    }
    super.onDestroy();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((!this.j) && (this.p != null) && (this.p.canGoBack()) && (paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      this.p.goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    String str2;
    String str1;
    if (paramMenuItem.getItemId() == 2)
    {
      str2 = this.k;
      str1 = str2;
      if (str2.startsWith(q.a)) {
        str1 = str2.substring(q.a.length());
      }
      startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str1)));
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      if (paramMenuItem.getItemId() == 3)
      {
        str2 = this.k;
        str1 = str2;
        if (str2.startsWith(q.a)) {
          str1 = str2.substring(q.a.length());
        }
        e.a(this, Html.fromHtml(str1));
        aa.a("已复制到剪切板");
      }
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if ((j()) && (this.v)) {
      finish();
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    if (!v.a(this.k)) {
      CookieManager.getInstance().setAcceptCookie(true);
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    CookieManager.getInstance().setAcceptCookie(false);
  }
  
  protected final Boolean w_()
  {
    boolean bool = false;
    if (getIntent().getBooleanExtra("un_support_back", false)) {
      return Boolean.valueOf(false);
    }
    if (this.p.getScrollX() <= 0) {
      bool = true;
    }
    return Boolean.valueOf(bool);
  }
  
  public final void x_()
  {
    if (this.p.canGoBack())
    {
      this.p.goBack();
      return;
    }
    super.onBackPressed();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\WebViewActivity.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */