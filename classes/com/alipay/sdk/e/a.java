package com.alipay.sdk.e;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.alipay.sdk.b.c;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

public final class a
{
  String a;
  private Context b;
  
  public a(Context paramContext, String paramString)
  {
    this.b = paramContext;
    this.a = paramString;
  }
  
  private URL a()
  {
    try
    {
      URL localURL = new URL(this.a);
      return localURL;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private NetworkInfo b()
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)this.b.getSystemService("connectivity")).getActiveNetworkInfo();
      return localNetworkInfo;
    }
    catch (Exception localException) {}
    return null;
  }
  
  private String c()
  {
    try
    {
      Object localObject = b();
      if ((localObject != null) && (((NetworkInfo)localObject).isAvailable()))
      {
        if (((NetworkInfo)localObject).getType() == 1) {
          return "wifi";
        }
        localObject = ((NetworkInfo)localObject).getExtraInfo().toLowerCase();
        return (String)localObject;
      }
      return "none";
    }
    catch (Exception localException) {}
    return "none";
  }
  
  public final HttpResponse a(String paramString, c paramc)
  {
    Object localObject1 = null;
    b localb = b.a();
    if (localb == null)
    {
      paramString = (String)localObject1;
      return paramString;
    }
    for (;;)
    {
      try
      {
        localObject2 = localb.a.getParams();
        if (Build.VERSION.SDK_INT >= 11)
        {
          localObject1 = c();
          if ((localObject1 != null) && (!((String)localObject1).contains("wap")))
          {
            localObject1 = null;
            if (localObject1 != null) {
              ((HttpParams)localObject2).setParameter("http.route.default-proxy", localObject1);
            }
            new StringBuilder("requestUrl : ").append(this.a);
            if (!TextUtils.isEmpty(paramString)) {
              continue;
            }
            paramString = new HttpGet(this.a);
            if (paramc == null) {
              continue;
            }
            paramc = paramc.a();
            if (paramc == null) {
              continue;
            }
            paramc = paramc.iterator();
            if (!paramc.hasNext()) {
              continue;
            }
            paramString.addHeader((Header)paramc.next());
            continue;
          }
        }
      }
      catch (com.alipay.sdk.d.a paramString)
      {
        throw paramString;
        localObject1 = a();
        if (localObject1 == null) {
          break label582;
        }
        "https".equalsIgnoreCase(((URL)localObject1).getProtocol());
        localObject1 = System.getProperty("https.proxyHost");
        localObject3 = System.getProperty("https.proxyPort");
        if (TextUtils.isEmpty((CharSequence)localObject1)) {
          break label582;
        }
        localObject1 = new HttpHost((String)localObject1, Integer.parseInt((String)localObject3));
        continue;
      }
      catch (ConnectTimeoutException paramString)
      {
        if (localb != null) {
          localb.b();
        }
        throw new com.alipay.sdk.d.a();
        localObject1 = b();
        if ((localObject1 == null) || (!((NetworkInfo)localObject1).isAvailable()) || (((NetworkInfo)localObject1).getType() != 0)) {
          break label577;
        }
        localObject1 = Proxy.getDefaultHost();
        int i = Proxy.getDefaultPort();
        if (localObject1 == null) {
          break label577;
        }
        localObject1 = new HttpHost((String)localObject1, i);
        continue;
      }
      catch (SocketException paramString)
      {
        throw new com.alipay.sdk.d.a();
        Object localObject3 = new HttpPost(this.a);
        if (paramc != null)
        {
          String str = paramc.b;
          localObject1 = str;
          localObject2 = paramString;
          if (!TextUtils.isEmpty(paramc.c))
          {
            localObject2 = paramc.c + "=" + paramString;
            localObject1 = str;
          }
          paramString = (String)localObject1;
          if (TextUtils.isEmpty((CharSequence)localObject1)) {
            paramString = "application/octet-stream;binary/octet-stream";
          }
          localObject1 = new ByteArrayEntity(((String)localObject2).getBytes("utf-8"));
          ((ByteArrayEntity)localObject1).setContentType(paramString);
          ((HttpPost)localObject3).setEntity((HttpEntity)localObject1);
          ((HttpUriRequest)localObject3).addHeader("Accept-Charset", "UTF-8");
          ((HttpUriRequest)localObject3).addHeader("Accept-Encoding", "gzip");
          ((HttpUriRequest)localObject3).addHeader("Connection", "Keep-Alive");
          ((HttpUriRequest)localObject3).addHeader("Keep-Alive", "timeout=180, max=100");
          paramString = (String)localObject3;
          continue;
        }
      }
      catch (SocketTimeoutException paramString)
      {
        if (localb != null) {
          localb.b();
        }
        throw new com.alipay.sdk.d.a();
        paramc = localb.a(paramString);
        paramString = paramc.getHeaders("X-Hostname");
        if ((paramString != null) && (paramString.length > 0) && (paramString[0] != null)) {
          paramc.getHeaders("X-Hostname")[0].toString();
        }
        localObject1 = paramc.getHeaders("X-ExecuteTime");
        paramString = paramc;
        if (localObject1 == null) {
          break;
        }
        paramString = paramc;
        if (localObject1.length <= 0) {
          break;
        }
        paramString = paramc;
        if (localObject1[0] == null) {
          break;
        }
        paramc.getHeaders("X-ExecuteTime")[0].toString();
        return paramc;
      }
      catch (Exception paramString)
      {
        throw new com.alipay.sdk.d.a();
      }
      localObject1 = null;
      Object localObject2 = paramString;
      continue;
      label577:
      localObject1 = null;
      continue;
      label582:
      localObject1 = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\e\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */