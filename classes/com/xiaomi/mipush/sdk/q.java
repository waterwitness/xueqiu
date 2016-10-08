package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.xiaomi.a.a.b.c;
import com.xiaomi.g.a.a;
import com.xiaomi.g.a.ad;
import com.xiaomi.g.a.ah;
import com.xiaomi.g.a.al;
import com.xiaomi.g.a.an;
import com.xiaomi.g.a.h;
import com.xiaomi.g.a.l;
import com.xiaomi.g.a.n;
import com.xiaomi.g.a.p;
import com.xiaomi.g.a.t;
import com.xiaomi.g.a.z;
import com.xiaomi.push.service.ak;
import com.xiaomi.push.service.ax;
import com.xiaomi.push.service.bh;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.TimeZone;

public final class q
{
  private static q a = null;
  private static Queue<String> c;
  private static Object d = new Object();
  private Context b;
  
  private q(Context paramContext)
  {
    this.b = paramContext.getApplicationContext();
    if (this.b == null) {
      this.b = paramContext;
    }
  }
  
  /* Error */
  private static Intent a(Context paramContext, String paramString, Map<String, String> paramMap)
  {
    // Byte code:
    //   0: aload_2
    //   1: ifnull +14 -> 15
    //   4: aload_2
    //   5: ldc 43
    //   7: invokeinterface 49 2 0
    //   12: ifne +5 -> 17
    //   15: aconst_null
    //   16: areturn
    //   17: aload_2
    //   18: ldc 43
    //   20: invokeinterface 53 2 0
    //   25: checkcast 55	java/lang/String
    //   28: astore_3
    //   29: getstatic 60	com/xiaomi/push/service/bh:a	Ljava/lang/String;
    //   32: aload_3
    //   33: invokevirtual 63	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   36: ifeq +68 -> 104
    //   39: aload_0
    //   40: invokevirtual 67	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   43: aload_1
    //   44: invokevirtual 73	android/content/pm/PackageManager:getLaunchIntentForPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   47: astore_1
    //   48: aload_1
    //   49: ifnull -34 -> 15
    //   52: aload_1
    //   53: ldc 74
    //   55: invokevirtual 80	android/content/Intent:addFlags	(I)Landroid/content/Intent;
    //   58: pop
    //   59: aload_0
    //   60: invokevirtual 67	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   63: aload_1
    //   64: ldc 81
    //   66: invokevirtual 85	android/content/pm/PackageManager:resolveActivity	(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    //   69: astore_0
    //   70: aload_0
    //   71: ifnull -56 -> 15
    //   74: aload_1
    //   75: areturn
    //   76: astore_1
    //   77: new 87	java/lang/StringBuilder
    //   80: dup
    //   81: ldc 89
    //   83: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   86: aload_1
    //   87: invokevirtual 96	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   90: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   96: invokestatic 107	com/xiaomi/a/a/b/c:d	(Ljava/lang/String;)V
    //   99: aconst_null
    //   100: astore_1
    //   101: goto -53 -> 48
    //   104: getstatic 109	com/xiaomi/push/service/bh:b	Ljava/lang/String;
    //   107: aload_3
    //   108: invokevirtual 63	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   111: ifeq +185 -> 296
    //   114: aload_2
    //   115: ldc 111
    //   117: invokeinterface 49 2 0
    //   122: ifeq +64 -> 186
    //   125: aload_2
    //   126: ldc 111
    //   128: invokeinterface 53 2 0
    //   133: checkcast 55	java/lang/String
    //   136: astore_2
    //   137: aload_2
    //   138: ifnull +360 -> 498
    //   141: aload_2
    //   142: iconst_1
    //   143: invokestatic 115	android/content/Intent:parseUri	(Ljava/lang/String;I)Landroid/content/Intent;
    //   146: astore_2
    //   147: aload_2
    //   148: aload_1
    //   149: invokevirtual 118	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   152: pop
    //   153: aload_2
    //   154: astore_1
    //   155: goto -107 -> 48
    //   158: astore_2
    //   159: aconst_null
    //   160: astore_1
    //   161: new 87	java/lang/StringBuilder
    //   164: dup
    //   165: ldc 89
    //   167: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   170: aload_2
    //   171: invokevirtual 119	java/net/URISyntaxException:getMessage	()Ljava/lang/String;
    //   174: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: invokestatic 107	com/xiaomi/a/a/b/c:d	(Ljava/lang/String;)V
    //   183: goto -135 -> 48
    //   186: aload_2
    //   187: ldc 121
    //   189: invokeinterface 49 2 0
    //   194: ifeq +299 -> 493
    //   197: aload_2
    //   198: ldc 121
    //   200: invokeinterface 53 2 0
    //   205: checkcast 55	java/lang/String
    //   208: astore 4
    //   210: new 76	android/content/Intent
    //   213: dup
    //   214: invokespecial 122	android/content/Intent:<init>	()V
    //   217: astore_3
    //   218: aload_3
    //   219: new 124	android/content/ComponentName
    //   222: dup
    //   223: aload_1
    //   224: aload 4
    //   226: invokespecial 127	android/content/ComponentName:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   229: invokevirtual 131	android/content/Intent:setComponent	(Landroid/content/ComponentName;)Landroid/content/Intent;
    //   232: pop
    //   233: aload_2
    //   234: ldc -123
    //   236: invokeinterface 49 2 0
    //   241: ifeq +22 -> 263
    //   244: aload_3
    //   245: aload_2
    //   246: ldc -123
    //   248: invokeinterface 53 2 0
    //   253: checkcast 55	java/lang/String
    //   256: invokestatic 139	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   259: invokevirtual 142	android/content/Intent:setFlags	(I)Landroid/content/Intent;
    //   262: pop
    //   263: aload_3
    //   264: astore_1
    //   265: goto -217 -> 48
    //   268: astore_1
    //   269: new 87	java/lang/StringBuilder
    //   272: dup
    //   273: ldc -112
    //   275: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   278: aload_1
    //   279: invokevirtual 145	java/lang/NumberFormatException:getMessage	()Ljava/lang/String;
    //   282: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   288: invokestatic 107	com/xiaomi/a/a/b/c:d	(Ljava/lang/String;)V
    //   291: aload_3
    //   292: astore_1
    //   293: goto -245 -> 48
    //   296: getstatic 147	com/xiaomi/push/service/bh:c	Ljava/lang/String;
    //   299: aload_3
    //   300: invokevirtual 63	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   303: ifeq +190 -> 493
    //   306: aload_2
    //   307: ldc -107
    //   309: invokeinterface 53 2 0
    //   314: checkcast 55	java/lang/String
    //   317: astore_1
    //   318: aload_1
    //   319: ifnull +174 -> 493
    //   322: aload_1
    //   323: invokevirtual 152	java/lang/String:trim	()Ljava/lang/String;
    //   326: astore_1
    //   327: aload_1
    //   328: ldc -102
    //   330: invokevirtual 158	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   333: ifne +157 -> 490
    //   336: aload_1
    //   337: ldc -96
    //   339: invokevirtual 158	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   342: ifne +148 -> 490
    //   345: new 87	java/lang/StringBuilder
    //   348: dup
    //   349: ldc -102
    //   351: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   354: aload_1
    //   355: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   361: astore_1
    //   362: new 162	java/net/URL
    //   365: dup
    //   366: aload_1
    //   367: invokespecial 163	java/net/URL:<init>	(Ljava/lang/String;)V
    //   370: invokevirtual 166	java/net/URL:getProtocol	()Ljava/lang/String;
    //   373: astore_2
    //   374: ldc -88
    //   376: aload_2
    //   377: invokevirtual 63	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   380: ifne +12 -> 392
    //   383: ldc -86
    //   385: aload_2
    //   386: invokevirtual 63	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   389: ifeq +96 -> 485
    //   392: new 76	android/content/Intent
    //   395: dup
    //   396: ldc -84
    //   398: invokespecial 173	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   401: astore_2
    //   402: aload_2
    //   403: aload_1
    //   404: invokestatic 179	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   407: invokevirtual 183	android/content/Intent:setData	(Landroid/net/Uri;)Landroid/content/Intent;
    //   410: pop
    //   411: aload_2
    //   412: astore_1
    //   413: goto -365 -> 48
    //   416: astore_3
    //   417: aload_2
    //   418: astore_1
    //   419: aload_3
    //   420: astore_2
    //   421: new 87	java/lang/StringBuilder
    //   424: dup
    //   425: ldc 89
    //   427: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   430: aload_2
    //   431: invokevirtual 184	java/net/MalformedURLException:getMessage	()Ljava/lang/String;
    //   434: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   437: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: invokestatic 107	com/xiaomi/a/a/b/c:d	(Ljava/lang/String;)V
    //   443: goto -395 -> 48
    //   446: astore_0
    //   447: new 87	java/lang/StringBuilder
    //   450: dup
    //   451: ldc 89
    //   453: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   456: aload_0
    //   457: invokevirtual 96	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   460: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   463: invokevirtual 103	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   466: invokestatic 107	com/xiaomi/a/a/b/c:d	(Ljava/lang/String;)V
    //   469: aconst_null
    //   470: areturn
    //   471: astore_2
    //   472: aconst_null
    //   473: astore_1
    //   474: goto -53 -> 421
    //   477: astore_3
    //   478: aload_2
    //   479: astore_1
    //   480: aload_3
    //   481: astore_2
    //   482: goto -321 -> 161
    //   485: aconst_null
    //   486: astore_1
    //   487: goto -439 -> 48
    //   490: goto -128 -> 362
    //   493: aconst_null
    //   494: astore_1
    //   495: goto -447 -> 48
    //   498: aconst_null
    //   499: astore_1
    //   500: goto -452 -> 48
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	503	0	paramContext	Context
    //   0	503	1	paramString	String
    //   0	503	2	paramMap	Map<String, String>
    //   28	272	3	localObject	Object
    //   416	4	3	localMalformedURLException	java.net.MalformedURLException
    //   477	4	3	localURISyntaxException	java.net.URISyntaxException
    //   208	17	4	str	String
    // Exception table:
    //   from	to	target	type
    //   39	48	76	java/lang/Exception
    //   141	147	158	java/net/URISyntaxException
    //   233	263	268	java/lang/NumberFormatException
    //   402	411	416	java/net/MalformedURLException
    //   59	70	446	java/lang/Exception
    //   362	392	471	java/net/MalformedURLException
    //   392	402	471	java/net/MalformedURLException
    //   147	153	477	java/net/URISyntaxException
  }
  
  private f a(n paramn)
  {
    Object localObject2 = null;
    Object localObject3;
    z localz;
    try
    {
      localObject1 = o.a(this.b, paramn);
      if (localObject1 == null)
      {
        c.d("message arrived: receiving an un-recognized message. " + paramn.a);
        return null;
      }
      c.c("message arrived: receive a message." + localObject1);
      localObject3 = paramn.a;
      c.a("message arrived: processing an arrived message, action=" + localObject3);
      switch (r.a[localObject3.ordinal()])
      {
      default: 
        return null;
      }
      localz = (z)localObject1;
      localObject3 = localz.h;
      if (localObject3 == null)
      {
        c.d("message arrived: receive an empty message without push content, drop it");
        return null;
      }
    }
    catch (org.apache.a.g paramn)
    {
      c.a(paramn);
      c.d("message arrived: receive a message which action string is not valid. is the reg expired?");
      return null;
    }
    Object localObject1 = localObject2;
    if (paramn.h != null)
    {
      localObject1 = localObject2;
      if (paramn.h.j != null) {
        localObject1 = (String)paramn.h.j.get("jobkey");
      }
    }
    paramn = g.a(localz, paramn.h, false);
    paramn.n = true;
    c.a("message arrived: receive a message, msgid=" + ((com.xiaomi.g.a.b)localObject3).b + ", jobkey=" + (String)localObject1);
    return paramn;
  }
  
  private f a(n paramn, boolean paramBoolean, byte[] paramArrayOfByte)
  {
    Object localObject1;
    Object localObject2;
    for (;;)
    {
      try
      {
        localObject1 = o.a(this.b, paramn);
        if (localObject1 == null)
        {
          c.d("receiving an un-recognized message. " + paramn.a);
          return null;
        }
        c.c("receive a message." + localObject1);
        localObject2 = paramn.a;
        c.a("processing a message, action=" + localObject2);
        switch (r.a[localObject2.ordinal()])
        {
        default: 
          return null;
        }
      }
      catch (org.apache.a.g paramn)
      {
        c.a(paramn);
        c.d("receive a message which action string is not valid. is the reg expired?");
        return null;
      }
      paramArrayOfByte = (t)localObject1;
      if (paramArrayOfByte.f == 0L)
      {
        localObject2 = j.a(this.b);
        paramn = paramArrayOfByte.h;
        localObject1 = paramArrayOfByte.i;
        localObject2 = ((j)localObject2).b;
        ((k)localObject2).c = paramn;
        ((k)localObject2).d = ((String)localObject1);
        ((k)localObject2).f = ak.c(((k)localObject2).k.a);
        ((k)localObject2).e = ((k)localObject2).b();
        ((k)localObject2).h = true;
        localObject3 = ((k)localObject2).k.c().edit();
        ((SharedPreferences.Editor)localObject3).putString("regId", paramn);
        ((SharedPreferences.Editor)localObject3).putString("regSec", (String)localObject1);
        ((SharedPreferences.Editor)localObject3).putString("devId", ((k)localObject2).f);
        ((SharedPreferences.Editor)localObject3).putString("vName", ((k)localObject2).b());
        ((SharedPreferences.Editor)localObject3).putBoolean("valid", true);
        ((SharedPreferences.Editor)localObject3).commit();
      }
      paramn = null;
      if (!TextUtils.isEmpty(paramArrayOfByte.h))
      {
        paramn = new ArrayList();
        paramn.add(paramArrayOfByte.h);
      }
      paramn = g.a("register", paramn, paramArrayOfByte.f, paramArrayOfByte.g, null);
      s.a(this.b).e();
      return paramn;
      if (((ah)localObject1).f == 0L)
      {
        j.a(this.b).b();
        b.b(this.b);
      }
      PushMessageHandler.a();
    }
    if ((j.a(this.b).b.i) && (!paramBoolean))
    {
      c.a("receive a message in pause state. drop it");
      return null;
    }
    Object localObject3 = (z)localObject1;
    com.xiaomi.g.a.b localb = ((z)localObject3).h;
    if (localb == null)
    {
      c.d("receive an empty message without push content, drop it");
      return null;
    }
    if (paramBoolean)
    {
      if (ax.b(paramn)) {
        b.a(this.b, localb.b, paramn.h, paramn.f, localb.c);
      }
    }
    else
    {
      if (!paramBoolean)
      {
        if ((TextUtils.isEmpty(((z)localObject3).g)) || (b.h(this.b, ((z)localObject3).g) >= 0L)) {
          break label809;
        }
        b.a(this.b, ((z)localObject3).g);
      }
      label565:
      localObject2 = null;
      localObject1 = localObject2;
      if (paramn.h != null)
      {
        localObject1 = localObject2;
        if (paramn.h.j != null) {
          localObject1 = (String)paramn.h.j.get("jobkey");
        }
      }
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        break label1989;
      }
      localObject1 = localb.b;
    }
    label809:
    label1437:
    label1989:
    for (;;)
    {
      if ((!paramBoolean) && (a(this.b, (String)localObject1)))
      {
        c.a("drop a duplicate message, key=" + (String)localObject1);
        paramArrayOfByte = null;
      }
      do
      {
        do
        {
          do
          {
            if ((paramn.h != null) || (paramBoolean)) {
              return paramArrayOfByte;
            }
            paramn = paramn.h;
            localObject1 = new h();
            ((h)localObject1).d = ((z)localObject3).d;
            ((h)localObject1).c = ((z)localObject3).c;
            ((h)localObject1).a(((z)localObject3).h.e);
            if (!TextUtils.isEmpty(((z)localObject3).f)) {
              ((h)localObject1).f = ((z)localObject3).f;
            }
            if (!TextUtils.isEmpty(((z)localObject3).g)) {
              ((h)localObject1).g = ((z)localObject3).g;
            }
            s.a(this.b).a((org.apache.a.b)localObject1, a.f, paramn);
            return paramArrayOfByte;
            b.a(this.b, localb.b, paramn.h, localb.c);
            break;
            if ((TextUtils.isEmpty(((z)localObject3).f)) || (b.g(this.b, ((z)localObject3).f) >= 0L)) {
              break label565;
            }
            b.e(this.b, ((z)localObject3).f);
            break label565;
            localObject2 = g.a((z)localObject3, paramn.h, paramBoolean);
            if ((((e)localObject2).g == 0) && (!paramBoolean) && (ax.a(((e)localObject2).o)))
            {
              ax.a(this.b, paramn, paramArrayOfByte);
              return null;
            }
            c.a("receive a message, msgid=" + localb.b + ", jobkey=" + (String)localObject1);
            paramArrayOfByte = (byte[])localObject2;
          } while (!paramBoolean);
          paramArrayOfByte = (byte[])localObject2;
        } while (((e)localObject2).o == null);
        paramArrayOfByte = (byte[])localObject2;
      } while (!((e)localObject2).o.containsKey("notify_effect"));
      localObject1 = ((e)localObject2).o;
      paramArrayOfByte = (String)((Map)localObject1).get("notify_effect");
      if (ax.b(paramn))
      {
        paramn = a(this.b, paramn.f, (Map)localObject1);
        if (paramn == null)
        {
          c.a("Getting Intent fail from ignore reg message. ");
          return null;
        }
        paramArrayOfByte = localb.d;
        if (!TextUtils.isEmpty(paramArrayOfByte)) {
          paramn.putExtra("payload", paramArrayOfByte);
        }
        this.b.startActivity(paramn);
      }
      for (;;)
      {
        return null;
        paramn = a(this.b, this.b.getPackageName(), (Map)localObject1);
        if (paramn != null)
        {
          if (!paramArrayOfByte.equals(bh.c)) {
            paramn.putExtra("key_message", (Serializable)localObject2);
          }
          this.b.startActivity(paramn);
        }
      }
      paramArrayOfByte = (ad)localObject1;
      if (paramArrayOfByte.f == 0L) {
        b.e(this.b, paramArrayOfByte.h);
      }
      paramn = null;
      if (!TextUtils.isEmpty(paramArrayOfByte.h))
      {
        paramn = new ArrayList();
        paramn.add(paramArrayOfByte.h);
      }
      return g.a("subscribe-topic", paramn, paramArrayOfByte.f, paramArrayOfByte.g, paramArrayOfByte.j);
      paramArrayOfByte = (al)localObject1;
      if (paramArrayOfByte.f == 0L) {
        b.f(this.b, paramArrayOfByte.h);
      }
      paramn = null;
      if (!TextUtils.isEmpty(paramArrayOfByte.h))
      {
        paramn = new ArrayList();
        paramn.add(paramArrayOfByte.h);
      }
      return g.a("unsubscibe-topic", paramn, paramArrayOfByte.f, paramArrayOfByte.g, paramArrayOfByte.j);
      paramArrayOfByte = (l)localObject1;
      localObject1 = paramArrayOfByte.e;
      paramn = paramArrayOfByte.j;
      if (paramArrayOfByte.g == 0L) {
        if ((TextUtils.equals((CharSequence)localObject1, "accept-time")) && (paramn != null) && (paramn.size() > 1))
        {
          b.e(this.b, (String)paramn.get(0), (String)paramn.get(1));
          if (("00:00".equals(paramn.get(0))) && ("00:00".equals(paramn.get(1))))
          {
            j.a(this.b).a(true);
            localObject2 = TimeZone.getTimeZone("GMT+08");
            localObject3 = TimeZone.getDefault();
            if (!localObject2.equals(localObject3)) {
              break label1437;
            }
          }
        }
      }
      for (;;)
      {
        return g.a((String)localObject1, paramn, paramArrayOfByte.g, paramArrayOfByte.h, paramArrayOfByte.k);
        j.a(this.b).a(false);
        break;
        long l1 = (((TimeZone)localObject2).getRawOffset() - ((TimeZone)localObject3).getRawOffset()) / 1000 / 60;
        long l4 = Long.parseLong(((String)paramn.get(0)).split(":")[0]);
        long l5 = Long.parseLong(((String)paramn.get(0)).split(":")[1]);
        long l2 = Long.parseLong(((String)paramn.get(1)).split(":")[0]);
        long l3 = Long.parseLong(((String)paramn.get(1)).split(":")[1]);
        l4 = (l4 * 60L + l5 - l1 + 1440L) % 1440L;
        l1 = (l3 + 60L * l2 - l1 + 1440L) % 1440L;
        paramn = new ArrayList();
        paramn.add(String.format("%1$02d:%2$02d", new Object[] { Long.valueOf(l4 / 60L), Long.valueOf(l4 % 60L) }));
        paramn.add(String.format("%1$02d:%2$02d", new Object[] { Long.valueOf(l1 / 60L), Long.valueOf(l1 % 60L) }));
        continue;
        if ((TextUtils.equals((CharSequence)localObject1, "set-alias")) && (paramn != null) && (paramn.size() > 0)) {
          b.a(this.b, (String)paramn.get(0));
        } else if ((TextUtils.equals((CharSequence)localObject1, "unset-alias")) && (paramn != null) && (paramn.size() > 0)) {
          b.b(this.b, (String)paramn.get(0));
        } else if ((TextUtils.equals((CharSequence)localObject1, "set-account")) && (paramn != null) && (paramn.size() > 0)) {
          b.c(this.b, (String)paramn.get(0));
        } else if ((TextUtils.equals((CharSequence)localObject1, "unset-account")) && (paramn != null) && (paramn.size() > 0)) {
          b.d(this.b, (String)paramn.get(0));
        }
      }
      paramn = (p)localObject1;
      if ("registration id expired".equalsIgnoreCase(paramn.e))
      {
        b.c(this.b);
        break;
      }
      if ((!"client_info_update_ok".equalsIgnoreCase(paramn.e)) || (paramn.h == null) || (!paramn.h.containsKey("app_version"))) {
        break;
      }
      paramn = (String)paramn.h.get("app_version");
      paramArrayOfByte = j.a(this.b);
      localObject1 = paramArrayOfByte.c().edit();
      ((SharedPreferences.Editor)localObject1).putString("vName", paramn);
      ((SharedPreferences.Editor)localObject1).commit();
      paramArrayOfByte.b.e = paramn;
      break;
    }
    return paramArrayOfByte;
  }
  
  public static q a(Context paramContext)
  {
    if (a == null) {
      a = new q(paramContext);
    }
    return a;
  }
  
  private static boolean a(Context paramContext, String paramString)
  {
    synchronized (d)
    {
      paramContext = j.a(paramContext).c();
      if (c == null)
      {
        String[] arrayOfString = paramContext.getString("pref_msg_ids", "").split(",");
        c = new LinkedList();
        int j = arrayOfString.length;
        int i = 0;
        while (i < j)
        {
          String str = arrayOfString[i];
          c.add(str);
          i += 1;
        }
      }
      if (c.contains(paramString)) {
        return true;
      }
      c.add(paramString);
      if (c.size() > 10) {
        c.poll();
      }
      paramString = com.xiaomi.a.a.f.d.a(c, ",");
      paramContext = paramContext.edit();
      paramContext.putString("pref_msg_ids", paramString);
      paramContext.commit();
      return false;
    }
  }
  
  public final f a(Intent paramIntent)
  {
    Object localObject3 = paramIntent.getAction();
    c.a("receive an intent from server, action=" + (String)localObject3);
    Object localObject2 = paramIntent.getStringExtra("mrt");
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = Long.toString(System.currentTimeMillis());
    }
    boolean bool;
    if ("com.xiaomi.mipush.RECEIVE_MESSAGE".equals(localObject3))
    {
      localObject2 = paramIntent.getByteArrayExtra("mipush_payload");
      bool = paramIntent.getBooleanExtra("mipush_notified", false);
      if (localObject2 == null)
      {
        c.d("receiving an empty message, drop");
        return null;
      }
      localObject3 = new n();
    }
    for (;;)
    {
      try
      {
        an.a((org.apache.a.b)localObject3, (byte[])localObject2);
        j localj = j.a(this.b);
        paramIntent = ((n)localObject3).h;
        if ((((n)localObject3).a == a.e) && (paramIntent != null) && (!localj.b.i) && (!bool))
        {
          if (paramIntent != null)
          {
            ((n)localObject3).h.a("mrt", (String)localObject1);
            ((n)localObject3).h.a("mat", Long.toString(System.currentTimeMillis()));
          }
          localObject1 = ((n)localObject3).h;
          h localh = new h();
          localh.d = ((n)localObject3).e;
          localh.c = ((com.xiaomi.g.a.d)localObject1).a;
          localh.a(((com.xiaomi.g.a.d)localObject1).b);
          if (!TextUtils.isEmpty(((com.xiaomi.g.a.d)localObject1).c)) {
            localh.f = ((com.xiaomi.g.a.d)localObject1).c;
          }
          s.a(this.b).a(localh, a.f, false, ((n)localObject3).h);
        }
        if ((((n)localObject3).a == a.e) && (!((n)localObject3).b))
        {
          if (!ax.b((n)localObject3))
          {
            localObject1 = ((n)localObject3).f;
            if (paramIntent == null) {
              break label792;
            }
            paramIntent = paramIntent.a;
            c.a(String.format("drop an un-encrypted messages. %1$s, %2$s", new Object[] { localObject1, paramIntent }));
            return null;
          }
          if ((!bool) || (paramIntent.j == null) || (!paramIntent.j.containsKey("notify_effect")))
          {
            c.a(String.format("drop an un-encrypted messages. %1$s, %2$s", new Object[] { ((n)localObject3).f, paramIntent.a }));
            return null;
          }
        }
        if ((!localj.b.a()) && (((n)localObject3).a != a.a))
        {
          if (ax.b((n)localObject3)) {
            return a((n)localObject3, bool, (byte[])localObject2);
          }
          c.d("receive message without registration. need unregister or re-register!");
        }
        else if ((localj.b.a()) && (localj.d()))
        {
          if (((n)localObject3).a == a.b)
          {
            localj.b();
            b.b(this.b);
            PushMessageHandler.a();
          }
        }
      }
      catch (org.apache.a.g paramIntent)
      {
        c.a(paramIntent);
        break;
        b.d(this.b);
      }
      catch (Exception paramIntent)
      {
        c.a(paramIntent);
      }
      paramIntent = a((n)localObject3, bool, (byte[])localObject2);
      return paramIntent;
      if ("com.xiaomi.mipush.ERROR".equals(localObject3))
      {
        localObject1 = new d();
        localObject2 = new n();
      }
      try
      {
        localObject3 = paramIntent.getByteArrayExtra("mipush_payload");
        if (localObject3 != null) {
          an.a((org.apache.a.b)localObject2, (byte[])localObject3);
        }
      }
      catch (org.apache.a.g localg)
      {
        for (;;) {}
      }
      ((d)localObject1).a = String.valueOf(((n)localObject2).a);
      ((d)localObject1).b = paramIntent.getIntExtra("mipush_error_code", 0);
      ((d)localObject1).c = paramIntent.getStringExtra("mipush_error_msg");
      c.d("receive a error message. code = " + paramIntent.getIntExtra("mipush_error_code", 0) + ", msg= " + paramIntent.getStringExtra("mipush_error_msg"));
      return (f)localObject1;
      if (!"com.xiaomi.mipush.MESSAGE_ARRIVED".equals(localObject3)) {
        break;
      }
      localObject1 = paramIntent.getByteArrayExtra("mipush_payload");
      if (localObject1 == null)
      {
        c.d("message arrived: receiving an empty message, drop");
        return null;
      }
      paramIntent = new n();
      try
      {
        an.a(paramIntent, (byte[])localObject1);
        localObject1 = j.a(this.b);
        if (ax.b(paramIntent)) {
          c.d("message arrived: receive ignore reg message, ignore!");
        }
      }
      catch (org.apache.a.g paramIntent)
      {
        c.a(paramIntent);
        break;
        if (!((j)localObject1).b.a()) {
          c.d("message arrived: receive message without registration. need unregister or re-register!");
        }
      }
      catch (Exception paramIntent)
      {
        c.a(paramIntent);
      }
      if ((((j)localObject1).b.a()) && (((j)localObject1).d()))
      {
        c.d("message arrived: app info is invalidated");
        break;
      }
      paramIntent = a(paramIntent);
      return paramIntent;
      label792:
      paramIntent = "";
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */