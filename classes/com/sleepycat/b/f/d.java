package com.sleepycat.b.f;

import java.io.PrintStream;
import java.util.Iterator;
import java.util.Set;

public final class d
{
  public static e a = new e();
  
  public static int a()
  {
    Set localSet = (Set)a.a.get();
    if (localSet != null) {
      return localSet.size();
    }
    return 0;
  }
  
  public static void b()
  {
    System.out.println(c());
  }
  
  public static String c()
  {
    Object localObject = (Set)a.a.get();
    StringBuilder localStringBuilder = new StringBuilder();
    if (localObject != null)
    {
      localObject = ((Set)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localStringBuilder.append(((Iterator)localObject).next()).append('\n');
      }
    }
    return localStringBuilder.toString();
  }
  
  public static void d()
  {
    a.a = new ThreadLocal();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\f\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */