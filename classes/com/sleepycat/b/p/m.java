package com.sleepycat.b.p;

import com.sleepycat.b.o.a;
import java.util.Map;
import java.util.logging.ConsoleHandler;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.LogRecord;

public final class m
  extends ConsoleHandler
{
  private static final String a = a.class.getName() + ".level";
  
  public m()
  {
    Object localObject = w.a(a);
    if (localObject == null) {}
    for (localObject = Level.OFF;; localObject = Level.parse((String)localObject))
    {
      setLevel((Level)localObject);
      return;
    }
  }
  
  public final void publish(LogRecord paramLogRecord)
  {
    Formatter localFormatter = (Formatter)w.b.get(Thread.currentThread());
    if (localFormatter != null) {
      setFormatter(localFormatter);
    }
    super.publish(paramLogRecord);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */