package com.sleepycat.b.g;

import com.sleepycat.b.a.b;
import com.sleepycat.b.a.o;
import com.sleepycat.b.a.q;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.a.m;
import com.sleepycat.b.p.au;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class e
  extends s
{
  public m a;
  public byte b;
  public au c = au.a;
  private final Map<af, f> t;
  private final o u;
  private final q v;
  
  static
  {
    if (!e.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  public e(ad paramad, int paramInt, long paramLong, Long paramLong1, o paramo, q paramq)
  {
    super(paramad, paramInt, true, paramLong, paramLong1, -1L, -1L);
    this.u = paramo;
    this.v = paramq;
    this.t = new HashMap();
    paramad = af.a().iterator();
    while (paramad.hasNext())
    {
      paramLong1 = (af)paramad.next();
      if (paramLong1.e()) {
        a((byte)0, paramLong1);
      }
      if (paramLong1.f()) {
        a((byte)1, paramLong1);
      }
    }
    a((byte)2, af.v);
    a((byte)3, af.p);
    a((byte)4, af.y);
  }
  
  private void a(byte paramByte, af paramaf)
  {
    this.t.put(paramaf, new f(paramaf.b(), paramByte));
  }
  
  protected final boolean a(ByteBuffer paramByteBuffer)
  {
    Object localObject1 = af.a(this.k.b);
    int i = d();
    Object localObject2;
    if (this.k.b != af.y.K)
    {
      localObject2 = this.u;
      ((o)localObject2).a += 1;
      localObject2 = this.u;
      ((o)localObject2).b += i;
      if (b.a((af)localObject1))
      {
        if (!b.b((af)localObject1)) {
          break label130;
        }
        localObject2 = this.u;
        ((o)localObject2).e += 1;
        localObject2 = this.u;
        ((o)localObject2).f = (i + ((o)localObject2).f);
      }
    }
    while (this.k.i)
    {
      b(paramByteBuffer);
      b();
      return false;
      label130:
      localObject2 = this.u;
      ((o)localObject2).c += 1;
      localObject2 = this.u;
      ((o)localObject2).d += i;
      if (((af)localObject1).f())
      {
        localObject2 = this.v;
        ((q)localObject2).a += 1;
        localObject2 = this.v;
        ((q)localObject2).b += i;
      }
      if (((af)localObject1).equals(af.v))
      {
        localObject2 = this.v;
        ((q)localObject2).c += 1;
        localObject2 = this.v;
        ((q)localObject2).d = (i + ((q)localObject2).d);
      }
    }
    if (this.k.h)
    {
      localObject2 = this.k.e;
      if (localObject2 != null)
      {
        if ((!d) && (((au)localObject2).b(this.c) <= 0)) {
          throw new AssertionError("vlsns out of order, last=" + this.c + " current=" + localObject2);
        }
        this.c = ((au)localObject2);
      }
    }
    localObject1 = (f)this.t.get(localObject1);
    if (localObject1 == null)
    {
      b(paramByteBuffer);
      b();
      return false;
    }
    this.b = ((f)localObject1).b;
    this.a = ((f)localObject1).a;
    this.a.a(this.e, this.k, paramByteBuffer);
    return true;
  }
  
  public final void b()
  {
    Object localObject1 = af.a(this.k.b);
    if (!b.a((af)localObject1)) {}
    int i;
    do
    {
      return;
      i = d();
      if (b.b((af)localObject1))
      {
        localObject1 = this.u;
        ((o)localObject1).i += 1;
        localObject1 = this.u;
        ((o)localObject1).j = (i + ((o)localObject1).j);
        localObject1 = this.u;
        ((o)localObject1).k += 1;
        return;
      }
      Object localObject2 = this.u;
      ((o)localObject2).h += 1;
      if (((af)localObject1).f())
      {
        localObject2 = this.v;
        ((q)localObject2).e += 1;
        localObject2 = this.v;
        ((q)localObject2).f += i;
      }
    } while (!((af)localObject1).equals(af.v));
    localObject1 = this.v;
    ((q)localObject1).g += 1;
    localObject1 = this.v;
    ((q)localObject1).h = (i + ((q)localObject1).h);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */