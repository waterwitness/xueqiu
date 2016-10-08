package com.xiaomi.mipush.sdk;

import android.app.IntentService;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class PushMessageHandler
  extends IntentService
{
  private static List<c> a = new ArrayList();
  
  public PushMessageHandler()
  {
    super("mipush message handler");
  }
  
  protected static void a()
  {
    synchronized (a)
    {
      a.clear();
      return;
    }
  }
  
  protected static void a(String paramString)
  {
    synchronized (a)
    {
      Iterator localIterator = a.iterator();
      if (localIterator.hasNext()) {
        a(paramString, ((c)localIterator.next()).a);
      }
    }
  }
  
  private static boolean a(String paramString1, String paramString2)
  {
    return ((TextUtils.isEmpty(paramString1)) && (TextUtils.isEmpty(paramString2))) || (TextUtils.equals(paramString1, paramString2));
  }
  
  protected void onHandleIntent(Intent arg1)
  {
    try
    {
      if ("com.xiaomi.mipush.sdk.WAKEUP".equals(???.getAction()))
      {
        if (!j.a(this).b.a()) {
          return;
        }
        s.a(this).a();
        return;
      }
      if (1 != g.a(this)) {
        break label461;
      }
      if (a.isEmpty())
      {
        com.xiaomi.a.a.b.c.d("receive a message before application calling initialize");
        return;
      }
    }
    catch (Throwable ???)
    {
      com.xiaomi.a.a.b.c.a(???);
      return;
    }
    ??? = q.a(this).a(???);
    if (??? != null)
    {
      Iterator localIterator;
      if ((??? instanceof e))
      {
        e locale = (e)???;
        synchronized (a)
        {
          localIterator = a.iterator();
          if (localIterator.hasNext())
          {
            c localc = (c)localIterator.next();
            a(locale.m, localc.a);
          }
        }
        return;
      }
      if ((??? instanceof d))
      {
        ??? = (d)???;
        Object localObject2 = ???.a;
        if ("register".equals(localObject2))
        {
          ??? = ???.d;
          if ((??? != null) && (!???.isEmpty())) {
            ???.get(0);
          }
          synchronized (a)
          {
            localObject2 = a.iterator();
            if (((Iterator)localObject2).hasNext()) {
              ((Iterator)localObject2).next();
            }
          }
          return;
        }
        if (("set-alias".equals(localObject3)) || ("unset-alias".equals(localObject3)) || ("accept-time".equals(localObject3)))
        {
          a(???.e);
          return;
        }
        if ("subscribe-topic".equals(localObject3))
        {
          Object localObject4 = ???.d;
          if ((localObject4 != null) && (!((List)localObject4).isEmpty())) {
            ((List)localObject4).get(0);
          }
          localObject4 = ???.e;
          synchronized (a)
          {
            localIterator = a.iterator();
            if (localIterator.hasNext()) {
              a((String)localObject4, ((c)localIterator.next()).a);
            }
          }
          return;
        }
        if ("unsubscibe-topic".equals(localObject5))
        {
          Object localObject6 = ???.d;
          if ((localObject6 != null) && (!((List)localObject6).isEmpty())) {
            ((List)localObject6).get(0);
          }
          localObject6 = ???.e;
          synchronized (a)
          {
            localIterator = a.iterator();
            if (localIterator.hasNext()) {
              a((String)localObject6, ((c)localIterator.next()).a);
            }
          }
          return;
          label461:
          Intent localIntent = new Intent("com.xiaomi.mipush.RECEIVE_MESSAGE");
          localIntent.setPackage(getPackageName());
          localIntent.putExtras(???);
          for (??? = getPackageManager();; ??? = null)
          {
            try
            {
              ??? = ???.queryBroadcastReceivers(localIntent, 32);
              if (??? == null) {
                continue;
              }
              localIterator = ???.iterator();
              do
              {
                if (!localIterator.hasNext()) {
                  break;
                }
                ??? = (ResolveInfo)localIterator.next();
              } while ((???.activityInfo == null) || (!???.activityInfo.packageName.equals(getPackageName())));
              if (??? != null)
              {
                ((h)Class.forName(???.activityInfo.name).newInstance()).onReceive(getApplicationContext(), localIntent);
                return;
              }
            }
            catch (Exception ???)
            {
              com.xiaomi.a.a.b.c.a(???);
              return;
            }
            com.xiaomi.a.a.b.c.d("cannot find the receiver to handler this message, check your manifest");
            return;
          }
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\PushMessageHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */