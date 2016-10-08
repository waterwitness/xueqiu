package com.tencent.record.info;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public final class Option
{
  private static final String a;
  private static SharedPreferences b;
  private static SharedPreferences.Editor c;
  
  static
  {
    Object localObject = "options.for." + Global.b();
    a = (String)localObject;
    localObject = Global.a((String)localObject, 0);
    b = (SharedPreferences)localObject;
    c = ((SharedPreferences)localObject).edit();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\record\info\Option.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */