package com.xueqiu.android.base;

import android.app.Application;
import android.content.Context;
import com.tencent.bugly.crashreport.CrashReport;
import com.tencent.bugly.crashreport.CrashReport.UserStrategy;
import com.xueqiu.android.base.util.ag;
import com.xueqiu.android.base.util.ax;
import com.xueqiu.android.base.util.c;
import com.xueqiu.android.base.util.v;
import java.util.concurrent.TimeUnit;
import rx.c.a;
import rx.h;

public class SnowBallApplication
  extends Application
{
  public static long a = 0L;
  private static boolean b = false;
  
  public static boolean a()
  {
    return b;
  }
  
  private void onCreateProxy()
  {
    try
    {
      a = System.currentTimeMillis();
      CrashReport.UserStrategy localUserStrategy = new CrashReport.UserStrategy(this);
      localUserStrategy.setCrashHandleCallback(new c(this));
      if ("release".equalsIgnoreCase("release")) {}
      for (String str = "900004761";; str = "900027044")
      {
        CrashReport.initCrashReport(this, str, false, localUserStrategy);
        long l = System.currentTimeMillis();
        b.a(this);
        ag.c.a(new a()
        {
          public final void a()
          {
            try
            {
              long l = System.currentTimeMillis();
              b.a().b();
              SnowBallApplication.b();
              v.a("SnowBallApplication", "init app base components waste " + (System.currentTimeMillis() - l) + " ms");
              return;
            }
            catch (Throwable localThrowable)
            {
              n.a(SnowBallApplication.this.getApplicationContext());
              ag.d.a(new a()
              {
                public final void a()
                {
                  throw localThrowable;
                }
              }, 2L, TimeUnit.SECONDS);
            }
          }
        });
        ax.a();
        v.c("SnowBallApplication", "snowball app launched");
        v.a("SnowBallApplication", String.format("Application onCreate in: %dms", new Object[] { Long.valueOf(System.currentTimeMillis() - l) }));
        return;
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      n.a(getApplicationContext());
      ag.d.a(new a()
      {
        public final void a()
        {
          throw localThrowable;
        }
      }, 2L, TimeUnit.SECONDS);
    }
  }
  
  protected void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
    l.a();
    l.b();
  }
  
  public void onCreate()
  {
    super.onCreate();
    n.b(this).a();
    onCreateProxy();
  }
  
  public void onLowMemory()
  {
    super.onLowMemory();
    b.a();
    b.g();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\SnowBallApplication.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */