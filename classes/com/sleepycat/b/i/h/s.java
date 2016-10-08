package com.sleepycat.b.i.h;

import com.sleepycat.b.aa;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

public final class s<T>
  extends LinkedBlockingQueue<T>
{
  public final T a;
  public AtomicReference<Exception> b;
  
  @Deprecated
  public final T poll(long paramLong, TimeUnit paramTimeUnit)
  {
    throw aa.c("Use pollOrException() instead of poll()");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */