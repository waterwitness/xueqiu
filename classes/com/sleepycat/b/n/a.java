package com.sleepycat.b.n;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.c;
import com.sleepycat.b.c.i;
import com.sleepycat.b.c.p;
import com.sleepycat.b.c.w;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class a
  extends q
{
  private Long a;
  private Set<Long> b;
  private boolean c;
  
  protected a(ad paramad)
  {
    super(paramad, false, false, 0L);
  }
  
  private a(ad paramad, boolean paramBoolean)
  {
    super(paramad, false, paramBoolean, 0L);
  }
  
  public static a a(ad paramad)
  {
    return new a(paramad);
  }
  
  public static a a(ad paramad, boolean paramBoolean)
  {
    return new a(paramad, paramBoolean);
  }
  
  protected final long a(aj paramaj, long paramLong)
  {
    return -1L;
  }
  
  public m a(long paramLong, o paramo, boolean paramBoolean1, boolean paramBoolean2, i parami)
  {
    for (;;)
    {
      try
      {
        b_(false);
        long l = 0L;
        if ((paramBoolean1) || (this.m))
        {
          paramBoolean1 = true;
          if (paramBoolean1) {}
        }
        paramBoolean1 = false;
      }
      finally
      {
        try
        {
          l = r_();
          return new m(this.j.a(paramLong, this, paramo, l, paramBoolean1, paramBoolean2, parami), null);
        }
        finally {}
        paramo = finally;
      }
    }
  }
  
  final void a(long paramLong)
  {
    if ((this.a != null) && (this.a.longValue() == paramLong)) {
      this.a = null;
    }
    while (this.b == null) {
      return;
    }
    this.b.remove(Long.valueOf(paramLong));
  }
  
  public void a(c paramc)
  {
    this.c = paramc.d.f().a();
  }
  
  public void a(i parami) {}
  
  public final void a(i parami, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      parami.B();
      parami.C();
      return;
    }
    this.i.q.c(parami);
  }
  
  protected final void a(Long paramLong, o paramo, h paramh)
  {
    if (((this.a != null) && (this.a.equals(paramLong))) || ((this.b != null) && (this.b.contains(paramLong)))) {
      return;
    }
    if (this.a == null)
    {
      this.a = paramLong;
      return;
    }
    if (this.b == null) {
      this.b = new HashSet();
    }
    this.b.add(paramLong);
  }
  
  public final void a_(boolean paramBoolean)
  {
    k_();
    j();
  }
  
  final void b(long paramLong) {}
  
  public void b(c paramc) {}
  
  protected void b_(boolean paramBoolean) {}
  
  public final boolean c()
  {
    return false;
  }
  
  public z e()
  {
    return null;
  }
  
  public q f()
  {
    throw aa.b();
  }
  
  public final void h()
  {
    a_(true);
  }
  
  public boolean i_()
  {
    return false;
  }
  
  public boolean j_()
  {
    return false;
  }
  
  public void k_()
  {
    try
    {
      if (this.a != null)
      {
        this.j.c(this.a.longValue(), this);
        this.a = null;
      }
      if (this.b != null)
      {
        Iterator localIterator = this.b.iterator();
        while (localIterator.hasNext())
        {
          Long localLong = (Long)localIterator.next();
          this.j.c(localLong.longValue(), this);
        }
        this.b.clear();
      }
    }
    finally {}
    if ((this.p != null) && (this.p.size() > 0))
    {
      this.i.a(this.p.values());
      this.p.clear();
    }
  }
  
  public boolean l_()
  {
    return this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */