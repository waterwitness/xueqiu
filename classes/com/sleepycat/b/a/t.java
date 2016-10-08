package com.sleepycat.b.a;

import com.sleepycat.b.p.w;

public class t
{
  u a = new u();
  private u c = this.a;
  private int d;
  
  static
  {
    if (!t.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  public final boolean a(long paramLong, boolean paramBoolean)
  {
    boolean bool = false;
    if ((!b) && (paramBoolean) && (this.d <= 100))
    {
      localObject = this.a;
      if (localObject != null)
      {
        i = 0;
        label36:
        if (i < ((u)localObject).a) {
          if (((u)localObject).a(i) != paramLong) {}
        }
      }
      for (int i = 1;; i = 0)
      {
        if (i == 0) {
          break label128;
        }
        throw new AssertionError(w.a(new Exception("Dup Offset " + Long.toHexString(paramLong))));
        i += 1;
        break label36;
        localObject = ((u)localObject).b;
        break;
      }
    }
    label128:
    u localu2 = this.c;
    Object localObject = this.c;
    if (((u)localObject).a < ((u)localObject).c.length)
    {
      ((u)localObject).c[localObject.a] = ((int)paramLong);
      ((u)localObject).a += 1;
    }
    for (;;)
    {
      this.c = ((u)localObject);
      this.d += 1;
      paramBoolean = bool;
      if (this.c != localu2) {
        paramBoolean = true;
      }
      return paramBoolean;
      u localu1 = new u();
      localu1.c[0] = ((int)paramLong);
      localu1.a = 1;
      ((u)localObject).b = localu1;
      localObject = localu1;
    }
  }
  
  public final long[] a()
  {
    long[] arrayOfLong = new long[this.d];
    u localu = this.a;
    int i = 0;
    while (localu != null)
    {
      int j = 0;
      while (j < localu.a)
      {
        if (i >= arrayOfLong.length) {
          return arrayOfLong;
        }
        arrayOfLong[i] = localu.a(j);
        i += 1;
        j += 1;
      }
      localu = localu.b;
    }
    return arrayOfLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */