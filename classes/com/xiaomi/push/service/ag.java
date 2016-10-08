package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.xiaomi.e.c.e;
import java.util.Collection;
import java.util.Iterator;

public final class ag
{
  private aq a = new aq();
  
  static bd a(e parame)
  {
    Object localObject = bb.a().c(parame.t);
    if (((Collection)localObject).isEmpty())
    {
      parame = null;
      return parame;
    }
    Iterator localIterator = ((Collection)localObject).iterator();
    if (((Collection)localObject).size() == 1) {
      return (bd)localIterator.next();
    }
    String str1 = parame.s;
    String str2 = parame.r;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localObject = (bd)localIterator.next();
        parame = (e)localObject;
        if (TextUtils.equals(str1, ((bd)localObject).b)) {
          break;
        }
        if (TextUtils.equals(str2, ((bd)localObject).b)) {
          return (bd)localObject;
        }
      }
    }
    return null;
  }
  
  public static String a(String paramString)
  {
    return paramString + ".permission.MIPUSH_RECEIVE";
  }
  
  static void a(Context paramContext, Intent paramIntent, String paramString)
  {
    if ("com.xiaomi.xmsf".equals(paramContext.getPackageName()))
    {
      paramContext.sendBroadcast(paramIntent);
      return;
    }
    paramContext.sendBroadcast(paramIntent, a(paramString));
  }
  
  public static void a(Context paramContext, bd parambd, boolean paramBoolean, int paramInt, String paramString)
  {
    if ("5".equalsIgnoreCase(parambd.h))
    {
      aq.a(paramContext, paramBoolean, paramString);
      return;
    }
    Intent localIntent = new Intent();
    localIntent.setAction("com.xiaomi.push.channel_opened");
    localIntent.setPackage(parambd.a);
    localIntent.putExtra("ext_succeeded", paramBoolean);
    if (!paramBoolean) {
      localIntent.putExtra("ext_reason", paramInt);
    }
    if (!TextUtils.isEmpty(paramString)) {
      localIntent.putExtra("ext_reason_msg", paramString);
    }
    localIntent.putExtra("ext_chid", parambd.h);
    localIntent.putExtra(bh.p, parambd.b);
    localIntent.putExtra(bh.B, parambd.j);
    a(paramContext, localIntent, parambd.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\ag.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */