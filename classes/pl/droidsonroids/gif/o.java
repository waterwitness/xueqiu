package pl.droidsonroids.gif;

import android.os.SystemClock;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class o
  extends p
{
  o(b paramb)
  {
    super(paramb);
  }
  
  public final void a()
  {
    long l = this.c.f.a(this.c.e);
    int j;
    int i;
    if (l >= 0L)
    {
      this.c.c = (SystemClock.uptimeMillis() + l);
      if ((this.c.isVisible()) && (this.c.b) && (!this.c.h))
      {
        this.c.a.remove(this);
        this.c.j = this.c.a.schedule(this, l, TimeUnit.MILLISECONDS);
      }
      if ((!this.c.g.isEmpty()) && (this.c.f.i() == this.c.f.d - 1))
      {
        l locall = this.c.i;
        b localb = this.c;
        j = localb.f.j();
        i = j;
        if (j != 0)
        {
          if (j >= localb.f.e()) {
            break label238;
          }
          i = j;
        }
        locall.sendEmptyMessageAtTime(i, this.c.c);
      }
    }
    for (;;)
    {
      if ((this.c.isVisible()) && (!this.c.i.hasMessages(-1))) {
        this.c.i.sendEmptyMessageAtTime(-1, 0L);
      }
      return;
      label238:
      i = j - 1;
      break;
      this.c.c = Long.MIN_VALUE;
      this.c.b = false;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */