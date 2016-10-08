package com.sleepycat.b.n;

public class o
{
  public static final o a;
  public static final o b;
  public static final o c;
  public static final o d;
  public static final o e;
  public static final o f;
  public static final o g;
  private static g[][] k;
  private static p[][] l;
  public boolean h;
  boolean i;
  private int m;
  private String n;
  
  static
  {
    if (!o.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      j = bool;
      a = new o(0, false, "READ");
      b = new o(1, true, "WRITE");
      c = new o(2, false, "RANGE_READ");
      d = new o(3, true, "RANGE_WRITE");
      e = new o(4, false, "RANGE_INSERT");
      f = new o(5, false, "NONE");
      g = new o(6, false, "RESTART");
      c.i = true;
      d.i = true;
      g[] arrayOfg = { g.a, g.b, g.a, g.b, g.a };
      g localg1 = g.b;
      g localg2 = g.b;
      g localg3 = g.b;
      g localg4 = g.b;
      g localg5 = g.a;
      g localg6 = g.a;
      g localg7 = g.b;
      g localg8 = g.a;
      g localg9 = g.b;
      g localg10 = g.b;
      g localg11 = g.b;
      g localg12 = g.b;
      g localg13 = g.b;
      g localg14 = g.b;
      g localg15 = g.b;
      g localg16 = g.a;
      g localg17 = g.a;
      g localg18 = g.c;
      g localg19 = g.c;
      g localg20 = g.a;
      k = new g[][] { arrayOfg, { localg1, localg2, localg3, localg4, localg5 }, { localg6, localg7, localg8, localg9, localg10 }, { localg11, localg12, localg13, localg14, localg15 }, { localg16, localg17, localg18, localg19, localg20 } };
      l = new p[][] { { p.b, p.c, p.d, p.f, p.a }, { p.b, p.b, p.e, p.e, p.a }, { p.b, p.f, p.b, p.f, p.a }, { p.b, p.b, p.b, p.b, p.a }, { p.a, p.a, p.a, p.a, p.b } };
      return;
    }
  }
  
  private o(int paramInt, boolean paramBoolean, String paramString)
  {
    this.m = paramInt;
    this.h = paramBoolean;
    this.n = paramString;
  }
  
  final g a(o paramo)
  {
    return k[this.m][paramo.m];
  }
  
  final p b(o paramo)
  {
    p localp = l[this.m][paramo.m];
    if ((!j) && (localp.i)) {
      throw new AssertionError(toString() + " to " + paramo);
    }
    return localp;
  }
  
  public String toString()
  {
    return this.n;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */