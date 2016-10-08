package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class ks<ReportInfo extends kr>
{
  private static final String a = ks.class.getSimpleName();
  private static long b = 10000L;
  private final int c = Integer.MAX_VALUE;
  private final jz<List<ReportInfo>> d;
  private final List<ReportInfo> e = new ArrayList();
  private boolean f;
  private int g;
  private long h;
  private final Runnable i = new ly()
  {
    public void a()
    {
      ks.a(ks.this);
    }
  };
  private final kb<jk> j = new kb()
  {
    public void a(jk paramAnonymousjk)
    {
      if (paramAnonymousjk.a) {
        ks.a(ks.this);
      }
    }
  };
  
  public ks()
  {
    kc.a().a("com.flurry.android.sdk.NetworkStateEvent", this.j);
    this.d = a();
    this.h = b;
    this.g = -1;
    js.a().b(new ly()
    {
      public void a()
      {
        ks.this.b(ks.b(ks.this));
        ks.a(ks.this);
      }
    });
  }
  
  private void b()
  {
    for (;;)
    {
      try
      {
        boolean bool = this.f;
        if (bool) {
          return;
        }
        if (this.g >= 0)
        {
          kg.a(3, a, "Transmit is in progress");
          continue;
        }
        h();
      }
      finally {}
      if (this.e.isEmpty())
      {
        this.h = b;
        this.g = -1;
      }
      else
      {
        this.g = 0;
        js.a().b(new ly()
        {
          public void a()
          {
            ks.c(ks.this);
          }
        });
      }
    }
  }
  
  private void f()
  {
    label101:
    for (;;)
    {
      try
      {
        lt.b();
        Object localObject1;
        if (jl.a().c())
        {
          if (this.g >= this.e.size()) {
            break label101;
          }
          localObject1 = this.e;
          int k = this.g;
          this.g = (k + 1);
          localObject1 = (kr)((List)localObject1).get(k);
          if (((kr)localObject1).q()) {
            continue;
          }
          if (localObject1 == null) {
            g();
          }
        }
        else
        {
          kg.a(3, a, "Network is not available, aborting transmission");
          break label101;
        }
        a((kr)localObject1);
        continue;
        Object localObject3 = null;
      }
      finally {}
    }
  }
  
  private void g()
  {
    for (;;)
    {
      try
      {
        h();
        a(this.e);
        if (this.f)
        {
          kg.a(3, a, "Reporter paused");
          this.h = b;
          this.g = -1;
          return;
        }
        if (this.e.isEmpty())
        {
          kg.a(3, a, "All reports sent successfully");
          this.h = b;
          continue;
        }
        this.h <<= 1;
      }
      finally {}
      kg.a(3, a, "One or more reports failed to send, backing off: " + this.h + "ms");
      js.a().b(this.i, this.h);
    }
  }
  
  private void h()
  {
    for (;;)
    {
      kr localkr;
      try
      {
        Iterator localIterator = this.e.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localkr = (kr)localIterator.next();
        if (localkr.q())
        {
          kg.a(3, a, "Url transmitted - " + localkr.s() + " Attempts: " + localkr.r());
          localIterator.remove();
          continue;
        }
        if (localkr.r() <= localkr.d()) {
          break label148;
        }
      }
      finally {}
      kg.a(3, a, "Exceeded max no of attempts - " + localkr.s() + " Attempts: " + localkr.r());
      ((Iterator)localObject).remove();
      continue;
      label148:
      if ((System.currentTimeMillis() > localkr.p()) && (localkr.r() > 0))
      {
        kg.a(3, a, "Expired: Time expired - " + localkr.s() + " Attempts: " + localkr.r());
        ((Iterator)localObject).remove();
      }
    }
  }
  
  private void i()
  {
    kc.a().b("com.flurry.android.sdk.NetworkStateEvent", this.j);
  }
  
  protected abstract jz<List<ReportInfo>> a();
  
  public void a(long paramLong)
  {
    b = paramLong;
    this.h = b;
  }
  
  protected abstract void a(ReportInfo paramReportInfo);
  
  protected void a(List<ReportInfo> paramList)
  {
    try
    {
      lt.b();
      paramList = new ArrayList(paramList);
      this.d.a(paramList);
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  public void b(ReportInfo paramReportInfo)
  {
    if (paramReportInfo == null) {}
    for (;;)
    {
      return;
      try
      {
        this.e.add(paramReportInfo);
        js.a().b(new ly()
        {
          public void a()
          {
            ks.a(ks.this);
          }
        });
      }
      finally {}
    }
  }
  
  protected void b(List<ReportInfo> paramList)
  {
    try
    {
      lt.b();
      List localList = (List)this.d.a();
      if (localList != null) {
        paramList.addAll(localList);
      }
      return;
    }
    finally {}
  }
  
  public void c()
  {
    js.a().c(this.i);
    i();
  }
  
  protected void c(ReportInfo paramReportInfo)
  {
    try
    {
      paramReportInfo.b(true);
      js.a().b(new ly()
      {
        public void a()
        {
          ks.c(ks.this);
        }
      });
      return;
    }
    finally
    {
      paramReportInfo = finally;
      throw paramReportInfo;
    }
  }
  
  public void d()
  {
    this.f = true;
  }
  
  protected void d(ReportInfo paramReportInfo)
  {
    try
    {
      paramReportInfo.a_();
      js.a().b(new ly()
      {
        public void a()
        {
          ks.c(ks.this);
        }
      });
      return;
    }
    finally
    {
      paramReportInfo = finally;
      throw paramReportInfo;
    }
  }
  
  public void e()
  {
    this.f = false;
    js.a().b(new ly()
    {
      public void a()
      {
        ks.a(ks.this);
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\ks.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */