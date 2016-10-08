package com.sleepycat.b.d;

import com.sleepycat.b.b.d;
import com.sleepycat.b.bn;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.i;
import com.sleepycat.b.c.m;
import com.sleepycat.b.l.j;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.z;

public abstract class n
{
  final ai a;
  private final z b;
  private final int c;
  private final boolean d;
  
  n(ad paramad)
  {
    paramad = paramad.u;
    this.c = paramad.a(d.aq);
    this.d = paramad.a(d.at);
    this.a = new ai("Cache", "Current size, allocations, and eviction activity.");
    this.b = new z(this.a, h.b);
  }
  
  abstract p a();
  
  public ai a(bn parambn)
  {
    ai localai = this.a.a(parambn.c);
    localai.a(b(parambn));
    return localai;
  }
  
  public abstract void a(int paramInt);
  
  public abstract void a(ad paramad);
  
  final o b(int paramInt)
  {
    o localo1 = new o(this);
    long l2 = Long.MAX_VALUE;
    int k = Integer.MAX_VALUE;
    int i = 0;
    int j = 0;
    boolean bool2 = true;
    for (;;)
    {
      int m;
      if ((i < paramInt) && (j < this.c)) {
        for (;;)
        {
          j localj;
          boolean bool1;
          long l1;
          try
          {
            localj = b();
            if (localj == null) {
              break label383;
            }
            m = i + 1;
            localo1.b += 1;
            i locali = localj.i;
            if ((locali == null) || (locali.z()) || ((locali.c.g) && (localj.G()))) {
              break label399;
            }
            if (localj.j())
            {
              n = 0;
              if (n == 0) {
                break label399;
              }
              if (!this.d) {
                break label210;
              }
              bool1 = bool2;
              n = k;
              l1 = l2;
              if (l2 > localj.e)
              {
                l1 = localj.e;
                localo1.a = localj;
                n = k;
                bool1 = bool2;
              }
              j += 1;
              i = m;
              bool2 = bool1;
              k = n;
              l2 = l1;
              break;
            }
          }
          finally {}
          int n = localj.l();
          continue;
          label210:
          int i1 = localj.j & 0xFFFF;
          i = i1;
          if (i1 == 1)
          {
            i = i1;
            if (n == 1) {
              i = 0;
            }
          }
          if (k != i)
          {
            bool1 = bool2;
            n = k;
            l1 = l2;
            if (k > i)
            {
              bool1 = localj.G();
              l1 = localj.e;
              localo2.a = localj;
              n = i;
            }
          }
          else if (bool2 != localj.G())
          {
            bool1 = bool2;
            n = k;
            l1 = l2;
            if (bool2)
            {
              l1 = localj.e;
              localo2.a = localj;
              bool1 = false;
              n = k;
            }
          }
          else
          {
            bool1 = bool2;
            n = k;
            l1 = l2;
            if (l2 > localj.e)
            {
              l1 = localj.e;
              localo2.a = localj;
              bool1 = bool2;
              n = k;
            }
          }
        }
      }
      label383:
      if (localo2.a != null) {
        this.b.f();
      }
      return localo2;
      label399:
      i = m;
    }
  }
  
  abstract j b();
  
  abstract ai b(bn parambn);
  
  public abstract void b(ad paramad);
  
  public abstract boolean c(ad paramad);
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\d\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */