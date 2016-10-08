package com.xueqiu.android.base.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import com.xueqiu.android.base.b;

public class PackageUtil
{
  public static String getPackageName()
  {
    b.a();
    return b.d().getPackageName();
  }
  
  public static String getPackageSignatures()
  {
    Object localObject = getPackageName();
    try
    {
      b.a();
      localObject = b.d().getPackageManager().getPackageInfo((String)localObject, 64).signatures;
      StringBuilder localStringBuilder = new StringBuilder();
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        localStringBuilder.append(localObject[i].toCharsString());
        i += 1;
      }
      localObject = localStringBuilder.toString();
      return (String)localObject;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return "";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\PackageUtil.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */