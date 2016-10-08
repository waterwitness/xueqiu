package u.a;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import java.util.zip.InflaterInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.json.JSONException;
import org.json.JSONObject;

public class g
{
  private static final String a = g.class.getName();
  private Map<String, String> b;
  
  private static String a(InputStream paramInputStream)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream), 8192);
    StringBuilder localStringBuilder = new StringBuilder();
    for (;;)
    {
      try
      {
        str = localBufferedReader.readLine();
        if (str != null) {}
      }
      catch (IOException localIOException)
      {
        String str;
        b.b(a, "Caught IOException in convertStreamToString()", localIOException);
        try
        {
          paramInputStream.close();
          return null;
        }
        catch (IOException paramInputStream)
        {
          b.b(a, "Caught IOException in convertStreamToString()", paramInputStream);
          return null;
        }
      }
      finally
      {
        try
        {
          paramInputStream.close();
          throw ((Throwable)localObject);
        }
        catch (IOException paramInputStream)
        {
          b.b(a, "Caught IOException in convertStreamToString()", paramInputStream);
          return null;
        }
      }
      try
      {
        paramInputStream.close();
        return localStringBuilder.toString();
      }
      catch (IOException paramInputStream)
      {
        b.b(a, "Caught IOException in convertStreamToString()", paramInputStream);
      }
      localStringBuilder.append(str + "\n");
    }
    return null;
  }
  
  private JSONObject a(String paramString)
  {
    int i = new Random().nextInt(1000);
    label478:
    label529:
    label531:
    for (;;)
    {
      Object localObject2;
      try
      {
        str1 = System.getProperty("line.separator");
        if (paramString.length() <= 1)
        {
          b.b(a, i + ":\tInvalid baseUrl.");
          return null;
        }
        b.a(a, i + ":\tget: " + paramString);
        localObject1 = new HttpGet(paramString);
        if ((this.b != null) && (this.b.size() > 0))
        {
          localObject2 = this.b.keySet().iterator();
          if (((Iterator)localObject2).hasNext()) {
            continue;
          }
        }
        localObject2 = new DefaultHttpClient(b()).execute((HttpUriRequest)localObject1);
        if (((HttpResponse)localObject2).getStatusLine().getStatusCode() != 200) {
          break label478;
        }
        localObject1 = ((HttpResponse)localObject2).getEntity();
        if (localObject1 == null) {
          break label529;
        }
        localObject1 = ((HttpEntity)localObject1).getContent();
        localObject2 = ((HttpResponse)localObject2).getFirstHeader("Content-Encoding");
        if ((localObject2 == null) || (!((Header)localObject2).getValue().equalsIgnoreCase("gzip"))) {
          continue;
        }
        b.a(a, i + "  Use GZIPInputStream get data....");
        localObject1 = new GZIPInputStream((InputStream)localObject1);
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        String str1;
        Object localObject1;
        String str2;
        b.c(a, i + ":\tClientProtocolException,Failed to send message." + paramString, localClientProtocolException);
        return null;
        if ((localObject2 == null) || (!((Header)localObject2).getValue().equalsIgnoreCase("deflate"))) {
          break label531;
        }
        b.a(a, i + "  Use InflaterInputStream get data....");
        InflaterInputStream localInflaterInputStream = new InflaterInputStream(localClientProtocolException);
        continue;
      }
      catch (Exception localException)
      {
        b.c(a, i + ":\tIOException,Failed to send message." + paramString, localException);
        return null;
      }
      localObject1 = a((InputStream)localObject1);
      b.a(a, i + ":\tresponse: " + str1 + (String)localObject1);
      if (localObject1 == null)
      {
        return null;
        str2 = (String)((Iterator)localObject2).next();
        ((HttpGet)localObject1).addHeader(str2, (String)this.b.get(str2));
      }
      else
      {
        return new JSONObject(localException);
        b.c(a, i + ":\tFailed to send message. StatusCode = " + ((HttpResponse)localObject2).getStatusLine().getStatusCode() + m.a + paramString);
        return null;
      }
    }
  }
  
  private JSONObject a(String paramString, JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.toString();
    int i = new Random().nextInt(1000);
    b.c(a, i + ":\trequest: " + paramString + m.a + paramJSONObject);
    Object localObject1 = new HttpPost(paramString);
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(b());
    try
    {
      Object localObject2;
      if (a())
      {
        paramJSONObject = "content=" + paramJSONObject;
        localObject2 = Charset.defaultCharset().toString();
        if (m.d(paramJSONObject))
        {
          paramJSONObject = null;
          ((HttpPost)localObject1).addHeader("Content-Encoding", "deflate");
          ((HttpPost)localObject1).setEntity(new InputStreamEntity(new ByteArrayInputStream(paramJSONObject), paramJSONObject.length));
          label153:
          localObject1 = localDefaultHttpClient.execute((HttpUriRequest)localObject1);
          if (((HttpResponse)localObject1).getStatusLine().getStatusCode() != 200) {
            break label384;
          }
          paramJSONObject = ((HttpResponse)localObject1).getEntity();
          if (paramJSONObject == null) {
            break label507;
          }
          paramJSONObject = paramJSONObject.getContent();
          localObject1 = ((HttpResponse)localObject1).getFirstHeader("Content-Encoding");
          if ((localObject1 == null) || (!((Header)localObject1).getValue().equalsIgnoreCase("deflate"))) {
            break label504;
          }
          paramJSONObject = new InflaterInputStream(paramJSONObject);
        }
      }
      label384:
      for (;;)
      {
        paramJSONObject = a(paramJSONObject);
        b.a(a, i + ":\tresponse: " + m.a + paramJSONObject);
        if (paramJSONObject == null)
        {
          return null;
          paramJSONObject = l.a(paramJSONObject.getBytes((String)localObject2));
          break;
          localObject2 = new ArrayList(1);
          ((List)localObject2).add(new BasicNameValuePair("content", paramJSONObject));
          ((HttpPost)localObject1).setEntity(new UrlEncodedFormEntity((List)localObject2, "UTF-8"));
          break label153;
        }
      }
    }
    catch (ClientProtocolException paramJSONObject)
    {
      b.c(a, i + ":\tClientProtocolException,Failed to send message." + paramString, paramJSONObject);
      return null;
      return new JSONObject(paramJSONObject);
      b.c(a, i + ":\tFailed to send message. StatusCode = " + ((HttpResponse)localObject1).getStatusLine().getStatusCode() + m.a + paramString);
      return null;
    }
    catch (IOException paramJSONObject)
    {
      b.c(a, i + ":\tIOException,Failed to send message." + paramString, paramJSONObject);
      return null;
    }
    catch (JSONException paramJSONObject)
    {
      b.c(a, i + ":\tIOException,Failed to send message." + paramString, paramJSONObject);
      return null;
    }
    label504:
    label507:
    return null;
  }
  
  private HttpParams b()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 10000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 20000);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, System.getProperty("http.agent"));
    return localBasicHttpParams;
  }
  
  private void b(String paramString)
  {
    if ((m.d(paramString)) || (!(h.b.equals(paramString.trim()) ^ h.a.equals(paramString.trim())))) {
      throw new RuntimeException("验证请求方式失败[" + paramString + "]");
    }
  }
  
  public g a(Map<String, String> paramMap)
  {
    this.b = paramMap;
    return this;
  }
  
  public <T extends i> T a(h paramh, Class<T> paramClass)
  {
    String str = paramh.c().trim();
    b(str);
    if (h.b.equals(str)) {
      paramh = a(paramh.b());
    }
    for (;;)
    {
      if (paramh == null)
      {
        return null;
        if (h.a.equals(str)) {
          paramh = a(paramh.c, paramh.a());
        }
      }
      else
      {
        try
        {
          paramh = (i)paramClass.getConstructor(new Class[] { JSONObject.class }).newInstance(new Object[] { paramh });
          return paramh;
        }
        catch (SecurityException paramh)
        {
          b.b(a, "SecurityException", paramh);
          return null;
        }
        catch (NoSuchMethodException paramh)
        {
          for (;;)
          {
            b.b(a, "NoSuchMethodException", paramh);
          }
        }
        catch (IllegalArgumentException paramh)
        {
          for (;;)
          {
            b.b(a, "IllegalArgumentException", paramh);
          }
        }
        catch (InstantiationException paramh)
        {
          for (;;)
          {
            b.b(a, "InstantiationException", paramh);
          }
        }
        catch (IllegalAccessException paramh)
        {
          for (;;)
          {
            b.b(a, "IllegalAccessException", paramh);
          }
        }
        catch (InvocationTargetException paramh)
        {
          for (;;)
          {
            b.b(a, "InvocationTargetException", paramh);
          }
        }
      }
      paramh = null;
    }
  }
  
  public boolean a()
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\a\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */