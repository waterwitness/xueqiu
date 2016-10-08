package com.sleepycat.b.c;

import java.util.Formatter;

public final class be
{
  static String d = "      nRead nProcessed   nDeleted       nAux  nRepeatRd nCacheMiss";
  public long a;
  long b;
  long c;
  private int e;
  private int f;
  private int g;
  private int h;
  
  public final void a()
  {
    this.e += 1;
  }
  
  public final void b()
  {
    this.f += 1;
  }
  
  public final void c()
  {
    this.g += 1;
  }
  
  public final void d()
  {
    this.h += 1;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    new Formatter(localStringBuilder).format("%,11d%,11d%,11d%,11d%,11d%,11d", new Object[] { Integer.valueOf(this.e), Integer.valueOf(this.f), Integer.valueOf(this.g), Integer.valueOf(this.h), Long.valueOf(this.a), Long.valueOf(this.c - this.b) });
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\be.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */