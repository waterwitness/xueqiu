package com.sleepycat.b.p;

import java.text.DecimalFormat;

public class z
  extends af<Long>
{
  protected long a;
  
  public z(ai paramai, ag paramag)
  {
    super(paramai, paramag);
  }
  
  public z(ai paramai, ag paramag, long paramLong)
  {
    super(paramai, paramag);
    this.a = paramLong;
  }
  
  public void a()
  {
    this.a = 0L;
  }
  
  public void a(af<Long> paramaf)
  {
    long l = this.a;
    this.a = (((Long)paramaf.c()).longValue() + l);
  }
  
  public final void a(Long paramLong)
  {
    this.a = paramLong.longValue();
  }
  
  public af<Long> b(af<Long> paramaf)
  {
    af localaf = e();
    if (this.c.b == ah.a) {
      localaf.a(Long.valueOf(this.a - ((Long)paramaf.c()).longValue()));
    }
    return localaf;
  }
  
  public Long b()
  {
    return Long.valueOf(this.a);
  }
  
  public final void b(long paramLong)
  {
    this.a += paramLong;
  }
  
  protected String d()
  {
    return af.b.format(this.a);
  }
  
  public final void f()
  {
    this.a += 1L;
  }
  
  public void t_()
  {
    if (this.c.b == ah.a) {
      this.a = (-this.a);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */