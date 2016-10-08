package com.sleepycat.b.i.i;

import com.sleepycat.a.a.l;
import com.sleepycat.b.aa;
import com.sleepycat.b.av;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.i;
import com.sleepycat.b.n.z;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;
import com.sleepycat.b.q;
import java.util.Iterator;

public class c
{
  protected au a = au.a;
  protected au b = au.a;
  boolean c;
  boolean d = false;
  private final long f;
  private final int g;
  private long h = -1L;
  private d<Integer> i;
  private int j;
  private int k;
  
  static
  {
    if (!c.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      e = bool;
      return;
    }
  }
  
  c(long paramLong, int paramInt1, int paramInt2, int paramInt3, au paramau)
  {
    this.f = paramLong;
    this.g = paramInt1;
    this.j = paramInt2;
    this.k = paramInt3;
    this.a = paramau;
    this.b = paramau;
    this.i = new d();
    this.i.add(0, Integer.valueOf(0));
  }
  
  private c(l paraml)
  {
    this.f = paraml.j();
    this.g = paraml.i();
    this.a = new au(paraml.j());
    this.b = new au(paraml.j());
    this.h = paraml.j();
    int n = paraml.i();
    this.i = new d(n);
    while (m < n)
    {
      this.i.add(m, Integer.valueOf(j.f(paraml.g())));
      m += 1;
    }
  }
  
  private int a(int paramInt, boolean paramBoolean)
  {
    int n;
    if (paramBoolean)
    {
      m = paramInt;
      while (m < this.i.size())
      {
        if (((Integer)this.i.get(m)).intValue() != 0)
        {
          n = m;
          return n;
        }
        m += 1;
      }
    }
    int m = paramInt;
    for (;;)
    {
      if (m < 0) {
        return paramInt;
      }
      n = m;
      if (((Integer)this.i.get(m)).intValue() != 0) {
        break;
      }
      m -= 1;
    }
    return paramInt;
  }
  
  public static c a(com.sleepycat.b.m paramm)
  {
    return (c)new e((byte)0).entryToObject(paramm);
  }
  
  private boolean g(au paramau)
  {
    return (paramau.c - this.a.c) % this.g == 0L;
  }
  
  private int h(au paramau)
  {
    if ((!e) && (!g(paramau))) {
      throw new AssertionError("Don't call getIndex on non-modulo VLSN " + paramau + " bucket=" + this);
    }
    return (int)((paramau.c - this.a.c) / this.g);
  }
  
  private boolean h()
  {
    return (this.a.a(this.b)) && (this.h == -1L);
  }
  
  private int i(au paramau)
  {
    return (int)((paramau.c - this.a.c + (this.g - 1)) / this.g);
  }
  
  public long a(au paramau)
  {
    for (;;)
    {
      long l;
      try
      {
        if (this.b.a(paramau))
        {
          l = this.h;
          return l;
        }
        if (this.a.b(paramau) >= 0)
        {
          m = 0;
          if (m >= 0) {
            break label91;
          }
          throw aa.c("index=" + m + " vlsn=" + paramau + " bucket=" + this);
        }
      }
      finally {}
      int m = i(paramau);
      continue;
      label91:
      if (m >= this.i.size())
      {
        l = this.h;
      }
      else
      {
        m = a(m, true);
        m = ((Integer)this.i.get(m)).intValue();
        if (m == 0) {
          l = this.h;
        } else {
          l = j.a(this.f, m);
        }
      }
    }
  }
  
  void a(com.sleepycat.a.a.m paramm)
  {
    paramm.d(this.f);
    paramm.c(this.g);
    paramm.d(this.a.c);
    paramm.d(this.b.c);
    paramm.d(this.h);
    paramm.c(this.i.size());
    Iterator localIterator = this.i.iterator();
    while (localIterator.hasNext()) {
      paramm.b(j.a(((Integer)localIterator.next()).intValue()));
    }
  }
  
  final void a(ad paramad, i parami, z paramz)
  {
    if (!this.c) {}
    for (;;)
    {
      return;
      i locali = null;
      try
      {
        parami = q.a(parami, paramz, com.sleepycat.b.g.a);
        locali = parami;
        a(paramad, parami);
        return;
      }
      finally
      {
        if (locali != null) {
          locali.close();
        }
      }
    }
  }
  
  final void a(ad paramad, com.sleepycat.b.e parame)
  {
    if (!this.c) {
      return;
    }
    com.sleepycat.b.m localm1 = new com.sleepycat.b.m();
    com.sleepycat.b.m localm2 = new com.sleepycat.b.m();
    com.sleepycat.a.a.g.a(this.a.c, localm1);
    new e((byte)0).objectToEntry(this, localm2);
    parame.a.i = false;
    parame = parame.a(localm1, localm2);
    if (parame != av.a) {
      throw aa.a(paramad, "Unable to write VLSNBucket for file " + this.f + " status=" + parame);
    }
    this.c = false;
  }
  
  boolean a()
  {
    return false;
  }
  
  boolean a(au paramau, long paramLong)
  {
    for (;;)
    {
      try
      {
        bool = this.d;
        if (bool)
        {
          bool = false;
          return bool;
        }
        if ((!e) && (paramau.b(this.a) < 0)) {
          throw new AssertionError("firstVLSN = " + this.a + " should not be greater than " + paramau);
        }
      }
      finally {}
      int m;
      if (j.d(paramLong) != this.f)
      {
        m = 0;
      }
      else
      {
        if ((h()) || (this.b.b(paramau) > 0)) {
          break label408;
        }
        bool = g(paramau);
        if ((bool) && (this.i.size() >= this.j))
        {
          m = 0;
        }
        else
        {
          if (((!bool) || (h(paramau) != this.i.size())) && (this.b.b(paramau) >= 0)) {
            break label408;
          }
          m = ((Integer)this.i.get(this.i.size() - 1)).intValue();
          if (j.e(paramLong) - j.a(m) <= this.k) {
            break label408;
          }
          m = 0;
        }
      }
      label322:
      label408:
      label412:
      for (;;)
      {
        int i1;
        int n;
        if (g(paramau))
        {
          i1 = h(paramau);
          n = this.i.size();
          if (i1 >= n) {
            break label322;
          }
          this.i.set(i1, Integer.valueOf(j.f(paramLong)));
        }
        for (;;)
        {
          this.c = true;
          if ((this.b.b(paramau) >= 0) && (this.h != -1L)) {
            break;
          }
          this.b = paramau;
          this.h = paramLong;
          this.c = true;
          break;
          m = n;
          if (i1 == n)
          {
            this.i.add(Integer.valueOf(j.f(paramLong)));
          }
          else
          {
            while (m < i1)
            {
              this.i.add(Integer.valueOf(0));
              m += 1;
            }
            this.i.add(Integer.valueOf(j.f(paramLong)));
          }
        }
        for (;;)
        {
          if (m != 0) {
            break label412;
          }
          bool = false;
          break;
          m = 1;
        }
      }
      boolean bool = true;
    }
  }
  
  long b()
  {
    return this.f;
  }
  
  public long b(au paramau)
  {
    for (;;)
    {
      int m;
      try
      {
        if (this.b.b(paramau) <= 0)
        {
          l = this.h;
          return l;
        }
        int n = (int)((paramau.c - this.a.c) / this.g);
        m = n;
        if (n >= this.i.size()) {
          m = this.i.size() - 1;
        }
        m = a(m, false);
        m = ((Integer)this.i.get(m)).intValue();
        if ((!e) && (m == 0)) {
          throw new AssertionError("bucket should always have a non-null first offset. vlsn= " + paramau + " bucket=" + this);
        }
      }
      finally {}
      long l = j.a(this.f, m);
    }
  }
  
  void b(au paramau, long paramLong)
  {
    if (f()) {}
    while (this.b.b(paramau) < 0) {
      return;
    }
    if (this.a.b(paramau) >= 0)
    {
      this.b = this.a;
      this.h = -1L;
      this.i.clear();
      return;
    }
    int n = i(paramau);
    if (n <= 0) {
      throw aa.c("deleteIndex=" + n + " startOfDelete=" + paramau + " bucket=" + this);
    }
    int m;
    if (n < this.i.size())
    {
      m = n;
      if (paramLong == -1L)
      {
        int i1 = a(n - 1, false);
        m = n;
        if (i1 != n - 1) {
          m = i1 + 1;
        }
      }
      this.i.a(m);
    }
    for (;;)
    {
      if (paramLong != -1L) {
        break label317;
      }
      this.b = new au((this.i.size() - 1) * this.g + this.a.c);
      paramau = (Integer)this.i.get(this.i.size() - 1);
      if ((e) || (paramau != null)) {
        break;
      }
      throw new AssertionError();
      if (paramLong == -1L)
      {
        m = this.i.size() - 1;
        n = a(m, false);
        if (n < m) {
          this.i.a(n);
        }
      }
    }
    for (this.h = j.a(this.f, paramau.intValue());; this.h = paramLong)
    {
      this.c = true;
      return;
      label317:
      this.b = paramau.e();
    }
  }
  
  public long c()
  {
    return this.f;
  }
  
  public long c(au paramau)
  {
    try
    {
      if ((!e) && (!d(paramau))) {
        throw new AssertionError("vlsn=" + paramau + " " + this);
      }
    }
    finally {}
    long l;
    if (this.b.a(paramau)) {
      l = this.h;
    }
    for (;;)
    {
      return l;
      if (!g(paramau))
      {
        l = -1L;
      }
      else
      {
        int m = h(paramau);
        if (m >= this.i.size())
        {
          l = -1L;
        }
        else
        {
          m = ((Integer)this.i.get(m)).intValue();
          if (m == 0) {
            l = -1L;
          } else {
            l = j.a(this.f, m);
          }
        }
      }
    }
  }
  
  final au d()
  {
    try
    {
      au localau = this.a;
      return localau;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final boolean d(au paramau)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_1
    //   6: getstatic 40	com/sleepycat/b/p/au:a	Lcom/sleepycat/b/p/au;
    //   9: invokevirtual 151	com/sleepycat/b/p/au:a	(Lcom/sleepycat/b/p/au;)Z
    //   12: istore_3
    //   13: iload_3
    //   14: ifeq +10 -> 24
    //   17: iload 4
    //   19: istore_3
    //   20: aload_0
    //   21: monitorexit
    //   22: iload_3
    //   23: ireturn
    //   24: iload 4
    //   26: istore_3
    //   27: aload_0
    //   28: getfield 41	com/sleepycat/b/i/i/c:a	Lcom/sleepycat/b/p/au;
    //   31: getstatic 40	com/sleepycat/b/p/au:a	Lcom/sleepycat/b/p/au;
    //   34: invokevirtual 151	com/sleepycat/b/p/au:a	(Lcom/sleepycat/b/p/au;)Z
    //   37: ifne -17 -> 20
    //   40: iload 4
    //   42: istore_3
    //   43: aload_0
    //   44: getfield 41	com/sleepycat/b/i/i/c:a	Lcom/sleepycat/b/p/au;
    //   47: aload_1
    //   48: invokevirtual 154	com/sleepycat/b/p/au:b	(Lcom/sleepycat/b/p/au;)I
    //   51: ifgt -31 -> 20
    //   54: aload_0
    //   55: getfield 43	com/sleepycat/b/i/i/c:b	Lcom/sleepycat/b/p/au;
    //   58: aload_1
    //   59: invokevirtual 154	com/sleepycat/b/p/au:b	(Lcom/sleepycat/b/p/au;)I
    //   62: istore_2
    //   63: iload 4
    //   65: istore_3
    //   66: iload_2
    //   67: iflt -47 -> 20
    //   70: iconst_1
    //   71: istore_3
    //   72: goto -52 -> 20
    //   75: astore_1
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	c
    //   0	80	1	paramau	au
    //   62	5	2	m	int
    //   12	60	3	bool1	boolean
    //   1	63	4	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   5	13	75	finally
    //   27	40	75	finally
    //   43	63	75	finally
  }
  
  final au e()
  {
    try
    {
      au localau = this.b;
      return localau;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final boolean e(au paramau)
  {
    return this.a.b(paramau) > 0;
  }
  
  final boolean f()
  {
    try
    {
      boolean bool = h();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean f(au paramau)
  {
    return (!this.b.a(au.a)) && (this.b.b(paramau) < 0);
  }
  
  final long g()
  {
    try
    {
      long l = this.h;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String toString()
  {
    int m = 0;
    long l1 = this.f;
    long l2 = this.f;
    if (this.i == null) {}
    for (;;)
    {
      return String.format("<VLSNBucket fileNum=%d(0x%x) numOffsets=%d stride=%d firstVLSN=%s lastVLSN=%s lastLsn=%s/>", new Object[] { Long.valueOf(l1), Long.valueOf(l2), Integer.valueOf(m), Integer.valueOf(this.g), this.a, this.b, j.h(this.h) });
      m = this.i.size();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\i\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */