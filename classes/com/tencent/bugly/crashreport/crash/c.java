package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import com.tencent.bugly.BuglyStrategy.a;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler;
import com.tencent.bugly.proguard.n;
import com.tencent.bugly.proguard.o;
import com.tencent.bugly.proguard.q;
import com.tencent.bugly.proguard.t;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class c
{
  public static int a = 0;
  public static boolean b = false;
  public static boolean c = true;
  public static int d = 20000;
  public static int e = 20000;
  public static long f = 604800000L;
  public static String g = null;
  public static boolean h = false;
  public static String i = null;
  public static int j = 5000;
  private static c n;
  public final b k;
  public BuglyStrategy.a l;
  private final Context m;
  private final e o;
  private final NativeCrashHandler p;
  private com.tencent.bugly.crashreport.common.strategy.a q;
  private v r;
  private final com.tencent.bugly.crashreport.crash.anr.b s;
  private Boolean t;
  
  private c(int paramInt, Context paramContext, v paramv, boolean paramBoolean, BuglyStrategy.a parama, n paramn, String paramString)
  {
    a = paramInt;
    Object localObject1;
    if (paramContext == null) {
      localObject1 = paramContext;
    }
    for (;;)
    {
      this.m = ((Context)localObject1);
      this.q = com.tencent.bugly.crashreport.common.strategy.a.a();
      paramContext = t.a();
      Object localObject2 = o.a();
      com.tencent.bugly.crashreport.common.info.a locala = com.tencent.bugly.crashreport.common.info.a.a((Context)localObject1);
      this.r = paramv;
      this.l = parama;
      this.k = new b(paramInt, (Context)localObject1, paramContext, (o)localObject2, this.q, parama, paramn);
      this.o = new e((Context)localObject1, this.k, this.q, locala);
      this.p = NativeCrashHandler.getInstance((Context)localObject1, locala, this.k, this.q, paramv, paramBoolean, paramString);
      this.s = new com.tencent.bugly.crashreport.crash.anr.b((Context)localObject1, this.q, locala, paramv, this.k);
      paramContext = BuglyBroadcastRecevier.getInstance();
      paramContext.addFilter("android.net.conn.CONNECTIVITY_CHANGE");
      paramContext.regist((Context)localObject1, this.k);
      return;
      localObject2 = paramContext.getApplicationContext();
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = paramContext;
      }
    }
  }
  
  public static c a()
  {
    return n;
  }
  
  public static void a(int paramInt, Context paramContext, boolean paramBoolean, BuglyStrategy.a parama, n paramn, String paramString)
  {
    try
    {
      if (n == null) {
        n = new c(1004, paramContext, v.a(), paramBoolean, parama, null, null);
      }
      return;
    }
    finally
    {
      paramContext = finally;
      throw paramContext;
    }
  }
  
  public final void a(long paramLong)
  {
    v.a().a(new Thread()
    {
      public final void run()
      {
        if (!com.tencent.bugly.proguard.a.a(c.b(c.this), "local_crash_lock", 10000L)) {
          return;
        }
        List localList = c.this.k.a();
        if ((localList != null) && (localList.size() > 0))
        {
          int j = localList.size();
          if (j > 100L)
          {
            ArrayList localArrayList = new ArrayList();
            Collections.sort(localList);
            int i = 0;
            for (;;)
            {
              localObject = localArrayList;
              if (i >= 100L) {
                break;
              }
              localArrayList.add(localList.get(j - 1 - i));
              i += 1;
            }
          }
          Object localObject = localList;
          c.this.k.a((List)localObject, 0L, false);
        }
        com.tencent.bugly.proguard.a.b(c.b(c.this), "local_crash_lock");
      }
    }, paramLong);
  }
  
  public final void a(StrategyBean paramStrategyBean)
  {
    this.o.a(paramStrategyBean);
    this.p.onStrategyChanged(paramStrategyBean);
    this.s.a(paramStrategyBean);
  }
  
  public final void a(CrashDetailBean paramCrashDetailBean)
  {
    this.k.c(paramCrashDetailBean);
  }
  
  public final void a(final Thread paramThread, final Throwable paramThrowable, boolean paramBoolean, String paramString, byte[] paramArrayOfByte)
  {
    this.r.b(new Runnable()
    {
      public final void run()
      {
        try
        {
          w.c("post a throwable %b", new Object[] { Boolean.valueOf(this.a) });
          c.a(c.this).a(paramThread, paramThrowable, false, this.d, this.e);
          return;
        }
        catch (Throwable localThrowable)
        {
          if (w.b(localThrowable) != true) {
            localThrowable.printStackTrace();
          }
          w.e("java catch error: %s", new Object[] { paramThrowable.toString() });
        }
      }
    });
  }
  
  public final boolean b()
  {
    Object localObject1 = this.t;
    if (localObject1 != null) {
      return ((Boolean)localObject1).booleanValue();
    }
    localObject1 = com.tencent.bugly.crashreport.common.info.a.a().d;
    Object localObject2 = o.a().a(1);
    ArrayList localArrayList = new ArrayList();
    if ((localObject2 != null) && (((List)localObject2).size() > 0))
    {
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        q localq = (q)((Iterator)localObject2).next();
        if (((String)localObject1).equals(localq.c))
        {
          this.t = Boolean.valueOf(true);
          localArrayList.add(localq);
        }
      }
      if (localArrayList.size() > 0)
      {
        o.a();
        o.a(localArrayList);
      }
      return true;
    }
    this.t = Boolean.valueOf(false);
    return false;
  }
  
  public final void c()
  {
    try
    {
      this.o.a();
      this.p.setUserOpened(true);
      this.s.a(true);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void d()
  {
    try
    {
      this.o.b();
      this.p.setUserOpened(false);
      this.s.a(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void e()
  {
    this.o.a();
  }
  
  public final void f()
  {
    this.p.setUserOpened(false);
  }
  
  public final void g()
  {
    this.p.setUserOpened(true);
  }
  
  public final void h()
  {
    this.s.a(true);
  }
  
  public final void i()
  {
    this.s.a(false);
  }
  
  public final void j()
  {
    try
    {
      this.p.testNativeCrash();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void k()
  {
    int i1 = 0;
    for (;;)
    {
      int i2 = i1 + 1;
      if (i1 < 30) {}
      try
      {
        w.a("try main sleep for make a test anr! try:%d/30 , kill it if you don't want to wait!", new Object[] { Integer.valueOf(i2) });
        try
        {
          Thread.sleep(5000L);
          i1 = i2;
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
          i1 = i2;
        }
      }
      catch (Throwable localThrowable)
      {
        if (!w.a(localThrowable)) {
          localThrowable.printStackTrace();
        }
        return;
      }
      finally {}
    }
  }
  
  public final boolean l()
  {
    return this.s.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */