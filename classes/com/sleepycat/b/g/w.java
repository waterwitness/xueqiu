package com.sleepycat.b.g;

import com.sleepycat.b.a.y;
import com.sleepycat.b.a.z;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.p;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.a.m;
import com.sleepycat.b.h.u;
import com.sleepycat.b.l.aa;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;

public class w
  extends s
{
  private af A;
  private boolean B;
  private Map<af, m> C;
  private Set<af> D;
  private Map<af, m> E;
  private boolean F;
  private boolean G;
  private long H;
  private long I;
  private y J;
  private Set<com.sleepycat.b.c.h> K;
  private AtomicBoolean L;
  public m a;
  public long b;
  public long c;
  public long d;
  public long t;
  public long u;
  public long v;
  public u w;
  private boolean y;
  private boolean z;
  
  static
  {
    if (!w.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      x = bool;
      return;
    }
  }
  
  public w(ad paramad, int paramInt, long paramLong1, long paramLong2, long paramLong3, long paramLong4, y paramy)
  {
    this(paramad, paramInt, paramLong1, paramLong2, false, paramLong3, paramLong4, paramy, null, null);
  }
  
  public w(ad paramad, int paramInt, long paramLong1, long paramLong2, boolean paramBoolean, long paramLong3, long paramLong4, y paramy, Set<com.sleepycat.b.c.h> paramSet, AtomicBoolean paramAtomicBoolean)
  {
    super(paramad, paramInt, true, paramLong1, null, -1L, paramLong2);
    this.F = paramBoolean;
    this.G = false;
    this.H = paramLong4;
    this.C = new HashMap();
    if (paramBoolean)
    {
      this.c = 0L;
      this.t = 0L;
      this.v = 0L;
      this.b = 0L;
      this.d = -256L;
      this.u = 0L;
      this.J = paramy;
      this.I = paramLong3;
      this.D = new HashSet();
      this.E = new HashMap();
      paramad = af.a().iterator();
      while (paramad.hasNext())
      {
        paramy = (af)paramad.next();
        if (paramy.c()) {
          this.D.add(paramy);
        }
      }
      this.D.add(af.v);
      this.w = this.e.Q();
      this.D.add(af.B);
      this.K = paramSet;
      this.L = paramAtomicBoolean;
    }
  }
  
  public final void a(af paramaf)
  {
    this.C.put(paramaf, paramaf.b());
  }
  
  protected final boolean a()
  {
    this.y = false;
    this.z = false;
    this.a = null;
    this.B = this.k.g.a(c(), this.H);
    this.A = af.a(this.k.b);
    Object localObject = (m)this.C.get(this.A);
    if (!this.B) {
      this.a = ((m)localObject);
    }
    if (af.u.equals(this.A)) {
      this.y = true;
    }
    if (af.z.equals(this.A)) {
      this.z = true;
    }
    if (!this.F) {
      return this.a != null;
    }
    if ((!this.A.c()) && (!this.A.equals(af.v)) && (!af.y.equals(this.A)))
    {
      localObject = this.J;
      long l = c();
      af localaf = this.A;
      int i = this.k.b();
      ((y)localObject).a(l, localaf, this.k.d + i, null);
    }
    if (af.p.equals(this.A))
    {
      this.J.a(p.a, c());
      this.J.a(p.b, c());
      this.J.a(p.a);
      this.J.a(p.b);
    }
    return (this.a != null) || (this.D.contains(this.A)) || (this.k.h);
  }
  
  protected final boolean a(ByteBuffer paramByteBuffer)
  {
    boolean bool;
    if (this.a != null)
    {
      this.a.a(this.e, this.k, paramByteBuffer);
      bool = b().equals(p.a);
      if ((!this.G) || (bool)) {
        bool = true;
      }
    }
    for (;;)
    {
      if (!this.F)
      {
        return bool;
        bool = false;
      }
      else
      {
        if (this.k.h) {
          this.w.a(c(), this.k, null);
        }
        if ((this.a == null) && (!this.D.contains(this.A)))
        {
          a(paramByteBuffer, d(paramByteBuffer) + this.k.d);
          return bool;
        }
        if (this.a == null)
        {
          if ((!x) && (!this.D.contains(this.A))) {
            throw new AssertionError();
          }
          this.a = ((m)this.E.get(this.A));
          if (this.a == null)
          {
            this.a = this.A.b();
            this.E.put(this.A, this.a);
          }
          this.a.a(this.e, this.k, paramByteBuffer);
        }
        long l1;
        Object localObject;
        if ((this.A.c()) || (this.A.equals(af.v)))
        {
          paramByteBuffer = this.J;
          l1 = c();
          localObject = this.A;
          int i = this.k.b();
          paramByteBuffer.a(l1, (af)localObject, this.k.d + i, this.a.a());
        }
        if (this.A.equals(af.B)) {
          this.w.a(c(), this.k, this.a);
        }
        paramByteBuffer = null;
        long l2;
        if (this.A.e())
        {
          localObject = (k)this.a;
          if ((this.A.equals(af.d)) || (this.A.equals(af.c)))
          {
            paramByteBuffer = ((aa)((k)localObject).c).a.a;
            l1 = paramByteBuffer.a;
            if (l1 > this.t)
            {
              l2 = l1;
              label438:
              this.t = l2;
              if (l1 >= this.d) {
                break label652;
              }
              label454:
              this.d = l1;
              this.J.a(paramByteBuffer, c());
            }
          }
          else
          {
            if (this.A.N.c)
            {
              l1 = ((k)localObject).l().longValue();
              if (l1 <= this.v) {
                break label661;
              }
              l2 = l1;
              label508:
              this.v = l2;
              if (l1 >= this.u) {
                break label670;
              }
              label524:
              this.u = l1;
            }
            if (!af.k.equals(this.A)) {
              break label1045;
            }
            ((k)localObject).b(false);
            byte[] arrayOfByte = ((k)localObject).k();
            localObject = ((k)localObject).c;
            l1 = com.sleepycat.b.l.h.b(arrayOfByte);
            localObject = this.J;
            l2 = c();
            ((y)localObject).h.put(Long.valueOf(l1), Long.valueOf(l2));
          }
        }
        for (;;)
        {
          label652:
          label661:
          label670:
          long l3;
          if (this.A.f())
          {
            l2 = ((com.sleepycat.b.g.a.j)this.a).c.c;
            if ((!x) && (l2 == -1L))
            {
              throw new AssertionError();
              l2 = this.t;
              break label438;
              l1 = this.d;
              break label454;
              l2 = this.v;
              break label508;
              l1 = this.u;
              break label524;
            }
            if (l2 <= this.c) {
              break label1027;
            }
            l3 = l2;
            label693:
            this.c = l3;
            if (l2 >= this.b) {
              break label1036;
            }
          }
          for (;;)
          {
            this.b = l2;
            if ((this.A.f()) || (this.A.equals(af.v)))
            {
              localObject = (com.sleepycat.b.g.a.i)this.a;
              l2 = ((com.sleepycat.b.g.a.i)localObject).b();
              if (l2 != -1L)
              {
                l3 = c();
                this.J.a(l2, l3, this.A, 0, ((com.sleepycat.b.g.a.i)localObject).a(), false);
              }
              l2 = ((com.sleepycat.b.g.a.i)localObject).c();
              if (l2 != -1L)
              {
                l3 = c();
                this.J.a(l2, l3, this.A, 0, ((com.sleepycat.b.g.a.i)localObject).a(), false);
              }
              if ((this.B) && (this.I != -1L))
              {
                l2 = c();
                if (com.sleepycat.b.p.j.b(this.I, l2) < 0) {
                  this.J.b(l2, this.A, 0, ((com.sleepycat.b.g.a.i)localObject).a());
                }
              }
            }
            if (l1 != -1L)
            {
              localObject = this.J.a(l1);
              if (localObject != null) {
                ((z)localObject).i();
              }
            }
            if (paramByteBuffer != null) {
              this.J.a(paramByteBuffer);
            }
            if (this.k.f >= 8) {
              break;
            }
            if ((this.K != null) && (this.A.c())) {
              this.K.add(this.a.a());
            }
            if ((this.L == null) || ((!this.A.equals(af.v)) && (!this.A.equals(af.w)))) {
              break;
            }
            this.L.set(true);
            return bool;
            label1027:
            l3 = this.c;
            break label693;
            label1036:
            l2 = this.b;
          }
          label1045:
          l1 = -1L;
          continue;
          l1 = -1L;
          paramByteBuffer = null;
        }
        bool = false;
      }
    }
  }
  
  public final com.sleepycat.b.c.h b()
  {
    return ((com.sleepycat.b.g.a.i)this.a).a();
  }
  
  public final boolean h()
  {
    return this.a.d().equals(af.v);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */