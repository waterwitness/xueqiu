package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.xiaomi.a.a.b.c;
import com.xiaomi.push.service.ak;

public final class j
{
  private static j c;
  Context a;
  public k b;
  
  private j(Context paramContext)
  {
    this.a = paramContext;
    this.b = new k(this, (byte)0);
    paramContext = c();
    this.b.a = paramContext.getString("appId", null);
    this.b.b = paramContext.getString("appToken", null);
    this.b.c = paramContext.getString("regId", null);
    this.b.d = paramContext.getString("regSec", null);
    this.b.f = paramContext.getString("devId", null);
    if ((!TextUtils.isEmpty(this.b.f)) && (this.b.f.startsWith("a-")))
    {
      this.b.f = ak.c(this.a);
      paramContext.edit().putString("devId", this.b.f).commit();
    }
    this.b.e = paramContext.getString("vName", null);
    this.b.h = paramContext.getBoolean("valid", true);
    this.b.i = paramContext.getBoolean("paused", false);
    this.b.j = paramContext.getInt("envType", 1);
    this.b.g = paramContext.getString("regResource", null);
  }
  
  public static j a(Context paramContext)
  {
    if (c == null) {
      c = new j(paramContext);
    }
    return c;
  }
  
  public static String a(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 16384);
      if (paramContext != null) {
        return paramContext.versionName;
      }
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        c.a(paramContext);
        paramContext = null;
      }
    }
    return "1.0";
  }
  
  public final void a(String paramString1, String paramString2, String paramString3)
  {
    k localk = this.b;
    localk.a = paramString1;
    localk.b = paramString2;
    localk.g = paramString3;
    paramString1 = localk.k.c().edit();
    paramString1.putString("appId", localk.a);
    paramString1.putString("appToken", paramString2);
    paramString1.putString("regResource", paramString3);
    paramString1.commit();
  }
  
  public final void a(boolean paramBoolean)
  {
    this.b.i = paramBoolean;
    c().edit().putBoolean("paused", paramBoolean).commit();
  }
  
  public final boolean a()
  {
    if (!this.b.a())
    {
      c.a("Don't send message before initialization succeeded!");
      return false;
    }
    return true;
  }
  
  public final void b()
  {
    k localk = this.b;
    localk.k.c().edit().clear().commit();
    localk.a = null;
    localk.b = null;
    localk.c = null;
    localk.d = null;
    localk.f = null;
    localk.e = null;
    localk.h = false;
    localk.i = false;
    localk.j = 1;
  }
  
  public final SharedPreferences c()
  {
    return this.a.getSharedPreferences("mipush", 0);
  }
  
  public final boolean d()
  {
    return !this.b.h;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */