package com.tencent.bugly.proguard;

import android.content.Context;
import android.os.Process;
import android.os.SystemClock;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class r
{
  private static r b;
  public Map<String, String> a = null;
  private Context c;
  
  private r(Context paramContext)
  {
    this.c = paramContext;
  }
  
  public static r a(Context paramContext)
  {
    if (b == null) {
      b = new r(paramContext);
    }
    return b;
  }
  
  private static HttpURLConnection a(String paramString1, String paramString2)
  {
    try
    {
      paramString2 = new URL(paramString2);
      if ((paramString1 != null) && (paramString1.toLowerCase(Locale.US).contains("wap"))) {
        paramString1 = new InetSocketAddress(System.getProperty("http.proxyHost"), Integer.parseInt(System.getProperty("http.proxyPort")));
      }
      for (paramString1 = (HttpURLConnection)paramString2.openConnection(new Proxy(Proxy.Type.HTTP, paramString1));; paramString1 = (HttpURLConnection)paramString2.openConnection())
      {
        paramString1.setConnectTimeout(30000);
        paramString1.setReadTimeout(10000);
        paramString1.setDoOutput(true);
        paramString1.setDoInput(true);
        paramString1.setRequestMethod("POST");
        paramString1.setUseCaches(false);
        paramString1.setInstanceFollowRedirects(false);
        return paramString1;
      }
      return null;
    }
    catch (Throwable paramString1)
    {
      if (!w.a(paramString1)) {
        paramString1.printStackTrace();
      }
    }
  }
  
  private HttpURLConnection a(String paramString1, byte[] paramArrayOfByte, String paramString2, Map<String, String> paramMap)
  {
    if (paramString1 == null)
    {
      w.e("destUrl is null.", new Object[0]);
      return null;
    }
    paramString1 = a(paramString2, paramString1);
    if (paramString1 == null)
    {
      w.e("Failed to get HttpURLConnection object.", new Object[0]);
      return null;
    }
    try
    {
      paramString1.setRequestProperty("wup_version", "3.0");
      if ((paramMap != null) && (paramMap.size() > 0))
      {
        paramMap = paramMap.entrySet().iterator();
        while (paramMap.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)paramMap.next();
          paramString1.setRequestProperty((String)localEntry.getKey(), URLEncoder.encode((String)localEntry.getValue(), "utf-8"));
        }
      }
      paramString1.setRequestProperty("A37", URLEncoder.encode(paramString2, "utf-8"));
    }
    catch (Throwable paramString1)
    {
      if (!w.a(paramString1)) {
        paramString1.printStackTrace();
      }
      w.e("Failed to upload crash, please check your network.", new Object[0]);
      return null;
    }
    paramString1.setRequestProperty("A38", URLEncoder.encode(a.e(this.c), "utf-8"));
    paramString1.connect();
    paramString2 = paramString1.getOutputStream();
    if (paramArrayOfByte == null) {
      paramString2.write(0);
    } else {
      paramString2.write(paramArrayOfByte);
    }
    return paramString1;
  }
  
  private static Map<String, String> a(HttpURLConnection paramHttpURLConnection)
  {
    HashMap localHashMap = new HashMap();
    paramHttpURLConnection = paramHttpURLConnection.getHeaderFields();
    if ((paramHttpURLConnection == null) || (paramHttpURLConnection.size() == 0)) {
      return null;
    }
    Iterator localIterator = paramHttpURLConnection.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      List localList = (List)paramHttpURLConnection.get(str);
      if (localList.size() > 0) {
        localHashMap.put(str, localList.get(0));
      }
    }
    return localHashMap;
  }
  
  /* Error */
  private static byte[] b(HttpURLConnection paramHttpURLConnection)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnonnull +5 -> 6
    //   4: aconst_null
    //   5: areturn
    //   6: new 244	java/io/BufferedInputStream
    //   9: dup
    //   10: aload_0
    //   11: invokevirtual 248	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   14: invokespecial 251	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   17: astore_1
    //   18: aload_1
    //   19: astore_0
    //   20: new 253	java/io/ByteArrayOutputStream
    //   23: dup
    //   24: invokespecial 254	java/io/ByteArrayOutputStream:<init>	()V
    //   27: astore_2
    //   28: aload_1
    //   29: astore_0
    //   30: sipush 1024
    //   33: newarray <illegal type>
    //   35: astore_3
    //   36: aload_1
    //   37: astore_0
    //   38: aload_1
    //   39: aload_3
    //   40: invokevirtual 258	java/io/BufferedInputStream:read	([B)I
    //   43: istore 4
    //   45: iload 4
    //   47: ifle +49 -> 96
    //   50: aload_1
    //   51: astore_0
    //   52: aload_2
    //   53: aload_3
    //   54: iconst_0
    //   55: iload 4
    //   57: invokevirtual 261	java/io/ByteArrayOutputStream:write	([BII)V
    //   60: goto -24 -> 36
    //   63: astore_2
    //   64: aload_1
    //   65: astore_0
    //   66: aload_2
    //   67: invokestatic 123	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   70: ifne +9 -> 79
    //   73: aload_1
    //   74: astore_0
    //   75: aload_2
    //   76: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   79: aload_1
    //   80: ifnull -76 -> 4
    //   83: aload_1
    //   84: invokevirtual 264	java/io/BufferedInputStream:close	()V
    //   87: aconst_null
    //   88: areturn
    //   89: astore_0
    //   90: aload_0
    //   91: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   94: aconst_null
    //   95: areturn
    //   96: aload_1
    //   97: astore_0
    //   98: aload_2
    //   99: invokevirtual 267	java/io/ByteArrayOutputStream:flush	()V
    //   102: aload_1
    //   103: astore_0
    //   104: aload_2
    //   105: invokevirtual 271	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   108: astore_2
    //   109: aload_1
    //   110: invokevirtual 264	java/io/BufferedInputStream:close	()V
    //   113: aload_2
    //   114: areturn
    //   115: astore_0
    //   116: aload_0
    //   117: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   120: aload_2
    //   121: areturn
    //   122: astore_1
    //   123: aconst_null
    //   124: astore_0
    //   125: aload_0
    //   126: ifnull +7 -> 133
    //   129: aload_0
    //   130: invokevirtual 264	java/io/BufferedInputStream:close	()V
    //   133: aload_1
    //   134: athrow
    //   135: astore_0
    //   136: aload_0
    //   137: invokevirtual 126	java/lang/Throwable:printStackTrace	()V
    //   140: goto -7 -> 133
    //   143: astore_1
    //   144: goto -19 -> 125
    //   147: astore_2
    //   148: aconst_null
    //   149: astore_1
    //   150: goto -86 -> 64
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	153	0	paramHttpURLConnection	HttpURLConnection
    //   17	93	1	localBufferedInputStream	java.io.BufferedInputStream
    //   122	12	1	localObject1	Object
    //   143	1	1	localObject2	Object
    //   149	1	1	localObject3	Object
    //   27	26	2	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   63	42	2	localThrowable1	Throwable
    //   108	13	2	arrayOfByte1	byte[]
    //   147	1	2	localThrowable2	Throwable
    //   35	19	3	arrayOfByte2	byte[]
    //   43	13	4	i	int
    // Exception table:
    //   from	to	target	type
    //   20	28	63	java/lang/Throwable
    //   30	36	63	java/lang/Throwable
    //   38	45	63	java/lang/Throwable
    //   52	60	63	java/lang/Throwable
    //   98	102	63	java/lang/Throwable
    //   104	109	63	java/lang/Throwable
    //   83	87	89	java/lang/Throwable
    //   109	113	115	java/lang/Throwable
    //   6	18	122	finally
    //   129	133	135	java/lang/Throwable
    //   20	28	143	finally
    //   30	36	143	finally
    //   38	45	143	finally
    //   52	60	143	finally
    //   66	73	143	finally
    //   75	79	143	finally
    //   98	102	143	finally
    //   104	109	143	finally
    //   6	18	147	java/lang/Throwable
  }
  
  public final byte[] a(String paramString, byte[] paramArrayOfByte, u paramu, Map<String, String> paramMap)
  {
    if (paramString == null)
    {
      w.e("rqdp{  no destUrl!}", new Object[0]);
      return null;
    }
    int m = 0;
    long l1;
    int j;
    int i;
    label74:
    int k;
    if (paramArrayOfByte == null)
    {
      l1 = 0L;
      w.c("req %s sz:%d (pid=%d | tid=%d)", new Object[] { paramString, Long.valueOf(l1), Integer.valueOf(Process.myPid()), Integer.valueOf(Process.myTid()) });
      j = 0;
      i = 0;
      k = i + 1;
      if ((i >= 3) || (m >= 2)) {
        break label749;
      }
      if (j == 0) {
        break label144;
      }
      i = 0;
    }
    Object localObject1;
    for (;;)
    {
      localObject1 = a.e(this.c);
      if (localObject1 != null) {
        break label193;
      }
      w.d("req but network not avail,so drop!", new Object[0]);
      j = i;
      i = k;
      break label74;
      l1 = paramArrayOfByte.length;
      break;
      label144:
      i = j;
      if (k > 1)
      {
        w.c("try time " + k, new Object[0]);
        SystemClock.sleep(10000L);
        i = j;
      }
    }
    label193:
    paramu.a(l1);
    HttpURLConnection localHttpURLConnection = a(paramString, paramArrayOfByte, (String)localObject1, paramMap);
    if (localHttpURLConnection != null) {}
    int i2;
    Object localObject2;
    label749:
    label779:
    for (;;)
    {
      try
      {
        i4 = localHttpURLConnection.getResponseCode();
        if (i4 == 200)
        {
          this.a = a(localHttpURLConnection);
          localObject1 = b(localHttpURLConnection);
          if (localObject1 == null)
          {
            l2 = 0L;
            paramu.b(l2);
          }
          try
          {
            localHttpURLConnection.disconnect();
            return (byte[])localObject1;
            j = localObject1.length;
            l2 = j;
          }
          catch (Throwable paramString)
          {
            if (w.a(paramString)) {
              continue;
            }
            paramString.printStackTrace();
            continue;
          }
        }
        if ((i4 == 301) || (i4 == 302) || (i4 == 303) || (i4 == 307))
        {
          j = 1;
          if (j == 0) {
            break label779;
          }
          i2 = 1;
          i3 = 1;
          i = 1;
          i1 = i3;
          n = m;
          j = k;
          localObject1 = paramString;
        }
      }
      catch (IOException localIOException)
      {
        try
        {
          int i3;
          str = localHttpURLConnection.getHeaderField("Location");
          if (str == null)
          {
            i1 = i3;
            n = m;
            j = k;
            localObject1 = paramString;
            w.e("rqdp{  redirect code:}" + i4 + "rqdp{   Location is null! return}", new Object[0]);
            try
            {
              localHttpURLConnection.disconnect();
              return null;
              j = 0;
            }
            catch (Throwable paramString)
            {
              if (w.a(paramString)) {
                continue;
              }
              paramString.printStackTrace();
              continue;
            }
          }
          m += 1;
          k = 0;
          j = 0;
        }
        catch (IOException paramString)
        {
          int i4;
          long l2;
          int i1;
          int n;
          String str;
          long l3;
          i = i1;
          m = n;
          k = j;
          continue;
        }
        try
        {
          w.c("redirect code: %d ,to:%s", new Object[] { Integer.valueOf(i4), str });
          paramString = str;
          k = j;
          i1 = i;
          n = m;
          j = k;
          localObject1 = paramString;
          w.d("response code " + i4, new Object[0]);
          i1 = i;
          n = m;
          j = k;
          localObject1 = paramString;
          l3 = localHttpURLConnection.getContentLength();
          l2 = l3;
          if (l3 < 0L) {
            l2 = 0L;
          }
          i1 = i;
          n = m;
          j = k;
          localObject1 = paramString;
          paramu.b(l2);
          try
          {
            localHttpURLConnection.disconnect();
            j = i;
            i = k;
          }
          catch (Throwable localThrowable)
          {
            if (!w.a(localThrowable)) {
              localThrowable.printStackTrace();
            }
            j = i;
            i = k;
          }
        }
        catch (IOException paramString)
        {
          localObject2 = localIOException;
          i = i2;
          continue;
        }
        localIOException = localIOException;
        localObject2 = paramString;
        paramString = localIOException;
        if (!w.a(paramString)) {
          paramString.printStackTrace();
        }
        try
        {
          localHttpURLConnection.disconnect();
          j = i;
          i = k;
          paramString = (String)localObject2;
        }
        catch (Throwable paramString)
        {
          if (!w.a(paramString)) {
            paramString.printStackTrace();
          }
          j = i;
          i = k;
          paramString = (String)localObject2;
        }
        break;
      }
      finally {}
      try
      {
        localHttpURLConnection.disconnect();
        throw paramString;
      }
      catch (Throwable paramArrayOfByte)
      {
        for (;;)
        {
          if (!w.a(paramArrayOfByte)) {
            paramArrayOfByte.printStackTrace();
          }
        }
      }
      w.c("Failed to execute post.", new Object[0]);
      paramu.b(0L);
      j = i;
      i = k;
      break;
      return null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */