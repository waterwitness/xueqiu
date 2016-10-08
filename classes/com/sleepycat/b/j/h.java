package com.sleepycat.b.j;

import com.sleepycat.b.p.at;
import java.text.DateFormat;
import java.util.Date;

final class h
{
  private static final DateFormat a = ;
  private static final Date b = new Date();
  
  public static String a(long paramLong)
  {
    try
    {
      b.setTime(paramLong);
      String str = a.format(b);
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\j\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */