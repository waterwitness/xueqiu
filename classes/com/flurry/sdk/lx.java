package com.flurry.sdk;

import java.lang.reflect.Method;

public class lx
{
  public static Method a(Class<?> paramClass, String paramString, Class<?>... paramVarArgs)
  {
    while (paramClass != null) {
      try
      {
        Method localMethod = paramClass.getDeclaredMethod(paramString, paramVarArgs);
        return localMethod;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        paramClass = paramClass.getSuperclass();
      }
    }
    throw new NoSuchMethodException();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\lx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */