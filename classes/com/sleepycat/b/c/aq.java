package com.sleepycat.b.c;

import java.util.concurrent.atomic.AtomicLong;

final class aq
  extends ar
{
  private final AtomicLong c = new AtomicLong();
  
  private aq()
  {
    super((byte)0);
  }
  
  public final long a()
  {
    return this.c.get();
  }
  
  final boolean a(long paramLong)
  {
    return this.c.addAndGet(paramLong) > this.a;
  }
  
  final boolean b()
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */