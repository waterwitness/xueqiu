package com.sleepycat.b.p;

import com.sleepycat.b.c.ad;
import java.util.Map;
import java.util.logging.ConsoleHandler;
import java.util.logging.LogRecord;

public final class g
  extends ConsoleHandler
{
  public final void publish(LogRecord paramLogRecord)
  {
    ad localad = (ad)w.a.get(Thread.currentThread());
    if (localad == null)
    {
      super.publish(paramLogRecord);
      return;
    }
    if (localad.U == null)
    {
      super.publish(paramLogRecord);
      return;
    }
    localad.U.publish(paramLogRecord);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */