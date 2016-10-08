package com.flurry.sdk;

import android.content.Context;
import android.os.SystemClock;
import java.lang.ref.WeakReference;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;

public class jr
{
  private static final String a = jr.class.getSimpleName();
  private final kb<lg> b = new kb()
  {
    public void a(lg paramAnonymouslg)
    {
      if ((jr.a(jr.this) != null) && (paramAnonymouslg.b != jr.a(jr.this).get())) {
        return;
      }
      switch (jr.4.a[paramAnonymouslg.c.ordinal()])
      {
      default: 
        return;
      case 1: 
        jr.this.a(paramAnonymouslg.b, (Context)paramAnonymouslg.a.get());
        return;
      case 2: 
        jr.this.a((Context)paramAnonymouslg.a.get());
        return;
      case 3: 
        jr.this.b((Context)paramAnonymouslg.a.get());
        return;
      }
      kc.a().b("com.flurry.android.sdk.FlurrySessionEvent", jr.b(jr.this));
      jr.this.a();
    }
  };
  private WeakReference<lf> c;
  private volatile long d = 0L;
  private volatile long e = 0L;
  private volatile long f = -1L;
  private volatile long g = 0L;
  private volatile long h = 0L;
  private String i;
  private String j;
  private Map<String, String> k;
  
  public jr()
  {
    kc.a().a("com.flurry.android.sdk.FlurrySessionEvent", this.b);
    this.k = new LinkedHashMap()
    {
      protected boolean removeEldestEntry(Map.Entry<String, String> paramAnonymousEntry)
      {
        return size() > 10;
      }
    };
  }
  
  private void b(lf paramlf, Context paramContext)
  {
    if ((paramlf == null) || (paramContext == null))
    {
      kg.a(3, a, "Flurry session id cannot be created.");
      return;
    }
    kg.a(3, a, "Flurry session id started:" + this.d);
    lg locallg = new lg();
    locallg.a = new WeakReference(paramContext);
    locallg.b = paramlf;
    locallg.c = lg.a.b;
    locallg.b();
  }
  
  public void a() {}
  
  public void a(Context paramContext)
  {
    long l1 = lh.a().c();
    if (l1 > 0L)
    {
      long l2 = this.g;
      this.g = (System.currentTimeMillis() - l1 + l2);
    }
  }
  
  public void a(lf paramlf, Context paramContext)
  {
    this.c = new WeakReference(paramlf);
    this.d = System.currentTimeMillis();
    this.e = SystemClock.elapsedRealtime();
    b(paramlf, paramContext);
    js.a().b(new ly()
    {
      public void a()
      {
        jj.a().c();
      }
    });
  }
  
  public void a(String paramString)
  {
    try
    {
      this.i = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    try
    {
      this.k.put(paramString1, paramString2);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  public String b()
  {
    return Long.toString(this.d);
  }
  
  public void b(Context paramContext)
  {
    this.f = (SystemClock.elapsedRealtime() - this.e);
  }
  
  public void b(String paramString)
  {
    try
    {
      this.j = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public long c()
  {
    return this.d;
  }
  
  public long d()
  {
    return this.e;
  }
  
  public long e()
  {
    return this.f;
  }
  
  public long f()
  {
    return this.g;
  }
  
  /* Error */
  public long g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 142	android/os/SystemClock:elapsedRealtime	()J
    //   5: aload_0
    //   6: getfield 54	com/flurry/sdk/jr:e	J
    //   9: lsub
    //   10: lstore_2
    //   11: lload_2
    //   12: aload_0
    //   13: getfield 62	com/flurry/sdk/jr:h	J
    //   16: lcmp
    //   17: ifle +17 -> 34
    //   20: aload_0
    //   21: lload_2
    //   22: putfield 62	com/flurry/sdk/jr:h	J
    //   25: aload_0
    //   26: getfield 62	com/flurry/sdk/jr:h	J
    //   29: lstore_2
    //   30: aload_0
    //   31: monitorexit
    //   32: lload_2
    //   33: lreturn
    //   34: aload_0
    //   35: getfield 62	com/flurry/sdk/jr:h	J
    //   38: lconst_1
    //   39: ladd
    //   40: lstore_2
    //   41: aload_0
    //   42: lload_2
    //   43: putfield 62	com/flurry/sdk/jr:h	J
    //   46: goto -26 -> 20
    //   49: astore_1
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_1
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	jr
    //   49	4	1	localObject	Object
    //   10	33	2	l	long
    // Exception table:
    //   from	to	target	type
    //   2	20	49	finally
    //   20	30	49	finally
    //   34	46	49	finally
  }
  
  public String h()
  {
    try
    {
      String str = this.i;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String i()
  {
    try
    {
      String str = this.j;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public Map<String, String> j()
  {
    try
    {
      Map localMap = this.k;
      return localMap;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\jr.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */