package u.aly;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.analytics.ReportPolicy.a;
import com.umeng.analytics.ReportPolicy.b;
import com.umeng.analytics.ReportPolicy.c;
import com.umeng.analytics.ReportPolicy.d;
import com.umeng.analytics.ReportPolicy.e;
import com.umeng.analytics.ReportPolicy.f;
import com.umeng.analytics.g;
import com.umeng.analytics.onlineconfig.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public final class j
  implements c, gz
{
  private hb a = null;
  private hc b = null;
  private ReportPolicy.e c = null;
  private g d = null;
  private hg e = null;
  private gc f = null;
  private int g = 10;
  private Context h;
  
  public j(Context paramContext)
  {
    this.h = paramContext;
    this.a = new hb(paramContext);
    this.f = gt.a(paramContext);
    this.e = new hg(paramContext);
    this.b = new hc(paramContext);
    this.b.a = this.e;
    this.d = g.a(paramContext);
    paramContext = AnalyticsConfig.getReportPolicy(this.h);
    a(paramContext[0], paramContext[1]);
  }
  
  private static dz a(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {
      return null;
    }
    try
    {
      dz localdz = new dz();
      new fe().a(localdz, paramArrayOfByte);
      return localdz;
    }
    catch (Exception paramArrayOfByte)
    {
      paramArrayOfByte.printStackTrace();
    }
    return null;
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    case 2: 
    case 3: 
    default: 
      this.c = new ReportPolicy.a();
    }
    for (;;)
    {
      es.c("MobclickAgent", "report policy:" + paramInt1 + " interval:" + paramInt2);
      return;
      this.c = new ReportPolicy.a();
      continue;
      this.c = new ReportPolicy.b(this.e, paramInt2);
      continue;
      this.c = new ReportPolicy.d(this.e);
      continue;
      this.c = new ReportPolicy.e();
      continue;
      this.c = new ReportPolicy.f(this.h);
      continue;
      this.c = new ReportPolicy.c(this.a, paramInt2);
    }
  }
  
  private static byte[] a(dz paramdz)
  {
    try
    {
      paramdz = new fh().a(paramdz);
      return paramdz;
    }
    catch (Exception paramdz)
    {
      paramdz.printStackTrace();
    }
    return null;
  }
  
  /* Error */
  private byte[] c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 45	u/aly/j:h	Landroid/content/Context;
    //   4: invokestatic 155	com/umeng/analytics/AnalyticsConfig:getAppkey	(Landroid/content/Context;)Ljava/lang/String;
    //   7: invokestatic 161	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   10: ifeq +12 -> 22
    //   13: ldc 97
    //   15: ldc -93
    //   17: invokestatic 165	u/aly/es:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   20: aconst_null
    //   21: areturn
    //   22: aload_0
    //   23: getfield 45	u/aly/j:h	Landroid/content/Context;
    //   26: invokestatic 67	com/umeng/analytics/g:a	(Landroid/content/Context;)Lcom/umeng/analytics/g;
    //   29: invokevirtual 167	com/umeng/analytics/g:b	()[B
    //   32: astore_1
    //   33: aload_1
    //   34: ifnonnull +21 -> 55
    //   37: aconst_null
    //   38: astore_1
    //   39: aload_1
    //   40: ifnonnull +23 -> 63
    //   43: aload_0
    //   44: getfield 31	u/aly/j:a	Lu/aly/hb;
    //   47: invokevirtual 170	u/aly/hb:a	()I
    //   50: ifne +13 -> 63
    //   53: aconst_null
    //   54: areturn
    //   55: aload_1
    //   56: invokestatic 172	u/aly/j:a	([B)Lu/aly/dz;
    //   59: astore_1
    //   60: goto -21 -> 39
    //   63: aload_1
    //   64: ifnonnull +312 -> 376
    //   67: new 82	u/aly/dz
    //   70: dup
    //   71: invokespecial 83	u/aly/dz:<init>	()V
    //   74: astore_1
    //   75: aload_0
    //   76: getfield 31	u/aly/j:a	Lu/aly/hb;
    //   79: astore_2
    //   80: aload_2
    //   81: getfield 174	u/aly/hb:c	Landroid/content/Context;
    //   84: ldc -80
    //   86: iconst_0
    //   87: invokevirtual 182	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   90: ldc -72
    //   92: aconst_null
    //   93: invokeinterface 190 3 0
    //   98: astore_3
    //   99: aload_3
    //   100: ifnull +105 -> 205
    //   103: aload_2
    //   104: monitorenter
    //   105: aload_2
    //   106: getfield 193	u/aly/hb:a	Ljava/util/List;
    //   109: invokeinterface 199 1 0
    //   114: astore 4
    //   116: aload 4
    //   118: invokeinterface 205 1 0
    //   123: ifne +185 -> 308
    //   126: aload_2
    //   127: getfield 193	u/aly/hb:a	Ljava/util/List;
    //   130: invokeinterface 208 1 0
    //   135: aload_2
    //   136: getfield 211	u/aly/hb:b	Lu/aly/i;
    //   139: ifnull +16 -> 155
    //   142: aload_1
    //   143: aload_2
    //   144: getfield 211	u/aly/hb:b	Lu/aly/i;
    //   147: putfield 213	u/aly/dz:e	Lu/aly/i;
    //   150: aload_2
    //   151: aconst_null
    //   152: putfield 211	u/aly/hb:b	Lu/aly/i;
    //   155: aload_2
    //   156: monitorexit
    //   157: aload_1
    //   158: aload_2
    //   159: invokevirtual 216	u/aly/hb:b	()Lu/aly/p;
    //   162: putfield 219	u/aly/dz:b	Lu/aly/p;
    //   165: aload_1
    //   166: aload_2
    //   167: invokevirtual 222	u/aly/hb:c	()Lu/aly/ab;
    //   170: putfield 225	u/aly/dz:c	Lu/aly/ab;
    //   173: aload_1
    //   174: aload_2
    //   175: invokevirtual 228	u/aly/hb:d	()Lu/aly/cl;
    //   178: putfield 231	u/aly/dz:d	Lu/aly/cl;
    //   181: aload_1
    //   182: aload_2
    //   183: invokevirtual 234	u/aly/hb:g	()Lu/aly/v;
    //   186: putfield 237	u/aly/dz:a	Lu/aly/v;
    //   189: aload_1
    //   190: aload_2
    //   191: invokevirtual 240	u/aly/hb:e	()Lu/aly/bn;
    //   194: putfield 243	u/aly/dz:h	Lu/aly/bn;
    //   197: aload_1
    //   198: aload_2
    //   199: invokevirtual 246	u/aly/hb:f	()Lu/aly/bh;
    //   202: putfield 250	u/aly/dz:i	Lu/aly/bh;
    //   205: getstatic 253	u/aly/es:a	Z
    //   208: ifeq +45 -> 253
    //   211: aload_1
    //   212: invokevirtual 255	u/aly/dz:d	()Z
    //   215: ifeq +38 -> 253
    //   218: aload_1
    //   219: getfield 257	u/aly/dz:g	Ljava/util/List;
    //   222: invokeinterface 199 1 0
    //   227: astore_2
    //   228: iconst_0
    //   229: istore 5
    //   231: aload_2
    //   232: invokeinterface 205 1 0
    //   237: ifne +96 -> 333
    //   240: iload 5
    //   242: ifne +11 -> 253
    //   245: ldc 97
    //   247: ldc_w 259
    //   250: invokestatic 261	u/aly/es:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   253: aload_1
    //   254: invokestatic 263	u/aly/j:a	(Lu/aly/dz;)[B
    //   257: astore_2
    //   258: getstatic 253	u/aly/es:a	Z
    //   261: ifeq +118 -> 379
    //   264: ldc 97
    //   266: aload_1
    //   267: invokevirtual 264	u/aly/dz:toString	()Ljava/lang/String;
    //   270: invokestatic 122	u/aly/es:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   273: aload_2
    //   274: areturn
    //   275: astore_1
    //   276: ldc 97
    //   278: ldc_w 266
    //   281: invokestatic 165	u/aly/es:b	(Ljava/lang/String;Ljava/lang/String;)V
    //   284: aload_2
    //   285: areturn
    //   286: astore_1
    //   287: ldc 97
    //   289: ldc_w 268
    //   292: aload_1
    //   293: invokestatic 271	u/aly/es:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    //   296: aload_0
    //   297: getfield 45	u/aly/j:h	Landroid/content/Context;
    //   300: invokestatic 67	com/umeng/analytics/g:a	(Landroid/content/Context;)Lcom/umeng/analytics/g;
    //   303: invokevirtual 273	com/umeng/analytics/g:c	()V
    //   306: aconst_null
    //   307: areturn
    //   308: aload 4
    //   310: invokeinterface 277 1 0
    //   315: checkcast 279	u/aly/ha
    //   318: aload_1
    //   319: aload_3
    //   320: invokeinterface 282 3 0
    //   325: goto -209 -> 116
    //   328: astore_1
    //   329: aload_2
    //   330: monitorexit
    //   331: aload_1
    //   332: athrow
    //   333: aload_2
    //   334: invokeinterface 277 1 0
    //   339: checkcast 284	u/aly/dn
    //   342: astore_3
    //   343: aload_3
    //   344: getfield 286	u/aly/dn:e	Ljava/util/List;
    //   347: ifnonnull +9 -> 356
    //   350: iconst_0
    //   351: istore 6
    //   353: goto +28 -> 381
    //   356: aload_3
    //   357: getfield 286	u/aly/dn:e	Ljava/util/List;
    //   360: invokeinterface 289 1 0
    //   365: istore 6
    //   367: goto +14 -> 381
    //   370: astore_1
    //   371: aconst_null
    //   372: astore_2
    //   373: goto -97 -> 276
    //   376: goto -301 -> 75
    //   379: aload_2
    //   380: areturn
    //   381: iload 6
    //   383: ifle -152 -> 231
    //   386: iconst_1
    //   387: istore 5
    //   389: goto -158 -> 231
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	392	0	this	j
    //   32	235	1	localObject1	Object
    //   275	1	1	localException1	Exception
    //   286	33	1	localException2	Exception
    //   328	4	1	localObject2	Object
    //   370	1	1	localException3	Exception
    //   79	301	2	localObject3	Object
    //   98	259	3	localObject4	Object
    //   114	195	4	localIterator	Iterator
    //   229	159	5	i	int
    //   351	31	6	j	int
    // Exception table:
    //   from	to	target	type
    //   258	273	275	java/lang/Exception
    //   0	20	286	java/lang/Exception
    //   22	33	286	java/lang/Exception
    //   43	53	286	java/lang/Exception
    //   55	60	286	java/lang/Exception
    //   67	75	286	java/lang/Exception
    //   75	99	286	java/lang/Exception
    //   103	105	286	java/lang/Exception
    //   157	205	286	java/lang/Exception
    //   205	228	286	java/lang/Exception
    //   231	240	286	java/lang/Exception
    //   245	253	286	java/lang/Exception
    //   276	284	286	java/lang/Exception
    //   331	333	286	java/lang/Exception
    //   333	350	286	java/lang/Exception
    //   356	367	286	java/lang/Exception
    //   105	116	328	finally
    //   116	155	328	finally
    //   155	157	328	finally
    //   308	325	328	finally
    //   329	331	328	finally
    //   253	258	370	java/lang/Exception
  }
  
  private void d()
  {
    Object localObject3;
    g localg;
    boolean bool;
    int i;
    a locala;
    for (;;)
    {
      Iterator localIterator;
      try
      {
        Object localObject1;
        long l;
        if (this.e.a())
        {
          localObject1 = this.a;
          localObject3 = this.e;
          if (((hg)localObject3).c())
          {
            l = System.currentTimeMillis();
            ((hb)localObject1).a(new i(l));
          }
        }
        else
        {
          localg = g.a(this.h);
          bool = localg.f();
          if (!bool) {
            continue;
          }
          localObject1 = localg.d();
        }
        switch (this.b.a((byte[])localObject1))
        {
        case 2: 
          l = ((hg)localObject3).f;
          continue;
          gc localgc = this.f;
          l = System.currentTimeMillis();
          if (l - localgc.b >= localgc.c)
          {
            localIterator = localgc.d.iterator();
            i = 0;
            if (!localIterator.hasNext())
            {
              if (i != 0)
              {
                localgc.a();
                localgc.c();
              }
              localgc.b = l;
            }
          }
          else
          {
            localObject1 = c();
            if (localObject1 != null) {
              break label519;
            }
            es.d("MobclickAgent", "message is null");
            return;
          }
          break;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        return;
      }
      locala = (a)localIterator.next();
      if (locala.a()) {
        break;
      }
      i = 1;
    }
    Object localObject5 = locala.c;
    if (localObject5 == null) {
      localObject3 = null;
    }
    label259:
    label271:
    int j;
    for (;;)
    {
      Object localObject2 = locala.b();
      Object localObject4;
      if (localObject2 == null)
      {
        localObject2 = null;
        if ((localObject2 == null) || (((String)localObject2).equals(localObject3))) {
          break label677;
        }
        localObject4 = localObject5;
        if (localObject5 == null) {
          localObject4 = new bb();
        }
        ((bb)localObject4).a = ((String)localObject2);
        ((bb)localObject4).b = System.currentTimeMillis();
        ((bb)localObject4).a();
        ((bb)localObject4).c = (j + 1);
        ((bb)localObject4).b();
        localObject5 = new av();
        ((av)localObject5).a = locala.a;
        ((av)localObject5).c = ((String)localObject2);
        ((av)localObject5).b = ((String)localObject3);
        ((av)localObject5).d = ((bb)localObject4).b;
        ((av)localObject5).b();
        if (locala.b == null) {
          locala.b = new ArrayList(2);
        }
        locala.b.add(localObject5);
        if (locala.b.size() > 10) {
          locala.b.remove(0);
        }
        locala.c = ((bb)localObject4);
        j = 1;
        break label666;
        localObject3 = ((bb)localObject5).a;
      }
      label519:
      while (localObject5 != null)
      {
        j = ((bb)localObject5).c;
        break label259;
        localObject4 = ((String)localObject2).trim();
        if (((String)localObject4).length() == 0)
        {
          localObject2 = null;
          break label271;
        }
        if ("0".equals(localObject4))
        {
          localObject2 = null;
          break label271;
        }
        localObject2 = localObject4;
        if (!"unknown".equals(((String)localObject4).toLowerCase(Locale.US))) {
          break label271;
        }
        localObject2 = null;
        break label271;
        localObject2 = fb.a(this.h, AnalyticsConfig.getAppkey(this.h), (byte[])localObject2).a();
        localg.c();
        break;
        if (this.e.c()) {
          this.e.g.getSharedPreferences("umeng_general_config", 0).edit().putLong("first_activate_time", System.currentTimeMillis()).commit();
        }
        this.f.b();
        this.e.b();
        if (bool)
        {
          localg.e();
          return;
          this.e.b();
          if (bool)
          {
            localg.e();
            return;
            if (!bool) {
              localg.b((byte[])localObject2);
            }
            es.b("MobclickAgent", "connection error");
            return;
          }
        }
        return;
      }
      j = 0;
    }
    label666:
    while (j != 0)
    {
      i = 1;
      break;
      label677:
      j = 0;
    }
  }
  
  public final void a()
  {
    if (er.g(this.h)) {
      d();
    }
    while (!es.a) {
      return;
    }
    es.c("MobclickAgent", "network is unavailable");
  }
  
  public final void a(int paramInt, long paramLong)
  {
    AnalyticsConfig.setReportPolicy(paramInt, (int)paramLong);
    a(paramInt, (int)paramLong);
  }
  
  public final void a(ha paramha)
  {
    int i = 1;
    if (paramha != null) {
      this.a.a(paramha);
    }
    boolean bool = paramha instanceof dn;
    if (!er.g(this.h))
    {
      if (es.a) {
        es.c("MobclickAgent", "network is unavailable");
      }
      bool = false;
      if (!bool) {
        break label102;
      }
      d();
    }
    for (;;)
    {
      return;
      if (this.e.a())
      {
        bool = true;
        break;
      }
      if ((es.a) && (er.q(this.h)))
      {
        bool = true;
        break;
      }
      bool = this.c.a(bool);
      break;
      label102:
      if (this.a.a() > this.g) {}
      while (i != 0)
      {
        b();
        return;
        i = 0;
      }
    }
  }
  
  public final void b()
  {
    if (this.a.a() > 0) {}
    try
    {
      byte[] arrayOfByte = c();
      if (arrayOfByte != null) {
        this.d.a(arrayOfByte);
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      if ((localThrowable instanceof OutOfMemoryError)) {
        this.d.c();
      }
      localThrowable.printStackTrace();
    }
  }
  
  public final void b(ha paramha)
  {
    this.a.a(paramha);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\u\aly\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */