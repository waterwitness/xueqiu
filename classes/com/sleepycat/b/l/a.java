package com.sleepycat.b.l;

import com.sleepycat.b.a.c.1;
import com.sleepycat.b.a.s;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.i;
import com.sleepycat.b.d.e;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.am;
import com.sleepycat.b.g.at;
import com.sleepycat.b.g.av;
import com.sleepycat.b.n.m;
import com.sleepycat.b.n.o;
import com.sleepycat.b.p.ae;
import com.sleepycat.b.p.ar;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.z;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;

public class a
  extends j
  implements at
{
  long a = -1L;
  private final ar<com.sleepycat.b.c.c> q = new ar();
  private int r = 0;
  private boolean s = false;
  private an t = an.a;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  public a() {}
  
  public a(i parami, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    super(parami, paramArrayOfByte, paramInt1, paramInt2);
  }
  
  private long a(int paramInt, com.sleepycat.b.a.c paramc)
  {
    ac localac = j(paramInt);
    if ((localac instanceof y))
    {
      y localy = (y)localac;
      if ((localy.c(k(paramInt))) && (paramc.a(this, paramInt, true)))
      {
        a(paramInt, localy, true);
        a(paramInt, null);
        localy.o();
        return localac.v_();
      }
    }
    return 0L;
  }
  
  private void a(int paramInt, y paramy, boolean paramBoolean)
  {
    long l1 = k(paramInt);
    int i;
    if ((paramBoolean) && (this.i.g()) && (com.sleepycat.b.p.j.c(l1))) {
      i = 1;
    }
    while ((i != 0) || (paramy.k()))
    {
      i locali = this.i;
      ad localad = locali.c;
      if ((!b) && (!locali.g()))
      {
        throw new AssertionError();
        i = 0;
      }
      else
      {
        long l2 = paramy.a(localad, locali, h(paramInt), l1, true, av.g);
        c(paramInt, l2);
        com.sleepycat.b.c.c.a(locali, l1, l2, null);
      }
    }
  }
  
  public final boolean A()
  {
    i locali = this.i;
    if ((this.s) || (locali.g()) || (this.m == -1L) || (this.r >= locali.r)) {}
    int i;
    int j;
    do
    {
      do
      {
        return false;
        i = c.a(this);
      } while (i <= 0);
      j = this.f;
    } while (i > locali.q * j / 100);
    return true;
  }
  
  protected final j a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new a(this.i, paramArrayOfByte, paramInt1, paramInt2);
  }
  
  final void a(int paramInt)
  {
    super.a(paramInt);
    this.t = this.t.a(paramInt, au.a.c, this);
  }
  
  final void a(int paramInt1, int paramInt2, int paramInt3)
  {
    super.a(paramInt1, paramInt2, paramInt3);
    this.t = this.t.a(paramInt1, paramInt2, paramInt3);
  }
  
  final void a(int paramInt, ac paramac)
  {
    if (paramac == null)
    {
      ac localac = j(paramInt);
      if ((localac instanceof y))
      {
        long l = ((y)localac).m();
        this.t = this.t.a(paramInt, l, this);
      }
    }
    super.a(paramInt, paramac);
  }
  
  final void a(int paramInt1, j paramj, int paramInt2)
  {
    super.a(paramInt1, paramj, paramInt2);
    long l = ((a)paramj).t.a(paramInt2);
    this.t = this.t.a(paramInt1, l, this);
  }
  
  final void a(long paramLong)
  {
    if (this.m == -1L)
    {
      this.m = paramLong;
      return;
    }
    this.a = paramLong;
  }
  
  public final void a(ad paramad, boolean paramBoolean)
  {
    paramad = paramad.A;
    paramad.h.g();
    if (paramBoolean) {
      paramad.k.g();
    }
  }
  
  public final void a(com.sleepycat.b.c.c paramc)
  {
    if ((!b) && (!F())) {
      throw new AssertionError();
    }
    this.q.b(paramc);
  }
  
  public final void a(e parame)
  {
    this.i.c.A.p[parame.ordinal()].g();
  }
  
  final void a(j paramj, int paramInt1, int paramInt2)
  {
    if ((!b) && (!paramj.F())) {
      throw new AssertionError();
    }
    if ((!b) && (!F())) {
      throw new AssertionError();
    }
    Iterator localIterator = this.q.iterator();
    while (localIterator.hasNext())
    {
      com.sleepycat.b.c.c localc = (com.sleepycat.b.c.c)localIterator.next();
      if (localc.c != this)
      {
        int i = localc.b;
        a locala = localc.a;
        if ((!b) && (locala != this)) {
          throw new AssertionError("nodeId=" + this.c + " cursor=" + localc.h());
        }
        if ((!b) && (!(paramj instanceof a))) {
          throw new AssertionError();
        }
        locala = (a)paramj;
        if (paramInt1 == 0)
        {
          if (i < paramInt2)
          {
            localIterator.remove();
            localc.a = locala;
            locala.a(localc);
          }
          else
          {
            localc.b = (i - (paramInt2 - paramInt1));
          }
        }
        else if (i >= paramInt1)
        {
          localc.b = (i - paramInt1);
          localIterator.remove();
          localc.a = locala;
          locala.a(localc);
        }
      }
    }
  }
  
  final void a(j paramj, int paramInt1, int paramInt2, byte[] paramArrayOfByte, boolean paramBoolean, com.sleepycat.b.a parama)
  {
    int i = 0;
    int k = a(paramArrayOfByte, true, false);
    int j = this.f;
    if ((0x10000 & k) != 0) {
      i = 1;
    }
    k &= 0xFFFEFFFF;
    if ((paramBoolean) && (k < 0))
    {
      a(paramj, paramInt1, paramInt2, 1, parama);
      return;
    }
    if ((!paramBoolean) && (i == 0) && (k == j - 1))
    {
      a(paramj, paramInt1, paramInt2, j - 1, parama);
      return;
    }
    a(paramj, paramInt1, paramInt2, parama);
  }
  
  public final void a(q paramq)
  {
    long l;
    if (paramq.l)
    {
      l = -1L;
      a(paramq, l, this.a);
      if (!paramq.l) {
        break label60;
      }
      this.a = paramq.d;
      this.r += 1;
    }
    label60:
    label118:
    for (;;)
    {
      this.s = false;
      return;
      l = this.m;
      break;
      this.m = paramq.d;
      this.a = -1L;
      this.r = 0;
      int i = 0;
      for (;;)
      {
        if (i >= this.f) {
          break label118;
        }
        if ((o(i)) || (l(i)))
        {
          q();
          break;
        }
        i += 1;
      }
    }
  }
  
  public final void a(q paramq, p paramp)
  {
    Object localObject2 = this.i;
    ad localad = ((i)localObject2).c;
    com.sleepycat.b.a.c localc = localad.D;
    boolean bool1 = paramp.e;
    i locali = this.i;
    Object localObject1 = null;
    int i = 0;
    int n = this.f;
    int k = 0;
    int m;
    label73:
    long l;
    int j;
    if (k < n)
    {
      boolean bool2 = i(k);
      if (j(k) != null)
      {
        m = 1;
        l = k(k);
        if (l == -1L) {
          break label576;
        }
        if (!bool2) {
          break label152;
        }
        localc.v.f();
        j = 1;
        label106:
        if (j == 0) {
          break label576;
        }
        if (m == 0) {
          break label284;
        }
        localc.a(locali, l, this, k, bool2, false, 0L, bool1, "CleanMigrateLN:");
      }
    }
    label152:
    label220:
    label228:
    label284:
    label561:
    label576:
    for (;;)
    {
      k += 1;
      break;
      m = 0;
      break label73;
      if (!localc.Z.b)
      {
        Long localLong = Long.valueOf(com.sleepycat.b.p.j.d(l));
        if (m == 0)
        {
          if (!bool1) {
            break label220;
          }
          if (!localc.S) {
            break label228;
          }
        }
        while (localc.R)
        {
          if (!localc.X.contains(localLong)) {
            break label228;
          }
          localc.w.f();
          j = 1;
          break;
        }
        if (((localc.K) || ((localc.J) && (m != 0))) && (localc.Y.contains(localLong)))
        {
          localc.x.f();
          j = 1;
          break label106;
        }
      }
      j = 0;
      break label106;
      if (localObject1 == null) {
        localObject1 = new Integer[n];
      }
      for (;;)
      {
        localObject1[i] = Integer.valueOf(k);
        i += 1;
        break;
        if (localObject1 != null)
        {
          Arrays.sort((Object[])localObject1, 0, i, new c.1(localc, this));
          j = 0;
          while (j < i)
          {
            k = localObject1[j].intValue();
            localc.a(locali, k(k), this, k, i(k), false, 0L, bool1, "CleanMigrateLN:");
            j += 1;
          }
        }
        if ((paramp.l) && (A())) {
          localObject1 = new c(this);
        }
        for (bool1 = true;; bool1 = false)
        {
          if ((paramp.m) && (!bool1)) {
            localad.a(this);
          }
          if (!((i)localObject2).g()) {
            break;
          }
          i = 0;
          while (i < this.f)
          {
            localObject2 = j(i);
            if ((localObject2 != null) && ((localObject2 instanceof y))) {
              a(i, (y)localObject2, true);
            }
            i += 1;
          }
          localObject1 = null;
        }
        paramq.l = bool1;
        if (bool1)
        {
          l = -1L;
          a(paramq, paramp, l, this.a);
          if (!bool1) {
            break label561;
          }
        }
        for (paramp = new com.sleepycat.b.g.a.b((c)localObject1);; paramp = new com.sleepycat.b.g.a.j(this))
        {
          paramq.a = paramp;
          return;
          l = this.m;
          break;
        }
      }
    }
  }
  
  public final boolean a(s params)
  {
    if (!this.i.c.j()) {
      return false;
    }
    if (p() > 0) {
      throw com.sleepycat.b.aa.b();
    }
    i locali = this.i;
    ad localad = locali.c;
    int k = 0;
    int j = 0;
    int i = 0;
    com.sleepycat.b.n.a locala;
    if (k < this.f)
    {
      if ((!l(k)) && (!o(k))) {
        break label418;
      }
      locala = com.sleepycat.b.n.a.a(localad);
      locala.r = false;
    }
    for (;;)
    {
      long l;
      Object localObject;
      try
      {
        l = k(k);
        if (l != -1L)
        {
          localObject = locala.b(l, o.a, false, locali).a;
          com.sleepycat.b.n.h localh = com.sleepycat.b.n.h.f;
          if (localObject == localh)
          {
            locala.a_(true);
            m = 1;
            j = i;
            i = m;
            k += 1;
            m = i;
            i = j;
            j = m;
            break;
          }
        }
        if (w.a(h(k), this.g, this.i.p) != 0) {
          break label415;
        }
        i = 1;
        if (locali.g())
        {
          localObject = (y)j(k);
          if ((localObject != null) && (((y)localObject).k()) && (!com.sleepycat.b.p.j.b(l)))
          {
            if (!locali.e()) {
              break label331;
            }
            if (params == null) {
              break label300;
            }
            params.a(l, ((y)localObject).a(true, false), ((y)localObject).g & 0x7FFFFFFF, locali);
          }
        }
        boolean bool = s(k);
        if ((b) || (bool)) {
          break label343;
        }
        throw new AssertionError();
      }
      finally
      {
        locala.a_(true);
      }
      label300:
      localad.w.a(l, ((y)localObject).a(true, false), ((y)localObject).g & 0x7FFFFFFF, locali, true);
      continue;
      label331:
      a(k, (y)localObject, false);
      continue;
      label343:
      int m = k - 1;
      locala.a_(true);
      k = i;
      i = j;
      j = k;
      k = m;
      continue;
      if ((this.f != 0) && (i != 0)) {
        a(h(0));
      }
      if (this.f == 0) {
        this.e = 0L;
      }
      return j == 0;
      label415:
      continue;
      label418:
      m = i;
      i = j;
      j = m;
    }
  }
  
  public final void b(int paramInt)
  {
    super.b(paramInt);
    y localy = (y)j(paramInt);
    a(localy, null);
    if (localy != null) {
      localy.o();
    }
    b(paramInt, false);
    a(paramInt, null);
    a(true);
  }
  
  public final void b(com.sleepycat.b.c.c paramc)
  {
    if ((!b) && (!F())) {
      throw new AssertionError();
    }
    this.q.a(paramc);
  }
  
  public final long c()
  {
    if (this.t == null) {
      return super.c();
    }
    return super.c() + this.t.a();
  }
  
  public final void c(int paramInt)
  {
    super.c(paramInt);
    a(true);
  }
  
  public final d d()
  {
    return new d(this.c, this.i.a, this.g);
  }
  
  final void d(int paramInt)
  {
    if ((!b) && (!F())) {
      throw new AssertionError();
    }
    if (this.q != null)
    {
      Iterator localIterator = this.q.iterator();
      while (localIterator.hasNext())
      {
        com.sleepycat.b.c.c localc = (com.sleepycat.b.c.c)localIterator.next();
        if (localc.c != this)
        {
          int i = localc.b;
          if (paramInt <= i) {
            localc.b = (i + 1);
          }
        }
      }
    }
  }
  
  public final void e(int paramInt)
  {
    long l = a(paramInt, this.i.c.D);
    a(l, 0L);
    if (l > 0L) {
      N();
    }
  }
  
  final boolean e()
  {
    return true;
  }
  
  public final boolean f()
  {
    return true;
  }
  
  final boolean f(int paramInt)
  {
    return true;
  }
  
  public final long g()
  {
    if (this.a != -1L) {
      return this.a;
    }
    return this.m;
  }
  
  public final ac g(int paramInt)
  {
    try
    {
      ac localac = super.g(paramInt);
      return localac;
    }
    catch (ae localae)
    {
      throw com.sleepycat.b.aa.a(localae);
    }
  }
  
  public final long h()
  {
    return this.a;
  }
  
  public final void i()
  {
    this.s = true;
  }
  
  public boolean j()
  {
    return p() > 0;
  }
  
  final boolean k()
  {
    if (this.i.a.equals(com.sleepycat.b.c.p.a)) {
      return R();
    }
    return false;
  }
  
  final int l()
  {
    com.sleepycat.b.a.c localc = this.i.c.D;
    int i = 0;
    while (i < this.f)
    {
      ac localac = j(i);
      if (localac != null)
      {
        if ((!(localac instanceof y)) || (!((y)localac).n())) {
          return 0;
        }
        if (localc.a(this, i, false)) {
          return 1;
        }
      }
      i += 1;
    }
    return 2;
  }
  
  final boolean m()
  {
    return false;
  }
  
  public long n()
  {
    return ao.w;
  }
  
  public final long o()
  {
    long l1 = 0L;
    long l2 = l1;
    if (this.i.a.equals(com.sleepycat.b.c.p.a))
    {
      int i = 0;
      for (;;)
      {
        l2 = l1;
        if (i >= this.h.length) {
          break;
        }
        ac localac = j(i);
        l2 = l1;
        if (localac != null) {
          l2 = l1 + ((aa)localac).a.t();
        }
        i += 1;
        l1 = l2;
      }
    }
    return l2;
  }
  
  public final int p()
  {
    ar localar = this.q;
    if ((localar.b != null) && (localar.c != null)) {
      return 2;
    }
    if ((localar.b != null) || (localar.c != null)) {
      return 1;
    }
    if (localar.a != null) {
      return localar.a.size();
    }
    return 0;
  }
  
  public final void q()
  {
    if (A()) {
      a(true);
    }
    ad localad;
    do
    {
      return;
      localad = this.i.c;
    } while (localad.B == null);
    localad.B.a(this);
  }
  
  public final boolean r()
  {
    return true;
  }
  
  public final long s()
  {
    if ((!b) && (!F())) {
      throw new AssertionError("BIN must be latched before evicting LNs");
    }
    com.sleepycat.b.a.c localc = this.i.c.D;
    long l;
    if (p() == 0)
    {
      int i = 0;
      l = 0L;
      while (i < this.f)
      {
        l += a(i, localc);
        i += 1;
      }
      a(l, 0L);
    }
    for (;;)
    {
      if (l > 0L) {
        N();
      }
      return l;
      l = 0L;
    }
  }
  
  final boolean t()
  {
    int i;
    if (!F())
    {
      i = 1;
      if (i == 0) {
        break label146;
      }
    }
    for (;;)
    {
      int k;
      try
      {
        B();
      }
      finally
      {
        boolean bool;
        int m;
        if ((i == 0) || (!F())) {
          continue;
        }
        C();
      }
      if (k < this.f)
      {
        bool = o(k);
        m = j;
        if (!bool) {
          m = j + 1;
        }
        k += 1;
        j = m;
        continue;
        i = 0;
        break;
      }
      if (j > 0)
      {
        if ((i != 0) && (F())) {
          C();
        }
        return false;
      }
      int j = p();
      if (j > 0)
      {
        if ((i == 0) || (!F())) {}
      }
      else
      {
        if ((i != 0) && (F())) {
          C();
        }
        return true;
        label146:
        k = 0;
        j = 0;
      }
    }
  }
  
  final void u()
  {
    long l = this.c;
  }
  
  public String v()
  {
    return "<bin>";
  }
  
  public String w()
  {
    return "</bin>";
  }
  
  public final void x()
  {
    Object localObject = this.i.c;
    int i = 0;
    while (i < this.f)
    {
      localObject = j(i);
      if (localObject != null) {
        a(i, (y)localObject, true);
      }
      i += 1;
    }
  }
  
  public af y()
  {
    return af.m;
  }
  
  public String z()
  {
    return "BIN";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */