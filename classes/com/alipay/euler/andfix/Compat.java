package com.alipay.euler.andfix;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import java.lang.reflect.Method;

public class Compat
{
  public static boolean isChecked = false;
  public static boolean isSupport = false;
  
  private static boolean inBlackList()
  {
    return false;
  }
  
  /* Error */
  public static boolean isSupport()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 11	com/alipay/euler/andfix/Compat:isChecked	Z
    //   6: ifeq +12 -> 18
    //   9: getstatic 13	com/alipay/euler/andfix/Compat:isSupport	Z
    //   12: istore_1
    //   13: ldc 2
    //   15: monitorexit
    //   16: iload_1
    //   17: ireturn
    //   18: iconst_1
    //   19: putstatic 11	com/alipay/euler/andfix/Compat:isChecked	Z
    //   22: invokestatic 22	com/alipay/euler/andfix/Compat:isYunOS	()Z
    //   25: ifne +19 -> 44
    //   28: invokestatic 27	com/alipay/euler/andfix/AndFix:setup	()Z
    //   31: ifeq +13 -> 44
    //   34: invokestatic 30	com/alipay/euler/andfix/Compat:isSupportSDKVersion	()Z
    //   37: ifeq +7 -> 44
    //   40: iconst_1
    //   41: putstatic 13	com/alipay/euler/andfix/Compat:isSupport	Z
    //   44: invokestatic 32	com/alipay/euler/andfix/Compat:inBlackList	()Z
    //   47: ifeq +7 -> 54
    //   50: iconst_0
    //   51: putstatic 13	com/alipay/euler/andfix/Compat:isSupport	Z
    //   54: getstatic 13	com/alipay/euler/andfix/Compat:isSupport	Z
    //   57: istore_1
    //   58: goto -45 -> 13
    //   61: astore_0
    //   62: ldc 2
    //   64: monitorexit
    //   65: aload_0
    //   66: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   61	5	0	localObject	Object
    //   12	46	1	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	13	61	finally
    //   18	44	61	finally
    //   44	54	61	finally
    //   54	58	61	finally
  }
  
  private static boolean isSupportSDKVersion()
  {
    return (Build.VERSION.SDK_INT >= 8) && (Build.VERSION.SDK_INT <= 23);
  }
  
  @SuppressLint({"DefaultLocale"})
  private static boolean isYunOS()
  {
    for (;;)
    {
      try
      {
        Object localObject2 = Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class });
        String str = (String)((Method)localObject2).invoke(null, new Object[] { "ro.yunos.version" });
        Object localObject1;
        localObject2 = null;
      }
      catch (Exception localException1)
      {
        try
        {
          localObject2 = (String)((Method)localObject2).invoke(null, new Object[] { "java.vm.name" });
          if (((localObject2 == null) || (!((String)localObject2).toLowerCase().contains("lemur"))) && ((str == null) || (str.trim().length() <= 0))) {
            break;
          }
          return true;
        }
        catch (Exception localException2)
        {
          for (;;) {}
        }
        localException1 = localException1;
        localObject1 = null;
      }
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\euler\andfix\Compat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */