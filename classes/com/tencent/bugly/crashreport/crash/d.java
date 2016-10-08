package com.tencent.bugly.crashreport.crash;

import android.content.Context;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.h5.b;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.y;
import com.tencent.bugly.proguard.z;
import java.util.Map;

public final class d
{
  private static z a;
  private static y b;
  private static b c;
  
  public static void a(Context paramContext)
  {
    c localc = c.a();
    if (localc == null) {
      return;
    }
    a = new z(paramContext, localc.k, com.tencent.bugly.crashreport.common.strategy.a.a(), com.tencent.bugly.crashreport.common.info.a.a(), localc.l);
    b = new y(paramContext, localc.k, com.tencent.bugly.crashreport.common.strategy.a.a(), com.tencent.bugly.crashreport.common.info.a.a(), localc.l);
    c = new b(paramContext, localc.k, com.tencent.bugly.crashreport.common.strategy.a.a(), com.tencent.bugly.crashreport.common.info.a.a(), localc.l);
    v.a().b(new Runnable()
    {
      public final void run() {}
    });
  }
  
  public static void a(StrategyBean paramStrategyBean)
  {
    if (b != null) {
      boolean bool = paramStrategyBean.h;
    }
  }
  
  public static void a(Thread paramThread, final int paramInt, final String paramString1, final String paramString2, final String paramString3)
  {
    if (b == null) {
      return;
    }
    v.a().b(new Runnable()
    {
      public final void run()
      {
        try
        {
          d.c().a(d.this, paramInt, paramString1, paramString2, paramString3);
          return;
        }
        catch (Throwable localThrowable)
        {
          if (w.b(localThrowable) != true) {
            localThrowable.printStackTrace();
          }
          w.e("cocos2d-x crash error %s %s %s", new Object[] { paramString1, paramString2, paramString3 });
        }
      }
    });
  }
  
  public static void a(Thread paramThread, final String paramString1, final String paramString2, final String paramString3)
  {
    if (a == null) {
      return;
    }
    v.a().b(new Runnable()
    {
      public final void run()
      {
        try
        {
          d.b().a(d.this, paramString1, paramString2, paramString3);
          return;
        }
        catch (Throwable localThrowable)
        {
          if (w.b(localThrowable) != true) {
            localThrowable.printStackTrace();
          }
          w.e("u3d crash error %s %s %s", new Object[] { paramString1, paramString2, paramString3 });
        }
      }
    });
  }
  
  public static void a(Thread paramThread, final String paramString1, final String paramString2, final String paramString3, final Map<String, String> paramMap)
  {
    if (c == null) {
      return;
    }
    v.a().b(new Runnable()
    {
      public final void run()
      {
        try
        {
          d.d().a(d.this, paramString1, paramString2, paramString3, paramMap);
          return;
        }
        catch (Throwable localThrowable)
        {
          if (w.b(localThrowable) != true) {
            localThrowable.printStackTrace();
          }
          w.e("H5 crash error %s %s %s", new Object[] { paramString1, paramString2, paramString3 });
        }
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */