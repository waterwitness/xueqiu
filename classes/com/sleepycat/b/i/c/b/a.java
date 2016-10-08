package com.sleepycat.b.i.c.b;

import com.sleepycat.b.i.h.p;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;

public final class a
  extends TimerTask
{
  public final List<p> a = Collections.synchronizedList(new LinkedList());
  private final long b = 1000L;
  private long c = 0L;
  
  a(Timer paramTimer)
  {
    paramTimer.schedule(this, 1000L, 1000L);
  }
  
  public final void run()
  {
    this.c += 1000L;
    synchronized (this.a)
    {
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext()) {
        if (!((p)localIterator.next()).a(this.c)) {
          localIterator.remove();
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */