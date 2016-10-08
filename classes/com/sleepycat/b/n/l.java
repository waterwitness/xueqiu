package com.sleepycat.b.n;

import com.sleepycat.b.aa;
import com.sleepycat.b.an;
import com.sleepycat.b.as;
import com.sleepycat.b.bo;
import com.sleepycat.b.bu;
import com.sleepycat.b.c.ab;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.av;
import com.sleepycat.b.c.i;
import com.sleepycat.b.c.m;
import com.sleepycat.b.c.p;
import com.sleepycat.b.f.a;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.ar;
import com.sleepycat.b.p.z;
import com.sleepycat.b.r;
import java.io.PrintStream;
import java.util.Collection;
import java.util.Collections;
import java.util.ConcurrentModificationException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public abstract class l
  implements ab
{
  static final long a;
  static final long b;
  static final long c;
  static final long d;
  static final List<y> e;
  private static final long n;
  private static av r;
  private static boolean s;
  public int f = 1;
  public a[] g;
  final Map<Long, e>[] h;
  final boolean i;
  final ao j;
  public final ai k;
  final Map<Thread, ar<y>> l;
  private final ad o;
  private final z p;
  private final z q;
  
  static
  {
    if (!l.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      m = bool;
      a = ao.I + ao.m + ao.g;
      b = ao.J + ao.m + ao.g;
      c = 0L - a;
      d = 0L - b;
      n = ao.I - ao.J + ao.K;
      e = Collections.emptyList();
      r = new av();
      s = false;
      return;
    }
  }
  
  public l(ad paramad)
  {
    m localm = paramad.u;
    this.f = localm.a(com.sleepycat.b.b.d.bg);
    this.i = localm.a(com.sleepycat.b.b.d.bi);
    this.h = new Map[this.f];
    this.g = new a[this.f];
    int i1 = 0;
    while (i1 < this.f)
    {
      this.h[i1] = new HashMap();
      this.g[i1] = new a("Lock Table " + i1);
      i1 += 1;
    }
    this.o = paramad;
    this.j = paramad.n;
    this.k = new ai("Locks", "Locks held by data operations, latching contention on lock table.");
    this.p = new z(this.k, n.d);
    this.q = new z(this.k, n.f);
    j.a(localm.a(com.sleepycat.b.b.d.bl));
    s = localm.a(com.sleepycat.b.b.d.bm);
    paramad.a(this);
    if (paramad.I())
    {
      this.l = new ConcurrentHashMap();
      return;
    }
    this.l = null;
  }
  
  private StringBuilder a(Set<q> paramSet, e parame, q paramq)
  {
    Iterator localIterator = parame.b().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (j)localIterator.next();
      q localq = ((j)localObject).f();
      e locale = localq.o;
      if ((paramSet.contains(localq)) || (localq == paramq))
      {
        paramSet = new StringBuilder();
        paramSet.append("Transaction ").append(localq.toString());
        paramSet.append(" owns LockAddr:").append(System.identityHashCode(parame));
        paramSet.append(" ").append(localObject).append("\n");
        paramSet.append("Transaction ").append(localq.toString());
        paramSet.append(" waits for");
        if (locale == null) {
          paramSet.append(" nothing");
        }
        for (;;)
        {
          paramSet.append("\n");
          return paramSet;
          paramSet.append(" LockAddr:");
          paramSet.append(System.identityHashCode(locale));
        }
      }
      if (locale != null)
      {
        paramSet.add(localq);
        localObject = a(paramSet, locale, paramq);
        if (localObject != null)
        {
          ((StringBuilder)localObject).insert(0, "Transaction " + localq + " waits for " + locale + "\n");
          return (StringBuilder)localObject;
        }
        paramSet.remove(localq);
      }
    }
    return null;
  }
  
  private void a(StringBuilder paramStringBuilder, int paramInt)
  {
    Iterator localIterator = this.h[paramInt].entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject = (Map.Entry)localIterator.next();
      Long localLong = (Long)((Map.Entry)localObject).getKey();
      localObject = (e)((Map.Entry)localObject).getValue();
      paramStringBuilder.append("---- LSN: ").append(com.sleepycat.b.p.j.h(localLong.longValue())).append("----\n");
      paramStringBuilder.append(localObject);
      paramStringBuilder.append('\n');
    }
  }
  
  private static long[] a(Collection<j> paramCollection)
  {
    long[] arrayOfLong = new long[paramCollection.size()];
    paramCollection = paramCollection.iterator();
    int i1 = 0;
    while (paramCollection.hasNext())
    {
      arrayOfLong[i1] = ((j)paramCollection.next()).f().k;
      i1 += 1;
    }
    return arrayOfLong;
  }
  
  private h b(long paramLong1, q paramq, o paramo, long paramLong2, boolean paramBoolean1, boolean paramBoolean2, i parami)
  {
    Long localLong = Long.valueOf(paramLong1);
    Object localObject2 = a(localLong, paramq, paramo, paramBoolean1, paramBoolean2);
    if ((((f)localObject2).a) || (((f)localObject2).c == h.f))
    {
      if ((!m) && (!paramBoolean1) && (!((f)localObject2).a)) {
        throw new AssertionError();
      }
      return ((f)localObject2).c;
    }
    int i1;
    if (!m)
    {
      if (paramBoolean1) {
        i1 = 1;
      }
      while (i1 == 0)
      {
        throw new AssertionError(com.sleepycat.b.f.d.a() + " latches held while trying to lock, lock table =" + com.sleepycat.b.f.d.c());
        if (com.sleepycat.b.f.d.a() == 0) {
          i1 = 1;
        } else {
          i1 = 0;
        }
      }
    }
    if ((!m) && (paramBoolean1)) {
      throw new AssertionError();
    }
    for (;;)
    {
      Object localObject1;
      long l1;
      label228:
      boolean bool;
      long l2;
      int i3;
      int i4;
      try
      {
        paramBoolean2 = paramq.t();
        localObject1 = localObject2;
        if (!paramq.p()) {
          break label594;
        }
        if (!paramBoolean2)
        {
          paramBoolean1 = true;
          if (!a(localLong, paramq, paramo, paramBoolean1, this.j)) {
            continue;
          }
          i1 = 0;
          localObject1 = localObject2;
          break label597;
          if (i2 == 0) {
            break label490;
          }
          l1 = System.currentTimeMillis();
          localObject2 = localObject1;
          if (i1 != 0) {
            paramq.o = ((f)localObject1).b;
          }
        }
      }
      finally
      {
        label299:
        paramq.o = null;
        if (!m) {
          ad.H();
        }
      }
      try
      {
        paramq.wait(paramLong2);
        bool = paramq.p();
        l2 = System.currentTimeMillis();
        if ((i2 == 0) || (l2 - l1 < paramLong2)) {
          break label636;
        }
        i3 = 1;
        if (((f)localObject1).c != h.g) {
          break label642;
        }
        i4 = 1;
      }
      catch (InterruptedException paramo)
      {
        label490:
        throw new bo(this.o, paramo);
      }
      localObject2 = localObject1;
      if (!a(localLong, paramq, paramo, paramBoolean1, this.j))
      {
        if (paramBoolean2)
        {
          localObject2 = a(localLong, paramq, paramo);
          paramBoolean1 = ((f)localObject2).a;
          localObject1 = localObject2;
          if (!paramBoolean1) {
            break label591;
          }
        }
      }
      else
      {
        paramq.o = null;
        if (!m) {
          ad.H();
        }
        paramq.a(localLong, paramo, ((f)localObject2).c);
        return ((f)localObject2).c;
        paramBoolean1 = false;
        continue;
        if (paramBoolean2)
        {
          localObject2 = a(localLong, paramq, paramo);
          localObject1 = localObject2;
          if (!((f)localObject2).a) {
            break label594;
          }
          i1 = 0;
          localObject1 = localObject2;
          break label597;
        }
      }
      label591:
      label594:
      label597:
      while (paramLong2 <= 0L)
      {
        i2 = 0;
        break;
        l1 = 0L;
        break label228;
        if (i4 != 0) {
          throw r;
        }
        if (i3 != 0) {
          throw a(true, paramq, paramLong1, paramo, ((f)localObject1).c, ((f)localObject1).b, paramLong2, l1, l2, parami);
        }
        if (bool) {
          throw a(false, paramq, paramLong1, paramo, ((f)localObject1).c, ((f)localObject1).b, paramq.s_(), paramq.n, l2, parami);
        }
        break label228;
        i1 = 1;
      }
      int i2 = 1;
      continue;
      for (;;)
      {
        if (((!bool) && (i3 == 0) && (i4 == 0)) || (paramBoolean2)) {
          break label648;
        }
        paramBoolean1 = true;
        break label299;
        label636:
        i3 = 0;
        break;
        label642:
        i4 = 0;
      }
      label648:
      paramBoolean1 = false;
    }
  }
  
  final int a(long paramLong)
  {
    return ((int)paramLong & 0x7FFFFFFF) % this.f;
  }
  
  abstract an a(boolean paramBoolean, q paramq, long paramLong1, o paramo, h paramh, e parame, long paramLong2, long paramLong3, long paramLong4, i parami);
  
  public abstract f a(Long paramLong, q paramq, o paramo);
  
  protected final f a(Long paramLong, q paramq, o paramo, int paramInt)
  {
    e locale = (e)this.h[paramInt].get(paramLong);
    if ((!m) && (locale == null)) {
      throw new AssertionError("Lock " + com.sleepycat.b.p.j.h(paramLong.longValue()) + " for txn " + paramq.k + " does not exist");
    }
    locale.a(paramq, this.j, paramInt);
    locale.c(paramq, this.j, paramInt);
    return a(paramLong, paramq, paramo, false, false, paramInt);
  }
  
  abstract f a(Long paramLong, q paramq, o paramo, boolean paramBoolean1, boolean paramBoolean2);
  
  final f a(Long paramLong, q paramq, o paramo, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    this.p.f();
    Map localMap = this.h[paramInt];
    Object localObject2 = (e)localMap.get(paramLong);
    Object localObject1 = localObject2;
    if (localObject2 == null)
    {
      localObject1 = new x();
      localMap.put(paramLong, localObject1);
      this.j.a(b, paramInt);
    }
    f localf = ((e)localObject1).a(paramo, paramq, paramBoolean1, paramBoolean2, this.j, paramInt);
    localObject2 = localObject1;
    if (localf.b != localObject1)
    {
      localObject2 = localf.b;
      localMap.put(paramLong, localObject2);
      this.j.a(n, paramInt);
    }
    localObject1 = localf.c;
    paramBoolean2 = false;
    if ((localObject1 == h.a) || (localObject1 == h.c))
    {
      paramq.a(paramLong, paramo, (h)localObject1);
      paramBoolean1 = true;
    }
    for (;;)
    {
      return new f((e)localObject2, (h)localObject1, paramBoolean1);
      if (localObject1 == h.e)
      {
        paramBoolean1 = true;
      }
      else
      {
        paramBoolean1 = paramBoolean2;
        if (localObject1 != h.f)
        {
          this.q.f();
          paramBoolean1 = paramBoolean2;
        }
      }
    }
  }
  
  public final h a(long paramLong1, q paramq, o paramo, long paramLong2, boolean paramBoolean1, boolean paramBoolean2, i parami)
  {
    if ((!m) && (paramLong2 < 0L)) {
      throw new AssertionError();
    }
    if (paramo == o.f) {
      return h.h;
    }
    if ((this.o.I()) && (parami != null) && (parami.o()) && (!parami.a.equals(p.b)) && ((paramq.r) || (paramo.h)) && (!paramq.h_())) {
      throw aa.c("Locker: " + paramq.getClass().getName());
    }
    try
    {
      paramo = b(paramLong1, paramq, paramo, paramLong2, paramBoolean1, paramBoolean2, parami);
      return paramo;
    }
    finally {}
  }
  
  public abstract o a(Long paramLong, q paramq);
  
  /* Error */
  public final String a()
  {
    // Byte code:
    //   0: new 134	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 236	java/lang/StringBuilder:<init>	()V
    //   7: astore_1
    //   8: iconst_0
    //   9: istore_2
    //   10: iload_2
    //   11: aload_0
    //   12: getfield 95	com/sleepycat/b/n/l:f	I
    //   15: if_icmpge +46 -> 61
    //   18: aload_0
    //   19: getfield 129	com/sleepycat/b/n/l:g	[Lcom/sleepycat/b/f/a;
    //   22: iload_2
    //   23: aaload
    //   24: invokevirtual 491	com/sleepycat/b/f/a:a	()V
    //   27: aload_0
    //   28: aload_1
    //   29: iload_2
    //   30: invokespecial 493	com/sleepycat/b/n/l:a	(Ljava/lang/StringBuilder;I)V
    //   33: aload_0
    //   34: getfield 129	com/sleepycat/b/n/l:g	[Lcom/sleepycat/b/f/a;
    //   37: iload_2
    //   38: aaload
    //   39: invokevirtual 495	com/sleepycat/b/f/a:c	()V
    //   42: iload_2
    //   43: iconst_1
    //   44: iadd
    //   45: istore_2
    //   46: goto -36 -> 10
    //   49: astore_1
    //   50: aload_0
    //   51: getfield 129	com/sleepycat/b/n/l:g	[Lcom/sleepycat/b/f/a;
    //   54: iload_2
    //   55: aaload
    //   56: invokevirtual 495	com/sleepycat/b/f/a:c	()V
    //   59: aload_1
    //   60: athrow
    //   61: aload_1
    //   62: invokevirtual 147	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	l
    //   7	22	1	localStringBuilder	StringBuilder
    //   49	13	1	localObject	Object
    //   9	46	2	i1	int
    // Exception table:
    //   from	to	target	type
    //   27	33	49	finally
  }
  
  abstract Set<q> a(long paramLong, q paramq);
  
  public abstract Set<j> a(Long paramLong);
  
  public abstract void a(ai paramai, boolean paramBoolean);
  
  abstract boolean a(Long paramLong, q paramq, o paramo, boolean paramBoolean, ao paramao);
  
  final an b(boolean paramBoolean, q paramq, long paramLong1, o paramo, h paramh, e parame, long paramLong2, long paramLong3, long paramLong4, i parami)
  {
    if (s)
    {
      System.out.println("++++++++++ begin lock table dump ++++++++++");
      int i1 = 0;
      if (i1 < this.f)
      {
        int i4 = 0;
        int i2 = 0;
        for (;;)
        {
          int i3 = i4;
          if (i2 < 3) {}
          try
          {
            StringBuilder localStringBuilder1 = new StringBuilder();
            a(localStringBuilder1, i1);
            System.out.println(localStringBuilder1.toString());
            i3 = 1;
            if (i3 == 0) {
              System.out.println("Couldn't dump locktable " + i1);
            }
            i1 += 1;
          }
          catch (ConcurrentModificationException localConcurrentModificationException)
          {
            i2 += 1;
          }
        }
      }
      System.out.println("++++++++++ end lock table dump ++++++++++");
    }
    StringBuilder localStringBuilder2 = new StringBuilder();
    String str;
    if (paramBoolean)
    {
      str = "Lock";
      localStringBuilder2.append(str);
      localStringBuilder2.append(" expired. Locker ").append(paramq);
      localStringBuilder2.append(": waited for lock");
      if (parami != null) {
        localStringBuilder2.append(" on database=").append(parami.c());
      }
      localStringBuilder2.append(" LockAddr:").append(System.identityHashCode(parame));
      localStringBuilder2.append(" LSN=").append(com.sleepycat.b.p.j.h(paramLong1));
      localStringBuilder2.append(" type=").append(paramo);
      localStringBuilder2.append(" grant=").append(paramh);
      localStringBuilder2.append(" timeoutMillis=").append(paramLong2);
      localStringBuilder2.append(" startTime=").append(paramLong3);
      localStringBuilder2.append(" endTime=").append(paramLong4);
      paramh = parame.b();
      parami = parame.a();
      localStringBuilder2.append("\nOwners: ").append(paramh);
      localStringBuilder2.append("\nWaiters: ").append(parami).append("\n");
      paramo = new HashSet();
      paramo.add(paramq);
      paramo = a(paramo, parame, paramq);
      if (paramo == null) {
        break label467;
      }
      label391:
      if (paramo != null) {
        localStringBuilder2.append(paramo);
      }
      if (!paramBoolean) {
        break label487;
      }
      paramo = localStringBuilder2.toString();
      if (!this.i) {
        break label473;
      }
      paramq = new r(paramq, paramo);
    }
    for (;;)
    {
      paramq.a = a(paramh);
      paramq.b = a(parami);
      paramq.c = paramLong2;
      return paramq;
      str = "Transaction";
      break;
      label467:
      paramo = null;
      break label391;
      label473:
      paramq = new as(paramq, paramo);
      continue;
      label487:
      paramo = localStringBuilder2.toString();
      if (this.i) {
        paramq = new r(paramq, paramo);
      } else {
        paramq = new bu(paramq, paramo);
      }
    }
  }
  
  public abstract void b(long paramLong, q paramq);
  
  public abstract boolean b(Long paramLong);
  
  final int c(Long paramLong)
  {
    return ((int)paramLong.longValue() & 0x7FFFFFFF) % this.f;
  }
  
  /* Error */
  public final boolean c(long paramLong, q paramq)
  {
    // Byte code:
    //   0: aload_3
    //   1: monitorenter
    //   2: aload_0
    //   3: lload_1
    //   4: aload_3
    //   5: invokevirtual 577	com/sleepycat/b/n/l:a	(JLcom/sleepycat/b/n/q;)Ljava/util/Set;
    //   8: astore 4
    //   10: aload 4
    //   12: ifnonnull +7 -> 19
    //   15: aload_3
    //   16: monitorexit
    //   17: iconst_0
    //   18: ireturn
    //   19: aload 4
    //   21: invokeinterface 578 1 0
    //   26: ifle +73 -> 99
    //   29: aload 4
    //   31: invokeinterface 214 1 0
    //   36: astore 5
    //   38: aload 5
    //   40: invokeinterface 219 1 0
    //   45: ifeq +54 -> 99
    //   48: aload 5
    //   50: invokeinterface 223 1 0
    //   55: checkcast 228	com/sleepycat/b/n/q
    //   58: astore 4
    //   60: aload 4
    //   62: monitorenter
    //   63: aload 4
    //   65: invokevirtual 581	java/lang/Object:notifyAll	()V
    //   68: aload 4
    //   70: monitorexit
    //   71: getstatic 50	com/sleepycat/b/n/l:m	Z
    //   74: ifne -36 -> 38
    //   77: invokestatic 380	com/sleepycat/b/c/ad:H	()Z
    //   80: pop
    //   81: goto -43 -> 38
    //   84: astore 4
    //   86: aload_3
    //   87: monitorexit
    //   88: aload 4
    //   90: athrow
    //   91: astore 5
    //   93: aload 4
    //   95: monitorexit
    //   96: aload 5
    //   98: athrow
    //   99: aload_3
    //   100: monitorexit
    //   101: iconst_1
    //   102: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	this	l
    //   0	103	1	paramLong	long
    //   0	103	3	paramq	q
    //   84	10	4	localObject2	Object
    //   36	13	5	localIterator	Iterator
    //   91	6	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	10	84	finally
    //   15	17	84	finally
    //   19	38	84	finally
    //   38	63	84	finally
    //   71	81	84	finally
    //   86	88	84	finally
    //   96	99	84	finally
    //   99	101	84	finally
    //   63	71	91	finally
    //   93	96	91	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */