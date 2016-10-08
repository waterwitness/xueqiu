package rx.h;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import rx.d.c.g;

final class l
{
  private static final g a = new g("RxScheduledExecutorPool-");
  private static final l b = new l();
  private final ScheduledExecutorService c;
  
  private l()
  {
    int k = Runtime.getRuntime().availableProcessors();
    int i = k;
    if (k > 4) {
      i = k / 2;
    }
    if (i > 8) {
      i = j;
    }
    for (;;)
    {
      this.c = Executors.newScheduledThreadPool(i, a);
      return;
    }
  }
  
  public static ScheduledExecutorService a()
  {
    return b.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\h\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */