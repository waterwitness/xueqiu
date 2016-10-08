package com.xiaomi.push.service;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build.VERSION;
import android.provider.Settings.Global;
import android.provider.Settings.Secure;

public final class o
{
  private static o a;
  private Context b;
  private int c = 0;
  
  private o(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
  }
  
  public static o a(Context paramContext)
  {
    if (a == null) {
      a = new o(paramContext);
    }
    return a;
  }
  
  @SuppressLint({"NewApi"})
  public final int a()
  {
    if (this.c != 0) {
      return this.c;
    }
    if (Build.VERSION.SDK_INT >= 17)
    {
      this.c = Settings.Global.getInt(this.b.getContentResolver(), "device_provisioned", 0);
      return this.c;
    }
    this.c = Settings.Secure.getInt(this.b.getContentResolver(), "device_provisioned", 0);
    return this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */