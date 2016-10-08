package com.tencent.tauth.http;

import android.os.Bundle;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.security.cert.X509Certificate;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class ClientHttpRequest
{
  private static final String TAG = "HttpRequest";
  
  public static String encodePostBody(Bundle paramBundle, String paramString)
  {
    if (paramBundle == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramBundle.keySet().iterator();
    for (;;)
    {
      if (!localIterator.hasNext()) {
        return localStringBuilder.toString();
      }
      String str = (String)localIterator.next();
      if (paramBundle.getByteArray(str) == null)
      {
        localStringBuilder.append("Content-Disposition: form-data; name=\"" + str + "\"\r\n\r\n" + paramBundle.getString(str));
        localStringBuilder.append("\r\n--" + paramString + "\r\n");
      }
    }
  }
  
  public static String encodeUrl(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramBundle.keySet().iterator();
    int i = 1;
    if (!localIterator.hasNext()) {
      return localStringBuilder.toString();
    }
    String str = (String)localIterator.next();
    if (i != 0) {
      i = 0;
    }
    for (;;)
    {
      localStringBuilder.append(URLEncoder.encode(str) + "=" + URLEncoder.encode(paramBundle.getString(str)));
      break;
      localStringBuilder.append("&");
    }
  }
  
  public static int getFileSizeAtURL(URL paramURL)
  {
    int j = -1;
    int i = j;
    try
    {
      paramURL = (HttpURLConnection)paramURL.openConnection();
      i = j;
      j = paramURL.getContentLength();
      i = j;
      paramURL.disconnect();
      return j;
    }
    catch (Exception paramURL)
    {
      TDebug.i("HttpRequest", paramURL.toString());
    }
    return i;
  }
  
  public static String openUrl(String paramString1, String paramString2, Bundle paramBundle)
  {
    Object localObject1 = paramString1;
    if (paramString2.equals("GET")) {
      localObject1 = paramString1 + encodeUrl(paramBundle);
    }
    TDebug.i("HttpRequest", paramString2 + " URL: " + (String)localObject1);
    if (((String)localObject1).startsWith("https")) {
      paramString1 = (HttpsURLConnection)new URL((String)localObject1).openConnection();
    }
    try
    {
      localObject1 = new X509TrustManager()
      {
        public final void checkClientTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString) {}
        
        public final void checkServerTrusted(X509Certificate[] paramAnonymousArrayOfX509Certificate, String paramAnonymousString) {}
        
        public final X509Certificate[] getAcceptedIssuers()
        {
          return null;
        }
      };
      Object localObject2 = SSLContext.getInstance("TLS");
      ((SSLContext)localObject2).init(null, new TrustManager[] { localObject1 }, null);
      ((HttpsURLConnection)paramString1).setSSLSocketFactory(((SSLContext)localObject2).getSocketFactory());
      TDebug.i("HttpRequest", "start https");
      paramString1.setRequestProperty("User-Agent", System.getProperties().getProperty("http.agent") + " ArzenAndroidSDK");
      if (!paramString2.equals("GET"))
      {
        localObject1 = new Bundle();
        localObject2 = paramBundle.keySet().iterator();
        label194:
        if (((Iterator)localObject2).hasNext()) {
          break label420;
        }
        if (!paramBundle.containsKey("method")) {
          paramBundle.putString("method", paramString2);
        }
        paramString1.setRequestMethod("POST");
        paramString1.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
        paramString1.setDoOutput(true);
        paramString1.setDoInput(true);
        paramString1.setRequestProperty("Connection", "Keep-Alive");
        paramString1.connect();
        paramString2 = new BufferedOutputStream(paramString1.getOutputStream());
        paramString2.write(("--" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" + "\r\n").getBytes());
        paramString2.write(encodePostBody(paramBundle, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
        paramString2.write(("\r\n" + "--" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" + "\r\n").getBytes());
        if (!((Bundle)localObject1).isEmpty()) {
          paramBundle = ((Bundle)localObject1).keySet().iterator();
        }
      }
      for (;;)
      {
        if (!paramBundle.hasNext()) {
          paramString2.flush();
        }
        try
        {
          paramString2 = read(paramString1.getInputStream());
          return paramString2;
        }
        catch (FileNotFoundException paramString2)
        {
          String str;
          return read(paramString1.getErrorStream());
        }
        paramString1 = (HttpURLConnection)new URL((String)localObject1).openConnection();
        break;
        label420:
        str = (String)((Iterator)localObject2).next();
        if (paramBundle.getByteArray(str) == null) {
          break label194;
        }
        ((Bundle)localObject1).putByteArray(str, paramBundle.getByteArray(str));
        break label194;
        localObject2 = (String)paramBundle.next();
        paramString2.write(("Content-Disposition: form-data; filename=\"" + (String)localObject2 + "\"" + "\r\n").getBytes());
        paramString2.write(("Content-Type: content/unknown" + "\r\n" + "\r\n").getBytes());
        paramString2.write(((Bundle)localObject1).getByteArray((String)localObject2));
        paramString2.write(("\r\n" + "--" + "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f" + "\r\n").getBytes());
      }
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
  
  private static String read(InputStream paramInputStream)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream), 1000);
    for (String str = localBufferedReader.readLine();; str = localBufferedReader.readLine())
    {
      if (str == null)
      {
        paramInputStream.close();
        return localStringBuilder.toString();
      }
      localStringBuilder.append(str);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\tauth\http\ClientHttpRequest.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */