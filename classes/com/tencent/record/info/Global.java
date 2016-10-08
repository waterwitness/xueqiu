package com.tencent.record.info;

import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;

public final class Global
{
  private static Context a;
  
  public static final Context a()
  {
    if (a == null) {
      return null;
    }
    return a;
  }
  
  public static final SharedPreferences a(String paramString, int paramInt)
  {
    return a().getSharedPreferences(paramString, paramInt);
  }
  
  public static final void a(Context paramContext)
  {
    a = paramContext;
  }
  
  public static final String b()
  {
    return a().getPackageName();
  }
  
  public static final File c()
  {
    return a().getFilesDir();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\info\Global.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */