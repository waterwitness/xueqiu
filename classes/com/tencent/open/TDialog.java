package com.tencent.open;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.RenderPriority;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.tauth.IUiListener;
import java.io.File;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

public class TDialog
  extends Dialog
{
  static final FrameLayout.LayoutParams a = new FrameLayout.LayoutParams(-1, -1);
  static Toast b = null;
  private static WeakReference c;
  private static WeakReference d;
  private static WeakReference e;
  private String f;
  private g g;
  private IUiListener h;
  private FrameLayout i;
  private WebView j;
  private FrameLayout k;
  private ProgressBar l;
  private Handler m;
  private boolean n = false;
  private TContext o = null;
  
  public TDialog(Context paramContext, String paramString1, String paramString2, IUiListener paramIUiListener, TContext paramTContext)
  {
    super(paramContext, 16973840);
    c = new WeakReference(paramContext);
    this.f = paramString2;
    this.g = new g(paramContext, paramString1, paramString2, paramTContext.d(), paramIUiListener);
    this.m = new h(this.g, paramContext.getMainLooper());
    this.h = paramIUiListener;
    this.o = paramTContext;
  }
  
  private void c()
  {
    this.l = new ProgressBar((Context)c.get());
    FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-2, -2);
    localLayoutParams.gravity = 17;
    this.l.setLayoutParams(localLayoutParams);
    new TextView((Context)c.get()).setText("test");
    this.k = new FrameLayout((Context)c.get());
    localLayoutParams = new FrameLayout.LayoutParams(-1, -2);
    localLayoutParams.bottomMargin = 40;
    localLayoutParams.leftMargin = 80;
    localLayoutParams.rightMargin = 80;
    localLayoutParams.topMargin = 40;
    localLayoutParams.gravity = 17;
    this.k.setLayoutParams(localLayoutParams);
    this.k.setBackgroundResource(17301504);
    this.k.addView(this.l);
    localLayoutParams = new FrameLayout.LayoutParams(-1, -1);
    this.j = new WebView((Context)c.get());
    this.j.setLayoutParams(localLayoutParams);
    this.i = new FrameLayout((Context)c.get());
    localLayoutParams.gravity = 17;
    this.i.setLayoutParams(localLayoutParams);
    this.i.addView(this.j);
    this.i.addView(this.k);
    d = new WeakReference(this.k);
    setContentView(this.i);
  }
  
  private static void c(Context paramContext, String paramString)
  {
    try
    {
      paramString = Util.d(paramString);
      int i1 = paramString.getInt("type");
      paramString = paramString.getString("msg");
      if (i1 == 0)
      {
        if (b == null) {
          b = Toast.makeText(paramContext, paramString, 0);
        }
        for (;;)
        {
          b.show();
          return;
          b.setView(b.getView());
          b.setText(paramString);
          b.setDuration(0);
        }
      }
      if (i1 != 1) {
        return;
      }
    }
    catch (JSONException paramContext)
    {
      paramContext.printStackTrace();
      return;
    }
    if (b == null) {
      b = Toast.makeText(paramContext, paramString, 1);
    }
    for (;;)
    {
      b.show();
      return;
      b.setView(b.getView());
      b.setText(paramString);
      b.setDuration(1);
    }
  }
  
  private void d()
  {
    this.j.setVerticalScrollBarEnabled(false);
    this.j.setHorizontalScrollBarEnabled(false);
    this.j.setWebViewClient(new e(this, (byte)0));
    this.j.setWebChromeClient(new WebChromeClient());
    this.j.clearFormData();
    WebSettings localWebSettings = this.j.getSettings();
    localWebSettings.setSavePassword(false);
    localWebSettings.setSaveFormData(false);
    localWebSettings.setCacheMode(-1);
    localWebSettings.setNeedInitialFocus(false);
    localWebSettings.setBuiltInZoomControls(true);
    localWebSettings.setSupportZoom(true);
    localWebSettings.setRenderPriority(WebSettings.RenderPriority.HIGH);
    localWebSettings.setJavaScriptEnabled(true);
    if ((c != null) && (c.get() != null))
    {
      localWebSettings.setDatabaseEnabled(true);
      localWebSettings.setDatabasePath(((Context)c.get()).getApplicationContext().getDir("databases", 0).getPath());
    }
    localWebSettings.setDomStorageEnabled(true);
    this.j.addJavascriptInterface(new f(this, (byte)0), "sdk_js_if");
    this.j.loadUrl(this.f);
    this.j.setLayoutParams(a);
    this.j.setVisibility(4);
    this.j.getSettings().setSavePassword(false);
  }
  
  private static void d(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (paramString == null)) {}
    int i1;
    do
    {
      do
      {
        return;
        try
        {
          paramString = Util.d(paramString);
          i1 = paramString.getInt("action");
          paramString = paramString.getString("msg");
          if (i1 != 1) {
            break;
          }
          if (e == null)
          {
            paramContext = new ProgressDialog(paramContext);
            paramContext.setMessage(paramString);
            e = new WeakReference(paramContext);
            paramContext.show();
            return;
          }
        }
        catch (JSONException paramContext)
        {
          paramContext.printStackTrace();
          return;
        }
        ((ProgressDialog)e.get()).setMessage(paramString);
      } while (((ProgressDialog)e.get()).isShowing());
      ((ProgressDialog)e.get()).show();
      return;
    } while ((i1 != 0) || (e == null) || (e.get() == null) || (!((ProgressDialog)e.get()).isShowing()));
    ((ProgressDialog)e.get()).dismiss();
    e = null;
  }
  
  private boolean e()
  {
    boolean bool2 = false;
    Object localObject1 = BrowserAuth.a();
    String str = ((BrowserAuth)localObject1).c();
    Object localObject2 = new BrowserAuth.Auth();
    ((BrowserAuth.Auth)localObject2).a = this.h;
    ((BrowserAuth.Auth)localObject2).b = this;
    ((BrowserAuth.Auth)localObject2).c = str;
    localObject1 = ((BrowserAuth)localObject1).a((BrowserAuth.Auth)localObject2);
    localObject2 = this.f.substring(0, this.f.indexOf("?"));
    Bundle localBundle = Util.b(this.f);
    localBundle.putString("token_key", str);
    localBundle.putString("serial", (String)localObject1);
    localBundle.putString("browser", "1");
    this.f = ((String)localObject2 + "?" + Util.a(localBundle));
    boolean bool1 = bool2;
    if (c != null)
    {
      bool1 = bool2;
      if (c.get() != null) {
        bool1 = Util.a((Context)c.get(), this.f);
      }
    }
    return bool1;
  }
  
  public void a(String paramString1, String paramString2)
  {
    paramString1 = "javascript:" + paramString1 + "(" + paramString2 + ");void(" + System.currentTimeMillis() + ");";
    this.j.loadUrl(paramString1);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    c();
    d();
  }
  
  protected void onStop()
  {
    if (!this.n) {
      this.g.onCancel();
    }
    super.onStop();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\TDialog.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */