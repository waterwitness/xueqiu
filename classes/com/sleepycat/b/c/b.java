package com.sleepycat.b.c;

import java.lang.management.ManagementFactory;
import java.lang.reflect.Method;

final class b
{
  static Boolean a()
  {
    try
    {
      Object localObject1 = Class.forName("com.sun.management.HotSpotDiagnosticMXBean");
      Object localObject2 = ManagementFactory.newPlatformMXBeanProxy(ManagementFactory.getPlatformMBeanServer(), "com.sun.management:type=HotSpotDiagnostic", (Class)localObject1);
      localObject1 = ((Class)localObject1).getMethod("getVMOption", new Class[] { String.class }).invoke(localObject2, new Object[] { "UseCompressedOops" });
      localObject1 = Boolean.valueOf((String)Class.forName("com.sun.management.VMOption").getMethod("getValue", new Class[0]).invoke(localObject1, new Object[0]));
      return (Boolean)localObject1;
    }
    catch (Throwable localThrowable) {}
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */