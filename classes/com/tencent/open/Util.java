package com.tencent.open;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.InputStream;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.json.JSONException;
import org.json.JSONObject;

public class Util
{
  private static boolean a = true;
  
  private static char a(int paramInt)
  {
    paramInt &= 0xF;
    if (paramInt < 10) {
      return (char)(paramInt + 48);
    }
    return (char)(paramInt - 10 + 97);
  }
  
  public static Bundle a(String paramString)
  {
    Bundle localBundle = new Bundle();
    if (paramString != null)
    {
      paramString = paramString.split("&");
      int j = paramString.length;
      int i = 0;
      while (i < j)
      {
        String[] arrayOfString = paramString[i].split("=");
        if (arrayOfString.length == 2) {
          localBundle.putString(URLDecoder.decode(arrayOfString[0]), URLDecoder.decode(arrayOfString[1]));
        }
        i += 1;
      }
    }
    return localBundle;
  }
  
  public static Util.NetworkProxy a(Context paramContext)
  {
    if (paramContext == null) {
      return null;
    }
    Object localObject = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localObject == null) {
      return null;
    }
    localObject = ((ConnectivityManager)localObject).getActiveNetworkInfo();
    if (localObject == null) {
      return null;
    }
    if (((NetworkInfo)localObject).getType() == 0)
    {
      localObject = c(paramContext);
      int i = d(paramContext);
      if ((!e((String)localObject)) && (i >= 0)) {
        return new Util.NetworkProxy((String)localObject, i, null);
      }
    }
    return null;
  }
  
  public static Util.Statistic a(Context paramContext, String paramString, Bundle paramBundle)
  {
    if (paramContext != null)
    {
      localObject1 = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localObject1 != null)
      {
        localObject1 = ((ConnectivityManager)localObject1).getActiveNetworkInfo();
        if ((localObject1 == null) || (!((NetworkInfo)localObject1).isAvailable())) {
          throw new NetworkUnavailableException("network unavailable");
        }
      }
    }
    paramBundle = new Bundle(paramBundle);
    Object localObject1 = paramBundle.getString("appid_for_getting_config");
    paramBundle.remove("appid_for_getting_config");
    paramContext = a(paramContext, (String)localObject1, paramString);
    paramString = new HttpPost(paramString);
    localObject1 = new Bundle();
    Object localObject2 = paramBundle.keySet().iterator();
    String str;
    while (((Iterator)localObject2).hasNext())
    {
      str = (String)((Iterator)localObject2).next();
      Object localObject3 = paramBundle.get(str);
      if ((localObject3 instanceof byte[])) {
        ((Bundle)localObject1).putByteArray(str, (byte[])localObject3);
      }
    }
    paramString.setHeader("Content-Type", "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
    paramString.setHeader("Connection", "Keep-Alive");
    localObject2 = new ByteArrayOutputStream();
    ((ByteArrayOutputStream)localObject2).write("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
    ((ByteArrayOutputStream)localObject2).write(a(paramBundle, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
    if (!((Bundle)localObject1).isEmpty())
    {
      int k = ((Bundle)localObject1).size();
      ((ByteArrayOutputStream)localObject2).write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
      paramBundle = ((Bundle)localObject1).keySet().iterator();
      i = -1;
      while (paramBundle.hasNext())
      {
        str = (String)paramBundle.next();
        j = i + 1;
        ((ByteArrayOutputStream)localObject2).write(("Content-Disposition: form-data; name=\"" + str + "\"; filename=\"value.file\"\r\n").getBytes());
        ((ByteArrayOutputStream)localObject2).write("Content-Type: application/octet-stream\r\n\r\n".getBytes());
        ((ByteArrayOutputStream)localObject2).write(((Bundle)localObject1).getByteArray(str));
        i = j;
        if (j < k - 1)
        {
          ((ByteArrayOutputStream)localObject2).write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
          i = j;
        }
      }
    }
    ((ByteArrayOutputStream)localObject2).write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n".getBytes());
    paramBundle = ((ByteArrayOutputStream)localObject2).toByteArray();
    int i = paramBundle.length;
    ((ByteArrayOutputStream)localObject2).close();
    paramString.setEntity(new ByteArrayEntity(paramBundle));
    paramContext = paramContext.execute(paramString);
    int j = paramContext.getStatusLine().getStatusCode();
    if (j == 200) {
      return new Util.Statistic(a(paramContext), i + 0);
    }
    throw new HttpStatusException("http status code error:" + j);
  }
  
  public static Util.Statistic a(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    if (paramContext != null)
    {
      localObject1 = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localObject1 != null)
      {
        localObject1 = ((ConnectivityManager)localObject1).getActiveNetworkInfo();
        if ((localObject1 == null) || (!((NetworkInfo)localObject1).isAvailable())) {
          throw new NetworkUnavailableException("network unavailable");
        }
      }
    }
    Object localObject1 = new Bundle(paramBundle);
    paramBundle = ((Bundle)localObject1).getString("appid_for_getting_config");
    ((Bundle)localObject1).remove("appid_for_getting_config");
    paramBundle = a(paramContext, paramBundle, paramString1);
    paramContext = null;
    int i = 0;
    if (paramString2.equals("GET"))
    {
      paramString2 = a((Bundle)localObject1);
      i = paramString2.length();
      if (paramString1.indexOf("?") == -1)
      {
        paramContext = paramString1 + "?";
        paramContext = new HttpGet(paramContext + paramString2);
        paramContext.addHeader("Accept-Encoding", "gzip");
        i += 0;
      }
    }
    int j;
    for (;;)
    {
      paramContext = paramBundle.execute(paramContext);
      j = paramContext.getStatusLine().getStatusCode();
      if (j != 200) {
        break label615;
      }
      return new Util.Statistic(a(paramContext), i);
      paramContext = paramString1 + "&";
      break;
      if (paramString2.equals("POST"))
      {
        paramContext = new HttpPost(paramString1);
        paramContext.addHeader("Accept-Encoding", "gzip");
        paramString1 = new Bundle();
        Object localObject2 = ((Bundle)localObject1).keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          String str = (String)((Iterator)localObject2).next();
          Object localObject3 = ((Bundle)localObject1).get(str);
          if ((localObject3 instanceof byte[])) {
            paramString1.putByteArray(str, (byte[])localObject3);
          }
        }
        if (!((Bundle)localObject1).containsKey("method")) {
          ((Bundle)localObject1).putString("method", paramString2);
        }
        paramContext.setHeader("Content-Type", "multipart/form-data; boundary=3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f");
        paramContext.setHeader("Connection", "Keep-Alive");
        paramString2 = new ByteArrayOutputStream();
        paramString2.write("--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
        paramString2.write(a((Bundle)localObject1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
        if (!paramString1.isEmpty())
        {
          int k = paramString1.size();
          paramString2.write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
          localObject1 = paramString1.keySet().iterator();
          i = -1;
          while (((Iterator)localObject1).hasNext())
          {
            localObject2 = (String)((Iterator)localObject1).next();
            j = i + 1;
            paramString2.write(("Content-Disposition: form-data; name=\"" + (String)localObject2 + "\"; filename=\"" + (String)localObject2 + "\"\r\n").getBytes());
            paramString2.write("Content-Type: content/unknown\r\n\r\n".getBytes());
            paramString2.write(paramString1.getByteArray((String)localObject2));
            i = j;
            if (j < k - 1)
            {
              paramString2.write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f\r\n".getBytes());
              i = j;
            }
          }
        }
        paramString2.write("\r\n--3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f--\r\n".getBytes());
        paramString1 = paramString2.toByteArray();
        i = paramString1.length + 0;
        paramString2.close();
        paramContext.setEntity(new ByteArrayEntity(paramString1));
      }
    }
    label615:
    throw new HttpStatusException("http status code error:" + j);
  }
  
  public static String a()
  {
    try
    {
      InetAddress localInetAddress;
      do
      {
        localObject = NetworkInterface.getNetworkInterfaces();
        Enumeration localEnumeration;
        while (!localEnumeration.hasMoreElements())
        {
          if ((localObject == null) || (!((Enumeration)localObject).hasMoreElements())) {
            break;
          }
          localEnumeration = ((NetworkInterface)((Enumeration)localObject).nextElement()).getInetAddresses();
        }
        localInetAddress = (InetAddress)localEnumeration.nextElement();
      } while (localInetAddress.isLoopbackAddress());
      Object localObject = localInetAddress.getHostAddress().toString();
      return (String)localObject;
    }
    catch (SocketException localSocketException)
    {
      a("Tencent-Util", localSocketException.toString());
    }
    return "";
  }
  
  public static String a(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    Iterator localIterator = paramBundle.keySet().iterator();
    int i = 1;
    while (localIterator.hasNext())
    {
      Object localObject1 = (String)localIterator.next();
      Object localObject2 = paramBundle.get((String)localObject1);
      if (((localObject2 instanceof String)) || ((localObject2 instanceof String[]))) {
        if ((localObject2 instanceof String[]))
        {
          int j;
          int k;
          if (i != 0)
          {
            j = 0;
            localStringBuilder.append(URLEncoder.encode((String)localObject1) + "=");
            localObject1 = (String[])paramBundle.getStringArray((String)localObject1);
            k = 0;
            label126:
            i = j;
            if (k >= localObject1.length) {
              continue;
            }
            if (k != 0) {
              break label177;
            }
            localStringBuilder.append(URLEncoder.encode(localObject1[k]));
          }
          for (;;)
          {
            k += 1;
            break label126;
            localStringBuilder.append("&");
            j = i;
            break;
            label177:
            localStringBuilder.append(URLEncoder.encode("," + localObject1[k]));
          }
        }
        else
        {
          if (i != 0) {
            i = 0;
          }
          for (;;)
          {
            localStringBuilder.append(URLEncoder.encode((String)localObject1) + "=" + URLEncoder.encode(paramBundle.getString((String)localObject1)));
            break;
            localStringBuilder.append("&");
          }
        }
      }
    }
    return localStringBuilder.toString();
  }
  
  public static String a(Bundle paramBundle, String paramString)
  {
    if (paramBundle == null) {
      return "";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramBundle.size();
    Iterator localIterator = paramBundle.keySet().iterator();
    int i = -1;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        i += 1;
        Object localObject = paramBundle.get(str);
        if ((localObject instanceof String))
        {
          localStringBuilder.append("Content-Disposition: form-data; name=\"" + str + "\"\r\n\r\n" + (String)localObject);
          if (i < j - 1) {
            localStringBuilder.append("\r\n--" + paramString + "\r\n");
          }
        }
      }
      else
      {
        return localStringBuilder.toString();
      }
    }
  }
  
  private static String a(HttpResponse paramHttpResponse)
  {
    Object localObject = paramHttpResponse.getEntity().getContent();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    paramHttpResponse = paramHttpResponse.getFirstHeader("Content-Encoding");
    if ((paramHttpResponse != null) && (paramHttpResponse.getValue().toLowerCase().indexOf("gzip") >= 0)) {}
    for (paramHttpResponse = new GZIPInputStream((InputStream)localObject);; paramHttpResponse = (HttpResponse)localObject)
    {
      localObject = new byte['Ȁ'];
      for (;;)
      {
        int i = paramHttpResponse.read((byte[])localObject);
        if (i == -1) {
          break;
        }
        localByteArrayOutputStream.write((byte[])localObject, 0, i);
      }
      return new String(localByteArrayOutputStream.toByteArray());
    }
  }
  
  public static String a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(paramArrayOfByte.length * 2);
    int i = 0;
    while (i < paramArrayOfByte.length)
    {
      String str2 = Integer.toString(paramArrayOfByte[i] & 0xFF, 16);
      String str1 = str2;
      if (str2.length() == 1) {
        str1 = "0" + str2;
      }
      localStringBuilder.append(str1);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  /* Error */
  public static HttpClient a(Context paramContext, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 400	com/tencent/open/MySSLSocketFactory
    //   3: dup
    //   4: invokespecial 401	com/tencent/open/MySSLSocketFactory:<init>	()V
    //   7: astore_3
    //   8: aload_3
    //   9: getstatic 407	org/apache/http/conn/ssl/SSLSocketFactory:ALLOW_ALL_HOSTNAME_VERIFIER	Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    //   12: invokevirtual 411	org/apache/http/conn/ssl/SSLSocketFactory:setHostnameVerifier	(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    //   15: new 413	org/apache/http/params/BasicHttpParams
    //   18: dup
    //   19: invokespecial 414	org/apache/http/params/BasicHttpParams:<init>	()V
    //   22: astore 4
    //   24: aload_0
    //   25: aload_1
    //   26: invokestatic 419	com/tencent/open/OpenConfig:a	(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;
    //   29: ldc_w 421
    //   32: invokevirtual 424	com/tencent/open/OpenConfig:b	(Ljava/lang/String;)I
    //   35: istore 6
    //   37: ldc_w 426
    //   40: new 173	java/lang/StringBuilder
    //   43: dup
    //   44: ldc_w 428
    //   47: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   50: iload 6
    //   52: invokevirtual 240	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   55: ldc_w 430
    //   58: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: aload_1
    //   62: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: ldc_w 432
    //   68: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: aload_2
    //   72: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokestatic 437	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   81: pop
    //   82: iload 6
    //   84: istore 5
    //   86: iload 6
    //   88: ifne +8 -> 96
    //   91: sipush 15000
    //   94: istore 5
    //   96: ldc_w 426
    //   99: new 173	java/lang/StringBuilder
    //   102: dup
    //   103: ldc_w 439
    //   106: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   109: iload 5
    //   111: invokevirtual 240	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   114: ldc_w 430
    //   117: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: aload_1
    //   121: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: ldc_w 432
    //   127: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: aload_2
    //   131: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: invokestatic 437	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   140: pop
    //   141: aload 4
    //   143: iload 5
    //   145: invokestatic 445	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   148: aload_0
    //   149: aload_1
    //   150: invokestatic 419	com/tencent/open/OpenConfig:a	(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/OpenConfig;
    //   153: ldc_w 447
    //   156: invokevirtual 424	com/tencent/open/OpenConfig:b	(Ljava/lang/String;)I
    //   159: istore 6
    //   161: ldc_w 426
    //   164: new 173	java/lang/StringBuilder
    //   167: dup
    //   168: ldc_w 449
    //   171: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   174: iload 6
    //   176: invokevirtual 240	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   179: ldc_w 430
    //   182: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   185: aload_1
    //   186: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: ldc_w 432
    //   192: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   195: aload_2
    //   196: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   199: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokestatic 437	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   205: pop
    //   206: iload 6
    //   208: istore 5
    //   210: iload 6
    //   212: ifne +8 -> 220
    //   215: sipush 30000
    //   218: istore 5
    //   220: ldc_w 426
    //   223: new 173	java/lang/StringBuilder
    //   226: dup
    //   227: ldc_w 451
    //   230: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   233: iload 5
    //   235: invokevirtual 240	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   238: ldc_w 430
    //   241: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: aload_1
    //   245: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   248: ldc_w 432
    //   251: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   254: aload_2
    //   255: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   261: invokestatic 437	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   264: pop
    //   265: aload 4
    //   267: iload 5
    //   269: invokestatic 454	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   272: aload 4
    //   274: getstatic 460	org/apache/http/HttpVersion:HTTP_1_1	Lorg/apache/http/HttpVersion;
    //   277: invokestatic 466	org/apache/http/params/HttpProtocolParams:setVersion	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V
    //   280: aload 4
    //   282: ldc_w 468
    //   285: invokestatic 472	org/apache/http/params/HttpProtocolParams:setContentCharset	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   288: aload 4
    //   290: new 173	java/lang/StringBuilder
    //   293: dup
    //   294: ldc_w 474
    //   297: invokespecial 176	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   300: getstatic 480	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   303: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   306: ldc_w 482
    //   309: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   312: getstatic 487	android/os/Build:DEVICE	Ljava/lang/String;
    //   315: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: ldc_w 482
    //   321: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: getstatic 490	android/os/Build$VERSION:RELEASE	Ljava/lang/String;
    //   327: invokevirtual 180	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   330: invokevirtual 186	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   333: invokestatic 493	org/apache/http/params/HttpProtocolParams:setUserAgent	(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V
    //   336: new 495	org/apache/http/conn/scheme/SchemeRegistry
    //   339: dup
    //   340: invokespecial 496	org/apache/http/conn/scheme/SchemeRegistry:<init>	()V
    //   343: astore_1
    //   344: aload_1
    //   345: new 498	org/apache/http/conn/scheme/Scheme
    //   348: dup
    //   349: ldc_w 500
    //   352: invokestatic 506	org/apache/http/conn/scheme/PlainSocketFactory:getSocketFactory	()Lorg/apache/http/conn/scheme/PlainSocketFactory;
    //   355: bipush 80
    //   357: invokespecial 509	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   360: invokevirtual 513	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   363: pop
    //   364: aload_1
    //   365: new 498	org/apache/http/conn/scheme/Scheme
    //   368: dup
    //   369: ldc_w 515
    //   372: aload_3
    //   373: sipush 443
    //   376: invokespecial 509	org/apache/http/conn/scheme/Scheme:<init>	(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V
    //   379: invokevirtual 513	org/apache/http/conn/scheme/SchemeRegistry:register	(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;
    //   382: pop
    //   383: new 517	org/apache/http/impl/client/DefaultHttpClient
    //   386: dup
    //   387: new 519	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager
    //   390: dup
    //   391: aload 4
    //   393: aload_1
    //   394: invokespecial 522	org/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager:<init>	(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    //   397: aload 4
    //   399: invokespecial 525	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    //   402: astore_1
    //   403: aload_0
    //   404: invokestatic 527	com/tencent/open/Util:a	(Landroid/content/Context;)Lcom/tencent/open/Util$NetworkProxy;
    //   407: astore_0
    //   408: aload_0
    //   409: ifnull +35 -> 444
    //   412: new 529	org/apache/http/HttpHost
    //   415: dup
    //   416: aload_0
    //   417: getfield 531	com/tencent/open/Util$NetworkProxy:a	Ljava/lang/String;
    //   420: aload_0
    //   421: getfield 534	com/tencent/open/Util$NetworkProxy:b	I
    //   424: invokespecial 535	org/apache/http/HttpHost:<init>	(Ljava/lang/String;I)V
    //   427: astore_0
    //   428: aload_1
    //   429: invokeinterface 539 1 0
    //   434: ldc_w 541
    //   437: aload_0
    //   438: invokeinterface 547 3 0
    //   443: pop
    //   444: aload_1
    //   445: areturn
    //   446: astore 4
    //   448: aconst_null
    //   449: astore_3
    //   450: aload 4
    //   452: invokevirtual 550	java/security/KeyManagementException:printStackTrace	()V
    //   455: goto -440 -> 15
    //   458: astore 4
    //   460: aconst_null
    //   461: astore_3
    //   462: aload 4
    //   464: invokevirtual 551	java/security/NoSuchAlgorithmException:printStackTrace	()V
    //   467: goto -452 -> 15
    //   470: astore 4
    //   472: aconst_null
    //   473: astore_3
    //   474: aload 4
    //   476: invokevirtual 552	java/security/KeyStoreException:printStackTrace	()V
    //   479: goto -464 -> 15
    //   482: astore 4
    //   484: aconst_null
    //   485: astore_3
    //   486: aload 4
    //   488: invokevirtual 553	java/security/UnrecoverableKeyException:printStackTrace	()V
    //   491: goto -476 -> 15
    //   494: astore 4
    //   496: goto -10 -> 486
    //   499: astore 4
    //   501: goto -27 -> 474
    //   504: astore 4
    //   506: goto -44 -> 462
    //   509: astore 4
    //   511: goto -61 -> 450
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	514	0	paramContext	Context
    //   0	514	1	paramString1	String
    //   0	514	2	paramString2	String
    //   7	479	3	localMySSLSocketFactory	MySSLSocketFactory
    //   22	376	4	localBasicHttpParams	org.apache.http.params.BasicHttpParams
    //   446	5	4	localKeyManagementException1	java.security.KeyManagementException
    //   458	5	4	localNoSuchAlgorithmException1	NoSuchAlgorithmException
    //   470	5	4	localKeyStoreException1	java.security.KeyStoreException
    //   482	5	4	localUnrecoverableKeyException1	java.security.UnrecoverableKeyException
    //   494	1	4	localUnrecoverableKeyException2	java.security.UnrecoverableKeyException
    //   499	1	4	localKeyStoreException2	java.security.KeyStoreException
    //   504	1	4	localNoSuchAlgorithmException2	NoSuchAlgorithmException
    //   509	1	4	localKeyManagementException2	java.security.KeyManagementException
    //   84	184	5	i	int
    //   35	176	6	j	int
    // Exception table:
    //   from	to	target	type
    //   0	8	446	java/security/KeyManagementException
    //   0	8	458	java/security/NoSuchAlgorithmException
    //   0	8	470	java/security/KeyStoreException
    //   0	8	482	java/security/UnrecoverableKeyException
    //   8	15	494	java/security/UnrecoverableKeyException
    //   8	15	499	java/security/KeyStoreException
    //   8	15	504	java/security/NoSuchAlgorithmException
    //   8	15	509	java/security/KeyManagementException
  }
  
  public static JSONObject a(JSONObject paramJSONObject, String paramString)
  {
    JSONObject localJSONObject = paramJSONObject;
    if (paramJSONObject == null) {
      localJSONObject = new JSONObject();
    }
    if (paramString != null)
    {
      paramJSONObject = paramString.split("&");
      int j = paramJSONObject.length;
      int i = 0;
      for (;;)
      {
        if (i < j)
        {
          paramString = paramJSONObject[i].split("=");
          if (paramString.length == 2) {}
          try
          {
            localJSONObject.put(URLDecoder.decode(paramString[0]), URLDecoder.decode(paramString[1]));
            i += 1;
          }
          catch (JSONException paramString)
          {
            for (;;)
            {
              paramString.printStackTrace();
            }
          }
        }
      }
    }
    return localJSONObject;
  }
  
  public static void a(Context paramContext, String paramString1, long paramLong, String paramString2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("appid_for_getting_config", paramString2);
    localBundle.putString("strValue", paramString2);
    localBundle.putString("nValue", paramString1);
    localBundle.putString("qver", "1.8");
    if (paramLong != 0L) {
      localBundle.putLong("elt", paramLong);
    }
    new n(paramContext, localBundle).start();
  }
  
  private static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    Intent localIntent = new Intent();
    localIntent.setComponent(new ComponentName(paramString1, paramString2));
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.addFlags(1073741824);
    localIntent.addFlags(268435456);
    localIntent.setData(Uri.parse(paramString3));
    paramContext.startActivity(localIntent);
  }
  
  public static void a(String paramString1, String paramString2)
  {
    if (a) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    try
    {
      bool = e(paramContext);
      if (bool) {}
      try
      {
        Intent localIntent = new Intent();
        localIntent.setComponent(new ComponentName("com.tencent.mtt", "com.tencent.mtt.MainActivity"));
        localIntent.setAction("android.intent.action.VIEW");
        localIntent.addFlags(268435456);
        localIntent.setData(Uri.parse(paramString));
        paramContext.startActivity(localIntent);
      }
      catch (Exception localException1) {}
      a(paramContext, "com.android.browser", "com.android.browser.BrowserActivity", paramString);
    }
    catch (Exception localException5)
    {
      for (;;)
      {
        boolean bool = false;
      }
    }
    if (bool) {
      try
      {
        a(paramContext, "com.android.browser", "com.android.browser.BrowserActivity", paramString);
      }
      catch (Exception localException2)
      {
        try
        {
          a(paramContext, "com.google.android.browser", "com.android.browser.BrowserActivity", paramString);
        }
        catch (Exception localException3)
        {
          try
          {
            a(paramContext, "com.android.chrome", "com.google.android.apps.chrome.Main", paramString);
          }
          catch (Exception paramContext)
          {
            return false;
          }
        }
      }
    } else {
      try
      {
        a(paramContext, "com.google.android.browser", "com.android.browser.BrowserActivity", paramString);
      }
      catch (Exception localException4)
      {
        try
        {
          a(paramContext, "com.android.chrome", "com.google.android.apps.chrome.Main", paramString);
        }
        catch (Exception paramContext)
        {
          return false;
        }
      }
    }
    return true;
  }
  
  public static Bundle b(String paramString)
  {
    paramString = paramString.replace("auth://", "http://");
    try
    {
      paramString = new URL(paramString);
      Bundle localBundle = a(paramString.getQuery());
      localBundle.putAll(a(paramString.getRef()));
      return localBundle;
    }
    catch (MalformedURLException paramString) {}
    return new Bundle();
  }
  
  public static boolean b()
  {
    File localFile = null;
    if (Environment.getExternalStorageState().equals("mounted")) {
      localFile = Environment.getExternalStorageDirectory();
    }
    return localFile != null;
  }
  
  public static boolean b(Context paramContext)
  {
    boolean bool2 = false;
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.getPackageInfo("com.tencent.mobileqq", 0);
      bool1 = bool2;
      if (paramContext != null) {
        paramContext = paramContext.versionName;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        try
        {
          boolean bool1;
          Log.d("MobileQQ verson", paramContext);
          paramContext = paramContext.split("\\.");
          int i = Integer.parseInt(paramContext[0]);
          int j = Integer.parseInt(paramContext[1]);
          if (i <= 4)
          {
            bool1 = bool2;
            if (i == 4)
            {
              bool1 = bool2;
              if (j <= 0) {}
            }
          }
          else
          {
            bool1 = true;
          }
          return bool1;
        }
        catch (Exception paramContext)
        {
          paramContext.printStackTrace();
        }
        paramContext = paramContext;
        Log.d("checkMobileQQ", "error");
        paramContext.printStackTrace();
        paramContext = null;
      }
    }
    return false;
  }
  
  private static String c(Context paramContext)
  {
    if (Build.VERSION.SDK_INT < 11)
    {
      if (paramContext != null)
      {
        String str = Proxy.getHost(paramContext);
        paramContext = str;
        if (e(str)) {
          paramContext = Proxy.getDefaultHost();
        }
        return paramContext;
      }
      return Proxy.getDefaultHost();
    }
    return System.getProperty("http.proxyHost");
  }
  
  public static JSONObject c(String paramString)
  {
    paramString = paramString.replace("auth://", "http://");
    try
    {
      paramString = new URL(paramString);
      JSONObject localJSONObject = a(null, paramString.getQuery());
      a(localJSONObject, paramString.getRef());
      return localJSONObject;
    }
    catch (MalformedURLException paramString) {}
    return new JSONObject();
  }
  
  private static int d(Context paramContext)
  {
    int i = -1;
    if (Build.VERSION.SDK_INT < 11) {
      if (paramContext != null)
      {
        int j = Proxy.getPort(paramContext);
        i = j;
        if (j < 0) {
          i = Proxy.getDefaultPort();
        }
      }
    }
    do
    {
      return i;
      return Proxy.getDefaultPort();
      paramContext = System.getProperty("http.proxyPort");
    } while (e(paramContext));
    try
    {
      i = Integer.parseInt(paramContext);
      return i;
    }
    catch (NumberFormatException paramContext) {}
    return -1;
  }
  
  public static JSONObject d(String paramString)
  {
    String str = paramString;
    if (paramString.equals("false")) {
      str = "{value : false}";
    }
    paramString = str;
    if (str.equals("true")) {
      paramString = "{value : true}";
    }
    str = paramString;
    if (paramString.contains("allback(")) {
      str = paramString.replaceFirst("[\\s\\S]*allback\\(([\\s\\S]*)\\);[^\\)]*\\z", "$1").trim();
    }
    return new JSONObject(str);
  }
  
  private static boolean e(Context paramContext)
  {
    boolean bool2 = false;
    paramContext = paramContext.getPackageManager().getInstalledPackages(64);
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      Object localObject;
      if (i < paramContext.size())
      {
        localObject = (PackageInfo)paramContext.get(i);
        if (((((PackageInfo)localObject).applicationInfo.flags & 0x1) > 0) || (!((PackageInfo)localObject).packageName.equals("com.tencent.mtt")) || (((PackageInfo)localObject).versionCode < 430450)) {
          break label142;
        }
        localObject = ((PackageInfo)localObject).signatures;
        if (localObject == null) {}
      }
      else
      {
        try
        {
          paramContext = MessageDigest.getInstance("MD5");
          paramContext.update(localObject[0].toByteArray());
          localObject = a(paramContext.digest());
          paramContext.reset();
          boolean bool3 = ((String)localObject).equals("d8391a394d4a179e6fe7bdb8a301258b");
          bool1 = bool2;
          if (bool3) {
            bool1 = true;
          }
          return bool1;
        }
        catch (NoSuchAlgorithmException paramContext)
        {
          paramContext.printStackTrace();
          return false;
        }
      }
      return true;
      label142:
      i += 1;
    }
  }
  
  public static boolean e(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }
  
  public static String f(String paramString)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes());
      byte[] arrayOfByte = ((MessageDigest)localObject).digest();
      localObject = paramString;
      if (arrayOfByte != null)
      {
        localObject = new StringBuilder();
        int j = arrayOfByte.length;
        int i = 0;
        while (i < j)
        {
          int k = arrayOfByte[i];
          ((StringBuilder)localObject).append(a(k >>> 4));
          ((StringBuilder)localObject).append(a(k));
          i += 1;
        }
        localObject = ((StringBuilder)localObject).toString();
      }
      return (String)localObject;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      localNoSuchAlgorithmException.printStackTrace();
    }
    return paramString;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\open\Util.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */