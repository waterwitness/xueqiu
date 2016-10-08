package com.sleepycat.b.a;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.n.aj;
import com.sleepycat.b.p.ao;
import com.sleepycat.b.p.j;
import com.sleepycat.b.p.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map.Entry;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.logging.Level;
import java.util.logging.Logger;

public class aa
{
  public float a;
  public volatile int b = -1;
  private final int d;
  private final int e;
  private final int f;
  private final int g;
  private final int h;
  private final boolean i;
  private final ad j;
  private final c k;
  private final Logger l;
  private final p m;
  private final LinkedList<ab> n;
  private long o;
  private int p;
  private ao<ac> q;
  
  static
  {
    if (!aa.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  aa(ad paramad, c paramc)
  {
    this.j = paramad;
    this.k = paramc;
    this.l = w.a(getClass());
    this.a = NaN.0F;
    this.n = new LinkedList();
    this.o = -1L;
    this.m = new p(paramad);
    paramad = paramad.u;
    this.i = paramad.a(com.sleepycat.b.b.d.aD);
    this.d = paramad.a(com.sleepycat.b.b.d.aL);
    this.e = paramad.a(com.sleepycat.b.b.d.aM);
    this.f = paramad.a(com.sleepycat.b.b.d.aN);
    this.g = paramad.a(com.sleepycat.b.b.d.aO);
    this.h = paramad.a(com.sleepycat.b.b.d.aP);
  }
  
  private void c()
  {
    Iterator localIterator = this.n.iterator();
    long l1 = 0L;
    long l2 = 0L;
    long l3 = 0L;
    long l4 = 0L;
    while (localIterator.hasNext())
    {
      ab localab = (ab)localIterator.next();
      l4 += localab.a;
      l3 += localab.b;
      l2 += localab.c;
      l1 = localab.d + l1;
    }
    if (l3 < this.e) {
      return;
    }
    this.a = ((float)(l4 / l3) / (float)(l2 / l1));
  }
  
  public final d a()
  {
    try
    {
      d locald = new d(new ArrayList(this.n), this.o, this.p);
      return locald;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final Long a(SortedMap<Long, o> paramSortedMap, Set<Long> paramSet1, boolean paramBoolean1, boolean paramBoolean2, Set<Long> paramSet2)
  {
    if (paramSet1 != null) {}
    int i1;
    long l1;
    label138:
    long l4;
    long l3;
    long l5;
    label175:
    Object localObject2;
    int i2;
    long l6;
    long l7;
    long l8;
    label407:
    long l9;
    label520:
    label543:
    label580:
    label589:
    do
    {
      int i3;
      int i4;
      long l2;
      long l10;
      Object localObject3;
      long l11;
      do
      {
        do
        {
          for (;;)
          {
            try
            {
              paramSet1.clear();
              if (paramSortedMap.size() == 0)
              {
                w.a(this.l, this.j, Level.SEVERE, "Can't clean, map is empty.");
                localObject1 = null;
                return (Long)localObject1;
              }
              boolean bool = this.l.isLoggable(Level.FINE);
              i3 = this.k.U;
              i4 = this.k.V;
              i1 = this.k.W;
              l2 = ((Long)paramSortedMap.lastKey()).longValue();
              l1 = this.j.y.a();
              if (l1 == -1L) {
                break label817;
              }
              l1 = j.d(l1);
              if (l2 <= l1) {
                break label817;
              }
              l2 = l1;
              l10 = i1;
              Iterator localIterator = paramSortedMap.entrySet().iterator();
              l1 = 0L;
              i1 = 101;
              l4 = 0L;
              localObject1 = null;
              l3 = 0L;
              l5 = 0L;
              if (!localIterator.hasNext()) {
                break label543;
              }
              localObject3 = (Map.Entry)localIterator.next();
              localObject2 = (Long)((Map.Entry)localObject3).getKey();
              l11 = ((Long)localObject2).longValue();
              localObject3 = (o)((Map.Entry)localObject3).getValue();
              if (paramBoolean2)
              {
                i2 = ((o)localObject3).g();
                l6 = l4 + ((o)localObject3).b;
                l7 = l5 + i2;
                if (!this.k.ad.a((Long)localObject2)) {
                  break;
                }
                i2 = ((o)localObject3).b - i2;
                l8 = l1 + i2;
                l5 = l7;
                l4 = l6;
                l1 = l8;
                if (!bool) {
                  continue;
                }
                w.a(this.l, this.j, Level.FINE, "Skip file previously selected for cleaning: 0x" + Long.toHexString(l11) + " utilizedSize: " + i2 + " " + localObject3);
                l5 = l7;
                l4 = l6;
                l1 = l8;
                continue;
              }
              if (!this.i) {
                break label407;
              }
            }
            finally {}
            i2 = ((o)localObject3).a(this.a);
            continue;
            i2 = ((o)localObject3).f();
          }
          l8 = l1 + ((o)localObject3).b;
          l9 = l3 + i2;
          l5 = l7;
          l4 = l6;
          l3 = l9;
          l1 = l8;
        } while (paramSet2.contains(localObject2));
        l5 = l7;
        l4 = l6;
        l3 = l9;
        l1 = l8;
      } while (l11 > l2 - l10);
      i2 = o.a(i2, ((o)localObject3).b);
      if (localObject1 == null) {
        break label820;
      }
      if (i2 >= i1) {
        break label814;
      }
      break label820;
      if ((paramSet1 == null) || (i2 >= i3)) {
        break label831;
      }
      paramSet1.add(localObject2);
      break label831;
      i2 = o.a(l3, l1);
      this.b = o.a(l5, l4);
      if (i2 < i3) {
        break label850;
      }
      if (i1 >= i4) {
        break;
      }
      break label850;
      if (paramSortedMap == null) {
        break label798;
      }
      paramSet2 = Level.INFO;
      localObject1 = paramSortedMap;
    } while (!this.l.isLoggable(paramSet2));
    if (paramSortedMap != null) {}
    for (Object localObject1 = " fileChosen: 0x" + Long.toHexString(paramSortedMap.longValue());; localObject1 = "")
    {
      if (this.i) {}
      for (localObject2 = " lnSizeCorrectionFactor: " + this.a;; localObject2 = " (adjustment disabled)")
      {
        w.a(this.l, this.j, paramSet2, paramSet1 + (String)localObject1 + (String)localObject2 + " totalUtilization: " + i2 + " bestFileUtilization: " + i1 + " isProbe: " + paramBoolean2);
        localObject1 = paramSortedMap;
        break;
        if ((paramBoolean1) || (!this.m.a(paramSortedMap))) {
          break label860;
        }
        paramSet1 = this.m;
        if (paramSet1.a(paramSortedMap))
        {
          paramSet1.a = false;
          l1 = paramSet1.b;
          paramSet1 = "Chose file from files-to-migrate for cleaning.";
          paramSortedMap = Long.valueOf(l1);
          break label580;
        }
        throw new NoSuchElementException();
        label798:
        paramSet2 = Level.FINE;
        break label589;
      }
      label814:
      break label520;
      label817:
      break label138;
      label820:
      i1 = i2;
      localObject1 = localObject2;
      break label520;
      label831:
      l5 = l7;
      l4 = l6;
      l3 = l9;
      l1 = l8;
      break label175;
      label850:
      paramSet1 = "Chose lowest utilized file for cleaning.";
      paramSortedMap = (SortedMap<Long, o>)localObject1;
      break label580;
      label860:
      paramSet1 = "No file selected for cleaning.";
      paramSortedMap = null;
      break label580;
    }
  }
  
  final Long a(SortedMap<Long, o> paramSortedMap, SortedSet<Long> paramSortedSet)
  {
    SortedSet<Long> localSortedSet = null;
    for (;;)
    {
      try
      {
        int i1 = paramSortedSet.size();
        if (i1 == 0)
        {
          paramSortedSet = localSortedSet;
          return paramSortedSet;
        }
        if (paramSortedSet.size() == 1)
        {
          paramSortedSet = (Long)paramSortedSet.first();
        }
        else
        {
          i1 = 0;
          Iterator localIterator = paramSortedSet.iterator();
          localSortedSet = null;
          if (localIterator.hasNext())
          {
            Long localLong = (Long)localIterator.next();
            o localo = (o)paramSortedMap.get(localLong);
            paramSortedSet = localLong;
            if (localo == null) {
              continue;
            }
            int i2 = localo.e;
            int i3 = localo.c;
            int i4 = localo.i;
            int i5 = localo.h;
            i2 = i2 + i3 - i4 - i5;
            if ((localSortedSet == null) || (i2 < i1))
            {
              paramSortedSet = localLong;
              i1 = i2;
              localSortedSet = paramSortedSet;
              continue;
            }
          }
          else
          {
            paramSortedSet = localSortedSet;
            continue;
          }
          paramSortedSet = localSortedSet;
        }
      }
      finally {}
    }
  }
  
  public final void a(d paramd)
  {
    try
    {
      this.o = paramd.b;
      this.p = paramd.c;
      this.n.clear();
      this.n.addAll(paramd.a);
      c();
      return;
    }
    finally
    {
      paramd = finally;
      throw paramd;
    }
  }
  
  /* Error */
  final boolean a(long paramLong)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: getfield 103	com/sleepycat/b/a/aa:i	Z
    //   9: istore 6
    //   11: iload 6
    //   13: ifne +8 -> 21
    //   16: aload_0
    //   17: monitorexit
    //   18: iload 5
    //   20: ireturn
    //   21: aload_0
    //   22: invokevirtual 382	com/sleepycat/b/a/aa:b	()Z
    //   25: ifeq +33 -> 58
    //   28: aload_0
    //   29: getfield 132	com/sleepycat/b/a/aa:h	I
    //   32: istore 4
    //   34: lload_1
    //   35: aload_0
    //   36: getfield 77	com/sleepycat/b/a/aa:o	J
    //   39: lsub
    //   40: iload 4
    //   42: i2l
    //   43: lcmp
    //   44: iflt -28 -> 16
    //   47: aload_0
    //   48: lload_1
    //   49: putfield 77	com/sleepycat/b/a/aa:o	J
    //   52: iconst_1
    //   53: istore 5
    //   55: goto -39 -> 16
    //   58: aload_0
    //   59: getfield 127	com/sleepycat/b/a/aa:g	I
    //   62: istore 4
    //   64: goto -30 -> 34
    //   67: astore_3
    //   68: aload_0
    //   69: monitorexit
    //   70: aload_3
    //   71: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	72	0	this	aa
    //   0	72	1	paramLong	long
    //   67	4	3	localObject	Object
    //   32	31	4	i1	int
    //   1	53	5	bool1	boolean
    //   9	3	6	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   5	11	67	finally
    //   21	34	67	finally
    //   34	52	67	finally
    //   58	64	67	finally
  }
  
  final boolean a(long paramLong1, long paramLong2, o paramo1, o paramo2)
  {
    int i1;
    int i2;
    boolean bool;
    int i4;
    int i3;
    float f3;
    float f1;
    float f2;
    for (;;)
    {
      try
      {
        this.o = paramLong2;
        i1 = paramo1.i;
        i2 = paramo2.i;
        if (i1 != i2)
        {
          bool = false;
          return bool;
        }
        if (this.p < this.f) {
          this.p += 1;
        }
        i4 = Math.min(paramo1.i, paramo1.e);
        i3 = Math.min(paramo1.j, paramo1.f);
        i1 = Math.min(paramo1.k, i4);
        i2 = Math.min(paramo2.j, paramo2.f);
        f3 = paramo1.e();
        i2 -= i3;
        i4 -= i1;
        if ((i2 <= 0) || (i4 <= 0)) {
          break label374;
        }
        i3 = paramo1.f - i3;
        i1 = paramo1.e - i1;
        if ((!c) && (f3 != i3 / i1)) {
          throw new AssertionError("expected=" + f3 + "got=" + i3 / i1);
        }
      }
      finally {}
      f1 = i2 / i4;
      f2 = f1 / f3;
      if ((f2 >= 0.01F) && (f2 <= 100.0F)) {
        break;
      }
      bool = false;
    }
    this.n.addLast(new ab(i2, i4, i3, i1));
    while (this.n.size() > this.d) {
      this.n.removeFirst();
    }
    c();
    for (;;)
    {
      i1 = 0;
      if (!c) {
        i1 = 1;
      }
      if ((i1 != 0) && (this.q != null)) {
        new ac(paramLong1, paramLong2, paramo1, paramo2, f3, f1, f2);
      }
      bool = true;
      break;
      label374:
      f1 = NaN.0F;
      f2 = NaN.0F;
    }
  }
  
  /* Error */
  final boolean b()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_0
    //   6: getfield 103	com/sleepycat/b/a/aa:i	Z
    //   9: istore 5
    //   11: iload 5
    //   13: ifne +8 -> 21
    //   16: aload_0
    //   17: monitorexit
    //   18: iload 4
    //   20: ireturn
    //   21: aload_0
    //   22: getfield 163	com/sleepycat/b/a/aa:p	I
    //   25: istore_2
    //   26: aload_0
    //   27: getfield 122	com/sleepycat/b/a/aa:f	I
    //   30: istore_3
    //   31: iload_2
    //   32: iload_3
    //   33: if_icmpge -17 -> 16
    //   36: iconst_0
    //   37: istore 4
    //   39: goto -23 -> 16
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	aa
    //   42	4	1	localObject	Object
    //   25	9	2	i1	int
    //   30	4	3	i2	int
    //   1	37	4	bool1	boolean
    //   9	3	5	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   5	11	42	finally
    //   21	31	42	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */