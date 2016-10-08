package com.xiaomi.e.e;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.xiaomi.a.a.c.b;
import com.xiaomi.push.c.a;
import com.xiaomi.push.service.XMPushService;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class k
{
  private static b a = new b(true);
  private static int b = -1;
  private static final Object c = new Object();
  private static List<l> d = Collections.synchronizedList(new ArrayList());
  private static String e = "";
  private static a f = null;
  
  private static int a(Context paramContext)
  {
    try
    {
      paramContext = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (paramContext == null) {
        return -1;
      }
    }
    catch (Exception paramContext)
    {
      return -1;
    }
    try
    {
      paramContext = paramContext.getActiveNetworkInfo();
      if (paramContext == null) {
        return -1;
      }
    }
    catch (Exception paramContext)
    {
      return -1;
    }
    return paramContext.getType();
  }
  
  public static int a(String paramString)
  {
    try
    {
      int i = paramString.getBytes("UTF-8").length;
      return i;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException) {}
    return paramString.getBytes().length;
  }
  
  public static void a(XMPushService paramXMPushService, String paramString, long paramLong1, boolean paramBoolean, long paramLong2)
  {
    if ((paramXMPushService == null) || (TextUtils.isEmpty(paramString)) || (!"com.xiaomi.xmsf".equals(paramXMPushService.getPackageName())) || ("com.xiaomi.xmsf".equals(paramString))) {}
    int k;
    do
    {
      return;
      if (b == -1) {
        b = a(paramXMPushService);
      }
      k = b;
    } while (-1 == k);
    for (;;)
    {
      int i;
      int j;
      synchronized (c)
      {
        boolean bool = d.isEmpty();
        if (paramBoolean)
        {
          i = 1;
          if (k != 0) {
            continue;
          }
          localObject1 = b(paramXMPushService);
          break label311;
          paramString = new l(paramString, paramLong2, k, i, (String)localObject1, j * paramLong1 / 10L);
          localObject1 = d.iterator();
          if (!((Iterator)localObject1).hasNext()) {
            continue;
          }
          l locall = (l)((Iterator)localObject1).next();
          if ((!TextUtils.equals(paramString.a, locall.a)) || (!TextUtils.equals(paramString.e, locall.e)) || (paramString.c != locall.c) || (paramString.d != locall.d)) {
            break label323;
          }
          if (Math.abs(paramString.b - locall.b) <= 5000L) {
            break label336;
          }
          break label323;
          if (i == 0) {
            continue;
          }
          locall.f += paramString.f;
          if (!bool) {
            break;
          }
          a.a(new m(paramXMPushService), 5000L);
          return;
        }
        i = 0;
        continue;
        Object localObject1 = "";
        break label311;
        d.add(paramString);
      }
      label311:
      if (k == 0)
      {
        j = 13;
        continue;
        label323:
        i = 0;
      }
      else
      {
        j = 11;
        continue;
        label336:
        i = 1;
      }
    }
  }
  
  private static String b(Context paramContext)
  {
    for (;;)
    {
      try
      {
        if (!TextUtils.isEmpty(e))
        {
          paramContext = e;
          return paramContext;
        }
      }
      finally {}
      try
      {
        paramContext = (TelephonyManager)paramContext.getSystemService("phone");
        if (paramContext != null) {
          e = paramContext.getSubscriberId();
        }
      }
      catch (Exception paramContext)
      {
        continue;
      }
      paramContext = e;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\e\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */