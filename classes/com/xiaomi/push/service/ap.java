package com.xiaomi.push.service;

import android.content.Context;
import android.content.Intent;
import android.util.Pair;
import com.xiaomi.a.a.b.c;
import com.xiaomi.e.t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public final class ap
{
  private static final Map<String, byte[]> a = new HashMap();
  private static ArrayList<Pair<String, byte[]>> b = new ArrayList();
  
  public static void a(Context paramContext, int paramInt, String paramString)
  {
    synchronized (a)
    {
      Iterator localIterator = a.keySet().iterator();
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        a(paramContext, str, (byte[])a.get(str), paramInt, paramString);
      }
    }
    a.clear();
  }
  
  public static void a(Context paramContext, String paramString1, byte[] paramArrayOfByte, int paramInt, String paramString2)
  {
    Intent localIntent = new Intent("com.xiaomi.mipush.ERROR");
    localIntent.setPackage(paramString1);
    localIntent.putExtra("mipush_payload", paramArrayOfByte);
    localIntent.putExtra("mipush_error_code", paramInt);
    localIntent.putExtra("mipush_error_msg", paramString2);
    paramContext.sendBroadcast(localIntent, ag.a(paramString1));
  }
  
  public static void a(XMPushService paramXMPushService)
  {
    try
    {
      synchronized (a)
      {
        Iterator localIterator = a.keySet().iterator();
        if (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          paramXMPushService.a(str, (byte[])a.get(str));
        }
      }
      a.clear();
    }
    catch (t localt)
    {
      c.a(localt);
      paramXMPushService.a(10, localt);
      return;
    }
  }
  
  public static void a(String paramString, byte[] paramArrayOfByte)
  {
    synchronized (a)
    {
      a.put(paramString, paramArrayOfByte);
      return;
    }
  }
  
  /* Error */
  public static void b(XMPushService paramXMPushService)
  {
    // Byte code:
    //   0: getstatic 24	com/xiaomi/push/service/ap:b	Ljava/util/ArrayList;
    //   3: astore_1
    //   4: aload_1
    //   5: monitorenter
    //   6: getstatic 24	com/xiaomi/push/service/ap:b	Ljava/util/ArrayList;
    //   9: astore_2
    //   10: new 21	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 22	java/util/ArrayList:<init>	()V
    //   17: putstatic 24	com/xiaomi/push/service/ap:b	Ljava/util/ArrayList;
    //   20: aload_1
    //   21: monitorexit
    //   22: aload_2
    //   23: invokevirtual 121	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   26: astore_1
    //   27: aload_1
    //   28: invokeinterface 44 1 0
    //   33: ifeq +46 -> 79
    //   36: aload_1
    //   37: invokeinterface 48 1 0
    //   42: checkcast 123	android/util/Pair
    //   45: astore_2
    //   46: aload_0
    //   47: aload_2
    //   48: getfield 127	android/util/Pair:first	Ljava/lang/Object;
    //   51: checkcast 50	java/lang/String
    //   54: aload_2
    //   55: getfield 130	android/util/Pair:second	Ljava/lang/Object;
    //   58: checkcast 56	[B
    //   61: invokevirtual 108	com/xiaomi/push/service/XMPushService:a	(Ljava/lang/String;[B)V
    //   64: goto -37 -> 27
    //   67: astore_1
    //   68: aload_1
    //   69: invokestatic 113	com/xiaomi/a/a/b/c:a	(Ljava/lang/Throwable;)V
    //   72: aload_0
    //   73: bipush 10
    //   75: aload_1
    //   76: invokevirtual 116	com/xiaomi/push/service/XMPushService:a	(ILjava/lang/Exception;)V
    //   79: return
    //   80: astore_2
    //   81: aload_1
    //   82: monitorexit
    //   83: aload_2
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	paramXMPushService	XMPushService
    //   67	15	1	localt	t
    //   9	46	2	localObject2	Object
    //   80	4	2	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   0	6	67	com/xiaomi/e/t
    //   22	27	67	com/xiaomi/e/t
    //   27	64	67	com/xiaomi/e/t
    //   83	85	67	com/xiaomi/e/t
    //   6	22	80	finally
    //   81	83	80	finally
  }
  
  public static void b(String paramString, byte[] paramArrayOfByte)
  {
    synchronized (b)
    {
      b.add(new Pair(paramString, paramArrayOfByte));
      if (b.size() > 50) {
        b.remove(0);
      }
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\ap.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */