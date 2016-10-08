package rx.d.b;

import java.lang.reflect.Method;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import rx.g.d;
import rx.g.e;
import rx.h;
import rx.j;
import rx.j.g;

public class a
  extends h
  implements j
{
  volatile boolean a;
  private final ScheduledExecutorService b;
  private final e c;
  
  public a(ThreadFactory paramThreadFactory)
  {
    this.b = Executors.newScheduledThreadPool(1, paramThreadFactory);
    paramThreadFactory = this.b.getClass().getMethods();
    int j = paramThreadFactory.length;
    int i = 0;
    for (;;)
    {
      Object localObject;
      if (i < j)
      {
        localObject = paramThreadFactory[i];
        if ((!((Method)localObject).getName().equals("setRemoveOnCancelPolicy")) || (((Method)localObject).getParameterTypes().length != 1) || (localObject.getParameterTypes()[0] != Boolean.TYPE)) {}
      }
      else
      {
        try
        {
          ((Method)localObject).invoke(this.b, new Object[] { Boolean.valueOf(true) });
          this.c = d.a().c();
          return;
        }
        catch (Exception paramThreadFactory)
        {
          for (;;)
          {
            d.a().b();
          }
        }
      }
      i += 1;
    }
  }
  
  public final j a(rx.c.a parama)
  {
    return a(parama, 0L, null);
  }
  
  public final j a(rx.c.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (this.a) {
      return g.b();
    }
    return b(parama, paramLong, paramTimeUnit);
  }
  
  public final b b(rx.c.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    b localb = new b(e.a(parama));
    if (paramLong <= 0L) {}
    for (parama = this.b.submit(localb);; parama = this.b.schedule(localb, paramLong, paramTimeUnit))
    {
      localb.a.a(new c(localb, parama, (byte)0));
      return localb;
    }
  }
  
  public final void b()
  {
    this.a = true;
    this.b.shutdownNow();
  }
  
  public final boolean c()
  {
    return this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */