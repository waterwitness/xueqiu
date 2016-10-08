package com.sleepycat.b.p;

import java.util.Locale;
import java.util.StringTokenizer;
import java.util.concurrent.TimeUnit;

public final class ac
{
  public static int a(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong == 0L) {
      return 0;
    }
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("Duration TimeUnit argument may not be null if interval is non-zero");
    }
    if (paramLong < 0L) {
      throw new IllegalArgumentException("Duration argument may not be negative: " + paramLong);
    }
    paramLong = paramTimeUnit.toMillis(paramLong);
    if (paramLong == 0L) {
      return 1;
    }
    if (paramLong > 2147483647L) {
      throw new IllegalArgumentException("Duration argument may not be greater than Integer.MAX_VALUE milliseconds: " + paramLong);
    }
    return (int)paramLong;
  }
  
  public static int a(String paramString)
  {
    long l1 = b(paramString);
    long l2 = l1 / 1000000L;
    if ((l1 > 0L) && (l2 == 0L)) {
      return 1;
    }
    if (l2 > 2147483647L) {
      throw new IllegalArgumentException("Duration argument may not be greater than Integer.MAX_VALUE milliseconds: " + paramString);
    }
    return (int)l2;
  }
  
  public static long a(int paramInt, TimeUnit paramTimeUnit)
  {
    if (paramTimeUnit == null) {
      throw new IllegalArgumentException("TimeUnit argument may not be null");
    }
    return paramTimeUnit.convert(paramInt, TimeUnit.MILLISECONDS);
  }
  
  public static long b(String paramString)
  {
    Object localObject = new StringTokenizer(paramString.toUpperCase(Locale.ENGLISH), " \t");
    if (!((StringTokenizer)localObject).hasMoreTokens()) {
      throw new IllegalArgumentException("Duration argument is empty");
    }
    long l3;
    try
    {
      l3 = Long.parseLong(((StringTokenizer)localObject).nextToken());
      if (((StringTokenizer)localObject).hasMoreTokens())
      {
        String str = ((StringTokenizer)localObject).nextToken();
        if (((StringTokenizer)localObject).hasMoreTokens()) {
          throw new IllegalArgumentException("Duration argument has extra characters after unit: " + paramString);
        }
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      throw new IllegalArgumentException("Duration argument does not start with a long integer: " + paramString);
    }
    for (;;)
    {
      try
      {
        localObject = TimeUnit.valueOf(localNumberFormatException);
        l1 = TimeUnit.NANOSECONDS.convert(l3, (TimeUnit)localObject);
        long l2 = l1;
        if (l3 > 0L)
        {
          l2 = l1;
          if (l1 == 0L) {
            l2 = 1L;
          }
        }
        return l2;
      }
      catch (IllegalArgumentException localIllegalArgumentException2)
      {
        try
        {
          l1 = ad.valueOf(localNumberFormatException).a(l3);
        }
        catch (IllegalArgumentException localIllegalArgumentException1)
        {
          throw new IllegalArgumentException("Duration argument has unknown unit name: " + paramString);
        }
      }
      long l1 = TimeUnit.NANOSECONDS.convert(l3, TimeUnit.MICROSECONDS);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */