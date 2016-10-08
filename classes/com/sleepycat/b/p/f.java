package com.sleepycat.b.p;

import com.sleepycat.b.c.ad;
import java.util.Map;
import java.util.logging.Handler;
import java.util.logging.LogRecord;

public final class f
  extends Handler
{
  private static Handler a()
  {
    ad localad = (ad)w.a.get(Thread.currentThread());
    if (localad == null) {
      return null;
    }
    return localad.W;
  }
  
  public final void close()
  {
    Handler localHandler = a();
    if (localHandler != null) {
      localHandler.close();
    }
  }
  
  public final void flush()
  {
    Handler localHandler = a();
    if (localHandler != null) {
      localHandler.flush();
    }
  }
  
  public final void publish(LogRecord paramLogRecord)
  {
    Handler localHandler = a();
    if ((localHandler != null) && (localHandler.isLoggable(paramLogRecord))) {
      localHandler.publish(paramLogRecord);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */