package com.sina.weibo.sdk.net;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.exception.WeiboHttpException;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.Set;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

class HttpManager
{
  private static final String BOUNDARY = ;
  private static final int BUFFER_SIZE = 8192;
  private static final int CONNECTION_TIMEOUT = 5000;
  private static final String END_MP_BOUNDARY = "--" + BOUNDARY + "--";
  private static final String HTTP_METHOD_GET = "GET";
  private static final String HTTP_METHOD_POST = "POST";
  private static final String MP_BOUNDARY = "--" + BOUNDARY;
  private static final String MULTIPART_FORM_DATA = "multipart/form-data";
  private static final int SOCKET_TIMEOUT = 20000;
  private static SSLSocketFactory sSSLSocketFactory;
  
  private static void buildParams(OutputStream paramOutputStream, WeiboParameters paramWeiboParameters)
  {
    for (;;)
    {
      Object localObject2;
      StringBuilder localStringBuilder;
      try
      {
        Object localObject1 = paramWeiboParameters.keySet();
        localObject2 = ((Set)localObject1).iterator();
        if (!((Iterator)localObject2).hasNext())
        {
          localObject1 = ((Set)localObject1).iterator();
          if (!((Iterator)localObject1).hasNext()) {
            paramOutputStream.write(("\r\n" + END_MP_BOUNDARY).getBytes());
          }
        }
        else
        {
          localObject3 = (String)((Iterator)localObject2).next();
          if (!(paramWeiboParameters.get((String)localObject3) instanceof String)) {
            continue;
          }
          localStringBuilder = new StringBuilder(100);
          localStringBuilder.setLength(0);
          localStringBuilder.append(MP_BOUNDARY).append("\r\n");
          localStringBuilder.append("content-disposition: form-data; name=\"").append((String)localObject3).append("\"\r\n\r\n");
          localStringBuilder.append(paramWeiboParameters.get((String)localObject3)).append("\r\n");
          paramOutputStream.write(localStringBuilder.toString().getBytes());
          continue;
        }
        localObject2 = (String)((Iterator)localObject1).next();
      }
      catch (IOException paramOutputStream)
      {
        throw new WeiboException(paramOutputStream);
      }
      Object localObject3 = paramWeiboParameters.get((String)localObject2);
      if ((localObject3 instanceof Bitmap))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(MP_BOUNDARY).append("\r\n");
        localStringBuilder.append("content-disposition: form-data; name=\"").append((String)localObject2).append("\"; filename=\"file\"\r\n");
        localStringBuilder.append("Content-Type: application/octet-stream; charset=utf-8\r\n\r\n");
        paramOutputStream.write(localStringBuilder.toString().getBytes());
        localObject2 = (Bitmap)localObject3;
        localObject3 = new ByteArrayOutputStream();
        ((Bitmap)localObject2).compress(Bitmap.CompressFormat.PNG, 100, (OutputStream)localObject3);
        paramOutputStream.write(((ByteArrayOutputStream)localObject3).toByteArray());
        paramOutputStream.write("\r\n".getBytes());
      }
      else if ((localObject3 instanceof ByteArrayOutputStream))
      {
        localStringBuilder = new StringBuilder();
        localStringBuilder.append(MP_BOUNDARY).append("\r\n");
        localStringBuilder.append("content-disposition: form-data; name=\"").append((String)localObject2).append("\"; filename=\"file\"\r\n");
        localStringBuilder.append("Content-Type: application/octet-stream; charset=utf-8\r\n\r\n");
        paramOutputStream.write(localStringBuilder.toString().getBytes());
        localObject2 = (ByteArrayOutputStream)localObject3;
        paramOutputStream.write(((ByteArrayOutputStream)localObject2).toByteArray());
        paramOutputStream.write("\r\n".getBytes());
        ((ByteArrayOutputStream)localObject2).close();
      }
    }
  }
  
  private static String getBoundry()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 1;
    if (i >= 12) {
      return localStringBuffer.toString();
    }
    long l = System.currentTimeMillis() + i;
    if (l % 3L == 0L) {
      localStringBuffer.append((char)(int)l % '\t');
    }
    for (;;)
    {
      i += 1;
      break;
      if (l % 3L == 1L) {
        localStringBuffer.append((char)(int)(l % 26L + 65L));
      } else {
        localStringBuffer.append((char)(int)(l % 26L + 97L));
      }
    }
  }
  
  private static HttpClient getNewHttpClient()
  {
    try
    {
      Object localObject1 = new BasicHttpParams();
      HttpProtocolParams.setVersion((HttpParams)localObject1, HttpVersion.HTTP_1_1);
      HttpProtocolParams.setContentCharset((HttpParams)localObject1, "UTF-8");
      Object localObject2 = new SchemeRegistry();
      ((SchemeRegistry)localObject2).register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      ((SchemeRegistry)localObject2).register(new Scheme("https", getSSLSocketFactory(), 443));
      localObject2 = new ThreadSafeClientConnManager((HttpParams)localObject1, (SchemeRegistry)localObject2);
      HttpConnectionParams.setConnectionTimeout((HttpParams)localObject1, 5000);
      HttpConnectionParams.setSoTimeout((HttpParams)localObject1, 20000);
      localObject1 = new DefaultHttpClient((ClientConnectionManager)localObject2, (HttpParams)localObject1);
      return (HttpClient)localObject1;
    }
    catch (Exception localException) {}
    return new DefaultHttpClient();
  }
  
  /* Error */
  private static SSLSocketFactory getSSLSocketFactory()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aconst_null
    //   3: astore_0
    //   4: getstatic 241	com/sina/weibo/sdk/net/HttpManager:sSSLSocketFactory	Lorg/apache/http/conn/ssl/SSLSocketFactory;
    //   7: ifnonnull +55 -> 62
    //   10: ldc 2
    //   12: ldc -13
    //   14: invokevirtual 249	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   17: astore_2
    //   18: aload_2
    //   19: astore_0
    //   20: aload_2
    //   21: astore_1
    //   22: invokestatic 254	java/security/KeyStore:getDefaultType	()Ljava/lang/String;
    //   25: invokestatic 258	java/security/KeyStore:getInstance	(Ljava/lang/String;)Ljava/security/KeyStore;
    //   28: astore_3
    //   29: aload_2
    //   30: astore_0
    //   31: aload_2
    //   32: astore_1
    //   33: aload_3
    //   34: aload_2
    //   35: aconst_null
    //   36: invokevirtual 262	java/security/KeyStore:load	(Ljava/io/InputStream;[C)V
    //   39: aload_2
    //   40: astore_0
    //   41: aload_2
    //   42: astore_1
    //   43: new 264	com/sina/weibo/sdk/net/HttpManager$MySSLSocketFactory
    //   46: dup
    //   47: aload_3
    //   48: invokespecial 267	com/sina/weibo/sdk/net/HttpManager$MySSLSocketFactory:<init>	(Ljava/security/KeyStore;)V
    //   51: putstatic 241	com/sina/weibo/sdk/net/HttpManager:sSSLSocketFactory	Lorg/apache/http/conn/ssl/SSLSocketFactory;
    //   54: aload_2
    //   55: ifnull +7 -> 62
    //   58: aload_2
    //   59: invokevirtual 270	java/io/InputStream:close	()V
    //   62: getstatic 241	com/sina/weibo/sdk/net/HttpManager:sSSLSocketFactory	Lorg/apache/http/conn/ssl/SSLSocketFactory;
    //   65: areturn
    //   66: astore_2
    //   67: aload_0
    //   68: astore_1
    //   69: aload_2
    //   70: invokevirtual 273	java/lang/Exception:printStackTrace	()V
    //   73: aload_0
    //   74: astore_1
    //   75: invokestatic 275	com/sina/weibo/sdk/net/HttpManager$MySSLSocketFactory:getSocketFactory	()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    //   78: putstatic 241	com/sina/weibo/sdk/net/HttpManager:sSSLSocketFactory	Lorg/apache/http/conn/ssl/SSLSocketFactory;
    //   81: aload_0
    //   82: ifnull -20 -> 62
    //   85: aload_0
    //   86: invokevirtual 270	java/io/InputStream:close	()V
    //   89: goto -27 -> 62
    //   92: astore_0
    //   93: goto -31 -> 62
    //   96: astore_0
    //   97: aload_1
    //   98: ifnull +7 -> 105
    //   101: aload_1
    //   102: invokevirtual 270	java/io/InputStream:close	()V
    //   105: aload_0
    //   106: athrow
    //   107: astore_1
    //   108: goto -3 -> 105
    //   111: astore_0
    //   112: goto -50 -> 62
    // Local variable table:
    //   start	length	slot	name	signature
    //   3	83	0	localObject1	Object
    //   92	1	0	localIOException1	IOException
    //   96	10	0	localObject2	Object
    //   111	1	0	localIOException2	IOException
    //   1	101	1	localObject3	Object
    //   107	1	1	localIOException3	IOException
    //   17	42	2	localInputStream	java.io.InputStream
    //   66	4	2	localException	Exception
    //   28	20	3	localKeyStore	java.security.KeyStore
    // Exception table:
    //   from	to	target	type
    //   10	18	66	java/lang/Exception
    //   22	29	66	java/lang/Exception
    //   33	39	66	java/lang/Exception
    //   43	54	66	java/lang/Exception
    //   85	89	92	java/io/IOException
    //   10	18	96	finally
    //   22	29	96	finally
    //   33	39	96	finally
    //   43	54	96	finally
    //   69	73	96	finally
    //   75	81	96	finally
    //   101	105	107	java/io/IOException
    //   58	62	111	java/io/IOException
  }
  
  public static String openUrl(String paramString1, String paramString2, WeiboParameters paramWeiboParameters)
  {
    return readRsponse(requestHttpExecute(paramString1, paramString2, paramWeiboParameters));
  }
  
  /* Error */
  private static String readRsponse(HttpResponse paramHttpResponse)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: ifnonnull +5 -> 8
    //   6: aload_1
    //   7: areturn
    //   8: aload_0
    //   9: invokeinterface 291 1 0
    //   14: astore_1
    //   15: new 127	java/io/ByteArrayOutputStream
    //   18: dup
    //   19: invokespecial 128	java/io/ByteArrayOutputStream:<init>	()V
    //   22: astore 4
    //   24: aload_1
    //   25: invokeinterface 297 1 0
    //   30: astore_2
    //   31: aload_2
    //   32: astore_3
    //   33: aload_2
    //   34: astore_1
    //   35: aload_0
    //   36: ldc_w 299
    //   39: invokeinterface 303 2 0
    //   44: astore 5
    //   46: aload_2
    //   47: astore_0
    //   48: aload 5
    //   50: ifnull +41 -> 91
    //   53: aload_2
    //   54: astore_0
    //   55: aload_2
    //   56: astore_3
    //   57: aload_2
    //   58: astore_1
    //   59: aload 5
    //   61: invokeinterface 308 1 0
    //   66: invokevirtual 311	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   69: ldc_w 313
    //   72: invokevirtual 317	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   75: iflt +16 -> 91
    //   78: aload_2
    //   79: astore_3
    //   80: aload_2
    //   81: astore_1
    //   82: new 319	java/util/zip/GZIPInputStream
    //   85: dup
    //   86: aload_2
    //   87: invokespecial 322	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   90: astore_0
    //   91: aload_0
    //   92: astore_3
    //   93: aload_0
    //   94: astore_1
    //   95: sipush 8192
    //   98: newarray <illegal type>
    //   100: astore_2
    //   101: aload_0
    //   102: astore_3
    //   103: aload_0
    //   104: astore_1
    //   105: aload_0
    //   106: aload_2
    //   107: invokevirtual 326	java/io/InputStream:read	([B)I
    //   110: istore 6
    //   112: iload 6
    //   114: iconst_m1
    //   115: if_icmpne +41 -> 156
    //   118: aload_0
    //   119: astore_3
    //   120: aload_0
    //   121: astore_1
    //   122: new 82	java/lang/String
    //   125: dup
    //   126: aload 4
    //   128: invokevirtual 141	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   131: ldc -67
    //   133: invokespecial 329	java/lang/String:<init>	([BLjava/lang/String;)V
    //   136: astore_2
    //   137: aload_2
    //   138: astore_1
    //   139: aload_0
    //   140: ifnull -134 -> 6
    //   143: aload_0
    //   144: invokevirtual 270	java/io/InputStream:close	()V
    //   147: aload_2
    //   148: areturn
    //   149: astore_0
    //   150: aload_0
    //   151: invokevirtual 330	java/io/IOException:printStackTrace	()V
    //   154: aload_2
    //   155: areturn
    //   156: aload_0
    //   157: astore_3
    //   158: aload_0
    //   159: astore_1
    //   160: aload 4
    //   162: aload_2
    //   163: iconst_0
    //   164: iload 6
    //   166: invokevirtual 333	java/io/ByteArrayOutputStream:write	([BII)V
    //   169: goto -68 -> 101
    //   172: astore_0
    //   173: aload_3
    //   174: astore_1
    //   175: new 115	com/sina/weibo/sdk/exception/WeiboException
    //   178: dup
    //   179: aload_0
    //   180: invokespecial 118	com/sina/weibo/sdk/exception/WeiboException:<init>	(Ljava/lang/Throwable;)V
    //   183: athrow
    //   184: astore_0
    //   185: aload_1
    //   186: ifnull +7 -> 193
    //   189: aload_1
    //   190: invokevirtual 270	java/io/InputStream:close	()V
    //   193: aload_0
    //   194: athrow
    //   195: astore_1
    //   196: aload_1
    //   197: invokevirtual 330	java/io/IOException:printStackTrace	()V
    //   200: goto -7 -> 193
    //   203: astore_0
    //   204: aconst_null
    //   205: astore_1
    //   206: goto -21 -> 185
    //   209: astore_0
    //   210: aconst_null
    //   211: astore_1
    //   212: goto -37 -> 175
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	215	0	paramHttpResponse	HttpResponse
    //   1	189	1	localObject1	Object
    //   195	2	1	localIOException	IOException
    //   205	7	1	localObject2	Object
    //   30	133	2	localObject3	Object
    //   32	142	3	localObject4	Object
    //   22	139	4	localByteArrayOutputStream	ByteArrayOutputStream
    //   44	16	5	localHeader	org.apache.http.Header
    //   110	55	6	i	int
    // Exception table:
    //   from	to	target	type
    //   143	147	149	java/io/IOException
    //   35	46	172	java/io/IOException
    //   59	78	172	java/io/IOException
    //   82	91	172	java/io/IOException
    //   95	101	172	java/io/IOException
    //   105	112	172	java/io/IOException
    //   122	137	172	java/io/IOException
    //   160	169	172	java/io/IOException
    //   35	46	184	finally
    //   59	78	184	finally
    //   82	91	184	finally
    //   95	101	184	finally
    //   105	112	184	finally
    //   122	137	184	finally
    //   160	169	184	finally
    //   175	184	184	finally
    //   189	193	195	java/io/IOException
    //   24	31	203	finally
    //   24	31	209	java/io/IOException
  }
  
  private static HttpResponse requestHttpExecute(String paramString1, String paramString2, WeiboParameters paramWeiboParameters)
  {
    for (;;)
    {
      Object localObject;
      try
      {
        HttpClient localHttpClient = getNewHttpClient();
        localHttpClient.getParams().setParameter("http.route.default-proxy", NetStateManager.getAPN());
        localObject = null;
        if (paramString2.equals("GET"))
        {
          paramWeiboParameters = new HttpGet(paramString1 + "?" + paramWeiboParameters.encodeUrl());
          paramString1 = localHttpClient.execute(paramWeiboParameters);
          int i = paramString1.getStatusLine().getStatusCode();
          if (i == 200) {
            break;
          }
          throw new WeiboHttpException(readRsponse(paramString1), i);
        }
      }
      catch (IOException paramString1)
      {
        throw new WeiboException(paramString1);
      }
      if (paramString2.equals("POST"))
      {
        paramString1 = new HttpPost(paramString1);
        paramString2 = new ByteArrayOutputStream();
        if (paramWeiboParameters.hasBinaryData())
        {
          paramString1.setHeader("Content-Type", "multipart/form-data; boundary=" + BOUNDARY);
          buildParams(paramString2, paramWeiboParameters);
          paramString1.setEntity(new ByteArrayEntity(paramString2.toByteArray()));
          paramString2.close();
          paramWeiboParameters = paramString1;
        }
        else
        {
          localObject = paramWeiboParameters.get("content-type");
          if ((localObject != null) && ((localObject instanceof String)))
          {
            paramWeiboParameters.remove("content-type");
            paramString1.setHeader("Content-Type", (String)localObject);
          }
          for (;;)
          {
            paramString2.write(paramWeiboParameters.encodeUrl().getBytes("UTF-8"));
            break;
            paramString1.setHeader("Content-Type", "application/x-www-form-urlencoded");
          }
        }
      }
      else
      {
        paramWeiboParameters = (WeiboParameters)localObject;
        if (paramString2.equals("DELETE")) {
          paramWeiboParameters = new HttpDelete(paramString1);
        }
      }
    }
    return paramString1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sina\weibo\sdk\net\HttpManager.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */