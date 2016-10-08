package com.flurry.sdk;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

public class im
{
  public static int a;
  public static int b;
  public static AtomicInteger c;
  static jz<List<in>> d;
  private static im f;
  private static Map<Integer, in> g;
  private String e = im.class.getSimpleName();
  private final AtomicInteger h;
  private long i;
  private kb<jk> j = new kb()
  {
    public void a(jk paramAnonymousjk)
    {
      kg.a(4, im.a(im.this), "onNetworkStateChanged : isNetworkEnable = " + paramAnonymousjk.a);
      if (paramAnonymousjk.a) {
        js.a().b(new Runnable()
        {
          public void run()
          {
            io.a().c();
          }
        });
      }
    }
  };
  
  private im()
  {
    g = new HashMap();
    this.h = new AtomicInteger(0);
    c = new AtomicInteger(0);
    if (b == 0) {
      b = 600000;
    }
    if (a == 0) {
      a = 15;
    }
    n();
    if (d == null) {
      q();
    }
    kc.a().a("com.flurry.android.sdk.NetworkStateEvent", this.j);
  }
  
  public static im a()
  {
    try
    {
      if (f == null) {
        f = new im();
      }
      im localim = f;
      return localim;
    }
    finally {}
  }
  
  public static void a(int paramInt)
  {
    a = paramInt;
  }
  
  public static void b()
  {
    if (f != null)
    {
      kc.a().b("com.flurry.android.sdk.NetworkStateEvent", f.j);
      g.clear();
      g = null;
      f = null;
    }
  }
  
  public static void b(int paramInt)
  {
    b = paramInt;
  }
  
  private void c(ik paramik)
  {
    paramik.d = true;
    paramik.a();
    c.incrementAndGet();
    paramik.g();
    kg.a(3, this.e, paramik.d() + " report to " + paramik.e() + " finalized.");
    d();
    g();
  }
  
  private void g()
  {
    if ((j()) || (k()))
    {
      kg.a(3, this.e, "Threshold reached. Sending callback logging reports");
      l();
    }
  }
  
  private void h()
  {
    if (j())
    {
      kg.a(3, this.e, "Max Callback Attempts threshold reached. Sending callback logging reports");
      l();
    }
  }
  
  private void i()
  {
    if (k())
    {
      kg.a(3, this.e, "Time threshold reached. Sending callback logging reports");
      l();
    }
  }
  
  private boolean j()
  {
    return c.intValue() >= a;
  }
  
  private boolean k()
  {
    return System.currentTimeMillis() > this.i;
  }
  
  private void l()
  {
    Iterator localIterator1 = c().iterator();
    while (localIterator1.hasNext())
    {
      in localin = (in)localIterator1.next();
      Iterator localIterator2 = localin.d().iterator();
      int k = 0;
      if (localIterator2.hasNext())
      {
        Iterator localIterator3 = ((ij)localIterator2.next()).a.iterator();
        int m = k;
        for (;;)
        {
          k = m;
          if (!localIterator3.hasNext()) {
            break;
          }
          ik localik = (ik)localIterator3.next();
          if (localik.j)
          {
            localIterator3.remove();
          }
          else if (!localik.f.equals(il.d))
          {
            localik.j = true;
            m = 1;
          }
        }
      }
      if (k != 0) {
        io.a().a(localin);
      }
    }
    io.a().c();
    this.i = (System.currentTimeMillis() + b);
    o();
    m();
    c = new AtomicInteger(0);
    d();
  }
  
  private void m()
  {
    List localList1 = c();
    int k = 0;
    while (k < localList1.size())
    {
      in localin = (in)localList1.get(k);
      if (localin.f())
      {
        c(localin.a());
        k += 1;
      }
      else
      {
        List localList2 = localin.d();
        int m = 0;
        label63:
        Object localObject;
        if (m < localList2.size())
        {
          localObject = (ij)localList2.get(m);
          if (!((ij)localObject).n()) {
            break label122;
          }
          localin.e().remove(Long.valueOf(((ij)localObject).e()));
        }
        for (;;)
        {
          m += 1;
          break label63;
          break;
          label122:
          localObject = ((ij)localObject).a.iterator();
          while (((Iterator)localObject).hasNext()) {
            if (((ik)((Iterator)localObject).next()).j) {
              ((Iterator)localObject).remove();
            }
          }
        }
      }
    }
  }
  
  private void n()
  {
    this.i = js.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getLong("timeToSendNextPulseReport", 0L);
  }
  
  private void o()
  {
    SharedPreferences.Editor localEditor = js.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
    localEditor.putLong("timeToSendNextPulseReport", this.i);
    localEditor.commit();
  }
  
  private int p()
  {
    try
    {
      int k = this.h.incrementAndGet();
      return k;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private static void q()
  {
    d = new jz(js.a().c().getFileStreamPath(".yflurryanongoingpulsecallbackreporter"), ".yflurryanongoingpulsecallbackreporter", 2, new le()
    {
      public final lb<List<in>> a(int paramAnonymousInt)
      {
        return new la(new in.a());
      }
    });
  }
  
  public void a(final ik paramik)
  {
    try
    {
      kg.a(3, this.e, paramik.d() + " report sent successfully to " + paramik.e());
      paramik.f = il.a;
      paramik.g = "";
      c(paramik);
      if ((kg.c() <= 3) && (kg.d())) {
        js.a().a(new Runnable()
        {
          public void run()
          {
            Toast.makeText(js.a().c(), "PulseCallbackReportInfo HTTP Response Code: " + paramik.e + " for url: " + paramik.f(), 1).show();
          }
        });
      }
      return;
    }
    finally
    {
      paramik = finally;
      throw paramik;
    }
  }
  
  public void a(in paramin)
  {
    if (paramin == null) {}
    for (;;)
    {
      try
      {
        kg.a(3, this.e, "Must add valid PulseCallbackAsyncReportInfo");
        return;
      }
      finally {}
      kg.a(3, this.e, "Adding and sending " + paramin.c() + " report to PulseCallbackManager.");
      if (paramin.d().size() != 0)
      {
        if (this.i == 0L)
        {
          this.i = (System.currentTimeMillis() + b);
          js.a().b(new Runnable()
          {
            public void run()
            {
              im.b(im.this);
            }
          });
        }
        int k = p();
        paramin.a(k);
        g.put(Integer.valueOf(k), paramin);
        paramin = paramin.d().iterator();
        if (paramin.hasNext()) {
          hl.a().e().b((kr)paramin.next());
        }
      }
    }
  }
  
  /* Error */
  public boolean a(ik paramik, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: aload_1
    //   4: getfield 378	com/flurry/sdk/ik:h	I
    //   7: iconst_1
    //   8: iadd
    //   9: putfield 378	com/flurry/sdk/ik:h	I
    //   12: aload_1
    //   13: invokestatic 173	java/lang/System:currentTimeMillis	()J
    //   16: putfield 379	com/flurry/sdk/ik:i	J
    //   19: aload_1
    //   20: invokevirtual 381	com/flurry/sdk/ik:c	()Z
    //   23: ifne +10 -> 33
    //   26: aload_2
    //   27: invokestatic 387	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   30: ifeq +68 -> 98
    //   33: iconst_3
    //   34: aload_0
    //   35: getfield 51	com/flurry/sdk/im:e	Ljava/lang/String;
    //   38: new 125	java/lang/StringBuilder
    //   41: dup
    //   42: ldc_w 389
    //   45: invokespecial 340	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   48: aload_1
    //   49: invokevirtual 128	com/flurry/sdk/ik:d	()Ljava/lang/String;
    //   52: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: ldc -122
    //   57: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_1
    //   61: invokevirtual 136	com/flurry/sdk/ik:e	()Ljava/lang/String;
    //   64: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   70: invokestatic 146	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   73: aload_1
    //   74: getstatic 391	com/flurry/sdk/il:c	Lcom/flurry/sdk/il;
    //   77: putfield 213	com/flurry/sdk/ik:f	Lcom/flurry/sdk/il;
    //   80: aload_1
    //   81: ldc_w 319
    //   84: putfield 321	com/flurry/sdk/ik:g	Ljava/lang/String;
    //   87: aload_0
    //   88: aload_1
    //   89: invokespecial 323	com/flurry/sdk/im:c	(Lcom/flurry/sdk/ik;)V
    //   92: iconst_0
    //   93: istore_3
    //   94: aload_0
    //   95: monitorexit
    //   96: iload_3
    //   97: ireturn
    //   98: iconst_3
    //   99: aload_0
    //   100: getfield 51	com/flurry/sdk/im:e	Ljava/lang/String;
    //   103: new 125	java/lang/StringBuilder
    //   106: dup
    //   107: ldc_w 393
    //   110: invokespecial 340	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload_1
    //   114: invokevirtual 136	com/flurry/sdk/ik:e	()Ljava/lang/String;
    //   117: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   120: ldc_w 395
    //   123: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload_2
    //   127: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   130: invokevirtual 141	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   133: invokestatic 146	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   136: aload_1
    //   137: aload_2
    //   138: invokevirtual 397	com/flurry/sdk/ik:a	(Ljava/lang/String;)V
    //   141: aload_0
    //   142: invokevirtual 148	com/flurry/sdk/im:d	()V
    //   145: iconst_1
    //   146: istore_3
    //   147: goto -53 -> 94
    //   150: astore_1
    //   151: aload_0
    //   152: monitorexit
    //   153: aload_1
    //   154: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	this	im
    //   0	155	1	paramik	ik
    //   0	155	2	paramString	String
    //   93	54	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	33	150	finally
    //   33	92	150	finally
    //   98	145	150	finally
  }
  
  public void b(ik paramik)
  {
    try
    {
      kg.a(3, this.e, "Maximum number of attempts reached. Aborting: " + paramik.d());
      paramik.f = il.b;
      paramik.i = System.currentTimeMillis();
      paramik.g = "";
      c(paramik);
      return;
    }
    finally
    {
      paramik = finally;
      throw paramik;
    }
  }
  
  public void b(in paramin)
  {
    if (paramin == null) {}
    for (;;)
    {
      try
      {
        kg.a(3, this.e, "Must add valid PulseCallbackAsyncReportInfo");
        return;
      }
      finally {}
      if (this.i == 0L)
      {
        this.i = (System.currentTimeMillis() + b);
        js.a().b(new Runnable()
        {
          public void run()
          {
            im.b(im.this);
          }
        });
      }
      int k = p();
      paramin.a(k);
      g.put(Integer.valueOf(k), paramin);
      Iterator localIterator1 = paramin.d().iterator();
      if (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((ij)localIterator1.next()).a.iterator();
        if (localIterator2.hasNext())
        {
          localIterator2.next();
          c.incrementAndGet();
          h();
        }
      }
      else
      {
        i();
        kg.a(3, this.e, "Restoring " + paramin.c() + " report to PulseCallbackManager. Number of stored completed callbacks: " + c.get());
      }
    }
  }
  
  public boolean b(ik paramik, String paramString)
  {
    boolean bool = false;
    for (;;)
    {
      try
      {
        paramik.f = il.c;
        paramik.i = System.currentTimeMillis();
        String str = paramString;
        if (paramString == null) {
          str = "";
        }
        paramik.g = str;
        if (paramik.b())
        {
          kg.a(3, this.e, "Maximum number of attempts reached. Aborting: " + paramik.d() + " report to " + paramik.e());
          c(paramik);
          return bool;
        }
        if (!ma.h(paramik.f()))
        {
          kg.a(3, this.e, "Url: " + paramik.f() + " is invalid.");
          c(paramik);
          continue;
        }
        kg.a(3, this.e, "Retrying callback to " + paramik.d() + " in: " + paramik.l.g() / 1000L + " seconds.");
      }
      finally {}
      bool = true;
      paramik.a();
      c.incrementAndGet();
      d();
      g();
    }
  }
  
  public List<in> c()
  {
    return new ArrayList(g.values());
  }
  
  public void c(int paramInt)
  {
    try
    {
      kg.a(3, this.e, "Removing report " + paramInt + " from PulseCallbackManager");
      g.remove(Integer.valueOf(paramInt));
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void d()
  {
    js.a().b(new Runnable()
    {
      public void run()
      {
        List localList = im.a().c();
        if (im.d == null) {
          im.f();
        }
        im.d.a(localList);
      }
    });
  }
  
  public List<in> e()
  {
    if (d == null) {
      q();
    }
    return (List)d.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\im.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */