package com.sleepycat.c;

public final class a
{
  public static Class a(String paramString, ClassLoader paramClassLoader)
  {
    Object localObject = null;
    if (paramClassLoader != null) {
      try
      {
        paramClassLoader = Class.forName(paramString, true, paramClassLoader);
        return paramClassLoader;
      }
      catch (ClassNotFoundException localClassNotFoundException) {}
    }
    paramClassLoader = Thread.currentThread().getContextClassLoader();
    if (paramClassLoader != null) {
      try
      {
        paramClassLoader = Class.forName(paramString, true, paramClassLoader);
        return paramClassLoader;
      }
      catch (ClassNotFoundException paramClassLoader)
      {
        if (localClassNotFoundException != null) {}
      }
    }
    for (;;)
    {
      try
      {
        paramString = Class.forName(paramString);
        return paramString;
      }
      catch (ClassNotFoundException paramString)
      {
        if (paramClassLoader != null) {}
      }
      for (;;)
      {
        throw paramString;
        paramString = paramClassLoader;
      }
      paramClassLoader = localClassNotFoundException;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\c\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */