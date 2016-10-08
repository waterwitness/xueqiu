package com.sleepycat.b.p;

import com.sleepycat.b.c.ad;
import java.util.Map;
import java.util.logging.FileHandler;
import java.util.logging.Handler;
import java.util.logging.LogRecord;

public final class k
  extends Handler
{
  public final void close() {}
  
  public final void flush() {}
  
  public final void publish(LogRecord paramLogRecord)
  {
    ad localad = (ad)w.a.get(Thread.currentThread());
    if (localad == null) {}
    while (localad.V == null) {
      return;
    }
    localad.V.publish(paramLogRecord);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */