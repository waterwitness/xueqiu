package com.sleepycat.b.p;

import java.text.DecimalFormat;

public class o
  extends af<Integer>
{
  public int a;
  
  public o(ai paramai, ag paramag)
  {
    super(paramai, paramag);
  }
  
  public o(ai paramai, ag paramag, int paramInt)
  {
    super(paramai, paramag);
    this.a = paramInt;
  }
  
  public void a()
  {
    this.a = 0;
  }
  
  public final void a(int paramInt)
  {
    this.a += paramInt;
  }
  
  public final void a(af<Integer> paramaf)
  {
    int i = this.a;
    this.a = (((Integer)paramaf.c()).intValue() + i);
  }
  
  public final void a(Integer paramInteger)
  {
    this.a = paramInteger.intValue();
  }
  
  public final af<Integer> b(af<Integer> paramaf)
  {
    af localaf = e();
    if (this.c.b == ah.a) {
      localaf.a(Integer.valueOf(this.a - ((Integer)paramaf.c()).intValue()));
    }
    return localaf;
  }
  
  protected final String d()
  {
    return af.b.format(this.a);
  }
  
  public final void f()
  {
    this.a += 1;
  }
  
  public final void t_()
  {
    this.a = (-this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */