package com.sleepycat.b.c;

public final class o
{
  public static final o a = new o("initialized");
  public static final o b = new o("open");
  public static final o c = new o("closed");
  public static final o d = new o("invalid");
  public static final o[] e = { a, b, d };
  private String f;
  
  private o(String paramString)
  {
    this.f = paramString;
  }
  
  final void a(o[] paramArrayOfo, o paramo)
  {
    int k = 0;
    int i = 0;
    for (;;)
    {
      int j = k;
      if (i < paramArrayOfo.length)
      {
        if (this == paramArrayOfo[i]) {
          j = 1;
        }
      }
      else
      {
        if (j != 0) {
          break;
        }
        throw new IllegalStateException("Can't go from environment state " + toString() + " to " + paramo.toString());
      }
      i += 1;
    }
  }
  
  public final String toString()
  {
    return this.f;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */