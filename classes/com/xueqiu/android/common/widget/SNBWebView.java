package com.xueqiu.android.common.widget;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.AttributeSet;
import android.webkit.JavascriptInterface;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.xueqiu.android.base.b.af;
import com.xueqiu.android.base.b.w;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import com.xueqiu.android.base.util.ao;
import com.xueqiu.android.base.util.i;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLSocketFactory;

public class SNBWebView
  extends WebView
{
  private w a = null;
  private List<String> b = new LinkedList();
  private int c = 0;
  
  public SNBWebView(Context paramContext)
  {
    super(paramContext);
    if (!isInEditMode()) {
      a();
    }
  }
  
  public SNBWebView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    if (!isInEditMode()) {
      a();
    }
  }
  
  public SNBWebView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (!isInEditMode()) {
      a();
    }
  }
  
  private void a()
  {
    getSettings().setGeolocationEnabled(false);
    super.addJavascriptInterface(new ah(this), "AndroidJsObject");
    Object localObject = getContext();
    SSLSocketFactory localSSLSocketFactory = af.a((Context)localObject);
    try
    {
      localObject = ((Context)localObject).getPackageManager().getPackageInfo(((Context)localObject).getPackageName(), 0);
      localObject = ((PackageInfo)localObject).versionName;
      this.a = new w(i.a(getContext()), (String)localObject, localSSLSocketFactory);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      aa.a(localNameNotFoundException);
    }
  }
  
  private void a(String paramString)
  {
    if ((paramString.startsWith("http")) || (paramString.startsWith("file"))) {
      if ((paramString.contains("broker/trade.html")) || (paramString.contains("broker/proxy.html")))
      {
        i = 0;
        if (i != 0) {
          if ((this.b.size() == 0) || (!((String)this.b.get(this.b.size() - 1)).equals(paramString))) {
            break label115;
          }
        }
      }
    }
    label115:
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        this.b.add(getUrl());
      }
      return;
      i = 1;
      break;
      i = 0;
      break;
    }
  }
  
  private void b(String paramString)
  {
    HashMap localHashMap = new HashMap();
    if (com.xueqiu.android.base.v.a(paramString)) {
      localHashMap.putAll(getHeaderWithAccessToken());
    }
    ao.a(getContext());
    super.loadUrl(paramString, localHashMap);
  }
  
  @JavascriptInterface
  public void addJavascriptInterface(Object paramObject, String paramString)
  {
    if (paramString.equals("AndroidJsObject")) {
      throw new RuntimeException("the name of javascript interface had be used");
    }
    super.addJavascriptInterface(paramObject, paramString);
  }
  
  public boolean canGoBack()
  {
    return this.b.size() > 0;
  }
  
  protected Map<String, String> getHeaderWithAccessToken()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Cookie", String.format("domain=%s;xq_a_token=%s", new Object[] { "xueqiu.com", u.a().a }));
    return localHashMap;
  }
  
  public void goBack()
  {
    com.xueqiu.android.base.util.v.c("SNBWebView", "mRedirectedCount=" + this.c);
    if (this.b.size() == 0) {
      return;
    }
    if (this.c > 0)
    {
      String str = null;
      while (this.c > 0)
      {
        str = (String)this.b.remove(this.b.size() - 1);
        this.c -= 1;
      }
      b(str);
      this.c = 0;
      return;
    }
    b((String)this.b.remove(this.b.size() - 1));
  }
  
  public void loadDataWithBaseURL(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    super.loadDataWithBaseURL(paramString1, paramString2, paramString3, paramString4, paramString5);
    if ((getUrl() != null) && (!"".equals(getUrl()))) {
      a(getUrl());
    }
  }
  
  public void loadUrl(String paramString)
  {
    loadUrl(paramString, new HashMap());
  }
  
  public void loadUrl(String paramString, Map<String, String> paramMap)
  {
    if (com.xueqiu.android.base.v.a(paramString))
    {
      paramMap.putAll(getHeaderWithAccessToken());
      paramMap.put("Accept-Language", "en-US,en;q=0.8,zh-CN;q=0.6,zh;q=0.4");
    }
    if ((getUrl() != null) && (!"".equals(getUrl())) && (!paramString.startsWith("javascript:"))) {
      a(getUrl());
    }
    ao.a(getContext());
    super.loadUrl(paramString, paramMap);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\SNBWebView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */