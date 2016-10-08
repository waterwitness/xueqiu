package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.xiaomi.g.a.b;
import com.xiaomi.g.a.z;
import java.util.HashMap;
import java.util.List;

public final class g
{
  private static int a = 0;
  
  public static int a(Context paramContext)
  {
    if (a == 0)
    {
      Intent localIntent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
      localIntent.setClassName(paramContext.getPackageName(), "com.xiaomi.mipush.sdk.PushServiceReceiver");
      if (!a(paramContext, localIntent)) {
        break label43;
      }
    }
    label43:
    for (a = 1;; a = 2) {
      return a;
    }
  }
  
  public static d a(String paramString1, List<String> paramList, long paramLong, String paramString2, String paramString3)
  {
    d locald = new d();
    locald.a = paramString1;
    locald.d = paramList;
    locald.b = paramLong;
    locald.c = paramString2;
    locald.e = paramString3;
    return locald;
  }
  
  public static e a(z paramz, com.xiaomi.g.a.d paramd, boolean paramBoolean)
  {
    e locale = new e();
    locale.a = paramz.c;
    if (!TextUtils.isEmpty(paramz.g))
    {
      locale.b = 1;
      locale.d = paramz.g;
    }
    for (;;)
    {
      locale.m = paramz.k;
      if (paramz.h != null) {
        locale.c = paramz.h.d;
      }
      if (paramd != null)
      {
        if (TextUtils.isEmpty(locale.a)) {
          locale.a = paramd.a;
        }
        if (TextUtils.isEmpty(locale.e)) {
          locale.e = paramd.c;
        }
        locale.k = paramd.e;
        locale.l = paramd.d;
        locale.h = paramd.f;
        locale.i = paramd.i;
        locale.g = paramd.h;
        paramz = paramd.j;
        locale.o.clear();
        if (paramz != null) {
          locale.o.putAll(paramz);
        }
      }
      locale.j = paramBoolean;
      return locale;
      if (!TextUtils.isEmpty(paramz.f))
      {
        locale.b = 2;
        locale.e = paramz.f;
      }
      else if (!TextUtils.isEmpty(paramz.l))
      {
        locale.b = 3;
        locale.f = paramz.l;
      }
      else
      {
        locale.b = 0;
      }
    }
  }
  
  public static void a(Context paramContext, d paramd)
  {
    Intent localIntent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
    localIntent.setPackage(paramContext.getPackageName());
    localIntent.putExtra("message_type", 3);
    localIntent.putExtra("key_command", paramd);
    new i().onReceive(paramContext, localIntent);
  }
  
  private static boolean a(Context paramContext, Intent paramIntent)
  {
    paramContext = paramContext.getPackageManager();
    try
    {
      paramContext = paramContext.queryBroadcastReceivers(paramIntent, 32);
      if (paramContext != null)
      {
        boolean bool = paramContext.isEmpty();
        if (!bool) {
          return true;
        }
      }
      return false;
    }
    catch (Exception paramContext) {}
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */