package com.xiaomi.a.a.b;

import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class c
{
  private static int a = 2;
  private static a b = new b();
  private static final HashMap<Integer, Long> c = new HashMap();
  private static final HashMap<Integer, String> d = new HashMap();
  private static final Integer e = Integer.valueOf(-1);
  private static AtomicInteger f = new AtomicInteger(1);
  
  private static void a(int paramInt, String paramString)
  {
    if (paramInt >= a) {
      b.a(paramString);
    }
  }
  
  public static void a(Integer paramInteger)
  {
    if ((a > 1) || (!c.containsKey(paramInteger))) {
      return;
    }
    long l1 = ((Long)c.remove(paramInteger)).longValue();
    paramInteger = (String)d.remove(paramInteger);
    long l2 = System.currentTimeMillis();
    b.a(paramInteger + " ends in " + (l2 - l1) + " ms");
  }
  
  public static void a(String paramString)
  {
    a(2, "[Thread:" + Thread.currentThread().getId() + "] " + paramString);
  }
  
  public static void a(String paramString, Throwable paramThrowable)
  {
    if (4 >= a) {
      b.a(paramString, paramThrowable);
    }
  }
  
  public static void a(Throwable paramThrowable)
  {
    if (4 >= a) {
      b.a("", paramThrowable);
    }
  }
  
  public static void b(String paramString)
  {
    a(0, paramString);
  }
  
  public static void c(String paramString)
  {
    a(1, "[Thread:" + Thread.currentThread().getId() + "] " + paramString);
  }
  
  public static void d(String paramString)
  {
    a(4, paramString);
  }
  
  public static Integer e(String paramString)
  {
    if (a <= 1)
    {
      Integer localInteger = Integer.valueOf(f.incrementAndGet());
      c.put(localInteger, Long.valueOf(System.currentTimeMillis()));
      d.put(localInteger, paramString);
      b.a(paramString + " starts");
      return localInteger;
    }
    return e;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\b\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */