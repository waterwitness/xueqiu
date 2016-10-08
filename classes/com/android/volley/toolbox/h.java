package com.android.volley.toolbox;

import com.android.volley.n;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

public class h
  implements g
{
  private final i a = null;
  private final SSLSocketFactory b = null;
  
  public h()
  {
    this((byte)0);
  }
  
  private h(byte paramByte)
  {
    this('\000');
  }
  
  private h(char paramChar) {}
  
  private static HttpEntity a(HttpURLConnection paramHttpURLConnection)
  {
    BasicHttpEntity localBasicHttpEntity = new BasicHttpEntity();
    try
    {
      InputStream localInputStream1 = paramHttpURLConnection.getInputStream();
      localBasicHttpEntity.setContent(localInputStream1);
      localBasicHttpEntity.setContentLength(paramHttpURLConnection.getContentLength());
      localBasicHttpEntity.setContentEncoding(paramHttpURLConnection.getContentEncoding());
      localBasicHttpEntity.setContentType(paramHttpURLConnection.getContentType());
      return localBasicHttpEntity;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        InputStream localInputStream2 = paramHttpURLConnection.getErrorStream();
      }
    }
  }
  
  private static void a(HttpURLConnection paramHttpURLConnection, n<?> paramn)
  {
    byte[] arrayOfByte = paramn.f();
    if (arrayOfByte != null)
    {
      paramHttpURLConnection.setDoOutput(true);
      paramHttpURLConnection.addRequestProperty("Content-Type", paramn.e());
      paramHttpURLConnection = new DataOutputStream(paramHttpURLConnection.getOutputStream());
      paramHttpURLConnection.write(arrayOfByte);
      paramHttpURLConnection.close();
    }
  }
  
  public HttpURLConnection a(URL paramURL)
  {
    return (HttpURLConnection)paramURL.openConnection();
  }
  
  public final HttpResponse a(n<?> paramn, Map<String, String> paramMap)
  {
    Object localObject = paramn.a();
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(paramn.c());
    localHashMap.putAll(paramMap);
    String str;
    if (this.a != null)
    {
      str = this.a.a();
      paramMap = str;
      if (str == null) {
        throw new IOException("URL blocked by rewriter: " + (String)localObject);
      }
    }
    else
    {
      paramMap = (Map<String, String>)localObject;
    }
    paramMap = new URL(paramMap);
    localObject = a(paramMap);
    int i = paramn.h();
    ((HttpURLConnection)localObject).setConnectTimeout(i);
    ((HttpURLConnection)localObject).setReadTimeout(i);
    ((HttpURLConnection)localObject).setUseCaches(false);
    ((HttpURLConnection)localObject).setDoInput(true);
    if (("https".equals(paramMap.getProtocol())) && (this.b != null)) {
      ((HttpsURLConnection)localObject).setSSLSocketFactory(this.b);
    }
    paramMap = localHashMap.keySet().iterator();
    while (paramMap.hasNext())
    {
      str = (String)paramMap.next();
      ((HttpURLConnection)localObject).addRequestProperty(str, (String)localHashMap.get(str));
    }
    switch (paramn.a)
    {
    default: 
      throw new IllegalStateException("Unknown method type.");
    case -1: 
      paramMap = paramn.d();
      if ((paramMap != null) && (paramMap.size() > 0))
      {
        paramMap = n.a(paramMap, "UTF-8");
        if (paramMap != null)
        {
          ((HttpURLConnection)localObject).setDoOutput(true);
          ((HttpURLConnection)localObject).setRequestMethod("POST");
          ((HttpURLConnection)localObject).addRequestProperty("Content-Type", paramn.e());
          paramn = new DataOutputStream(((HttpURLConnection)localObject).getOutputStream());
          paramn.write(paramMap);
          paramn.close();
        }
      }
      break;
    }
    for (;;)
    {
      paramn = new ProtocolVersion("HTTP", 1, 1);
      if (((HttpURLConnection)localObject).getResponseCode() != -1) {
        break label464;
      }
      throw new IOException("Could not retrieve response code from HttpUrlConnection.");
      paramMap = null;
      break;
      ((HttpURLConnection)localObject).setRequestMethod("GET");
      continue;
      ((HttpURLConnection)localObject).setRequestMethod("DELETE");
      continue;
      ((HttpURLConnection)localObject).setRequestMethod("POST");
      a((HttpURLConnection)localObject, paramn);
      continue;
      ((HttpURLConnection)localObject).setRequestMethod("PUT");
      a((HttpURLConnection)localObject, paramn);
      continue;
      ((HttpURLConnection)localObject).setRequestMethod("HEAD");
      continue;
      ((HttpURLConnection)localObject).setRequestMethod("OPTIONS");
      continue;
      ((HttpURLConnection)localObject).setRequestMethod("TRACE");
      continue;
      ((HttpURLConnection)localObject).setRequestMethod("PATCH");
      a((HttpURLConnection)localObject, paramn);
    }
    label464:
    paramn = new BasicHttpResponse(new BasicStatusLine(paramn, ((HttpURLConnection)localObject).getResponseCode(), ((HttpURLConnection)localObject).getResponseMessage()));
    paramn.setEntity(a((HttpURLConnection)localObject));
    paramMap = ((HttpURLConnection)localObject).getHeaderFields().entrySet().iterator();
    while (paramMap.hasNext())
    {
      localObject = (Map.Entry)paramMap.next();
      if (((Map.Entry)localObject).getKey() != null) {
        paramn.addHeader(new BasicHeader((String)((Map.Entry)localObject).getKey(), (String)((List)((Map.Entry)localObject).getValue()).get(0)));
      }
    }
    return paramn;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\toolbox\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */