package com.sleepycat.b.g;

import com.sleepycat.b.bn;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.f.a;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.j;
import com.sleepycat.b.p.o;
import com.sleepycat.b.p.z;
import java.nio.ByteBuffer;
import java.util.Iterator;
import java.util.LinkedList;

class ab
{
  private static final String c = ab.class.getName();
  int a;
  final com.sleepycat.b.p.d b;
  private ad d = null;
  private LinkedList<aa> e;
  private int f = -1;
  private int g = -1;
  private aa h;
  private int i;
  private final m j;
  private final ai k;
  private final com.sleepycat.b.p.d l;
  private final o m;
  private final z n;
  private final z o;
  private final boolean p;
  private final a q;
  private volatile long r = 0L;
  
  ab(m paramm, ad paramad)
  {
    this.j = paramm;
    this.d = paramad;
    this.q = new a(c + "_FullLatch");
    paramm = paramad.u;
    this.p = paramad.h;
    a(paramm);
    this.h = ((aa)this.e.getFirst());
    this.i = 0;
    this.k = new ai("LogBufferPool", "LogBufferPool statistics");
    this.l = new com.sleepycat.b.p.d(this.k, aq.D);
    this.b = new com.sleepycat.b.p.d(this.k, aq.E);
    this.m = new o(this.k, aq.F);
    this.n = new z(this.k, aq.G);
    this.o = new z(this.k, aq.C);
  }
  
  private int b(int paramInt)
  {
    if (paramInt < this.e.size() - 1) {
      return paramInt + 1;
    }
    return 0;
  }
  
  final aa a(int paramInt, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      b(paramInt, true);
      if (!this.p)
      {
        m localm = this.j;
        if (localm.j) {
          localm.e();
        }
        localm.y.a();
      }
    }
    for (;;)
    {
      return this.h;
      if ((!this.h.a(paramInt)) && ((!a(paramInt)) || (!this.h.a(paramInt)))) {
        b(paramInt, false);
      }
    }
  }
  
  final aa a(long paramLong)
  {
    this.l.g();
    if (j.b(paramLong, this.r) < 0)
    {
      this.b.g();
      return null;
    }
    this.q.a();
    label237:
    label262:
    for (;;)
    {
      aa localaa;
      try
      {
        Iterator localIterator = this.e.iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localaa = (aa)localIterator.next();
        if ((!aa.h) && (paramLong == -1L)) {
          throw new AssertionError();
        }
      }
      finally
      {
        this.q.a(false);
      }
      localaa.d();
      int i2 = 0;
      int i1 = i2;
      if (localaa.b != -1L)
      {
        i1 = i2;
        if (j.d(localaa.b) == j.d(paramLong))
        {
          long l1 = j.e(paramLong);
          if (localaa.a.position() != 0) {
            break label237;
          }
          i1 = localaa.a.limit();
          long l2 = j.e(localaa.b);
          long l3 = i1;
          i1 = i2;
          if (l2 <= l1)
          {
            i1 = i2;
            if (l3 + l2 > l1) {
              i1 = 1;
            }
          }
        }
      }
      if (i1 != 0) {}
      for (i1 = 1;; i1 = 0)
      {
        if (i1 == 0) {
          break label262;
        }
        this.q.a(false);
        return localaa;
        i1 = localaa.a.position();
        break;
        localaa.d.c();
      }
    }
    this.b.g();
    this.q.a(false);
    return null;
  }
  
  final ai a(bn parambn)
  {
    this.q.a();
    long l1 = 0L;
    int i1;
    try
    {
      Iterator localIterator = this.e.iterator();
      i1 = 0;
      while (localIterator.hasNext())
      {
        aa localaa = (aa)localIterator.next();
        i1 += 1;
        int i2 = localaa.a.capacity();
        l1 += i2;
      }
    }
    finally
    {
      this.q.c();
    }
    this.m.a(Integer.valueOf(i1));
    this.n.a(Long.valueOf(l1));
    return this.k.a(parambn.c);
  }
  
  final void a(com.sleepycat.b.c.m paramm)
  {
    int i1 = 1;
    if ((this.p) && (this.e != null)) {
      return;
    }
    if (this.h != null) {
      b(0, true);
    }
    int i2 = paramm.a(com.sleepycat.b.b.d.I);
    long l1 = this.d.n.ad;
    long l2 = paramm.a(com.sleepycat.b.b.d.N);
    int i3 = Math.min((int)l1 / i2, (int)l2);
    paramm = new LinkedList();
    if (this.p) {}
    for (;;)
    {
      i2 = 0;
      while (i2 < i1)
      {
        paramm.add(new aa(i3, this.d));
        i2 += 1;
      }
      this.q.a();
      this.e = paramm;
      this.a = i3;
      this.h = ((aa)this.e.getFirst());
      this.i = 0;
      this.q.c();
      return;
      i1 = i2;
    }
  }
  
  final void a(boolean paramBoolean)
  {
    this.q.a();
    label209:
    label246:
    label307:
    label322:
    for (;;)
    {
      try
      {
        int i1 = this.f;
        if (i1 < 0)
        {
          localObject1 = this.q;
          ((a)localObject1).a(false);
          return;
        }
        i1 = 1;
        Object localObject1 = (aa)this.e.get(this.f);
        ((aa)localObject1).d();
        try
        {
          boolean bool = this.p;
          if (!bool) {}
          try
          {
            ByteBuffer localByteBuffer = ((aa)localObject1).a;
            int i2 = localByteBuffer.position();
            int i3 = localByteBuffer.limit();
            localByteBuffer.flip();
            try
            {
              this.j.a((aa)localObject1, paramBoolean);
              if (localObject1 != null) {
                ((aa)localObject1).a();
              }
              ((aa)localObject1).a();
              if (this.f != this.g) {
                break label307;
              }
              i1 = 0;
              if (i1 != 0) {
                break label322;
              }
              this.f = -1;
              this.g = -1;
              localObject1 = this.q;
            }
            catch (Throwable localThrowable)
            {
              localByteBuffer.position(i2);
              localByteBuffer.limit(i3);
              if (!m.a()) {
                break label209;
              }
            }
            if (!(localThrowable instanceof RuntimeException)) {
              break label209;
            }
            throw ((RuntimeException)localThrowable);
          }
          finally
          {
            if (localObject1 == null) {}
          }
          localObject2 = finally;
        }
        finally
        {
          ((aa)localObject1).a();
        }
        if (!(localThrowable instanceof com.sleepycat.b.aa)) {
          break label246;
        }
      }
      finally {}
      if (!this.d.j()) {
        throw ((com.sleepycat.b.aa)localThrowable);
      }
      throw com.sleepycat.b.aa.a(this.d, (com.sleepycat.b.aa)localThrowable);
      if ((localThrowable instanceof Error))
      {
        this.d.a((Error)localThrowable);
        throw ((Error)localThrowable);
      }
      if ((localThrowable instanceof Exception)) {
        throw com.sleepycat.b.aa.a(this.d, (Exception)localThrowable);
      }
      throw com.sleepycat.b.aa.a(this.d, localThrowable.getMessage(), null);
      this.f = b(this.f);
    }
  }
  
  final boolean a(int paramInt)
  {
    this.q.a();
    this.h.d.a();
    aa localaa1 = this.h;
    try
    {
      long l1 = this.h.b;
      if (l1 == -1L) {
        return true;
      }
      if (this.p)
      {
        int i1 = paramInt;
        if (this.a > paramInt) {
          i1 = this.a;
        }
        this.h = new aa(i1, this.d);
        this.e.add(this.h);
        this.i = (this.e.size() - 1);
        return true;
      }
      if (this.f < 0) {
        this.f = this.i;
      }
      while (b(this.i) != this.f)
      {
        this.g = this.i;
        this.i = b(this.i);
        aa localaa2 = (aa)this.e.get(this.i);
        aa localaa3 = (aa)this.e.get(b(this.i));
        localaa2.c();
        this.h = localaa2;
        l1 = localaa3.b;
        if (l1 != -1L) {
          this.r = l1;
        }
        return true;
      }
      this.o.f();
      return false;
    }
    finally
    {
      localaa1.a();
      this.q.a(false);
    }
  }
  
  final void b(int paramInt, boolean paramBoolean)
  {
    if (!a(paramInt))
    {
      a(paramBoolean);
      if (!a(paramInt)) {
        throw com.sleepycat.b.aa.a(this.d, "No free log buffers.");
      }
    }
    a(paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */