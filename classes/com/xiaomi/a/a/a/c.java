package com.xiaomi.a.a.a;

import android.os.Environment;

public final class c
{
  public static boolean a()
  {
    return Environment.getExternalStorageState().equals("removed");
  }
  
  public static boolean b()
  {
    return !Environment.getExternalStorageState().equals("mounted");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */