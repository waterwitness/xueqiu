package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.c;
import com.android.volley.h;
import com.android.volley.j;
import com.android.volley.k;
import com.android.volley.l;
import com.android.volley.n;
import com.android.volley.v;
import com.android.volley.w;
import com.android.volley.x;
import com.android.volley.y;
import com.android.volley.z;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.impl.cookie.DateUtils;

public final class a
  implements h
{
  protected static final boolean a = z.b;
  private static int d = 3000;
  private static int e = 4096;
  protected final g b;
  protected final b c;
  
  public a(g paramg)
  {
    this(paramg, new b(e));
  }
  
  private a(g paramg, b paramb)
  {
    this.b = paramg;
    this.c = paramb;
  }
  
  private static Map<String, String> a(Header[] paramArrayOfHeader)
  {
    HashMap localHashMap = new HashMap();
    int i = 0;
    while (i < paramArrayOfHeader.length)
    {
      localHashMap.put(paramArrayOfHeader[i].getName(), paramArrayOfHeader[i].getValue());
      i += 1;
    }
    return localHashMap;
  }
  
  private static void a(String paramString, n<?> paramn, y paramy)
  {
    v localv = paramn.j;
    int i = paramn.h();
    try
    {
      localv.a(paramy);
      paramn.a(String.format("%s-retry [timeout=%s]", new Object[] { paramString, Integer.valueOf(i) }));
      return;
    }
    catch (y paramy)
    {
      paramn.a(String.format("%s-timeout-giveup [timeout=%s]", new Object[] { paramString, Integer.valueOf(i) }));
      throw paramy;
    }
  }
  
  private byte[] a(HttpEntity paramHttpEntity)
  {
    p localp = new p(this.c, (int)paramHttpEntity.getContentLength());
    Object localObject2 = null;
    Object localObject1 = localObject2;
    Object localObject4;
    try
    {
      localObject4 = paramHttpEntity.getContent();
      if (localObject4 == null)
      {
        localObject1 = localObject2;
        throw new w();
      }
    }
    finally {}
    try
    {
      paramHttpEntity.consumeContent();
      this.c.a((byte[])localObject1);
      localp.close();
      throw ((Throwable)localObject3);
      localObject1 = localObject3;
      byte[] arrayOfByte = this.c.a(1024);
      for (;;)
      {
        localObject1 = arrayOfByte;
        int i = ((InputStream)localObject4).read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localObject1 = arrayOfByte;
        localp.write(arrayOfByte, 0, i);
      }
      localObject1 = arrayOfByte;
      localObject4 = localp.toByteArray();
      try
      {
        paramHttpEntity.consumeContent();
        this.c.a(arrayOfByte);
        localp.close();
        return (byte[])localObject4;
      }
      catch (IOException paramHttpEntity)
      {
        for (;;)
        {
          z.a("Error occured when calling consumingContent", new Object[0]);
        }
      }
    }
    catch (IOException paramHttpEntity)
    {
      for (;;)
      {
        z.a("Error occured when calling consumingContent", new Object[0]);
      }
    }
  }
  
  public final k a(n<?> paramn)
  {
    long l1 = SystemClock.elapsedRealtime();
    HttpResponse localHttpResponse2 = null;
    Object localObject5 = null;
    Object localObject1 = new HashMap();
    Object localObject3 = localObject1;
    Object localObject4 = localObject5;
    HttpResponse localHttpResponse1 = localHttpResponse2;
    for (;;)
    {
      int i;
      k localk;
      try
      {
        localObject6 = new HashMap();
        localObject3 = localObject1;
        localObject4 = localObject5;
        localHttpResponse1 = localHttpResponse2;
        Object localObject7 = paramn.k;
        if (localObject7 != null)
        {
          localObject3 = localObject1;
          localObject4 = localObject5;
          localHttpResponse1 = localHttpResponse2;
          if (((c)localObject7).b != null)
          {
            localObject3 = localObject1;
            localObject4 = localObject5;
            localHttpResponse1 = localHttpResponse2;
            ((Map)localObject6).put("If-None-Match", ((c)localObject7).b);
          }
          localObject3 = localObject1;
          localObject4 = localObject5;
          localHttpResponse1 = localHttpResponse2;
          if (((c)localObject7).c > 0L)
          {
            localObject3 = localObject1;
            localObject4 = localObject5;
            localHttpResponse1 = localHttpResponse2;
            ((Map)localObject6).put("If-Modified-Since", DateUtils.formatDate(new Date(((c)localObject7).c)));
          }
        }
        localObject3 = localObject1;
        localObject4 = localObject5;
        localHttpResponse1 = localHttpResponse2;
        localHttpResponse2 = this.b.a(paramn, (Map)localObject6);
        localObject3 = localObject1;
        localObject4 = localObject5;
        localHttpResponse1 = localHttpResponse2;
        localObject7 = localHttpResponse2.getStatusLine();
        localObject3 = localObject1;
        localObject4 = localObject5;
        localHttpResponse1 = localHttpResponse2;
        i = ((StatusLine)localObject7).getStatusCode();
        localObject3 = localObject1;
        localObject4 = localObject5;
        localHttpResponse1 = localHttpResponse2;
        localObject6 = a(localHttpResponse2.getAllHeaders());
        if (i != 304) {
          break label859;
        }
        localObject3 = localObject6;
        localObject4 = localObject5;
        localHttpResponse1 = localHttpResponse2;
        if (paramn.k == null)
        {
          localObject1 = null;
          localObject3 = localObject6;
          localObject4 = localObject5;
          localHttpResponse1 = localHttpResponse2;
          return new k(304, (byte[])localObject1, (Map)localObject6, true);
        }
        localObject3 = localObject6;
        localObject4 = localObject5;
        localHttpResponse1 = localHttpResponse2;
        localObject1 = paramn.k.a;
        continue;
        localObject3 = localObject6;
        localObject4 = localObject5;
        localHttpResponse1 = localHttpResponse2;
        paramn.c = ((String)((Map)localObject6).get("Location"));
        localObject3 = localObject6;
        localObject4 = localObject5;
        localHttpResponse1 = localHttpResponse2;
        if (localHttpResponse2.getEntity() != null)
        {
          localObject3 = localObject6;
          localObject4 = localObject5;
          localHttpResponse1 = localHttpResponse2;
          localObject1 = a(localHttpResponse2.getEntity());
          localObject3 = localObject6;
          localObject4 = localObject1;
          localHttpResponse1 = localHttpResponse2;
          long l2 = SystemClock.elapsedRealtime() - l1;
          localObject3 = localObject6;
          localObject4 = localObject1;
          localHttpResponse1 = localHttpResponse2;
          if (!a)
          {
            localObject3 = localObject6;
            localObject4 = localObject1;
            localHttpResponse1 = localHttpResponse2;
            if (l2 <= d) {
              break label878;
            }
          }
          if (localObject1 == null) {
            break label897;
          }
          localObject3 = localObject6;
          localObject4 = localObject1;
          localHttpResponse1 = localHttpResponse2;
          localObject5 = Integer.valueOf(localObject1.length);
          localObject3 = localObject6;
          localObject4 = localObject1;
          localHttpResponse1 = localHttpResponse2;
          z.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", new Object[] { paramn, Long.valueOf(l2), localObject5, Integer.valueOf(((StatusLine)localObject7).getStatusCode()), Integer.valueOf(paramn.j.b()) });
          break label878;
          localObject3 = localObject6;
          localObject4 = localObject1;
          localHttpResponse1 = localHttpResponse2;
          throw new IOException();
        }
      }
      catch (SocketTimeoutException localSocketTimeoutException)
      {
        Object localObject6;
        a("socket", paramn, new x());
        break;
        localObject3 = localObject6;
        localObject4 = localObject5;
        localHttpResponse1 = localHttpResponse2;
        Object localObject2 = new byte[0];
        continue;
        localObject3 = localObject6;
        localObject4 = localObject2;
        localHttpResponse1 = localHttpResponse2;
        localObject2 = new k(i, (byte[])localObject2, (Map)localObject6, false);
        return (k)localObject2;
      }
      catch (ConnectTimeoutException localConnectTimeoutException)
      {
        a("connection", paramn, new x());
      }
      catch (MalformedURLException localMalformedURLException)
      {
        throw new RuntimeException("Bad URL " + paramn.a(), localMalformedURLException);
      }
      catch (IOException localIOException)
      {
        if (localHttpResponse1 != null)
        {
          i = localHttpResponse1.getStatusLine().getStatusCode();
          if ((i != 301) && (i != 302)) {
            break label779;
          }
          z.c("Request at %s has been redirected to %s", new Object[] { paramn.b, paramn.a() });
          if (localObject4 == null) {
            break label850;
          }
          localk = new k(i, (byte[])localObject4, (Map)localObject3, false);
          if ((i != 401) && (i != 403)) {
            break label807;
          }
          a("auth", paramn, new com.android.volley.a(localk));
          break;
        }
        throw new l(localk);
      }
      label779:
      z.c("Unexpected response code %d for %s", new Object[] { Integer.valueOf(i), paramn.a() });
      continue;
      label807:
      if ((i == 301) || (i == 302))
      {
        a("redirect", paramn, new com.android.volley.a(localk));
        break;
      }
      throw new w(localk);
      label850:
      throw new j((byte)0);
      label859:
      if (i != 301) {
        if (i == 302)
        {
          continue;
          label878:
          if (i >= 200) {
            if (i > 299)
            {
              continue;
              label897:
              localObject5 = "null";
            }
          }
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\toolbox\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */