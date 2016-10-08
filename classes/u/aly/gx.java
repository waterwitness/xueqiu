package u.aly;

import com.umeng.analytics.AnalyticsConfig;

public final class gx
  implements Thread.UncaughtExceptionHandler
{
  public he a;
  private Thread.UncaughtExceptionHandler b;
  
  public gx()
  {
    if (Thread.getDefaultUncaughtExceptionHandler() == this) {
      return;
    }
    this.b = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }
  
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (AnalyticsConfig.CATCH_EXCEPTION) {
      this.a.a(paramThrowable);
    }
    for (;;)
    {
      if ((this.b != null) && (this.b != Thread.getDefaultUncaughtExceptionHandler())) {
        this.b.uncaughtException(paramThread, paramThrowable);
      }
      return;
      this.a.a(null);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\gx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */