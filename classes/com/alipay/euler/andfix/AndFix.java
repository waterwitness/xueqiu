package com.alipay.euler.andfix;

import android.os.Build.VERSION;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class AndFix
{
  private static final String TAG = "AndFix";
  
  static
  {
    try
    {
      Runtime.getRuntime().loadLibrary("andfix");
      return;
    }
    catch (Throwable localThrowable)
    {
      Log.e("AndFix", "loadLibrary", localThrowable);
    }
  }
  
  public static void addReplaceMethod(Method paramMethod1, Method paramMethod2)
  {
    try
    {
      replaceMethod(paramMethod1, paramMethod2);
      initFields(paramMethod2.getDeclaringClass());
      return;
    }
    catch (Throwable paramMethod1)
    {
      Log.e("AndFix", "addReplaceMethod", paramMethod1);
    }
  }
  
  private static void initFields(Class<?> paramClass)
  {
    Field[] arrayOfField = paramClass.getDeclaredFields();
    int j = arrayOfField.length;
    int i = 0;
    while (i < j)
    {
      Field localField = arrayOfField[i];
      Log.d("AndFix", "modify " + paramClass.getName() + "." + localField.getName() + " flag:");
      setFieldFlag(localField);
      i += 1;
    }
  }
  
  public static Class<?> initTargetClass(Class<?> paramClass)
  {
    try
    {
      paramClass = Class.forName(paramClass.getName(), true, paramClass.getClassLoader());
      initFields(paramClass);
      return paramClass;
    }
    catch (Exception paramClass)
    {
      Log.e("AndFix", "initTargetClass", paramClass);
    }
    return null;
  }
  
  private static native void replaceMethod(Method paramMethod1, Method paramMethod2);
  
  private static native void setFieldFlag(Field paramField);
  
  public static boolean setup()
  {
    try
    {
      String str = System.getProperty("java.vm.version");
      if ((str != null) && (str.startsWith("2"))) {}
      for (boolean bool = true;; bool = false)
      {
        bool = setup(bool, Build.VERSION.SDK_INT);
        return bool;
      }
      return false;
    }
    catch (Exception localException)
    {
      Log.e("AndFix", "setup", localException);
    }
  }
  
  private static native boolean setup(boolean paramBoolean, int paramInt);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\euler\andfix\AndFix.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */