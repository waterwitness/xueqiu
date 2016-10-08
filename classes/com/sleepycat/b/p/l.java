package com.sleepycat.b.p;

public final class l
  extends af<Float>
{
  private float a;
  
  public l(ai paramai, ag paramag)
  {
    super(paramai, paramag);
  }
  
  public final void a()
  {
    this.a = 0.0F;
  }
  
  public final void a(af<Float> paramaf)
  {
    float f = this.a;
    this.a = (((Float)paramaf.c()).floatValue() + f);
  }
  
  public final void a(Float paramFloat)
  {
    this.a = paramFloat.floatValue();
  }
  
  public final af<Float> b(af<Float> paramaf)
  {
    af localaf = e();
    if (this.c.b == ah.a) {
      localaf.a(Float.valueOf(Float.valueOf(this.a).floatValue() - ((Float)paramaf.c()).floatValue()));
    }
    return localaf;
  }
  
  protected final String d()
  {
    return Float.toString(this.a);
  }
  
  public final void t_()
  {
    this.a = (-this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */