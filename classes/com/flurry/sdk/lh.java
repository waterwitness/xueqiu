package com.flurry.sdk;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.WeakHashMap;

public class lh
  implements ll.a
{
  private static lh a;
  private static final String b = lh.class.getSimpleName();
  private final Map<Context, lf> c = new WeakHashMap();
  private final li d = new li();
  private final Object e = new Object();
  private long f;
  private long g;
  private lf h;
  private kb<lj> i = new kb()
  {
    public void a(lj paramAnonymouslj)
    {
      lh.a(lh.this);
    }
  };
  private kb<jv> j = new kb()
  {
    public void a(jv paramAnonymousjv)
    {
      switch (lh.5.a[paramAnonymousjv.b.ordinal()])
      {
      default: 
        return;
      case 1: 
        kg.a(3, lh.h(), "Automatic onStartSession for context:" + paramAnonymousjv.a);
        lh.a(lh.this, paramAnonymousjv.a);
        return;
      case 2: 
        kg.a(3, lh.h(), "Automatic onEndSession for context:" + paramAnonymousjv.a);
        lh.this.d(paramAnonymousjv.a);
        return;
      }
      kg.a(3, lh.h(), "Automatic onEndSession (destroyed) for context:" + paramAnonymousjv.a);
      lh.this.d(paramAnonymousjv.a);
    }
  };
  
  private lh()
  {
    lk locallk = lk.a();
    this.f = 0L;
    this.g = ((Long)locallk.a("ContinueSessionMillis")).longValue();
    locallk.a("ContinueSessionMillis", this);
    kg.a(4, b, "initSettings, ContinueSessionMillis = " + this.g);
    kc.a().a("com.flurry.android.sdk.ActivityLifecycleEvent", this.j);
    kc.a().a("com.flurry.android.sdk.FlurrySessionTimerEvent", this.i);
  }
  
  public static lh a()
  {
    try
    {
      if (a == null) {
        a = new lh();
      }
      lh locallh = a;
      return locallh;
    }
    finally {}
  }
  
  private void a(lf paramlf)
  {
    synchronized (this.e)
    {
      this.h = paramlf;
      return;
    }
  }
  
  public static void b()
  {
    try
    {
      if (a != null)
      {
        kc.a().a(a.i);
        kc.a().a(a.j);
        lk.a().b("ContinueSessionMillis", a);
      }
      a = null;
      return;
    }
    finally {}
  }
  
  private void b(lf paramlf)
  {
    synchronized (this.e)
    {
      if (this.h == paramlf) {
        this.h = null;
      }
      return;
    }
  }
  
  private void e(Context paramContext)
  {
    for (;;)
    {
      try
      {
        if ((lf)this.c.get(paramContext) != null)
        {
          if (jw.a().c())
          {
            kg.a(3, b, "Session already started with context:" + paramContext);
            return;
          }
          kg.e(b, "Session already started with context:" + paramContext);
          continue;
        }
        this.d.a();
      }
      finally {}
      Object localObject2 = e();
      Object localObject1 = localObject2;
      if (localObject2 == null)
      {
        localObject1 = new lf();
        kg.e(b, "Flurry session started for context:" + paramContext);
        localObject2 = new lg();
        ((lg)localObject2).a = new WeakReference(paramContext);
        ((lg)localObject2).b = ((lf)localObject1);
        ((lg)localObject2).c = lg.a.a;
        ((lg)localObject2).b();
      }
      this.c.put(paramContext, localObject1);
      a((lf)localObject1);
      kg.e(b, "Flurry session resumed for context:" + paramContext);
      localObject2 = new lg();
      ((lg)localObject2).a = new WeakReference(paramContext);
      ((lg)localObject2).b = ((lf)localObject1);
      ((lg)localObject2).c = lg.a.c;
      ((lg)localObject2).b();
      this.f = 0L;
    }
  }
  
  private void i()
  {
    for (;;)
    {
      try
      {
        int k = d();
        if (k > 0)
        {
          kg.a(5, b, "Session cannot be finalized, sessionContextCount:" + k);
          return;
        }
        lf locallf1 = e();
        if (locallf1 == null)
        {
          kg.a(5, b, "Session cannot be finalized, current session not found");
          continue;
        }
        kg.e(b, "Flurry session ended");
      }
      finally {}
      lg locallg = new lg();
      locallg.b = locallf2;
      locallg.c = lg.a.e;
      locallg.d = je.a().d();
      locallg.b();
      js.a().b(new ly()
      {
        public void a()
        {
          lh.a(lh.this, locallf2);
        }
      });
    }
  }
  
  /* Error */
  public void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: instanceof 247
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 162	com/flurry/sdk/jw:a	()Lcom/flurry/sdk/jw;
    //   17: invokevirtual 165	com/flurry/sdk/jw:c	()Z
    //   20: ifeq -9 -> 11
    //   23: iconst_3
    //   24: getstatic 47	com/flurry/sdk/lh:b	Ljava/lang/String;
    //   27: new 98	java/lang/StringBuilder
    //   30: dup
    //   31: ldc -7
    //   33: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   36: aload_1
    //   37: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokestatic 115	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   46: aload_0
    //   47: aload_1
    //   48: invokespecial 140	com/flurry/sdk/lh:e	(Landroid/content/Context;)V
    //   51: goto -40 -> 11
    //   54: astore_1
    //   55: aload_0
    //   56: monitorexit
    //   57: aload_1
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	lh
    //   0	59	1	paramContext	Context
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	54	finally
    //   14	51	54	finally
  }
  
  public void a(String paramString, Object paramObject)
  {
    if (paramString.equals("ContinueSessionMillis"))
    {
      this.g = ((Long)paramObject).longValue();
      kg.a(4, b, "onSettingUpdate, ContinueSessionMillis = " + this.g);
      return;
    }
    kg.a(6, b, "onSettingUpdate internal error!");
  }
  
  /* Error */
  public void b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 162	com/flurry/sdk/jw:a	()Lcom/flurry/sdk/jw;
    //   5: invokevirtual 165	com/flurry/sdk/jw:c	()Z
    //   8: ifeq +15 -> 23
    //   11: aload_1
    //   12: instanceof 247
    //   15: istore_2
    //   16: iload_2
    //   17: ifeq +6 -> 23
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: iconst_3
    //   24: getstatic 47	com/flurry/sdk/lh:b	Ljava/lang/String;
    //   27: new 98	java/lang/StringBuilder
    //   30: dup
    //   31: ldc_w 262
    //   34: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: aload_1
    //   38: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokestatic 115	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   47: aload_0
    //   48: aload_1
    //   49: invokespecial 140	com/flurry/sdk/lh:e	(Landroid/content/Context;)V
    //   52: goto -32 -> 20
    //   55: astore_1
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_1
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	lh
    //   0	60	1	paramContext	Context
    //   15	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	16	55	finally
    //   23	52	55	finally
  }
  
  public long c()
  {
    return this.f;
  }
  
  /* Error */
  public void c(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 162	com/flurry/sdk/jw:a	()Lcom/flurry/sdk/jw;
    //   5: invokevirtual 165	com/flurry/sdk/jw:c	()Z
    //   8: ifeq +15 -> 23
    //   11: aload_1
    //   12: instanceof 247
    //   15: istore_2
    //   16: iload_2
    //   17: ifeq +6 -> 23
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: iconst_3
    //   24: getstatic 47	com/flurry/sdk/lh:b	Ljava/lang/String;
    //   27: new 98	java/lang/StringBuilder
    //   30: dup
    //   31: ldc_w 264
    //   34: invokespecial 103	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: aload_1
    //   38: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   41: invokevirtual 110	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   44: invokestatic 115	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   47: aload_0
    //   48: aload_1
    //   49: invokevirtual 266	com/flurry/sdk/lh:d	(Landroid/content/Context;)V
    //   52: goto -32 -> 20
    //   55: astore_1
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_1
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	lh
    //   0	60	1	paramContext	Context
    //   15	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	16	55	finally
    //   23	52	55	finally
  }
  
  public int d()
  {
    try
    {
      int k = this.c.size();
      return k;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void d(Context paramContext)
  {
    for (;;)
    {
      lf locallf;
      try
      {
        locallf = (lf)this.c.remove(paramContext);
        if (locallf == null)
        {
          if (jw.a().c())
          {
            kg.a(3, b, "Session cannot be ended, session not found for context:" + paramContext);
            return;
          }
          kg.e(b, "Session cannot be ended, session not found for context:" + paramContext);
          continue;
        }
        kg.e(b, "Flurry session paused for context:" + paramContext);
      }
      finally {}
      lg locallg = new lg();
      locallg.a = new WeakReference(paramContext);
      locallg.b = locallf;
      locallg.d = je.a().d();
      locallg.c = lg.a.d;
      locallg.b();
      if (d() == 0)
      {
        this.d.a(this.g);
        this.f = System.currentTimeMillis();
      }
      else
      {
        this.f = 0L;
      }
    }
  }
  
  public lf e()
  {
    synchronized (this.e)
    {
      lf locallf = this.h;
      return locallf;
    }
  }
  
  /* Error */
  public boolean f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokevirtual 178	com/flurry/sdk/lh:e	()Lcom/flurry/sdk/lf;
    //   6: ifnonnull +19 -> 25
    //   9: iconst_2
    //   10: getstatic 47	com/flurry/sdk/lh:b	Ljava/lang/String;
    //   13: ldc_w 288
    //   16: invokestatic 115	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   19: iconst_0
    //   20: istore_2
    //   21: aload_0
    //   22: monitorexit
    //   23: iload_2
    //   24: ireturn
    //   25: iconst_1
    //   26: istore_2
    //   27: goto -6 -> 21
    //   30: astore_1
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_1
    //   34: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	this	lh
    //   30	4	1	localObject	Object
    //   20	7	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	19	30	finally
  }
  
  public void g()
  {
    try
    {
      Iterator localIterator = this.c.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        lg locallg = new lg();
        locallg.a = new WeakReference(localEntry.getKey());
        locallg.b = ((lf)localEntry.getValue());
        locallg.c = lg.a.d;
        locallg.d = je.a().d();
        locallg.b();
      }
      this.c.clear();
    }
    finally {}
    js.a().b(new ly()
    {
      public void a()
      {
        lh.a(lh.this);
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\lh.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */