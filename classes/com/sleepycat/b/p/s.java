package com.sleepycat.b.p;

import java.lang.management.ManagementFactory;
import java.lang.management.OperatingSystemMXBean;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class s
{
  private static final String a = System.getProperty("java.version");
  private static OperatingSystemMXBean b = ManagementFactory.getOperatingSystemMXBean();
  private static Method c;
  
  static
  {
    try
    {
      c = b.getClass().getMethod("getSystemLoadAverage", new Class[0]);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException) {}
  }
  
  public static double a()
  {
    if (a.startsWith("1.5")) {
      return -1.0D;
    }
    try
    {
      double d = new Double(c.invoke(b, new Object[0]).toString()).doubleValue();
      return d;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new IllegalStateException(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new IllegalStateException(localInvocationTargetException);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */