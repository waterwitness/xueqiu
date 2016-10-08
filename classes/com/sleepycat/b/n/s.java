package com.sleepycat.b.n;

import com.sleepycat.b.br;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.av;
import com.sleepycat.b.n;

public final class s
  extends z
{
  private s(ad paramad, br parambr, long paramLong)
  {
    super(paramad, parambr, av.g, paramLong);
  }
  
  public static s a(ad paramad, br parambr, long paramLong)
  {
    try
    {
      paramad = new s(paramad, parambr, paramLong);
      return paramad;
    }
    catch (n paramad)
    {
      throw new NullPointerException();
    }
  }
  
  protected final long a(aj paramaj, long paramLong)
  {
    return paramLong;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */