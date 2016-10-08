package com.sleepycat.b.l.a;

import com.sleepycat.b.a.s;
import com.sleepycat.b.aa;
import com.sleepycat.b.aw;
import com.sleepycat.b.b.d;
import com.sleepycat.b.c.al;
import com.sleepycat.b.c.i;
import com.sleepycat.b.c.p;
import com.sleepycat.b.g.af;
import com.sleepycat.b.l.ac;
import com.sleepycat.b.l.ah;
import com.sleepycat.b.l.e;
import com.sleepycat.b.l.j;
import com.sleepycat.b.l.w;
import com.sleepycat.b.n.h;
import com.sleepycat.b.n.o;
import com.sleepycat.b.n.q;
import java.io.PrintStream;
import java.util.Iterator;

public class c
{
  public final com.sleepycat.b.c.ad a;
  public final p b;
  public final boolean c;
  public final aw d;
  private s f;
  private long g;
  private com.sleepycat.b.l.a h;
  private int i;
  
  static
  {
    if (!c.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  public c(com.sleepycat.b.c.ad paramad, p paramp)
  {
    this.a = paramad;
    this.b = paramp;
    this.c = paramad.u.a(d.l);
    if (paramad.K != null) {}
    for (paramad = paramad.K;; paramad = new aw())
    {
      this.d = paramad;
      return;
    }
  }
  
  public static void a(i parami, j paramj)
  {
    if (!parami.h()) {}
    while (((paramj instanceof b)) || ((paramj instanceof a))) {
      return;
    }
    paramj.B();
    int j = 0;
    try
    {
      while (j < paramj.f)
      {
        parami = paramj.h(j);
        parami = com.sleepycat.b.c.y.a(parami, parami.length);
        paramj.a(j, paramj.j(j), paramj.k(j), parami);
        j += 1;
      }
      parami = paramj.g;
      paramj.a(com.sleepycat.b.c.y.a(parami, parami.length));
      if ((!e) && (!paramj.K())) {
        throw new AssertionError();
      }
    }
    finally
    {
      paramj.C();
    }
    paramj.C();
  }
  
  private void a(b paramb, byte[] paramArrayOfByte)
  {
    paramb.B();
    int j = 0;
    for (;;)
    {
      j localj;
      a locala;
      int k;
      try
      {
        if (j >= paramb.f) {
          break label369;
        }
        localj = (j)paramb.q(j);
        if (!(localj instanceof a)) {
          break label356;
        }
        locala = (a)localj;
        locala.B();
        k = 0;
        int m;
        try
        {
          if (k >= locala.f) {
            break label272;
          }
          if (a(locala, k)) {
            break label464;
          }
          byte[] arrayOfByte = com.sleepycat.b.c.y.b(paramArrayOfByte, locala.h(k));
          if ((this.h.P()) || (!this.h.b(arrayOfByte)))
          {
            this.h.N();
            this.h.C();
            this.a.b(false);
            this.h = ((com.sleepycat.b.l.a)locala.i.b.a(arrayOfByte, com.sleepycat.b.a.c));
          }
          e locale = new e(arrayOfByte, locala.k(k), locala.h[k]);
          m = this.h.b(locale);
          if ((0x20000 & m) == 0) {
            throw aa.c("Key not inserted: " + w.a(arrayOfByte, 0) + " DB: " + locala.i.a);
          }
        }
        finally {}
        this.i = (m & 0xFFFDFFFF);
      }
      finally
      {
        paramb.C();
      }
      locala.a(k, null, null);
      this.g += 1L;
      break label464;
      label272:
      if ((!e) && (!locala.K())) {
        throw new AssertionError();
      }
      if (locala.g() != -1L) {
        this.f.b(locala.g(), af.o, 0, locala.i);
      }
      locala.C();
      for (;;)
      {
        paramb.a(j, null, null);
        this.a.t.b(localj);
        j += 1;
        break;
        label356:
        a((b)localj, paramArrayOfByte);
      }
      label369:
      if ((!e) && (!paramb.K())) {
        throw new AssertionError();
      }
      if (paramb.g() != -1L) {
        this.f.b(paramb.g(), af.n, 0, paramb.i);
      }
      paramArrayOfByte = paramb.a;
      if ((paramArrayOfByte != null) && (paramArrayOfByte.b != -1L)) {
        this.f.b(paramArrayOfByte.b, af.j, 0, paramb.i);
      }
      paramb.C();
      return;
      label464:
      k += 1;
    }
  }
  
  public static boolean a(i parami)
  {
    return (parami.h()) && (!parami.i()) && (!parami.z());
  }
  
  private boolean a(com.sleepycat.b.l.a parama, int paramInt)
  {
    if ((!parama.o(paramInt)) && (!parama.l(paramInt))) {
      return false;
    }
    long l = parama.k(paramInt);
    if (l == -1L) {
      return true;
    }
    com.sleepycat.b.n.a locala = com.sleepycat.b.n.a.a(this.a);
    locala.r = false;
    try
    {
      parama = locala.b(l, o.a, false, parama.i).a;
      h localh = h.f;
      return parama != localh;
    }
    finally
    {
      locala.a_(true);
    }
  }
  
  private void b()
  {
    this.h.s(this.i);
    if ((this.i == 0) && (this.h.f != 0)) {
      this.h.a(this.h.h(0));
    }
    this.i -= 1;
  }
  
  public final boolean a()
  {
    Iterator localIterator = this.a.t.iterator();
    while (localIterator.hasNext())
    {
      j localj = (j)localIterator.next();
      if (((localj instanceof b)) || ((localj instanceof a)))
      {
        System.out.println(localj.toString());
        return false;
      }
    }
    return true;
  }
  
  public final void b(i parami)
  {
    boolean bool = parami.e;
    for (;;)
    {
      int j;
      try
      {
        this.f = new s(this.a);
        parami.e = true;
        parami.m();
        if (!this.c)
        {
          localObject1 = this.d;
          parami.c.a(new i[] { parami }, (aw)localObject1);
        }
        this.h = ((com.sleepycat.b.l.a)parami.b.a(com.sleepycat.b.a.c));
        Object localObject1 = this.h;
        if (localObject1 == null) {
          return;
        }
        this.i = -1;
        this.i += 1;
        if (this.i < this.h.f)
        {
          j = 1;
          if (j == 0) {
            break label333;
          }
          if (!a(this.h, this.i)) {
            break label239;
          }
          b();
          continue;
        }
        this.h.N();
      }
      finally
      {
        parami.e = bool;
      }
      if ((!e) && (!this.h.K())) {
        throw new AssertionError();
      }
      this.h = this.h.i.b.a(this.h, com.sleepycat.b.a.c);
      if (this.h == null)
      {
        j = 0;
      }
      else
      {
        this.i = 0;
        j = 1;
        continue;
        label239:
        Object localObject3 = this.h.g(this.i);
        if (!((ac)localObject3).T())
        {
          if ((!e) && (!(localObject3 instanceof com.sleepycat.b.l.y))) {
            throw new AssertionError();
          }
          this.g += 1L;
        }
        else
        {
          byte[] arrayOfByte = this.h.h(this.i);
          b();
          localObject3 = (b)localObject3;
          this.a.t.b((j)localObject3);
          a((b)localObject3, arrayOfByte);
          continue;
          label333:
          parami.j();
          parami.a(false);
          this.a.D.aa.a(this.f);
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */