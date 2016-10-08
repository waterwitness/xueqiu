package com.tencent.stat.common;

import java.io.File;

final class e
{
  private static int a = -1;
  
  public static boolean a()
  {
    if (a == 1) {
      return true;
    }
    if (a == 0) {
      return false;
    }
    int i = 0;
    for (;;)
    {
      if (i < 6)
      {
        try
        {
          if (!new File(new String[] { "/bin", "/system/bin/", "/system/xbin/", "/system/sbin/", "/sbin/", "/vendor/bin/" }[i] + "su").exists()) {
            break label106;
          }
          a = 1;
          return true;
        }
        catch (Exception localException) {}
      }
      else
      {
        a = 0;
        return false;
      }
      label106:
      i += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\stat\common\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */