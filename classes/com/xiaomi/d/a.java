package com.xiaomi.d;

public final class a
{
  int a;
  long b;
  long c;
  String d;
  long e;
  
  public a()
  {
    this(0, 0L, 0L, null);
  }
  
  public a(int paramInt, long paramLong1, long paramLong2, Exception paramException)
  {
    this.a = paramInt;
    this.b = paramLong1;
    this.e = paramLong2;
    this.c = System.currentTimeMillis();
    if (paramException != null) {
      this.d = paramException.getClass().getSimpleName();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\d\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */