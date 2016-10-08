package com.xueqiu.android.base.b;

import com.android.volley.toolbox.h;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.OkUrlFactory;
import com.xueqiu.android.base.util.ac;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;

public final class j
  extends h
{
  private final OkUrlFactory a;
  
  public j()
  {
    this(new OkUrlFactory(new OkHttpClient()));
  }
  
  private j(OkUrlFactory paramOkUrlFactory)
  {
    this.a = paramOkUrlFactory;
    this.a.client().setHostnameVerifier(new HostnameVerifier()
    {
      public final boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
      {
        HostnameVerifier localHostnameVerifier = HttpsURLConnection.getDefaultHostnameVerifier();
        if (ac.a.matcher(paramAnonymousString.trim()).find()) {
          return (localHostnameVerifier.verify(a.c, paramAnonymousSSLSession)) || (localHostnameVerifier.verify("xueqiu.yun.pingan.com", paramAnonymousSSLSession));
        }
        return localHostnameVerifier.verify(paramAnonymousString, paramAnonymousSSLSession);
      }
    });
  }
  
  public j(Proxy paramProxy, SSLSocketFactory paramSSLSocketFactory)
  {
    this();
    if (paramProxy != null) {
      this.a.client().setProxy(paramProxy);
    }
    if (paramSSLSocketFactory != null) {
      this.a.client().setSslSocketFactory(paramSSLSocketFactory);
    }
  }
  
  protected final HttpURLConnection a(URL paramURL)
  {
    paramURL = this.a.open(paramURL);
    paramURL.setRequestProperty("Accept-Encoding", "");
    return paramURL;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */