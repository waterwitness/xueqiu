package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.xiaomi.a.a.b.c;
import java.io.IOException;
import java.util.List;
import org.json.JSONException;

public final class aq
{
  public static void a(Context paramContext, boolean paramBoolean, String paramString)
  {
    al localal;
    if (!paramBoolean)
    {
      localal = am.a(paramContext);
      if ((localal == null) || (!"token-expired".equals(paramString))) {}
    }
    try
    {
      am.a(paramContext, localal.d, localal.e, localal.f);
      return;
    }
    catch (IOException paramContext)
    {
      c.a(paramContext);
      return;
    }
    catch (JSONException paramContext)
    {
      c.a(paramContext);
    }
  }
  
  static boolean a(Context paramContext, Intent paramIntent)
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
  
  static boolean a(Context paramContext, String paramString)
  {
    boolean bool1 = false;
    Intent localIntent1 = new Intent("com.xiaomi.mipush.miui.CLICK_MESSAGE");
    localIntent1.setPackage(paramString);
    Intent localIntent2 = new Intent("com.xiaomi.mipush.miui.RECEIVE_MESSAGE");
    localIntent2.setPackage(paramString);
    paramContext = paramContext.getPackageManager();
    try
    {
      paramString = paramContext.queryBroadcastReceivers(localIntent2, 32);
      paramContext = paramContext.queryIntentServices(localIntent1, 32);
      if (paramString.isEmpty())
      {
        boolean bool2 = paramContext.isEmpty();
        if (bool2) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
    }
    catch (Exception paramContext)
    {
      c.a(paramContext);
    }
    return false;
  }
  
  static boolean b(Context paramContext, String paramString)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramString, 0);
      if (paramContext == null) {
        return false;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext = null;
      }
    }
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\aq.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */