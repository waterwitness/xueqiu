package com.tencent.record.info;

import android.os.Environment;

public class StorageDash
{
  public static boolean a()
  {
    String str = Environment.getExternalStorageState();
    return ("mounted".equals(str)) || ("mounted_ro".equals(str));
  }
  
  public static StorageInfo b()
  {
    if (!a()) {
      return null;
    }
    return StorageInfo.b(Environment.getExternalStorageDirectory());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\info\StorageDash.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */