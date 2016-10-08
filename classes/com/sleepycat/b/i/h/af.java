package com.sleepycat.b.i.h;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.z;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.CountDownLatch;

public class af<K, V>
  implements Map<K, V>
{
  private ad b;
  private final HashMap<Integer, t> c;
  private final Map<K, V> d;
  private final ai e;
  private final z f;
  private final z g;
  private final z h;
  
  static
  {
    if (!af.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public af(ad paramad, Map<K, V> paramMap)
  {
    this.b = paramad;
    this.c = new HashMap();
    this.d = paramMap;
    this.e = new ai("SizeAwaitMap", "SizeAwaitMap statistics");
    this.f = new z(this.e, ag.a);
    this.g = new z(this.e, ag.b);
    this.h = new z(this.e, ag.c);
  }
  
  public final void a(Exception paramException)
  {
    try
    {
      Iterator localIterator = this.c.values().iterator();
      while (localIterator.hasNext()) {
        ((t)localIterator.next()).a(paramException);
      }
      this.c.clear();
    }
    finally {}
    this.d.clear();
  }
  
  /* Error */
  public final boolean a(int paramInt, long paramLong, java.util.concurrent.TimeUnit paramTimeUnit)
  {
    // Byte code:
    //   0: getstatic 33	com/sleepycat/b/i/h/af:a	Z
    //   3: ifne +15 -> 18
    //   6: iload_1
    //   7: ifge +11 -> 18
    //   10: new 111	java/lang/AssertionError
    //   13: dup
    //   14: invokespecial 112	java/lang/AssertionError:<init>	()V
    //   17: athrow
    //   18: aload_0
    //   19: monitorenter
    //   20: iload_1
    //   21: aload_0
    //   22: getfield 47	com/sleepycat/b/i/h/af:d	Ljava/util/Map;
    //   25: invokeinterface 116 1 0
    //   30: if_icmpgt +14 -> 44
    //   33: aload_0
    //   34: getfield 70	com/sleepycat/b/i/h/af:f	Lcom/sleepycat/b/p/z;
    //   37: invokevirtual 118	com/sleepycat/b/p/z:f	()V
    //   40: aload_0
    //   41: monitorexit
    //   42: iconst_1
    //   43: ireturn
    //   44: aload_0
    //   45: getfield 45	com/sleepycat/b/i/h/af:c	Ljava/util/HashMap;
    //   48: iload_1
    //   49: invokestatic 124	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   52: invokevirtual 128	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   55: checkcast 102	com/sleepycat/b/i/h/t
    //   58: astore 6
    //   60: aload 6
    //   62: astore 5
    //   64: aload 6
    //   66: ifnonnull +30 -> 96
    //   69: new 102	com/sleepycat/b/i/h/t
    //   72: dup
    //   73: aload_0
    //   74: getfield 40	com/sleepycat/b/i/h/af:b	Lcom/sleepycat/b/c/ad;
    //   77: invokespecial 131	com/sleepycat/b/i/h/t:<init>	(Lcom/sleepycat/b/c/ad;)V
    //   80: astore 5
    //   82: aload_0
    //   83: getfield 45	com/sleepycat/b/i/h/af:c	Ljava/util/HashMap;
    //   86: iload_1
    //   87: invokestatic 124	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   90: aload 5
    //   92: invokevirtual 135	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   95: pop
    //   96: aload_0
    //   97: monitorexit
    //   98: aload_0
    //   99: getfield 74	com/sleepycat/b/i/h/af:g	Lcom/sleepycat/b/p/z;
    //   102: invokevirtual 118	com/sleepycat/b/p/z:f	()V
    //   105: invokestatic 141	java/lang/System:currentTimeMillis	()J
    //   108: lstore 7
    //   110: aload 5
    //   112: lload_2
    //   113: aload 4
    //   115: invokevirtual 144	com/sleepycat/b/i/h/t:a	(JLjava/util/concurrent/TimeUnit;)Z
    //   118: istore 9
    //   120: aload_0
    //   121: getfield 78	com/sleepycat/b/i/h/af:h	Lcom/sleepycat/b/p/z;
    //   124: invokestatic 141	java/lang/System:currentTimeMillis	()J
    //   127: lload 7
    //   129: lsub
    //   130: invokevirtual 147	com/sleepycat/b/p/z:b	(J)V
    //   133: iload 9
    //   135: ireturn
    //   136: astore 4
    //   138: aload_0
    //   139: monitorexit
    //   140: aload 4
    //   142: athrow
    //   143: astore 4
    //   145: aload_0
    //   146: getfield 78	com/sleepycat/b/i/h/af:h	Lcom/sleepycat/b/p/z;
    //   149: invokestatic 141	java/lang/System:currentTimeMillis	()J
    //   152: lload 7
    //   154: lsub
    //   155: invokevirtual 147	com/sleepycat/b/p/z:b	(J)V
    //   158: aload 4
    //   160: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	161	0	this	af
    //   0	161	1	paramInt	int
    //   0	161	2	paramLong	long
    //   0	161	4	paramTimeUnit	java.util.concurrent.TimeUnit
    //   62	49	5	localt1	t
    //   58	7	6	localt2	t
    //   108	45	7	l	long
    //   118	16	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   20	42	136	finally
    //   44	60	136	finally
    //   69	96	136	finally
    //   96	98	136	finally
    //   138	140	136	finally
    //   110	120	143	finally
  }
  
  @Deprecated
  public void clear()
  {
    throw new UnsupportedOperationException();
  }
  
  public boolean containsKey(Object paramObject)
  {
    return this.d.containsKey(paramObject);
  }
  
  public boolean containsValue(Object paramObject)
  {
    return this.d.containsKey(paramObject);
  }
  
  public Set<Map.Entry<K, V>> entrySet()
  {
    return this.d.entrySet();
  }
  
  public V get(Object paramObject)
  {
    return (V)this.d.get(paramObject);
  }
  
  public boolean isEmpty()
  {
    return this.d.isEmpty();
  }
  
  public Set<K> keySet()
  {
    return this.d.keySet();
  }
  
  public V put(K paramK, V paramV)
  {
    try
    {
      paramK = this.d.put(paramK, paramV);
      if (paramK == null)
      {
        paramV = (CountDownLatch)this.c.remove(Integer.valueOf(this.d.size()));
        if (paramV != null) {
          paramV.countDown();
        }
      }
      return paramK;
    }
    finally {}
  }
  
  public void putAll(Map<? extends K, ? extends V> paramMap)
  {
    throw aa.c("putAll not supported");
  }
  
  public V remove(Object paramObject)
  {
    try
    {
      paramObject = this.d.remove(paramObject);
      return (V)paramObject;
    }
    finally
    {
      paramObject = finally;
      throw ((Throwable)paramObject);
    }
  }
  
  public int size()
  {
    return this.d.size();
  }
  
  public Collection<V> values()
  {
    return this.d.values();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\af.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */