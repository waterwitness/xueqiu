package rx.d.c;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;

public final class g
  implements ThreadFactory
{
  static final AtomicLongFieldUpdater<g> c = AtomicLongFieldUpdater.newUpdater(g.class, "b");
  final String a;
  volatile long b;
  
  public g(String paramString)
  {
    this.a = paramString;
  }
  
  public final Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new Thread(paramRunnable, this.a + c.incrementAndGet(this));
    paramRunnable.setDaemon(true);
    return paramRunnable;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */