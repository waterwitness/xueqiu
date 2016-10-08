package com.sleepycat.b.p;

import com.sleepycat.b.aa;

public class j
{
  static
  {
    if (!j.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public static long a(int paramInt)
  {
    return paramInt & 0xFFFFFFFF;
  }
  
  public static long a(long paramLong)
  {
    return a(4294967295L, paramLong);
  }
  
  public static long a(long paramLong, int paramInt)
  {
    return paramInt & 0xFFFFFFFF | (0xFFFFFFFF & paramLong) << 32;
  }
  
  public static long a(long paramLong1, long paramLong2)
  {
    return paramLong2 & 0xFFFFFFFF | (0xFFFFFFFF & paramLong1) << 32;
  }
  
  public static long a(long paramLong1, long paramLong2, long paramLong3)
  {
    if ((!a) && (paramLong1 == -1L)) {
      throw new AssertionError();
    }
    long l1 = d(paramLong1);
    if (paramLong2 == -1L) {
      paramLong2 = 0L;
    }
    for (;;)
    {
      long l2 = d(paramLong2);
      if (l1 == l2) {
        return Math.abs((paramLong1 & 0xFFFFFFFF) - (paramLong2 & 0xFFFFFFFF));
      }
      if (l1 > l2) {
        return a(l1 - l2, paramLong3, paramLong1, paramLong2);
      }
      return a(l2 - l1, paramLong3, paramLong2, paramLong1);
    }
  }
  
  private static long a(long paramLong1, long paramLong2, long paramLong3, long paramLong4)
  {
    return paramLong1 * paramLong2 + (paramLong3 & 0xFFFFFFFF) - (paramLong4 & 0xFFFFFFFF);
  }
  
  public static long a(Long paramLong)
  {
    if (paramLong == null) {
      return -1L;
    }
    return paramLong.longValue();
  }
  
  public static int b(long paramLong1, long paramLong2)
  {
    if ((paramLong1 == -1L) || (paramLong2 == -1L)) {
      throw aa.c("NULL_LSN lsn1=" + h(paramLong1) + " lsn2=" + h(paramLong2));
    }
    long l1 = d(paramLong1);
    long l2 = d(paramLong2);
    if (l1 == l2) {
      return c(paramLong1 & 0xFFFFFFFF, paramLong2 & 0xFFFFFFFF);
    }
    return c(l1, l2);
  }
  
  public static String b(long paramLong, int paramInt)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
    localStringBuilder.append(g(paramLong));
    return localStringBuilder.toString();
  }
  
  public static boolean b(long paramLong)
  {
    return d(paramLong) == 4294967295L;
  }
  
  private static int c(long paramLong1, long paramLong2)
  {
    if (paramLong1 < paramLong2) {
      return -1;
    }
    if (paramLong1 > paramLong2) {
      return 1;
    }
    return 0;
  }
  
  public static boolean c(long paramLong)
  {
    return (paramLong == -1L) || (b(paramLong));
  }
  
  public static long d(long paramLong)
  {
    return paramLong >> 32 & 0xFFFFFFFF;
  }
  
  public static long e(long paramLong)
  {
    return 0xFFFFFFFF & paramLong;
  }
  
  public static int f(long paramLong)
  {
    return (int)(0xFFFFFFFF & paramLong);
  }
  
  public static String g(long paramLong)
  {
    return "<DbLsn val=\"0x" + Long.toHexString(d(paramLong)) + "/0x" + Long.toHexString(0xFFFFFFFF & paramLong) + "\"/>";
  }
  
  public static String h(long paramLong)
  {
    return "0x" + Long.toHexString(d(paramLong)) + "/0x" + Long.toHexString(0xFFFFFFFF & paramLong);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */