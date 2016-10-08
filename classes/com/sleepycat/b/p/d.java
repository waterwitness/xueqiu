package com.sleepycat.b.p;

import com.sleepycat.b.aa;
import java.text.DecimalFormat;
import java.util.concurrent.atomic.AtomicLong;

public final class d
  extends af<Long>
  implements Cloneable
{
  private AtomicLong a = new AtomicLong(0L);
  
  public d(ai paramai, ag paramag)
  {
    super(paramai, paramag);
  }
  
  private void a(Long paramLong)
  {
    this.a.set(paramLong.longValue());
  }
  
  private d i()
  {
    try
    {
      d locald = (d)super.clone();
      locald.a = new AtomicLong(this.a.get());
      return locald;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw aa.a(localCloneNotSupportedException);
    }
  }
  
  public final void a()
  {
    this.a.set(0L);
  }
  
  public final void a(long paramLong)
  {
    this.a.addAndGet(paramLong);
  }
  
  public final void a(af<Long> paramaf)
  {
    this.a.addAndGet(((Long)paramaf.c()).longValue());
  }
  
  public final af<Long> b(af<Long> paramaf)
  {
    d locald = i();
    if (this.c.b == ah.a) {
      locald.a(Long.valueOf(this.a.get() - ((Long)paramaf.c()).longValue()));
    }
    return locald;
  }
  
  protected final String d()
  {
    return af.b.format(this.a.get());
  }
  
  public final Long f()
  {
    return Long.valueOf(this.a.get());
  }
  
  public final void g()
  {
    this.a.incrementAndGet();
  }
  
  public final void t_()
  {
    if (this.c.b == ah.a) {
      this.a.set(-this.a.get());
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */