package com.sleepycat.b.a;

import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.h;
import com.sleepycat.b.l.y;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.au;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;

public class k
{
  Set<Long> a = Collections.emptySet();
  private SortedMap<Long, m> c = new TreeMap();
  private Map<Long, r> d = new HashMap();
  private Set<h> e = new HashSet();
  private boolean f;
  private final LinkedList<Long> g = new LinkedList();
  
  static
  {
    if (!k.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  private static long a(Set<h> paramSet)
  {
    return ao.m + ao.n + paramSet.size() * ao.o;
  }
  
  private m a(Long paramLong, n paramn)
  {
    m localm2 = (m)this.c.get(paramLong);
    m localm1 = localm2;
    if (localm2 == null)
    {
      localm1 = new m((byte)0);
      this.c.put(paramLong, localm1);
    }
    localm1.a = paramn;
    return localm1;
  }
  
  private static void a(ao paramao, Set<h> paramSet1, Set<h> paramSet2)
  {
    long l1 = 0L;
    if (paramSet1 != null) {
      l1 = 0L - a(paramSet1);
    }
    long l2 = l1;
    if (paramSet2 != null) {
      l2 = l1 + a(paramSet2);
    }
    paramao.e(l2);
  }
  
  private void a(Collection<Long> paramCollection, n paramn)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      a((Long)paramCollection.next(), paramn);
    }
  }
  
  private SortedSet<Long> b(n paramn)
  {
    TreeSet localTreeSet;
    try
    {
      localTreeSet = new TreeSet();
      Iterator localIterator = this.c.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if (((m)localEntry.getValue()).a == paramn) {
          localTreeSet.add(localEntry.getKey());
        }
      }
    }
    finally {}
    return localTreeSet;
  }
  
  private boolean b(Long paramLong, n paramn)
  {
    paramLong = (m)this.c.get(paramLong);
    if ((!b) && (paramLong == null)) {
      throw new AssertionError("Expected " + paramn + " but was missing");
    }
    if ((!b) && (paramLong.a != paramn)) {
      throw new AssertionError("Expected " + paramn + " but was " + paramLong.a);
    }
    return true;
  }
  
  private boolean b(Collection<Long> paramCollection, n paramn)
  {
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      b((Long)paramCollection.next(), paramn);
    }
    return true;
  }
  
  private int g()
  {
    try
    {
      int i = this.d.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void h()
  {
    if ((this.d.isEmpty()) && (this.e.isEmpty()))
    {
      n localn1 = n.d;
      n localn2 = n.e;
      Iterator localIterator = this.c.values().iterator();
      while (localIterator.hasNext())
      {
        m localm = (m)localIterator.next();
        if (localm.a == localn1) {
          localm.a = localn2;
        }
      }
    }
  }
  
  final int a(n paramn)
  {
    int i = 0;
    for (;;)
    {
      try
      {
        Iterator localIterator = this.c.values().iterator();
        if (localIterator.hasNext())
        {
          n localn = ((m)localIterator.next()).a;
          if (localn == paramn) {
            i += 1;
          }
        }
        else
        {
          return i;
        }
      }
      finally {}
    }
  }
  
  /* Error */
  final Long a(aa paramaa, SortedMap<Long, o> paramSortedMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: aload_2
    //   4: invokeinterface 209 1 0
    //   9: checkcast 128	java/lang/Long
    //   12: invokevirtual 213	java/lang/Long:longValue	()J
    //   15: invokevirtual 218	com/sleepycat/b/a/aa:a	(J)Z
    //   18: istore_3
    //   19: iload_3
    //   20: ifne +9 -> 29
    //   23: aconst_null
    //   24: astore_1
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_1
    //   28: areturn
    //   29: aload_1
    //   30: aload_2
    //   31: aconst_null
    //   32: iconst_0
    //   33: iconst_1
    //   34: new 47	java/util/HashSet
    //   37: dup
    //   38: aload_0
    //   39: getfield 63	com/sleepycat/b/a/k:g	Ljava/util/LinkedList;
    //   42: invokespecial 221	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   45: invokevirtual 224	com/sleepycat/b/a/aa:a	(Ljava/util/SortedMap;Ljava/util/Set;ZZLjava/util/Set;)Ljava/lang/Long;
    //   48: astore_2
    //   49: aload_2
    //   50: astore_1
    //   51: aload_2
    //   52: ifnull -27 -> 25
    //   55: aload_0
    //   56: getfield 63	com/sleepycat/b/a/k:g	Ljava/util/LinkedList;
    //   59: aload_2
    //   60: invokevirtual 227	java/util/LinkedList:addLast	(Ljava/lang/Object;)V
    //   63: aload_2
    //   64: astore_1
    //   65: aload_0
    //   66: getfield 63	com/sleepycat/b/a/k:g	Ljava/util/LinkedList;
    //   69: invokevirtual 228	java/util/LinkedList:size	()I
    //   72: iconst_5
    //   73: if_icmple -48 -> 25
    //   76: aload_0
    //   77: getfield 63	com/sleepycat/b/a/k:g	Ljava/util/LinkedList;
    //   80: invokevirtual 231	java/util/LinkedList:removeFirst	()Ljava/lang/Object;
    //   83: pop
    //   84: goto -21 -> 63
    //   87: astore_1
    //   88: aload_0
    //   89: monitorexit
    //   90: aload_1
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	k
    //   0	92	1	paramaa	aa
    //   0	92	2	paramSortedMap	SortedMap<Long, o>
    //   18	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	19	87	finally
    //   29	49	87	finally
    //   55	63	87	finally
    //   65	84	87	finally
  }
  
  final Long a(aa paramaa, SortedMap<Long, o> paramSortedMap, boolean paramBoolean, int paramInt)
  {
    if (paramBoolean) {}
    for (;;)
    {
      HashSet localHashSet;
      int i;
      try
      {
        localHashSet = new HashSet();
        if (!paramaa.b()) {
          paramInt = 1;
        }
        i = a(n.a);
      }
      finally {}
      Long localLong = paramaa.a(paramSortedMap, localHashSet, paramBoolean, false, Collections.EMPTY_SET);
      if (localLong != null)
      {
        a(localLong, n.a);
        i += 1;
      }
      else
      {
        if (localHashSet != null) {
          this.a = localHashSet;
        }
        paramaa = paramaa.a(paramSortedMap, b(n.a));
        if (paramaa == null)
        {
          paramaa = null;
          return paramaa;
        }
        a(paramaa, n.b);
        continue;
      }
      if ((paramInt == 0) || (i < paramInt)) {
        if (i > 0)
        {
          paramBoolean = true;
          continue;
          localHashSet = null;
        }
        else
        {
          paramBoolean = false;
        }
      }
    }
  }
  
  final Set<Long> a()
  {
    try
    {
      SortedSet localSortedSet = b(n.a);
      return localSortedSet;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final Set<h> a(Collection<Long> paramCollection)
  {
    for (;;)
    {
      try
      {
        Iterator localIterator = paramCollection.iterator();
        paramCollection = null;
        if (!localIterator.hasNext()) {
          break;
        }
        Object localObject = (Long)localIterator.next();
        localObject = (m)this.c.get(localObject);
        if (localObject != null) {
          if (paramCollection == null) {
            paramCollection = new HashSet(((m)localObject).b);
          } else {
            paramCollection.addAll(((m)localObject).b);
          }
        }
      }
      finally {}
    }
    return paramCollection;
  }
  
  final void a(long paramLong)
  {
    try
    {
      this.d.remove(Long.valueOf(paramLong));
      h();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final void a(l paraml)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 272	com/sleepycat/b/a/l:a	()Z
    //   6: ifne +80 -> 86
    //   9: aload_1
    //   10: getfield 273	com/sleepycat/b/a/l:a	Ljava/util/Set;
    //   13: astore_3
    //   14: aload_3
    //   15: ifnull +35 -> 50
    //   18: getstatic 31	com/sleepycat/b/a/k:b	Z
    //   21: ifne +12 -> 33
    //   24: aload_0
    //   25: aload_3
    //   26: getstatic 275	com/sleepycat/b/a/n:c	Lcom/sleepycat/b/a/n;
    //   29: invokespecial 277	com/sleepycat/b/a/k:b	(Ljava/util/Collection;Lcom/sleepycat/b/a/n;)Z
    //   32: pop
    //   33: aload_0
    //   34: getfield 279	com/sleepycat/b/a/k:f	Z
    //   37: ifeq +52 -> 89
    //   40: getstatic 198	com/sleepycat/b/a/n:d	Lcom/sleepycat/b/a/n;
    //   43: astore_2
    //   44: aload_0
    //   45: aload_3
    //   46: aload_2
    //   47: invokespecial 281	com/sleepycat/b/a/k:a	(Ljava/util/Collection;Lcom/sleepycat/b/a/n;)V
    //   50: aload_1
    //   51: getfield 282	com/sleepycat/b/a/l:b	Ljava/util/Set;
    //   54: astore_1
    //   55: aload_1
    //   56: ifnull +26 -> 82
    //   59: getstatic 31	com/sleepycat/b/a/k:b	Z
    //   62: ifne +12 -> 74
    //   65: aload_0
    //   66: aload_1
    //   67: getstatic 200	com/sleepycat/b/a/n:e	Lcom/sleepycat/b/a/n;
    //   70: invokespecial 277	com/sleepycat/b/a/k:b	(Ljava/util/Collection;Lcom/sleepycat/b/a/n;)Z
    //   73: pop
    //   74: aload_0
    //   75: aload_1
    //   76: getstatic 284	com/sleepycat/b/a/n:f	Lcom/sleepycat/b/a/n;
    //   79: invokespecial 281	com/sleepycat/b/a/k:a	(Ljava/util/Collection;Lcom/sleepycat/b/a/n;)V
    //   82: aload_0
    //   83: invokespecial 267	com/sleepycat/b/a/k:h	()V
    //   86: aload_0
    //   87: monitorexit
    //   88: return
    //   89: getstatic 284	com/sleepycat/b/a/n:f	Lcom/sleepycat/b/a/n;
    //   92: astore_2
    //   93: goto -49 -> 44
    //   96: astore_1
    //   97: aload_0
    //   98: monitorexit
    //   99: aload_1
    //   100: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	this	k
    //   0	101	1	paraml	l
    //   43	50	2	localn	n
    //   13	33	3	localSet	Set
    // Exception table:
    //   from	to	target	type
    //   2	14	96	finally
    //   18	33	96	finally
    //   33	44	96	finally
    //   44	50	96	finally
    //   50	55	96	finally
    //   59	74	96	finally
    //   74	82	96	finally
    //   82	86	96	finally
    //   89	93	96	finally
  }
  
  final void a(ao paramao)
  {
    try
    {
      Iterator localIterator = this.c.values().iterator();
      while (localIterator.hasNext()) {
        a(paramao, ((m)localIterator.next()).b, null);
      }
    }
    finally {}
  }
  
  final void a(Long paramLong, ao paramao)
  {
    try
    {
      m localm = (m)this.c.get(paramLong);
      if (localm != null)
      {
        a(paramao, localm.b, null);
        this.c.remove(paramLong);
      }
      return;
    }
    finally {}
  }
  
  final void a(Long paramLong, Set<h> paramSet, au paramau, ao paramao)
  {
    try
    {
      if (!b) {
        b(paramLong, n.b);
      }
      paramLong = a(paramLong, n.c);
      a(paramao, paramLong.b, paramSet);
      paramLong.b = paramSet;
      paramLong.c = paramau;
      return;
    }
    finally {}
  }
  
  final boolean a(long paramLong, y paramy, h paramh, byte[] paramArrayOfByte)
  {
    boolean bool = true;
    try
    {
      if ((!b) && (paramy == null)) {
        throw new AssertionError();
      }
    }
    finally {}
    if (this.d.put(Long.valueOf(paramLong), new r(paramy, paramh, paramArrayOfByte)) != null) {}
    for (;;)
    {
      this.f = true;
      return bool;
      bool = false;
    }
  }
  
  final boolean a(h paramh)
  {
    try
    {
      boolean bool = this.e.add(paramh);
      this.f = true;
      return bool;
    }
    finally
    {
      paramh = finally;
      throw paramh;
    }
  }
  
  final boolean a(Long paramLong)
  {
    try
    {
      boolean bool = this.c.containsKey(paramLong);
      return bool;
    }
    finally
    {
      paramLong = finally;
      throw paramLong;
    }
  }
  
  final l b()
  {
    boolean bool = false;
    for (;;)
    {
      try
      {
        if ((this.d.isEmpty()) && (this.e.isEmpty()))
        {
          this.f = bool;
          l locall = new l(b(n.c), b(n.e), (byte)0);
          return locall;
        }
      }
      finally {}
      bool = true;
    }
  }
  
  final void b(h paramh)
  {
    try
    {
      this.e.remove(paramh);
      h();
      return;
    }
    finally
    {
      paramh = finally;
      throw paramh;
    }
  }
  
  final void b(Long paramLong)
  {
    try
    {
      if (!b) {
        b(paramLong, n.b);
      }
      a(paramLong, n.a);
      return;
    }
    finally {}
  }
  
  final void b(Long paramLong, ao paramao)
  {
    try
    {
      if (!b) {
        b(paramLong, n.f);
      }
      paramLong = (m)this.c.remove(paramLong);
      if (paramLong != null) {
        a(paramao, paramLong.b, null);
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  final au c(Long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 40	com/sleepycat/b/a/k:c	Ljava/util/SortedMap;
    //   6: aload_1
    //   7: invokeinterface 91 2 0
    //   12: checkcast 93	com/sleepycat/b/a/m
    //   15: astore_1
    //   16: aload_1
    //   17: ifnull +12 -> 29
    //   20: aload_1
    //   21: getfield 293	com/sleepycat/b/a/m:c	Lcom/sleepycat/b/p/au;
    //   24: astore_1
    //   25: aload_0
    //   26: monitorexit
    //   27: aload_1
    //   28: areturn
    //   29: aconst_null
    //   30: astore_1
    //   31: goto -6 -> 25
    //   34: astore_1
    //   35: aload_0
    //   36: monitorexit
    //   37: aload_1
    //   38: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	39	0	this	k
    //   0	39	1	paramLong	Long
    // Exception table:
    //   from	to	target	type
    //   2	16	34	finally
    //   20	25	34	finally
  }
  
  /* Error */
  final Map<Long, r> c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 45	com/sleepycat/b/a/k:d	Ljava/util/Map;
    //   6: invokeinterface 189 1 0
    //   11: ifle +19 -> 30
    //   14: new 42	java/util/HashMap
    //   17: dup
    //   18: aload_0
    //   19: getfield 45	com/sleepycat/b/a/k:d	Ljava/util/Map;
    //   22: invokespecial 321	java/util/HashMap:<init>	(Ljava/util/Map;)V
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: areturn
    //   30: aconst_null
    //   31: astore_1
    //   32: goto -6 -> 26
    //   35: astore_1
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_1
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	k
    //   25	7	1	localHashMap	HashMap
    //   35	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	35	finally
  }
  
  /* Error */
  final h[] d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 50	com/sleepycat/b/a/k:e	Ljava/util/Set;
    //   6: invokeinterface 79 1 0
    //   11: ifle +31 -> 42
    //   14: aload_0
    //   15: getfield 50	com/sleepycat/b/a/k:e	Ljava/util/Set;
    //   18: invokeinterface 79 1 0
    //   23: anewarray 325	com/sleepycat/b/c/h
    //   26: astore_1
    //   27: aload_0
    //   28: getfield 50	com/sleepycat/b/a/k:e	Ljava/util/Set;
    //   31: aload_1
    //   32: invokeinterface 329 2 0
    //   37: pop
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: areturn
    //   42: aconst_null
    //   43: astore_1
    //   44: goto -6 -> 38
    //   47: astore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: aload_1
    //   51: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	52	0	this	k
    //   26	18	1	arrayOfh	h[]
    //   47	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	38	47	finally
  }
  
  /* Error */
  final SortedSet<Long> e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getstatic 284	com/sleepycat/b/a/n:f	Lcom/sleepycat/b/a/n;
    //   6: invokespecial 243	com/sleepycat/b/a/k:b	(Lcom/sleepycat/b/a/n;)Ljava/util/SortedSet;
    //   9: astore_1
    //   10: aload_1
    //   11: invokeinterface 331 1 0
    //   16: istore_2
    //   17: iload_2
    //   18: ifle +7 -> 25
    //   21: aload_0
    //   22: monitorexit
    //   23: aload_1
    //   24: areturn
    //   25: aconst_null
    //   26: astore_1
    //   27: goto -6 -> 21
    //   30: astore_1
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_1
    //   34: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	35	0	this	k
    //   9	18	1	localSortedSet	SortedSet
    //   30	4	1	localObject	Object
    //   16	2	2	i	int
    // Exception table:
    //   from	to	target	type
    //   2	17	30	finally
  }
  
  public final ai f()
  {
    try
    {
      ai localai = new ai("FileSelector", "Cleaner's activities when choosing an optimal file to clean.");
      new com.sleepycat.b.p.o(localai, e.a, a(n.a));
      new com.sleepycat.b.p.o(localai, e.b, a(n.f));
      new com.sleepycat.b.p.o(localai, e.f, g());
      return localai;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String toString()
  {
    try
    {
      String str = "files = " + this.c + " pendingLNs = " + this.d + " pendingDBs = " + this.e + " anyPendingDuringCheckpoint = " + this.f + " lowUtilizationFiles = " + this.a;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\k.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */