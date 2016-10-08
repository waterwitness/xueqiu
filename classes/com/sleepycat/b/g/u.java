package com.sleepycat.b.g;

import com.sleepycat.b.aa;
import com.sleepycat.b.b.d;
import com.sleepycat.b.c.ad;
import java.nio.ByteBuffer;

public class u
{
  public long a;
  public long b;
  public long c;
  public ByteBuffer d;
  protected final ad e;
  public final m f;
  public long g;
  public int h;
  private int j;
  private final int k;
  
  static
  {
    if (!s.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      return;
    }
  }
  
  public u(int paramInt, ad paramad)
  {
    this.k = paramad.u.a(d.M);
    this.e = paramad;
    this.f = paramad.x;
    this.d = ByteBuffer.allocate(paramInt);
    s.c(this.d);
  }
  
  final void a(int paramInt)
  {
    int m = s.d(this.d);
    s.a(this.d, m + paramInt);
  }
  
  public final void a(long paramLong)
  {
    a(com.sleepycat.b.p.j.d(paramLong), -1);
    this.b = com.sleepycat.b.p.j.e(paramLong);
    this.c = this.b;
  }
  
  public final void a(long paramLong, int paramInt)
  {
    this.a = paramLong;
    this.j = paramInt;
  }
  
  public void a(long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    j localj = this.f.f(paramLong1);
    try
    {
      this.b = paramLong2;
      a(paramLong1, localj.c);
      if ((!a(localj, paramLong3)) && (!paramBoolean)) {
        throw aa.c("Detected a log file gap when reading backwards. Target position = " + com.sleepycat.b.p.j.h(com.sleepycat.b.p.j.a(paramLong1, paramLong3)) + " starting position = " + com.sleepycat.b.p.j.h(com.sleepycat.b.p.j.a(paramLong1, paramLong2)) + " end position = " + com.sleepycat.b.p.j.h(com.sleepycat.b.p.j.a(paramLong1, this.c)));
      }
    }
    finally
    {
      localj.a();
    }
    localj.a();
  }
  
  public final boolean a(j paramj, long paramLong)
  {
    boolean bool = false;
    this.d.clear();
    if (this.f.a(paramj.a, this.d, this.b, paramj.d, false))
    {
      bool = true;
      this.h += 1;
      this.j = paramj.c;
    }
    this.c = (this.b + s.d(this.d));
    s.c(this.d);
    s.a(this.d, (int)(paramLong - this.b));
    return bool;
  }
  
  public boolean a(boolean paramBoolean, int paramInt)
  {
    boolean bool1 = true;
    b(paramInt);
    label103:
    do
    {
      try
      {
        localObject3 = this.f.f(this.a);
        localObject1 = localObject3;
        try
        {
          this.b = this.c;
          localObject1 = localObject3;
          boolean bool2 = a((j)localObject3, this.b);
          if (bool2)
          {
            if (localObject3 != null) {
              ((j)localObject3).a();
            }
            paramBoolean = false;
            return paramBoolean;
          }
          if (!paramBoolean) {
            break label103;
          }
          localObject1 = localObject3;
          throw new t("Single file only");
        }
        finally
        {
          localObject3 = localObject1;
          localObject1 = localObject4;
        }
      }
      finally
      {
        for (;;)
        {
          Object localObject1;
          Long localLong;
          Object localObject3 = null;
        }
      }
      if (localObject3 != null) {
        ((j)localObject3).a();
      }
      throw ((Throwable)localObject1);
      localObject1 = localObject3;
      localLong = this.f.a(this.a, true);
      if (localLong == null)
      {
        localObject1 = localObject3;
        throw new t();
      }
      localObject1 = localObject3;
      ((j)localObject3).a();
      localObject3 = this.f.f(localLong.longValue());
      localObject1 = localObject3;
      a(localLong.longValue(), ((j)localObject3).c);
      localObject1 = localObject3;
      this.b = 0L;
      localObject1 = localObject3;
      a((j)localObject3, 0L);
      paramBoolean = bool1;
    } while (localObject3 == null);
    ((j)localObject3).a();
    return true;
  }
  
  public final void b(int paramInt)
  {
    int m = this.d.capacity();
    if (paramInt > m) {
      if (m < this.k) {
        if (paramInt >= this.k) {
          break label78;
        }
      }
    }
    label78:
    for (m = Math.min(1024 - paramInt % 1024 + paramInt, this.k);; m = this.k)
    {
      this.d = ByteBuffer.allocate(m);
      if (paramInt > this.d.capacity()) {
        this.g += 1L;
      }
      return;
    }
  }
  
  public final boolean b(long paramLong)
  {
    return (paramLong >= this.b) && (paramLong < this.c);
  }
  
  public final void c(long paramLong)
  {
    if ((!i) && (!b(paramLong))) {
      throw new AssertionError(this + " doesn't contain " + com.sleepycat.b.p.j.h(paramLong));
    }
    s.a(this.d, (int)(paramLong - this.b));
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    long l1 = com.sleepycat.b.p.j.a(this.a, this.b);
    long l2 = com.sleepycat.b.p.j.a(this.a, this.c);
    localStringBuilder.append("window covers ");
    localStringBuilder.append(com.sleepycat.b.p.j.h(l1)).append(" to ");
    localStringBuilder.append(com.sleepycat.b.p.j.h(l2));
    localStringBuilder.append(" positioned at ");
    localStringBuilder.append(com.sleepycat.b.p.j.h(com.sleepycat.b.p.j.a(this.a, this.b + this.d.position())));
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */