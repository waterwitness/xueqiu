package com.xueqiu.android.base.b;

import android.text.TextUtils;
import com.xueqiu.android.base.t;
import com.xueqiu.android.base.u;
import com.xueqiu.android.base.util.ac;
import com.xueqiu.android.base.util.y;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.entity.BasicHttpEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class v
  extends b
{
  private SSLSocketFactory a = null;
  private Proxy b = null;
  private String c = null;
  private y d = null;
  
  public v(String paramString1, String paramString2, SSLSocketFactory paramSSLSocketFactory)
  {
    this.a = paramSSLSocketFactory;
    this.c = paramString2;
    if (paramString1 != null) {
      this.b = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(paramString1, 80));
    }
  }
  
  private HttpURLConnection a(URL paramURL)
  {
    if (this.b != null) {}
    for (HttpURLConnection localHttpURLConnection = (HttpURLConnection)paramURL.openConnection(this.b);; localHttpURLConnection = (HttpURLConnection)paramURL.openConnection())
    {
      localHttpURLConnection.setConnectTimeout(10000);
      localHttpURLConnection.setReadTimeout(10000);
      localHttpURLConnection.setUseCaches(false);
      localHttpURLConnection.setDoInput(true);
      if (("https".equals(paramURL.getProtocol())) && (this.a != null))
      {
        ((HttpsURLConnection)localHttpURLConnection).setSSLSocketFactory(this.a);
        ((HttpsURLConnection)localHttpURLConnection).setHostnameVerifier(new HostnameVerifier()
        {
          public final boolean verify(String paramAnonymousString, SSLSession paramAnonymousSSLSession)
          {
            if (ac.a.matcher(paramAnonymousString.trim()).find()) {
              return true;
            }
            return HttpsURLConnection.getDefaultHostnameVerifier().verify(paramAnonymousString, paramAnonymousSSLSession);
          }
        });
      }
      return localHttpURLConnection;
    }
  }
  
  private HttpEntity a(HttpURLConnection paramHttpURLConnection)
  {
    BasicHttpEntity localBasicHttpEntity = new BasicHttpEntity();
    Object localObject;
    try
    {
      InputStream localInputStream1 = paramHttpURLConnection.getInputStream();
      localObject = localInputStream1;
      if (this.d != null)
      {
        localByteArrayOutputStream = new ByteArrayOutputStream();
        localObject = new byte['Ѐ'];
        for (;;)
        {
          i = localInputStream1.read((byte[])localObject);
          if (i == -1) {
            break;
          }
          localByteArrayOutputStream.write((byte[])localObject, 0, i);
        }
      }
    }
    catch (IOException localIOException)
    {
      ByteArrayOutputStream localByteArrayOutputStream;
      InputStream localInputStream2;
      for (;;)
      {
        localInputStream2 = paramHttpURLConnection.getErrorStream();
      }
      String str = paramHttpURLConnection.getURL().toString();
      localObject = str;
      if (str.contains("?")) {
        localObject = str.substring(0, str.indexOf("?"));
      }
      this.d.a("API_DOWN", (String)localObject, localByteArrayOutputStream.toByteArray().length, System.currentTimeMillis());
      localInputStream2.close();
      localObject = new ByteArrayInputStream(localByteArrayOutputStream.toByteArray());
      localByteArrayOutputStream.close();
      localBasicHttpEntity.setContent((InputStream)localObject);
      localBasicHttpEntity.setContentLength(paramHttpURLConnection.getContentLength());
      localBasicHttpEntity.setContentEncoding(paramHttpURLConnection.getContentEncoding());
      localBasicHttpEntity.setContentType(paramHttpURLConnection.getContentType());
      paramHttpURLConnection = localBasicHttpEntity.getContentEncoding();
      if (paramHttpURLConnection == null) {
        break label243;
      }
    }
    int i = 0;
    for (;;)
    {
      if ((i >= paramHttpURLConnection.getElements().length) || (paramHttpURLConnection.getElements()[i].getName().equalsIgnoreCase("gzip"))) {
        try
        {
          localBasicHttpEntity.setContent(new GZIPInputStream((InputStream)localObject));
          label243:
          return localBasicHttpEntity;
        }
        catch (IOException paramHttpURLConnection)
        {
          paramHttpURLConnection.printStackTrace();
          return localBasicHttpEntity;
        }
      }
      i += 1;
    }
  }
  
  public final String a(int paramInt, String paramString, NameValuePair[] paramArrayOfNameValuePair)
  {
    if (paramInt == 0) {}
    Object localObject;
    for (;;)
    {
      try
      {
        paramArrayOfNameValuePair = paramString + "?" + URLEncodedUtils.format(a(paramArrayOfNameValuePair), "UTF-8");
        paramString = a(new URL(paramArrayOfNameValuePair));
        a(paramString, new NameValuePair[0]);
        com.xueqiu.android.base.util.v.a("SNBHttpURLConnectionApi", "http request:" + paramArrayOfNameValuePair);
        paramArrayOfNameValuePair = new ProtocolVersion("HTTP", 1, 1);
        if (paramString.getResponseCode() != -1) {
          break;
        }
        throw new IOException("Could not retrieve response code from HttpsURLConnection.");
      }
      catch (IOException paramString)
      {
        throw paramString;
      }
      if (paramInt == 1)
      {
        localObject = a(new URL(paramString));
        a((HttpURLConnection)localObject, new NameValuePair[0]);
        paramArrayOfNameValuePair = URLEncodedUtils.format(a(paramArrayOfNameValuePair), "UTF-8");
        com.xueqiu.android.base.util.v.a("SNBHttpURLConnectionApi", "http request:" + ((HttpURLConnection)localObject).getURL() + "?" + paramArrayOfNameValuePair);
        paramString = (String)localObject;
        if (paramArrayOfNameValuePair != null)
        {
          ((HttpURLConnection)localObject).setDoOutput(true);
          ((HttpURLConnection)localObject).addRequestProperty("Content-Type", "application/x-www-form-urlencoded; charset=UTF-8");
          paramString = new DataOutputStream(((HttpURLConnection)localObject).getOutputStream());
          paramString.write(paramArrayOfNameValuePair.getBytes("UTF-8"));
          paramString.close();
          paramString = (String)localObject;
        }
      }
      else
      {
        throw new RuntimeException("http method " + paramInt + " don't support");
      }
    }
    paramArrayOfNameValuePair = new BasicHttpResponse(new BasicStatusLine(paramArrayOfNameValuePair, paramString.getResponseCode(), paramString.getResponseMessage()));
    paramArrayOfNameValuePair.setEntity(a(paramString));
    paramString = paramString.getHeaderFields().entrySet().iterator();
    while (paramString.hasNext())
    {
      localObject = (Map.Entry)paramString.next();
      if (((Map.Entry)localObject).getKey() != null) {
        paramArrayOfNameValuePair.addHeader(new BasicHeader((String)((Map.Entry)localObject).getKey(), (String)((List)((Map.Entry)localObject).getValue()).get(0)));
      }
    }
    paramInt = paramArrayOfNameValuePair.getStatusLine().getStatusCode();
    if (paramInt == 200) {
      return EntityUtils.toString(paramArrayOfNameValuePair.getEntity());
    }
    paramString = EntityUtils.toString(paramArrayOfNameValuePair.getEntity());
    try
    {
      paramString = new JSONObject(paramString);
      if (paramString.has("error_code")) {
        throw new com.xueqiu.android.base.a.b(paramString.getString("error_description"), paramString.getString("error_code"));
      }
    }
    catch (JSONException paramString)
    {
      switch (paramInt)
      {
      default: 
        com.xueqiu.android.base.util.v.c("AbstractHttpApi", "Default case for status code reached: " + paramArrayOfNameValuePair.getStatusLine().toString());
        paramArrayOfNameValuePair.getEntity().consumeContent();
        throw new com.xueqiu.android.base.a.b("Error connecting to SnowBall: " + paramInt + ". Try again later.");
      }
    }
    com.xueqiu.android.base.util.v.c("AbstractHttpApi", "HTTP Code: 400");
    throw new com.xueqiu.android.base.a.b(paramArrayOfNameValuePair.getStatusLine().toString(), EntityUtils.toString(paramArrayOfNameValuePair.getEntity()));
    paramArrayOfNameValuePair.getEntity().consumeContent();
    com.xueqiu.android.base.util.v.c("AbstractHttpApi", "HTTP Code: 401");
    throw new com.xueqiu.android.base.a.b(paramArrayOfNameValuePair.getStatusLine().toString());
    paramArrayOfNameValuePair.getEntity().consumeContent();
    com.xueqiu.android.base.util.v.c("AbstractHttpApi", "HTTP Code: 403");
    throw new com.xueqiu.android.base.a.b(paramArrayOfNameValuePair.getStatusLine().toString(), "403");
    paramArrayOfNameValuePair.getEntity().consumeContent();
    com.xueqiu.android.base.util.v.c("AbstractHttpApi", "HTTP Code: 404");
    throw new com.xueqiu.android.base.a.b(paramArrayOfNameValuePair.getStatusLine().toString());
    paramArrayOfNameValuePair.getEntity().consumeContent();
    com.xueqiu.android.base.util.v.c("AbstractHttpApi", "HTTP Code: 500");
    throw new com.xueqiu.android.base.a.b("SnowBall is down. Try again later.");
    paramArrayOfNameValuePair.getEntity().consumeContent();
    com.xueqiu.android.base.util.v.c("AbstractHttpApi", "HTTP Code: 502");
    throw new com.xueqiu.android.base.a.b("服务器开小差，请稍后再试");
  }
  
  protected void a(HttpURLConnection paramHttpURLConnection, NameValuePair... paramVarArgs)
  {
    paramHttpURLConnection.addRequestProperty("User-Agent", "Xueqiu Android " + this.c);
    paramHttpURLConnection.addRequestProperty("Accept-Encoding", "gzip");
    paramHttpURLConnection.addRequestProperty("Accept-Language", "en-US,en;q=0.8,zh-CN;q=0.6,zh;q=0.4");
    if ((!paramHttpURLConnection.getURL().toString().startsWith("http://xueqiu.com")) && (!paramHttpURLConnection.getURL().toString().startsWith("https://xueqiu.com"))) {
      paramHttpURLConnection.addRequestProperty("host", "api.xueqiu.com");
    }
    if (!TextUtils.isEmpty(u.a().a)) {
      paramHttpURLConnection.addRequestProperty("Cookie", String.format("xq_a_token=%s", new Object[] { u.a().a }));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\b\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */