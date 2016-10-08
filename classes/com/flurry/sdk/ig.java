package com.flurry.sdk;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class ig
  implements ll.a
{
  private static final String a = ig.class.getSimpleName();
  private static String b = "https://proton.flurry.com/sdk/v1/config";
  private final Runnable c = new ly()
  {
    public void a()
    {
      ig.a(ig.this);
    }
  };
  private final kb<jg> d = new kb()
  {
    public void a(jg paramAnonymousjg)
    {
      ig.a(ig.this);
    }
  };
  private final kb<jh> e = new kb()
  {
    public void a(jh paramAnonymousjh)
    {
      ig.a(ig.this);
    }
  };
  private final kb<jk> f = new kb()
  {
    public void a(jk paramAnonymousjk)
    {
      if (paramAnonymousjk.a) {
        ig.a(ig.this);
      }
    }
  };
  private final kk<hs> g = new kk("proton config request", new is());
  private final kk<ht> h = new kk("proton config response", new it());
  private jz<ie> i;
  private jz<List<in>> j;
  private final if k = new if();
  private final jx<String, hw> l = new jx();
  private final List<in> m = new ArrayList();
  private boolean n;
  private String o;
  private boolean p = true;
  private boolean q;
  private long r = 10000L;
  private long s;
  private boolean t;
  private ht u;
  private boolean v;
  
  public ig()
  {
    lk locallk = lk.a();
    this.n = ((Boolean)locallk.a("ProtonEnabled")).booleanValue();
    locallk.a("ProtonEnabled", this);
    kg.a(4, a, "initSettings, protonEnabled = " + this.n);
    this.o = ((String)locallk.a("ProtonConfigUrl"));
    locallk.a("ProtonConfigUrl", this);
    kg.a(4, a, "initSettings, protonConfigUrl = " + this.o);
    this.p = ((Boolean)locallk.a("analyticsEnabled")).booleanValue();
    locallk.a("analyticsEnabled", this);
    kg.a(4, a, "initSettings, AnalyticsEnabled = " + this.p);
    kc.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", this.d);
    kc.a().a("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", this.e);
    kc.a().a("com.flurry.android.sdk.NetworkStateEvent", this.f);
    this.i = new jz(js.a().c().getFileStreamPath(o()), ".yflurryprotonconfig.", 1, new le()
    {
      public lb<ie> a(int paramAnonymousInt)
      {
        return new ie.a();
      }
    });
    this.j = new jz(js.a().c().getFileStreamPath(p()), ".yflurryprotonreport.", 1, new le()
    {
      public lb<List<in>> a(int paramAnonymousInt)
      {
        return new la(new in.a());
      }
    });
    js.a().b(new ly()
    {
      public void a()
      {
        ig.b(ig.this);
      }
    });
    js.a().b(new ly()
    {
      public void a()
      {
        ig.c(ig.this);
      }
    });
  }
  
  private void a(long paramLong, boolean paramBoolean, byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null) {}
    for (;;)
    {
      return;
      try
      {
        kg.a(4, a, "Saving proton config response");
        ie localie = new ie();
        localie.a(paramLong);
        localie.a(paramBoolean);
        localie.a(paramArrayOfByte);
        this.i.a(localie);
      }
      finally {}
    }
  }
  
  private boolean a(hr paramhr)
  {
    if (paramhr == null) {
      return true;
    }
    if (paramhr.a == null) {
      return true;
    }
    int i1 = 0;
    while (i1 < paramhr.a.size())
    {
      hq localhq = (hq)paramhr.a.get(i1);
      if ((localhq != null) && ((localhq.b.equals("")) || (localhq.a == -1L) || (localhq.e.equals("")) || (!a(localhq.c))))
      {
        kg.a(3, a, "A callback template is missing required values");
        return false;
      }
      i1 += 1;
    }
    return true;
  }
  
  private boolean a(ht paramht)
  {
    if (paramht == null) {
      return false;
    }
    if ((!a(paramht.e)) || (paramht.e.e.equals("")))
    {
      kg.a(3, a, "Config response is missing required values.");
      return false;
    }
    return true;
  }
  
  private boolean a(List<hw> paramList)
  {
    if (paramList == null) {
      return true;
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      hw localhw = (hw)paramList.next();
      if (localhw.a.equals(""))
      {
        kg.a(3, a, "An event is missing a name");
        return false;
      }
      if (((localhw instanceof hx)) && (((hx)localhw).c.equals("")))
      {
        kg.a(3, a, "An event trigger is missing a param name");
        return false;
      }
    }
    return true;
  }
  
  private void b(long paramLong)
  {
    try
    {
      Iterator localIterator = this.m.iterator();
      while (localIterator.hasNext()) {
        if (paramLong == ((in)localIterator.next()).b()) {
          localIterator.remove();
        }
      }
    }
    finally {}
  }
  
  private void b(String paramString, Map<String, String> paramMap)
  {
    Object localObject1;
    for (;;)
    {
      try
      {
        kg.a(3, a, "Event triggered: " + paramString);
        if (!this.p)
        {
          kg.e(a, "Analytics and pulse have been disabled.");
          return;
        }
        if (this.u == null)
        {
          kg.a(3, a, "Config response is empty. No events to fire.");
          continue;
        }
        lt.b();
      }
      finally {}
      if (!TextUtils.isEmpty(paramString))
      {
        localObject1 = this.l.a(paramString);
        if (localObject1 == null)
        {
          kg.a(3, a, "No events to fire. Returning.");
        }
        else
        {
          if (((List)localObject1).size() != 0) {
            break;
          }
          kg.a(3, a, "No events to fire. Returning.");
        }
      }
    }
    long l1 = System.currentTimeMillis();
    boolean bool;
    label143:
    int i1;
    label184:
    ir localir;
    HashMap localHashMap1;
    label206:
    Object localObject2;
    String str;
    if (paramMap != null)
    {
      bool = true;
      i1 = -1;
      Iterator localIterator;
      switch (paramString.hashCode())
      {
      case 1579613685: 
        localir = ir.d;
        localHashMap1 = new HashMap();
        localIterator = ((List)localObject1).iterator();
      case 645204782: 
      case 1371447545: 
        for (;;)
        {
          if (!localIterator.hasNext()) {
            break label697;
          }
          localObject1 = (hw)localIterator.next();
          i1 = 0;
          if (!(localObject1 instanceof hx)) {
            break label474;
          }
          kg.a(4, a, "Event contains triggers.");
          localObject2 = ((hx)localObject1).d;
          if (localObject2 == null)
          {
            kg.a(4, a, "Template does not contain trigger values. Firing.");
            i1 = 1;
          }
          label405:
          do
          {
            for (;;)
            {
              str = (String)paramMap.get(((hx)localObject1).c);
              if (str != null) {
                break label857;
              }
              kg.a(4, a, "Publisher params has no value associated with proton key. Not firing.");
              break label206;
              if (!paramString.equals("flurry.session_start")) {
                break label818;
              }
              i1 = 0;
              break label818;
              if (!paramString.equals("flurry.session_end")) {
                break label818;
              }
              i1 = 1;
              break label818;
              if (!paramString.equals("flurry.app_install")) {
                break label818;
              }
              i1 = 2;
              break label818;
              localir = ir.b;
              break;
              localir = ir.c;
              break;
              localir = ir.a;
              break;
              if (localObject2.length != 0) {
                break label405;
              }
              kg.a(4, a, "Template does not contain trigger values. Firing.");
              i1 = 1;
            }
          } while (paramMap != null);
          kg.a(4, a, "Publisher has not passed in params list. Not firing.");
        }
      }
    }
    for (;;)
    {
      int i2;
      if (i2 < localObject2.length)
      {
        if (localObject2[i2].equals(str)) {
          i1 = 1;
        }
      }
      else
      {
        for (;;)
        {
          if (i1 == 0)
          {
            kg.a(4, a, "Publisher params list does not match proton param values. Not firing.");
            break label206;
          }
          kg.a(4, a, "Publisher params match proton values. Firing.");
          label474:
          localObject2 = ((hw)localObject1).b;
          if (localObject2 == null)
          {
            kg.a(3, a, "Template is empty. Not firing current event.");
            break label206;
          }
          kg.a(3, a, "Creating callback report for partner: " + ((hq)localObject2).b);
          HashMap localHashMap2 = new HashMap();
          localHashMap2.put("event_name", paramString);
          localHashMap2.put("event_time_millis", String.valueOf(l1));
          str = this.k.a(((hq)localObject2).e, localHashMap2);
          localObject1 = null;
          if (((hq)localObject2).f != null) {
            localObject1 = this.k.a(((hq)localObject2).f, localHashMap2);
          }
          long l2 = System.currentTimeMillis();
          localObject1 = new ij(((hq)localObject2).b, ((hq)localObject2).a, str, l2 + 259200000L, this.u.e.b, ((hq)localObject2).g, ((hq)localObject2).d, ((hq)localObject2).j, ((hq)localObject2).i, ((hq)localObject2).h, (String)localObject1);
          localHashMap1.put(Long.valueOf(((hq)localObject2).a), localObject1);
          break label206;
          label697:
          if (localHashMap1.size() == 0) {
            break;
          }
          paramMap = new in(paramString, bool, je.a().d(), je.a().g(), localir, localHashMap1);
          if ("flurry.session_end".equals(paramString))
          {
            kg.a(3, a, "Storing Pulse callbacks for event: " + paramString);
            this.m.add(paramMap);
            break;
          }
          kg.a(3, a, "Firing Pulse callbacks for event: " + paramString);
          im.a().a(paramMap);
          break;
        }
        label818:
        switch (i1)
        {
        }
        break label184;
        bool = false;
        break label143;
        label857:
        i2 = 0;
        continue;
      }
      i2 += 1;
    }
  }
  
  /* Error */
  private void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 164	com/flurry/sdk/ig:n	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 389	com/flurry/sdk/lt:b	()V
    //   17: invokestatic 222	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   20: invokevirtual 225	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   23: ldc_w 537
    //   26: iconst_0
    //   27: invokevirtual 541	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   30: astore_1
    //   31: aload_1
    //   32: ldc_w 543
    //   35: iconst_1
    //   36: invokeinterface 549 3 0
    //   41: ifeq -30 -> 11
    //   44: aload_0
    //   45: ldc_w 436
    //   48: aconst_null
    //   49: invokespecial 281	com/flurry/sdk/ig:b	(Ljava/lang/String;Ljava/util/Map;)V
    //   52: aload_1
    //   53: invokeinterface 553 1 0
    //   58: astore_1
    //   59: aload_1
    //   60: ldc_w 543
    //   63: iconst_0
    //   64: invokeinterface 559 3 0
    //   69: pop
    //   70: aload_1
    //   71: invokeinterface 562 1 0
    //   76: goto -65 -> 11
    //   79: astore_1
    //   80: aload_0
    //   81: monitorexit
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	ig
    //   30	41	1	localObject1	Object
    //   79	4	1	localObject2	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	79	finally
    //   14	76	79	finally
  }
  
  private void g()
  {
    for (;;)
    {
      try
      {
        boolean bool = this.n;
        if (!bool) {
          return;
        }
        lt.b();
        if ((!this.q) || (!jf.a().c())) {
          continue;
        }
        final long l1 = System.currentTimeMillis();
        if (!jf.a().e())
        {
          bool = true;
          if (this.u != null)
          {
            if (this.t == bool) {
              break label249;
            }
            kg.a(3, a, "Limit ad tracking value has changed, purging");
            this.u = null;
          }
          jq.a().a(this);
          kg.a(3, a, "Requesting proton config");
          byte[] arrayOfByte = h();
          if (arrayOfByte == null) {
            continue;
          }
          kn localkn = new kn();
          if (!TextUtils.isEmpty(this.o)) {
            break label353;
          }
          String str1 = b;
          localkn.a(str1);
          localkn.d(5000);
          localkn.a(kp.a.c);
          localkn.a("Content-Type", "application/x-flurry;version=2");
          localkn.a("Accept", "application/x-flurry;version=2");
          localkn.a("FM-Checksum", Integer.toString(kk.c(arrayOfByte)));
          localkn.a(new kx());
          localkn.b(new kx());
          localkn.a(arrayOfByte);
          localkn.a(new kn.a()
          {
            public void a(kn<byte[], byte[]> paramAnonymouskn, final byte[] paramAnonymousArrayOfByte)
            {
              Object localObject2 = null;
              int i = paramAnonymouskn.h();
              kg.a(3, ig.e(), "Proton config request: HTTP status code is:" + i);
              if ((i == 400) || (i == 406) || (i == 412) || (i == 415)) {
                ig.a(ig.this, 10000L);
              }
              for (;;)
              {
                return;
                Object localObject1 = localObject2;
                if (paramAnonymouskn.f())
                {
                  localObject1 = localObject2;
                  if (paramAnonymousArrayOfByte != null) {
                    js.a().b(new ly()
                    {
                      public void a()
                      {
                        ig.a(ig.this, ig.2.this.a, ig.2.this.b, paramAnonymousArrayOfByte);
                      }
                    });
                  }
                }
                try
                {
                  paramAnonymousArrayOfByte = (ht)ig.e(ig.this).d(paramAnonymousArrayOfByte);
                  localObject1 = paramAnonymousArrayOfByte;
                  if (!ig.a(ig.this, paramAnonymousArrayOfByte)) {
                    localObject1 = null;
                  }
                  if (localObject1 != null)
                  {
                    ig.a(ig.this, 10000L);
                    ig.b(ig.this, l1);
                    ig.a(ig.this, this.b);
                    ig.b(ig.this, (ht)localObject1);
                    ig.f(ig.this);
                    if (!ig.g(ig.this))
                    {
                      ig.b(ig.this, true);
                      ig.a(ig.this, "flurry.session_start", null);
                    }
                    ig.h(ig.this);
                  }
                  if (localObject1 != null) {
                    continue;
                  }
                  l1 = ig.i(ig.this);
                  if (i == 429)
                  {
                    paramAnonymouskn = paramAnonymouskn.b("Retry-After");
                    if (!paramAnonymouskn.isEmpty())
                    {
                      paramAnonymouskn = (String)paramAnonymouskn.get(0);
                      kg.a(3, ig.e(), "Server returned retry time: " + paramAnonymouskn);
                    }
                  }
                }
                catch (Exception paramAnonymousArrayOfByte)
                {
                  for (;;)
                  {
                    long l1;
                    try
                    {
                      long l2 = Long.parseLong(paramAnonymouskn);
                      l1 = l2 * 1000L;
                      ig.a(ig.this, l1);
                      kg.a(3, ig.e(), "Proton config request failed, backing off: " + ig.i(ig.this) + "ms");
                      js.a().b(ig.j(ig.this), ig.i(ig.this));
                      return;
                    }
                    catch (NumberFormatException paramAnonymouskn)
                    {
                      kg.a(3, ig.e(), "Server returned nonsensical retry time");
                    }
                    paramAnonymousArrayOfByte = paramAnonymousArrayOfByte;
                    kg.a(5, ig.e(), "Failed to decode proton config response: " + paramAnonymousArrayOfByte);
                    paramAnonymousArrayOfByte = null;
                    continue;
                    l1 <<= 1;
                  }
                }
              }
            }
          });
          jq.a().a(this, localkn);
          continue;
        }
        bool = false;
      }
      finally {}
      continue;
      label249:
      if (System.currentTimeMillis() < this.s + this.u.b * 1000L)
      {
        kg.a(3, a, "Cached Proton config valid, no need to refresh");
        if (!this.v)
        {
          this.v = true;
          b("flurry.session_start", null);
        }
      }
      else if (System.currentTimeMillis() >= this.s + this.u.c * 1000L)
      {
        kg.a(3, a, "Cached Proton config expired, purging");
        this.u = null;
        this.l.a();
        continue;
        label353:
        String str2 = this.o;
      }
    }
  }
  
  private byte[] h()
  {
    for (;;)
    {
      Map.Entry localEntry;
      hu localhu;
      try
      {
        hs localhs = new hs();
        localhs.a = js.a().d();
        localhs.b = lq.c(js.a().c());
        localhs.c = lq.d(js.a().c());
        localhs.d = jt.a();
        localhs.e = 3;
        localhs.f = jo.a().c();
        if (!jf.a().e())
        {
          bool = true;
          localhs.g = bool;
          localhs.h = new hv();
          localhs.h.a = new hp();
          localhs.h.a.a = Build.MODEL;
          localhs.h.a.b = Build.BRAND;
          localhs.h.a.c = Build.ID;
          localhs.h.a.d = Build.DEVICE;
          localhs.h.a.e = Build.PRODUCT;
          localhs.h.a.f = Build.VERSION.RELEASE;
          localhs.i = new ArrayList();
          localObject = jf.a().h().entrySet().iterator();
          if (!((Iterator)localObject).hasNext()) {
            break;
          }
          localEntry = (Map.Entry)((Iterator)localObject).next();
          localhu = new hu();
          localhu.a = ((jn)localEntry.getKey()).d;
          if (!((jn)localEntry.getKey()).e) {
            break label344;
          }
          localhu.b = new String((byte[])localEntry.getValue());
          localhs.i.add(localhu);
          continue;
        }
        boolean bool = false;
      }
      catch (Exception localException)
      {
        kg.a(5, a, "Proton config request failed with exception: " + localException);
        return null;
      }
      continue;
      label344:
      localhu.b = lt.b((byte[])localEntry.getValue());
    }
    Object localObject = jj.a().e();
    if (localObject != null)
    {
      localException.j = new hz();
      localException.j.a = new hy();
      localException.j.a.a = lt.a(((Location)localObject).getLatitude(), 3);
      localException.j.a.b = lt.a(((Location)localObject).getLongitude(), 3);
      localException.j.a.c = ((float)lt.a(((Location)localObject).getAccuracy(), 3));
    }
    localObject = (String)lk.a().a("UserId");
    if (!((String)localObject).equals(""))
    {
      localException.k = new ic();
      localException.k.a = ((String)localObject);
    }
    byte[] arrayOfByte = this.g.a(localException);
    return arrayOfByte;
  }
  
  private void i()
  {
    label7:
    Object localObject1;
    if (this.u == null)
    {
      return;
    }
    else
    {
      do
      {
        do
        {
          kg.a(5, a, "Processing config response");
          im.a(this.u.e.c);
          im.b(this.u.e.d * 1000);
          io.a().a(this.u.e.e);
          if (this.n) {
            lk.a().a("analyticsEnabled", Boolean.valueOf(this.u.f.b));
          }
          this.l.a();
          localObject1 = this.u.e;
        } while (localObject1 == null);
        localObject1 = ((hr)localObject1).a;
      } while (localObject1 == null);
      localObject1 = ((List)localObject1).iterator();
    }
    for (;;)
    {
      if (!((Iterator)localObject1).hasNext()) {
        break label7;
      }
      hq localhq = (hq)((Iterator)localObject1).next();
      if (localhq == null) {
        break;
      }
      Object localObject2 = localhq.c;
      if (localObject2 == null) {
        break;
      }
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        hw localhw = (hw)((Iterator)localObject2).next();
        if ((localhw != null) && (!TextUtils.isEmpty(localhw.a)))
        {
          localhw.b = localhq;
          this.l.a(localhw.a, localhw);
        }
      }
    }
  }
  
  /* Error */
  private void j()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 241	com/flurry/sdk/ig:i	Lcom/flurry/sdk/jz;
    //   6: invokevirtual 866	com/flurry/sdk/jz:a	()Ljava/lang/Object;
    //   9: checkcast 259	com/flurry/sdk/ie
    //   12: astore_3
    //   13: aload_3
    //   14: ifnull +76 -> 90
    //   17: aload_0
    //   18: getfield 123	com/flurry/sdk/ig:h	Lcom/flurry/sdk/kk;
    //   21: aload_3
    //   22: invokevirtual 868	com/flurry/sdk/ie:c	()[B
    //   25: invokevirtual 871	com/flurry/sdk/kk:d	([B)Ljava/lang/Object;
    //   28: checkcast 321	com/flurry/sdk/ht
    //   31: astore_1
    //   32: aload_1
    //   33: astore_2
    //   34: aload_0
    //   35: aload_1
    //   36: invokespecial 332	com/flurry/sdk/ig:a	(Lcom/flurry/sdk/ht;)Z
    //   39: ifne +5 -> 44
    //   42: aconst_null
    //   43: astore_2
    //   44: aload_2
    //   45: ifnull +45 -> 90
    //   48: iconst_4
    //   49: getstatic 82	com/flurry/sdk/ig:a	Ljava/lang/String;
    //   52: ldc_w 873
    //   55: invokestatic 186	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   58: aload_0
    //   59: ldc2_w 141
    //   62: putfield 144	com/flurry/sdk/ig:r	J
    //   65: aload_0
    //   66: aload_3
    //   67: invokevirtual 875	com/flurry/sdk/ie:a	()J
    //   70: putfield 363	com/flurry/sdk/ig:s	J
    //   73: aload_0
    //   74: aload_3
    //   75: invokevirtual 877	com/flurry/sdk/ie:b	()Z
    //   78: putfield 335	com/flurry/sdk/ig:t	Z
    //   81: aload_0
    //   82: aload_2
    //   83: putfield 366	com/flurry/sdk/ig:u	Lcom/flurry/sdk/ht;
    //   86: aload_0
    //   87: invokespecial 564	com/flurry/sdk/ig:i	()V
    //   90: aload_0
    //   91: iconst_1
    //   92: putfield 566	com/flurry/sdk/ig:q	Z
    //   95: invokestatic 222	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   98: new 18	com/flurry/sdk/ig$3
    //   101: dup
    //   102: aload_0
    //   103: invokespecial 878	com/flurry/sdk/ig$3:<init>	(Lcom/flurry/sdk/ig;)V
    //   106: invokevirtual 252	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   109: aload_0
    //   110: monitorexit
    //   111: return
    //   112: astore_1
    //   113: iconst_5
    //   114: getstatic 82	com/flurry/sdk/ig:a	Ljava/lang/String;
    //   117: new 169	java/lang/StringBuilder
    //   120: dup
    //   121: ldc_w 880
    //   124: invokespecial 174	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   127: aload_1
    //   128: invokevirtual 771	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   131: invokevirtual 181	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   134: invokestatic 186	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   137: aload_0
    //   138: getfield 241	com/flurry/sdk/ig:i	Lcom/flurry/sdk/jz;
    //   141: invokevirtual 881	com/flurry/sdk/jz:b	()Z
    //   144: pop
    //   145: aconst_null
    //   146: astore_1
    //   147: goto -115 -> 32
    //   150: astore_1
    //   151: aload_0
    //   152: monitorexit
    //   153: aload_1
    //   154: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	this	ig
    //   31	5	1	localht1	ht
    //   112	16	1	localException	Exception
    //   146	1	1	localObject1	Object
    //   150	4	1	localObject2	Object
    //   33	50	2	localht2	ht
    //   12	63	3	localie	ie
    // Exception table:
    //   from	to	target	type
    //   17	32	112	java/lang/Exception
    //   2	13	150	finally
    //   17	32	150	finally
    //   34	42	150	finally
    //   48	90	150	finally
    //   90	109	150	finally
    //   113	145	150	finally
  }
  
  private void k()
  {
    for (;;)
    {
      try
      {
        if (!this.p)
        {
          kg.e(a, "Analytics disabled, not sending pulse reports.");
          return;
        }
        kg.a(4, a, "Sending " + this.m.size() + " queued reports.");
        Iterator localIterator = this.m.iterator();
        if (localIterator.hasNext())
        {
          in localin = (in)localIterator.next();
          kg.a(3, a, "Firing Pulse callbacks for event: " + localin.c());
          im.a().a(localin);
        }
        else
        {
          n();
        }
      }
      finally {}
    }
  }
  
  private void l()
  {
    try
    {
      kg.a(4, a, "Loading queued report data.");
      List localList = (List)this.j.a();
      if (localList != null) {
        this.m.addAll(localList);
      }
      return;
    }
    finally {}
  }
  
  private void m()
  {
    try
    {
      kg.a(4, a, "Saving queued report data.");
      this.j.a(this.m);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void n()
  {
    try
    {
      this.m.clear();
      this.j.b();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private String o()
  {
    return ".yflurryprotonconfig." + Long.toString(lt.i(js.a().d()), 16);
  }
  
  private String p()
  {
    return ".yflurryprotonreport." + Long.toString(lt.i(js.a().d()), 16);
  }
  
  public void a()
  {
    js.a().c(this.c);
    kc.a().b("com.flurry.android.sdk.NetworkStateEvent", this.f);
    kc.a().b("com.flurry.android.sdk.IdProviderUpdatedAdvertisingId", this.e);
    kc.a().b("com.flurry.android.sdk.IdProviderFinishedEvent", this.d);
    im.b();
    lk.a().b("ProtonEnabled", this);
  }
  
  /* Error */
  public void a(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 164	com/flurry/sdk/ig:n	Z
    //   6: istore 4
    //   8: iload 4
    //   10: ifne +6 -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: invokestatic 389	com/flurry/sdk/lt:b	()V
    //   19: aload_0
    //   20: lload_1
    //   21: invokespecial 920	com/flurry/sdk/ig:b	(J)V
    //   24: aload_0
    //   25: ldc_w 434
    //   28: aconst_null
    //   29: invokespecial 281	com/flurry/sdk/ig:b	(Ljava/lang/String;Ljava/util/Map;)V
    //   32: invokestatic 222	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   35: new 12	com/flurry/sdk/ig$11
    //   38: dup
    //   39: aload_0
    //   40: invokespecial 921	com/flurry/sdk/ig$11:<init>	(Lcom/flurry/sdk/ig;)V
    //   43: invokevirtual 252	com/flurry/sdk/js:b	(Ljava/lang/Runnable;)V
    //   46: goto -33 -> 13
    //   49: astore_3
    //   50: aload_0
    //   51: monitorexit
    //   52: aload_3
    //   53: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	54	0	this	ig
    //   0	54	1	paramLong	long
    //   49	4	3	localObject	Object
    //   6	3	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	8	49	finally
    //   16	46	49	finally
  }
  
  public void a(String paramString, Object paramObject)
  {
    int i1 = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i1)
      {
      default: 
        kg.a(6, a, "onSettingUpdate internal error!");
        return;
        if (paramString.equals("ProtonEnabled"))
        {
          i1 = 0;
          continue;
          if (paramString.equals("ProtonConfigUrl"))
          {
            i1 = 1;
            continue;
            if (paramString.equals("analyticsEnabled")) {
              i1 = 2;
            }
          }
        }
        break;
      }
    }
    this.n = ((Boolean)paramObject).booleanValue();
    kg.a(4, a, "onSettingUpdate, protonEnabled = " + this.n);
    return;
    this.o = ((String)paramObject);
    kg.a(4, a, "onSettingUpdate, protonConfigUrl = " + this.o);
    return;
    this.p = ((Boolean)paramObject).booleanValue();
    kg.a(4, a, "onSettingUpdate, AnalyticsEnabled = " + this.p);
  }
  
  /* Error */
  public void a(String paramString, Map<String, String> paramMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 164	com/flurry/sdk/ig:n	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 389	com/flurry/sdk/lt:b	()V
    //   17: aload_0
    //   18: aload_1
    //   19: aload_2
    //   20: invokespecial 281	com/flurry/sdk/ig:b	(Ljava/lang/String;Ljava/util/Map;)V
    //   23: goto -12 -> 11
    //   26: astore_1
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_1
    //   30: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	31	0	this	ig
    //   0	31	1	paramString	String
    //   0	31	2	paramMap	Map<String, String>
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	26	finally
    //   14	23	26	finally
  }
  
  /* Error */
  public void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 164	com/flurry/sdk/ig:n	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 389	com/flurry/sdk/lt:b	()V
    //   17: invokestatic 505	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   20: invokevirtual 507	com/flurry/sdk/je:d	()J
    //   23: putstatic 932	com/flurry/sdk/ii:a	J
    //   26: aload_0
    //   27: iconst_0
    //   28: putfield 530	com/flurry/sdk/ig:v	Z
    //   31: aload_0
    //   32: invokespecial 274	com/flurry/sdk/ig:g	()V
    //   35: goto -24 -> 11
    //   38: astore_1
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	this	ig
    //   38	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	38	finally
    //   14	35	38	finally
  }
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 164	com/flurry/sdk/ig:n	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 389	com/flurry/sdk/lt:b	()V
    //   17: aload_0
    //   18: invokestatic 505	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   21: invokevirtual 507	com/flurry/sdk/je:d	()J
    //   24: invokespecial 920	com/flurry/sdk/ig:b	(J)V
    //   27: aload_0
    //   28: invokespecial 934	com/flurry/sdk/ig:k	()V
    //   31: goto -20 -> 11
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	ig
    //   34	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	34	finally
    //   14	31	34	finally
  }
  
  /* Error */
  public void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 164	com/flurry/sdk/ig:n	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifne +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: invokestatic 389	com/flurry/sdk/lt:b	()V
    //   17: aload_0
    //   18: invokespecial 934	com/flurry/sdk/ig:k	()V
    //   21: goto -10 -> 11
    //   24: astore_1
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_1
    //   28: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	29	0	this	ig
    //   24	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	24	finally
    //   14	21	24	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ig.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */