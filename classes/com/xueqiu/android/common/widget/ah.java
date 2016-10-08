package com.xueqiu.android.common.widget;

import android.text.TextUtils;
import android.webkit.JavascriptInterface;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.aa;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONObject;

final class ah
{
  ah(SNBWebView paramSNBWebView) {}
  
  @JavascriptInterface
  public final String doRequest(String paramString1, String paramString2, String paramString3)
  {
    Object localObject;
    try
    {
      if (!TextUtils.isEmpty(paramString2))
      {
        localObject = new JSONObject(paramString2);
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = ((JSONObject)localObject).keys();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          localArrayList.add(new BasicNameValuePair(str, ((JSONObject)localObject).getString(str)));
        }
        localObject = (NameValuePair[])localArrayList.toArray(new NameValuePair[0]);
      }
    }
    catch (Exception paramString1)
    {
      aa.a(paramString1);
      return null;
    }
    for (;;)
    {
      if (paramString3.equals("GET")) {}
      for (paramString3 = SNBWebView.a(this.a).a(0, paramString1, (NameValuePair[])localObject);; paramString3 = SNBWebView.a(this.a).a(1, paramString1, (NameValuePair[])localObject))
      {
        com.xueqiu.android.base.util.v.c("SNBWebView", "url=" + paramString1);
        com.xueqiu.android.base.util.v.c("SNBWebView", "parms=" + paramString2);
        com.xueqiu.android.base.util.v.c("SNBWebView", "result=" + paramString3);
        return paramString3;
      }
      localObject = null;
    }
  }
  
  @JavascriptInterface
  public final String getAccessToken()
  {
    return u.a().a;
  }
  
  @JavascriptInterface
  public final void goBack()
  {
    this.a.goBack();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */