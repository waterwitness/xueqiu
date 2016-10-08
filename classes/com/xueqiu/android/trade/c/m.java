package com.xueqiu.android.trade.c;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.a.k;
import android.support.v4.content.r;
import android.support.v4.view.ak;
import android.support.v4.view.ap;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.ListView;
import com.android.volley.n;
import com.android.volley.y;
import com.xueqiu.android.base.b.p;
import com.xueqiu.android.base.storage.prefs.UserLogonDataPrefs;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.w;
import com.xueqiu.android.common.a.f;
import com.xueqiu.android.common.c;
import com.xueqiu.android.stock.model.Stock;
import com.xueqiu.android.stock.model.StockQuote;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public final class m
  extends c
{
  public WebView a;
  private ListView b = null;
  private ArrayList<Stock> c = null;
  private String d = null;
  private String e = null;
  private n<ArrayList<Stock>> f = null;
  private MenuItem g = null;
  
  private static Map<String, String> C()
  {
    String str1 = com.xueqiu.android.base.util.i.b();
    String str2 = String.valueOf(System.currentTimeMillis());
    Object localObject = new StringBuilder().append(str1);
    com.xueqiu.android.base.u.a();
    localObject = w.b(UserLogonDataPrefs.getLogonUserId() + str2 + w.b("CSRFGuard_Since_2014"));
    HashMap localHashMap = new HashMap();
    localHashMap.put("x-sid", str1);
    localHashMap.put("x-timestamp", str2);
    localHashMap.put("x-sign-token", localObject);
    return localHashMap;
  }
  
  public final View a(LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.a(paramLayoutInflater, paramViewGroup, paramBundle);
    e_(true);
    d(2131165197);
    paramLayoutInflater = paramLayoutInflater.inflate(2130903208, paramViewGroup, false);
    this.b = ((ListView)paramLayoutInflater.findViewById(2131624255));
    this.c = new ArrayList();
    paramViewGroup = new f(g(), this.c);
    this.b.setAdapter(paramViewGroup);
    this.b.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public final void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        paramAnonymousAdapterView = (Stock)paramViewGroup.getItem(paramAnonymousInt);
        m.a(m.this).loadUrl(String.format("javascript:window.addTran(\"%s\");", new Object[] { paramAnonymousAdapterView.getCode() }));
        ak.c(m.b(m.this));
      }
    });
    return paramLayoutInflater;
  }
  
  public final void a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    g().getTheme().obtainStyledAttributes(new int[] { 2130772119, 2130772111, 2130772140 });
    this.g = paramMenu.add(0, 0, 0, "").setEnabled(false);
    ak.b(this.g, 2130903243);
    ak.a(this.g, 10);
    ak.a(this.g, new ap()
    {
      public final boolean a(final MenuItem paramAnonymousMenuItem)
      {
        paramAnonymousMenuItem = (EditText)ak.a(paramAnonymousMenuItem).findViewById(2131624252);
        paramAnonymousMenuItem.setHint(2131166037);
        paramAnonymousMenuItem.addTextChangedListener(new TextWatcher()
        {
          public final void afterTextChanged(Editable paramAnonymous2Editable)
          {
            if (paramAnonymous2Editable.length() > 0)
            {
              if (m.d(m.this).getVisibility() != 0) {
                m.d(m.this).setVisibility(0);
              }
              if ((m.e(m.this) != null) && (!m.e(m.this).h)) {
                m.e(m.this).h = true;
              }
              m.b(m.this, paramAnonymous2Editable.toString());
            }
            while (paramAnonymous2Editable.length() != 0) {
              return;
            }
            m.d(m.this).setVisibility(4);
          }
          
          public final void beforeTextChanged(CharSequence paramAnonymous2CharSequence, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3) {}
          
          public final void onTextChanged(CharSequence paramAnonymous2CharSequence, int paramAnonymous2Int1, int paramAnonymous2Int2, int paramAnonymous2Int3) {}
        });
        paramAnonymousMenuItem.post(new Runnable()
        {
          public final void run()
          {
            paramAnonymousMenuItem.requestFocus();
            ((InputMethodManager)m.this.g().getSystemService("input_method")).showSoftInput(paramAnonymousMenuItem, 1);
          }
        });
        return true;
      }
      
      public final boolean b(MenuItem paramAnonymousMenuItem)
      {
        m.f(m.this).setVisibility(8);
        ((EditText)ak.a(paramAnonymousMenuItem).findViewById(2131624252)).setText(null);
        return true;
      }
    });
  }
  
  public final void a(View paramView, Bundle paramBundle)
  {
    super.a(paramView, paramBundle);
    d(2131166200);
    this.a = ((WebView)c(2131624298));
    this.a.setBackgroundColor(-1);
    if (Build.VERSION.SDK_INT >= 11) {
      this.a.setLayerType(1, null);
    }
    y();
    this.a.getSettings().setJavaScriptEnabled(true);
    this.a.getSettings().setCacheMode(2);
    this.a.getSettings().setAllowFileAccess(true);
    this.a.getSettings().setUseWideViewPort(true);
    this.a.getSettings().setSupportZoom(true);
    this.a.getSettings().setBuiltInZoomControls(false);
    this.a.setWebChromeClient(new com.xueqiu.android.common.u(g()));
    this.a.setWebViewClient(new WebViewClient()
    {
      public final void onPageFinished(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        m.this.z();
        super.onPageFinished(paramAnonymousWebView, paramAnonymousString);
      }
      
      public final void onPageStarted(WebView paramAnonymousWebView, String paramAnonymousString, Bitmap paramAnonymousBitmap)
      {
        super.onPageStarted(paramAnonymousWebView, paramAnonymousString, paramAnonymousBitmap);
        m.this.y();
      }
      
      public final boolean shouldOverrideUrlLoading(WebView paramAnonymousWebView, String paramAnonymousString)
      {
        if (m.this.g() == null) {
          return false;
        }
        try
        {
          if (URLDecoder.decode(paramAnonymousString, "utf-8").equals("js:searchStock"))
          {
            ak.b(m.b(m.this));
            ((InputMethodManager)m.this.f().getSystemService("input_method")).showSoftInput((EditText)ak.a(m.b(m.this)).findViewById(2131624252), 0);
            return true;
          }
          if (paramAnonymousString.equals("js:tranAdded"))
          {
            m.this.g().finish();
            m.this.g().overridePendingTransition(2130968583, 2130968595);
            r.a(m.this.f()).a(new Intent("com.xueqiu.android.action.performanceTransAdded"));
          }
          else
          {
            if ((paramAnonymousString.startsWith("https://xueqiu.com/S/")) || (paramAnonymousString.startsWith("http://xueqiu.com/S/")))
            {
              com.xueqiu.android.common.q.a(paramAnonymousString, m.this.f());
              return true;
            }
            if ((m.c(m.this) != null) && (paramAnonymousString != null) && (paramAnonymousString.equals(m.c(m.this)))) {
              if (m.a(m.this).canGoBack()) {
                m.a(m.this).goBack();
              } else {
                m.this.g().onBackPressed();
              }
            }
          }
        }
        catch (UnsupportedEncodingException paramAnonymousWebView)
        {
          aa.a(paramAnonymousWebView);
          break label261;
          m.a(m.this, paramAnonymousString);
          paramAnonymousWebView.loadUrl(paramAnonymousString, m.u());
          return true;
        }
        label261:
        return true;
        return true;
      }
    });
    paramView = (StockQuote)this.r.getParcelable("arg_stock");
    this.e = this.r.getString("arg_url");
    try
    {
      paramBundle = f().getPackageManager().getPackageInfo(f().getPackageName(), 0);
      this.a.getSettings().setUserAgentString("Xueqiu Android " + paramBundle.versionName);
      if (this.e != null)
      {
        this.a.loadUrl(this.e, C());
        return;
      }
    }
    catch (PackageManager.NameNotFoundException paramBundle)
    {
      for (;;)
      {
        aa.a(paramBundle);
      }
      if (paramView != null)
      {
        this.a.loadUrl(String.format("%s?symbol=%s", new Object[] { "https://xueqiu.com/performance/mobile/trans/add", paramView.getSymbol() }));
        return;
      }
      this.a.loadUrl("https://xueqiu.com/performance/mobile?isMobile=true", C());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\c\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */