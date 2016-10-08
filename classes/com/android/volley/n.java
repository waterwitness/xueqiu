package com.android.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;

public abstract class n<T>
  implements Comparable<n<T>>
{
  public final int a;
  public final String b;
  public String c;
  final int d;
  Integer e;
  p f;
  public boolean g;
  public boolean h;
  public boolean i;
  public v j;
  public c k;
  private final aa l;
  private final s m;
  private long n;
  
  public n(int paramInt, String paramString, s params)
  {
    aa localaa;
    if (aa.a)
    {
      localaa = new aa();
      this.l = localaa;
      this.g = true;
      this.h = false;
      this.i = false;
      this.n = 0L;
      this.k = null;
      this.a = paramInt;
      this.b = paramString;
      this.m = params;
      this.j = new e();
      if (TextUtils.isEmpty(paramString)) {
        break label118;
      }
      paramString = Uri.parse(paramString);
      if (paramString == null) {
        break label118;
      }
      paramString = paramString.getHost();
      if (paramString == null) {
        break label118;
      }
    }
    label118:
    for (paramInt = paramString.hashCode();; paramInt = 0)
    {
      this.d = paramInt;
      return;
      localaa = null;
      break;
    }
  }
  
  public static byte[] a(Map<String, String> paramMap, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    try
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        localStringBuilder.append(URLEncoder.encode((String)localEntry.getKey(), paramString));
        localStringBuilder.append('=');
        localStringBuilder.append(URLEncoder.encode((String)localEntry.getValue(), paramString));
        localStringBuilder.append('&');
      }
      paramMap = localStringBuilder.toString().getBytes(paramString);
    }
    catch (UnsupportedEncodingException paramMap)
    {
      throw new RuntimeException("Encoding not supported: " + paramString, paramMap);
    }
    return paramMap;
  }
  
  public abstract r<T> a(k paramk);
  
  public y a(y paramy)
  {
    return paramy;
  }
  
  public final String a()
  {
    if (this.c != null) {
      return this.c;
    }
    return this.b;
  }
  
  public abstract void a(T paramT);
  
  public void a(String paramString)
  {
    if (aa.a) {
      this.l.a(paramString, Thread.currentThread().getId());
    }
    while (this.n != 0L) {
      return;
    }
    this.n = SystemClock.elapsedRealtime();
  }
  
  public String b()
  {
    return a();
  }
  
  public void b(y paramy)
  {
    if (this.m != null) {
      this.m.a(paramy);
    }
  }
  
  final void b(final String paramString)
  {
    p localp;
    if (this.f != null)
    {
      localp = this.f;
      synchronized (localp.b)
      {
        localp.b.remove(this);
        if (!this.g) {}
      }
    }
    final long l1;
    label199:
    do
    {
      synchronized (localp.a)
      {
        String str = b();
        Queue localQueue = (Queue)localp.a.remove(str);
        if (localQueue != null)
        {
          if (z.b) {
            z.a("Releasing %d waiting requests for cacheKey=%s.", new Object[] { Integer.valueOf(localQueue.size()), str });
          }
          localp.c.addAll(localQueue);
        }
        if (!aa.a) {
          break label199;
        }
        l1 = Thread.currentThread().getId();
        if (Looper.myLooper() != Looper.getMainLooper())
        {
          new Handler(Looper.getMainLooper()).post(new Runnable()
          {
            public final void run()
            {
              n.a(n.this).a(paramString, l1);
              n.a(n.this).a(toString());
            }
          });
          return;
          paramString = finally;
          throw paramString;
        }
      }
      this.l.a(paramString, l1);
      this.l.a(toString());
      return;
      l1 = SystemClock.elapsedRealtime() - this.n;
    } while (l1 < 3000L);
    z.b("%d ms: %s", new Object[] { Long.valueOf(l1), toString() });
  }
  
  public Map<String, String> c()
  {
    return Collections.emptyMap();
  }
  
  public Map<String, String> d()
  {
    return null;
  }
  
  public String e()
  {
    return "application/x-www-form-urlencoded; charset=UTF-8";
  }
  
  public byte[] f()
  {
    Map localMap = d();
    if ((localMap != null) && (localMap.size() > 0)) {
      return a(localMap, "UTF-8");
    }
    return null;
  }
  
  public o g()
  {
    return o.b;
  }
  
  public final int h()
  {
    return this.j.a();
  }
  
  public String toString()
  {
    String str2 = "0x" + Integer.toHexString(this.d);
    StringBuilder localStringBuilder = new StringBuilder();
    if (this.h) {}
    for (String str1 = "[X] ";; str1 = "[ ] ") {
      return str1 + a() + " " + str2 + " " + g() + " " + this.e;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */