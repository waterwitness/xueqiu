package com.flurry.sdk;

public class ik
{
  private static final String m = ik.class.getName();
  public int a;
  public long b;
  public long c;
  public boolean d;
  public int e;
  public il f;
  public String g;
  public int h;
  public long i;
  public boolean j;
  public long k = 0L;
  public ij l;
  
  public ik(ij paramij, long paramLong1, long paramLong2, int paramInt)
  {
    this.l = paramij;
    this.b = paramLong1;
    this.c = paramLong2;
    this.a = paramInt;
    this.e = 0;
    this.f = il.d;
  }
  
  public void a()
  {
    this.l.a(this);
    if (this.d) {
      this.l.a(true);
    }
  }
  
  public void a(int paramInt)
  {
    if (paramInt < 0)
    {
      if (this.k <= 0L) {
        this.k = 0L;
      }
      return;
    }
    this.k += paramInt;
  }
  
  public void a(String paramString)
  {
    this.l.c(paramString);
  }
  
  public boolean b()
  {
    return this.l.c();
  }
  
  public boolean c()
  {
    return this.l.a(this.h);
  }
  
  public String d()
  {
    return this.l.m();
  }
  
  public String e()
  {
    return this.l.i();
  }
  
  public String f()
  {
    return this.l.t();
  }
  
  public void g()
  {
    this.l.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ik.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */