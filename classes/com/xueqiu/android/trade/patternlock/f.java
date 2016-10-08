package com.xueqiu.android.trade.patternlock;

import java.lang.reflect.Array;

public final class f
{
  static f[][] c = (f[][])Array.newInstance(f.class, new int[] { 3, 3 });
  int a;
  int b;
  
  static
  {
    int i = 0;
    while (i < 3)
    {
      int j = 0;
      while (j < 3)
      {
        c[i][j] = new f(i, j);
        j += 1;
      }
      i += 1;
    }
  }
  
  private f(int paramInt1, int paramInt2)
  {
    b(paramInt1, paramInt2);
    this.a = paramInt1;
    this.b = paramInt2;
  }
  
  public static f a(int paramInt1, int paramInt2)
  {
    try
    {
      b(paramInt1, paramInt2);
      f localf = c[paramInt1][paramInt2];
      return localf;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private static void b(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) || (paramInt1 > 2)) {
      throw new IllegalArgumentException("row must be in range 0-2");
    }
    if ((paramInt2 < 0) || (paramInt2 > 2)) {
      throw new IllegalArgumentException("column must be in range 0-2");
    }
  }
  
  public final String toString()
  {
    return "(row=" + this.a + ",clmn=" + this.b + ")";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\patternlock\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */