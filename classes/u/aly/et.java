package u.aly;

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

public class et
{
  private static final String a = et.class.getName();
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
        es.b(a, "Caught IOException in convertStreamToString()", localIOException);
        try
        {
          paramInputStream.close();
          return null;
        }
        catch (IOException paramInputStream)
        {
          es.b(a, "Caught IOException in convertStreamToString()", paramInputStream);
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
          es.b(a, "Caught IOException in convertStreamToString()", paramInputStream);
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
        es.b(a, "Caught IOException in convertStreamToString()", paramInputStream);
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
          es.b(a, i + ":\tInvalid baseUrl.");
          return null;
        }
        es.a(a, i + ":\tget: " + paramString);
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
        es.a(a, i + "  Use GZIPInputStream get data....");
        localObject1 = new GZIPInputStream((InputStream)localObject1);
      }
      catch (ClientProtocolException localClientProtocolException)
      {
        String str1;
        Object localObject1;
        String str2;
        es.c(a, i + ":\tClientProtocolException,Failed to send message." + paramString, localClientProtocolException);
        return null;
        if ((localObject2 == null) || (!((Header)localObject2).getValue().equalsIgnoreCase("deflate"))) {
          break label531;
        }
        es.a(a, i + "  Use InflaterInputStream get data....");
        InflaterInputStream localInflaterInputStream = new InflaterInputStream(localClientProtocolException);
        continue;
      }
      catch (Exception localException)
      {
        es.c(a, i + ":\tIOException,Failed to send message." + paramString, localException);
        return null;
      }
      localObject1 = a((InputStream)localObject1);
      es.a(a, i + ":\tresponse: " + str1 + (String)localObject1);
      if (localObject1 == null)
      {
        return null;
        str2 = (String)((Iterator)localObject2).next();
        ((HttpGet)localObject1).addHeader(str2, (String)this.b.get(str2));
      }
      else
      {
        return new JSONObject(localException);
        es.c(a, i + ":\tFailed to send message. StatusCode = " + ((HttpResponse)localObject2).getStatusLine().getStatusCode() + ex.a + paramString);
        return null;
      }
    }
  }
  
  private JSONObject a(String paramString, JSONObject paramJSONObject)
  {
    paramJSONObject = paramJSONObject.toString();
    int i = new Random().nextInt(1000);
    es.c(a, i + ":\trequest: " + paramString + ex.a + paramJSONObject);
    Object localObject1 = new HttpPost(paramString);
    DefaultHttpClient localDefaultHttpClient = new DefaultHttpClient(b());
    try
    {
      Object localObject2;
      if (a())
      {
        paramJSONObject = "content=" + paramJSONObject;
        localObject2 = Charset.defaultCharset().toString();
        if (ex.c(paramJSONObject))
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
        es.a(a, i + ":\tresponse: " + ex.a + paramJSONObject);
        if (paramJSONObject == null)
        {
          return null;
          paramJSONObject = ew.a(paramJSONObject.getBytes((String)localObject2));
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
      es.c(a, i + ":\tClientProtocolException,Failed to send message." + paramString, paramJSONObject);
      return null;
      return new JSONObject(paramJSONObject);
      es.c(a, i + ":\tFailed to send message. StatusCode = " + ((HttpResponse)localObject1).getStatusLine().getStatusCode() + ex.a + paramString);
      return null;
    }
    catch (IOException paramJSONObject)
    {
      es.c(a, i + ":\tIOException,Failed to send message." + paramString, paramJSONObject);
      return null;
    }
    catch (JSONException paramJSONObject)
    {
      es.c(a, i + ":\tIOException,Failed to send message." + paramString, paramJSONObject);
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
    if ((ex.c(paramString)) || (!(eu.c.equals(paramString.trim()) ^ eu.b.equals(paramString.trim())))) {
      throw new RuntimeException("验证请求方式失败[" + paramString + "]");
    }
  }
  
  public et a(Map<String, String> paramMap)
  {
    this.b = paramMap;
    return this;
  }
  
  public <T extends ev> T a(eu parameu, Class<T> paramClass)
  {
    String str = parameu.c().trim();
    b(str);
    if (eu.c.equals(str)) {
      parameu = a(parameu.b());
    }
    for (;;)
    {
      if (parameu == null)
      {
        return null;
        if (eu.b.equals(str)) {
          parameu = a(parameu.d, parameu.a());
        }
      }
      else
      {
        try
        {
          parameu = (ev)paramClass.getConstructor(new Class[] { JSONObject.class }).newInstance(new Object[] { parameu });
          return parameu;
        }
        catch (SecurityException parameu)
        {
          es.b(a, "SecurityException", parameu);
          return null;
        }
        catch (NoSuchMethodException parameu)
        {
          for (;;)
          {
            es.b(a, "NoSuchMethodException", parameu);
          }
        }
        catch (IllegalArgumentException parameu)
        {
          for (;;)
          {
            es.b(a, "IllegalArgumentException", parameu);
          }
        }
        catch (InstantiationException parameu)
        {
          for (;;)
          {
            es.b(a, "InstantiationException", parameu);
          }
        }
        catch (IllegalAccessException parameu)
        {
          for (;;)
          {
            es.b(a, "IllegalAccessException", parameu);
          }
        }
        catch (InvocationTargetException parameu)
        {
          for (;;)
          {
            es.b(a, "InvocationTargetException", parameu);
          }
        }
      }
      parameu = null;
    }
  }
  
  public boolean a()
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\et.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */