package com.tencent.bugly.proguard;

import android.content.Context;
import com.tencent.bugly.crashreport.common.info.a;
import java.util.List;

public final class m
{
  private static m a = null;
  private static long b = System.currentTimeMillis();
  
  private m(Context paramContext) {}
  
  public static m a()
  {
    try
    {
      m localm = a;
      return localm;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static m a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new m(paramContext);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  private int b(int paramInt1, int paramInt2)
  {
    paramInt2 = 0;
    try
    {
      long l = d(1);
      paramInt1 = o.a().a(paramInt1, a.a().d, l);
      return paramInt1;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        w.a("clearHistoryCrashRecord failed", new Object[0]);
        paramInt1 = paramInt2;
      }
    }
    finally {}
  }
  
  private boolean b(int paramInt)
  {
    for (;;)
    {
      try
      {
        localObject1 = a.a().d;
        if (localObject1 != null) {
          continue;
        }
        w.a("process name is null", new Object[0]);
        bool = false;
      }
      catch (Exception localException)
      {
        Object localObject1;
        long l1;
        o localo;
        w.a("FrenquencyCrash failed", new Object[0]);
        boolean bool = false;
        continue;
      }
      finally {}
      return bool;
      l1 = d(0);
      localo = o.a();
      a.a().getClass();
      localObject1 = localo.a(paramInt, (String)localObject1, l1, "2.1.9");
      if (localObject1 == null)
      {
        bool = false;
      }
      else
      {
        if (((List)localObject1).size() >= 2) {
          break;
        }
        bool = false;
      }
    }
    for (;;)
    {
      if (paramInt + 1 < ((List)localObject1).size())
      {
        l1 = ((l)((List)localObject1).get(paramInt + 1)).c;
        long l2 = ((l)((List)localObject1).get(paramInt)).c;
        if (l1 - l2 < 86400000L)
        {
          bool = true;
          break;
        }
        paramInt += 1;
        continue;
      }
      bool = false;
      break;
      paramInt = 0;
    }
  }
  
  private l c(int paramInt)
  {
    Object localObject1 = null;
    for (;;)
    {
      try
      {
        localObject3 = a.a().d;
        if (localObject3 != null) {
          continue;
        }
        w.a("process name is null", new Object[0]);
      }
      catch (Exception localException)
      {
        Object localObject3;
        w.a("getLatestCrashRecord failed", new Object[0]);
        continue;
      }
      finally {}
      return (l)localObject1;
      localObject3 = o.a().a(paramInt, (String)localObject3);
      localObject1 = localObject3;
    }
  }
  
  /* Error */
  private long d(int paramInt)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 5
    //   3: aload_0
    //   4: monitorenter
    //   5: lload 5
    //   7: lstore_3
    //   8: iload_1
    //   9: tableswitch	default:+23->32, 0:+26->35, 1:+30->39
    //   32: lload 5
    //   34: lstore_3
    //   35: aload_0
    //   36: monitorexit
    //   37: lload_3
    //   38: lreturn
    //   39: invokestatic 18	java/lang/System:currentTimeMillis	()J
    //   42: lstore_3
    //   43: lload_3
    //   44: ldc2_w 87
    //   47: lsub
    //   48: lstore_3
    //   49: goto -14 -> 35
    //   52: astore_2
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_2
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	m
    //   0	57	1	paramInt	int
    //   52	4	2	localObject	Object
    //   7	42	3	l1	long
    //   1	32	5	l2	long
    // Exception table:
    //   from	to	target	type
    //   39	43	52	finally
  }
  
  public final boolean a(int paramInt)
  {
    boolean bool4 = true;
    boolean bool3 = true;
    boolean bool2 = bool4;
    for (;;)
    {
      try
      {
        l locall = c(paramInt);
        bool1 = bool3;
        if (locall != null)
        {
          bool1 = bool3;
          bool2 = bool4;
          if (System.currentTimeMillis() - locall.c <= 86400000L)
          {
            bool2 = bool4;
            if (b(paramInt)) {
              continue;
            }
            bool1 = bool3;
          }
        }
        bool2 = bool1;
        if (bool1)
        {
          bool2 = bool1;
          b(paramInt, 1);
          bool2 = bool1;
        }
      }
      catch (Exception localException)
      {
        boolean bool1;
        w.a("canInit failed", new Object[0]);
        continue;
      }
      finally {}
      return bool2;
      bool1 = false;
    }
  }
  
  public final boolean a(int paramInt1, int paramInt2)
  {
    boolean bool1 = false;
    try
    {
      l locall = new l();
      locall.a = 1004L;
      locall.b = a.a().d;
      locall.f = a.a().i;
      a.a().getClass();
      locall.e = "2.1.9";
      locall.d = paramInt2;
      locall.c = System.currentTimeMillis();
      locall.g = b;
      boolean bool2 = o.a().a(locall);
      bool1 = bool2;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        w.a("saveCrashRecord failed", new Object[0]);
      }
    }
    finally {}
    return bool1;
  }
  
  public final int b()
  {
    int i = 0;
    try
    {
      o localo = o.a();
      a.a().getClass();
      int j = localo.b();
      i = j;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        w.a("clearInvalidCrashRecord failed", new Object[0]);
      }
    }
    finally {}
    return i;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */