package com.sleepycat.b.h;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.p;
import com.sleepycat.b.l.a;
import com.sleepycat.b.l.aa;
import com.sleepycat.b.l.j;
import com.sleepycat.b.p.n;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

public class h
{
  final ad a;
  final Map<com.sleepycat.b.c.i, Integer> b;
  int c;
  private final SortedMap<Integer, Map<Long, e>> e;
  private int f;
  private final Set<com.sleepycat.b.c.h> g;
  private boolean h;
  private boolean i;
  
  static
  {
    if (!h.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      return;
    }
  }
  
  h(ad paramad)
  {
    this.a = paramad;
    this.e = new TreeMap();
    this.f = 0;
    this.g = new HashSet();
    this.b = new n();
    this.c = i.a;
  }
  
  private void f()
  {
    try
    {
      this.a.n.e(0 - this.f * ao.N);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final int a(com.sleepycat.b.c.i parami)
  {
    try
    {
      if ((!d) && (this.c == i.b)) {
        throw new AssertionError();
      }
    }
    finally {}
    parami = (Integer)this.b.get(parami);
    if (parami != null) {}
    for (int j = parami.intValue();; j = -1) {
      return j;
    }
  }
  
  /* Error */
  final Integer a(j paramj, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: getfield 100	com/sleepycat/b/l/j:j	I
    //   6: invokestatic 104	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   9: astore 4
    //   11: aload_0
    //   12: getfield 44	com/sleepycat/b/h/h:e	Ljava/util/SortedMap;
    //   15: aload 4
    //   17: invokeinterface 110 2 0
    //   22: ifeq +91 -> 113
    //   25: aload_0
    //   26: getfield 44	com/sleepycat/b/h/h:e	Ljava/util/SortedMap;
    //   29: aload 4
    //   31: invokeinterface 111 2 0
    //   36: checkcast 84	java/util/Map
    //   39: astore_3
    //   40: aload_3
    //   41: aload_1
    //   42: getfield 114	com/sleepycat/b/l/j:c	J
    //   45: invokestatic 119	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   48: new 121	com/sleepycat/b/h/e
    //   51: dup
    //   52: aload_1
    //   53: getfield 124	com/sleepycat/b/l/j:i	Lcom/sleepycat/b/c/i;
    //   56: getfield 129	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   59: aload_1
    //   60: getfield 114	com/sleepycat/b/l/j:c	J
    //   63: aload_1
    //   64: invokevirtual 131	com/sleepycat/b/l/j:J	()Z
    //   67: aload_1
    //   68: getfield 134	com/sleepycat/b/l/j:g	[B
    //   71: invokespecial 137	com/sleepycat/b/h/e:<init>	(Lcom/sleepycat/b/c/h;JZ[B)V
    //   74: invokeinterface 141 3 0
    //   79: pop
    //   80: aload_0
    //   81: aload_0
    //   82: getfield 46	com/sleepycat/b/h/h:f	I
    //   85: iconst_1
    //   86: iadd
    //   87: putfield 46	com/sleepycat/b/h/h:f	I
    //   90: iload_2
    //   91: ifeq +17 -> 108
    //   94: aload_0
    //   95: getfield 39	com/sleepycat/b/h/h:a	Lcom/sleepycat/b/c/ad;
    //   98: getfield 68	com/sleepycat/b/c/ad:n	Lcom/sleepycat/b/c/ao;
    //   101: getstatic 73	com/sleepycat/b/c/ao:N	I
    //   104: i2l
    //   105: invokevirtual 76	com/sleepycat/b/c/ao:e	(J)V
    //   108: aload_0
    //   109: monitorexit
    //   110: aload 4
    //   112: areturn
    //   113: new 41	java/util/TreeMap
    //   116: dup
    //   117: invokespecial 42	java/util/TreeMap:<init>	()V
    //   120: astore_3
    //   121: aload_0
    //   122: getfield 44	com/sleepycat/b/h/h:e	Ljava/util/SortedMap;
    //   125: aload 4
    //   127: aload_3
    //   128: invokeinterface 142 3 0
    //   133: pop
    //   134: goto -94 -> 40
    //   137: astore_1
    //   138: aload_0
    //   139: monitorexit
    //   140: aload_1
    //   141: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	142	0	this	h
    //   0	142	1	paramj	j
    //   0	142	2	paramBoolean	boolean
    //   39	89	3	localObject	Object
    //   9	117	4	localInteger	Integer
    // Exception table:
    //   from	to	target	type
    //   2	40	137	finally
    //   40	90	137	finally
    //   94	108	137	finally
    //   113	134	137	finally
  }
  
  final void a()
  {
    try
    {
      f();
      this.e.clear();
      this.g.clear();
      this.b.clear();
      this.f = 0;
      this.c = i.a;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  final void a(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 32	com/sleepycat/b/h/h:d	Z
    //   5: ifne +26 -> 31
    //   8: aload_0
    //   9: getfield 62	com/sleepycat/b/h/h:c	I
    //   12: getstatic 79	com/sleepycat/b/h/i:b	I
    //   15: if_icmpne +16 -> 31
    //   18: new 81	java/lang/AssertionError
    //   21: dup
    //   22: invokespecial 82	java/lang/AssertionError:<init>	()V
    //   25: athrow
    //   26: astore_3
    //   27: aload_0
    //   28: monitorexit
    //   29: aload_3
    //   30: athrow
    //   31: aload_0
    //   32: getfield 51	com/sleepycat/b/h/h:g	Ljava/util/Set;
    //   35: invokeinterface 154 1 0
    //   40: ifeq +89 -> 129
    //   43: aconst_null
    //   44: astore_3
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_3
    //   48: ifnull +116 -> 164
    //   51: aload_0
    //   52: getfield 39	com/sleepycat/b/h/h:a	Lcom/sleepycat/b/c/ad;
    //   55: getfield 158	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   58: astore 4
    //   60: aload_3
    //   61: invokeinterface 162 1 0
    //   66: astore 5
    //   68: aload 5
    //   70: invokeinterface 167 1 0
    //   75: ifeq +89 -> 164
    //   78: aload 4
    //   80: aload 5
    //   82: invokeinterface 171 1 0
    //   87: checkcast 173	com/sleepycat/b/c/h
    //   90: invokevirtual 178	com/sleepycat/b/c/p:b	(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    //   93: astore_3
    //   94: aload_3
    //   95: ifnull +25 -> 120
    //   98: aload_3
    //   99: invokevirtual 181	com/sleepycat/b/c/i:z	()Z
    //   102: ifne +18 -> 120
    //   105: aload_3
    //   106: invokevirtual 184	com/sleepycat/b/c/i:y	()Z
    //   109: ifeq +11 -> 120
    //   112: aload 4
    //   114: aload_3
    //   115: lload_1
    //   116: iconst_1
    //   117: invokevirtual 187	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/c/i;JZ)V
    //   120: aload 4
    //   122: aload_3
    //   123: invokevirtual 190	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   126: goto -58 -> 68
    //   129: new 48	java/util/HashSet
    //   132: dup
    //   133: aload_0
    //   134: getfield 51	com/sleepycat/b/h/h:g	Ljava/util/Set;
    //   137: invokespecial 193	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   140: astore_3
    //   141: aload_0
    //   142: getfield 51	com/sleepycat/b/h/h:g	Ljava/util/Set;
    //   145: invokeinterface 150 1 0
    //   150: goto -105 -> 45
    //   153: astore 5
    //   155: aload 4
    //   157: aload_3
    //   158: invokevirtual 190	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   161: aload 5
    //   163: athrow
    //   164: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	this	h
    //   0	165	1	paramLong	long
    //   26	4	3	localObject1	Object
    //   44	114	3	localObject2	Object
    //   58	98	4	localp	p
    //   66	15	5	localIterator	java.util.Iterator
    //   153	9	5	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	26	finally
    //   27	29	26	finally
    //   31	43	26	finally
    //   45	47	26	finally
    //   129	150	26	finally
    //   98	120	153	finally
  }
  
  final void a(j paramj)
  {
    com.sleepycat.b.c.i locali;
    Integer localInteger;
    try
    {
      locali = paramj.i;
      boolean bool = locali.e();
      if (bool) {}
      for (;;)
      {
        return;
        localInteger = a(paramj, false);
        if ((!this.h) && (!locali.e)) {
          break;
        }
        if (!this.b.containsKey(locali)) {
          this.b.put(locali, null);
        }
      }
      j = localInteger.intValue();
    }
    finally {}
    int j;
    if (((this.i) || (paramj.f())) && (!paramj.I())) {
      j += 1;
    }
    for (paramj = Integer.valueOf(j);; paramj = localInteger)
    {
      localInteger = (Integer)this.b.get(locali);
      if ((localInteger != null) && (j <= localInteger.intValue())) {
        break;
      }
      this.b.put(locali, paramj);
      break;
    }
  }
  
  final void a(Integer paramInteger)
  {
    try
    {
      this.e.remove(paramInteger);
      return;
    }
    finally
    {
      paramInteger = finally;
      throw paramInteger;
    }
  }
  
  final void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    try
    {
      if ((!d) && (!this.e.isEmpty())) {
        throw new AssertionError();
      }
    }
    finally {}
    if ((!d) && (!this.g.isEmpty())) {
      throw new AssertionError();
    }
    if ((!d) && (!this.b.isEmpty())) {
      throw new AssertionError();
    }
    if ((!d) && (this.f != 0)) {
      throw new AssertionError();
    }
    if ((!d) && (this.c != i.a)) {
      throw new AssertionError();
    }
    this.c = i.b;
    this.h = paramBoolean1;
    this.i = paramBoolean2;
  }
  
  /* Error */
  public final boolean a(j paramj1, j paramj2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_1
    //   6: getfield 124	com/sleepycat/b/l/j:i	Lcom/sleepycat/b/c/i;
    //   9: astore_3
    //   10: aload_0
    //   11: getfield 62	com/sleepycat/b/h/h:c	I
    //   14: getstatic 79	com/sleepycat/b/h/i:b	I
    //   17: if_icmpne +17 -> 34
    //   20: aload_2
    //   21: ifnull +13 -> 34
    //   24: aload_0
    //   25: aload_2
    //   26: invokevirtual 219	com/sleepycat/b/h/h:a	(Lcom/sleepycat/b/l/j;)V
    //   29: aload_0
    //   30: aload_2
    //   31: invokevirtual 221	com/sleepycat/b/h/h:b	(Lcom/sleepycat/b/l/j;)V
    //   34: aload_3
    //   35: invokevirtual 223	com/sleepycat/b/c/i:g	()Z
    //   38: istore 6
    //   40: iload 6
    //   42: ifeq +12 -> 54
    //   45: iload 7
    //   47: istore 6
    //   49: aload_0
    //   50: monitorexit
    //   51: iload 6
    //   53: ireturn
    //   54: aload_0
    //   55: getfield 62	com/sleepycat/b/h/h:c	I
    //   58: getstatic 79	com/sleepycat/b/h/i:b	I
    //   61: if_icmpne +11 -> 72
    //   64: iload 7
    //   66: istore 6
    //   68: aload_2
    //   69: ifnonnull -20 -> 49
    //   72: aload_0
    //   73: getfield 62	com/sleepycat/b/h/h:c	I
    //   76: getstatic 224	com/sleepycat/b/h/i:c	I
    //   79: if_icmpne +27 -> 106
    //   82: aload_1
    //   83: getfield 100	com/sleepycat/b/l/j:j	I
    //   86: istore 4
    //   88: aload_0
    //   89: aload_3
    //   90: invokevirtual 226	com/sleepycat/b/h/h:a	(Lcom/sleepycat/b/c/i;)I
    //   93: istore 5
    //   95: iload 7
    //   97: istore 6
    //   99: iload 4
    //   101: iload 5
    //   103: if_icmplt -54 -> 49
    //   106: iconst_0
    //   107: istore 6
    //   109: goto -60 -> 49
    //   112: astore_1
    //   113: aload_0
    //   114: monitorexit
    //   115: aload_1
    //   116: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	this	h
    //   0	117	1	paramj1	j
    //   0	117	2	paramj2	j
    //   9	81	3	locali	com.sleepycat.b.c.i
    //   86	18	4	j	int
    //   93	11	5	k	int
    //   38	70	6	bool1	boolean
    //   1	95	7	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   5	20	112	finally
    //   24	34	112	finally
    //   34	40	112	finally
    //   54	64	112	finally
    //   72	95	112	finally
  }
  
  /* Error */
  final boolean a(Integer paramInteger, Long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 44	com/sleepycat/b/h/h:e	Ljava/util/SortedMap;
    //   6: aload_1
    //   7: invokeinterface 111 2 0
    //   12: checkcast 84	java/util/Map
    //   15: astore_1
    //   16: aload_1
    //   17: ifnull +15 -> 32
    //   20: aload_1
    //   21: aload_2
    //   22: invokeinterface 203 2 0
    //   27: istore_3
    //   28: aload_0
    //   29: monitorexit
    //   30: iload_3
    //   31: ireturn
    //   32: iconst_0
    //   33: istore_3
    //   34: goto -6 -> 28
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	h
    //   0	42	1	paramInteger	Integer
    //   0	42	2	paramLong	Long
    //   27	7	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	16	37	finally
    //   20	28	37	finally
  }
  
  final int b()
  {
    try
    {
      int j = this.e.size();
      return j;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  final e b(Integer paramInteger)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 44	com/sleepycat/b/h/h:e	Ljava/util/SortedMap;
    //   6: aload_1
    //   7: invokeinterface 111 2 0
    //   12: checkcast 84	java/util/Map
    //   15: astore_1
    //   16: aload_1
    //   17: ifnull +52 -> 69
    //   20: aload_1
    //   21: invokeinterface 235 1 0
    //   26: invokeinterface 162 1 0
    //   31: astore_2
    //   32: aload_2
    //   33: invokeinterface 167 1 0
    //   38: ifeq +31 -> 69
    //   41: aload_2
    //   42: invokeinterface 171 1 0
    //   47: checkcast 237	java/util/Map$Entry
    //   50: invokeinterface 240 1 0
    //   55: checkcast 121	com/sleepycat/b/h/e
    //   58: astore_1
    //   59: aload_2
    //   60: invokeinterface 242 1 0
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_1
    //   68: areturn
    //   69: aconst_null
    //   70: astore_1
    //   71: goto -6 -> 65
    //   74: astore_1
    //   75: aload_0
    //   76: monitorexit
    //   77: aload_1
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	h
    //   0	79	1	paramInteger	Integer
    //   31	29	2	localIterator	java.util.Iterator
    // Exception table:
    //   from	to	target	type
    //   2	16	74	finally
    //   20	65	74	finally
  }
  
  /* Error */
  final e b(Integer paramInteger, Long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 44	com/sleepycat/b/h/h:e	Ljava/util/SortedMap;
    //   6: aload_1
    //   7: invokeinterface 111 2 0
    //   12: checkcast 84	java/util/Map
    //   15: astore_1
    //   16: aload_1
    //   17: ifnull +18 -> 35
    //   20: aload_1
    //   21: aload_2
    //   22: invokeinterface 244 2 0
    //   27: checkcast 121	com/sleepycat/b/h/e
    //   30: astore_1
    //   31: aload_0
    //   32: monitorexit
    //   33: aload_1
    //   34: areturn
    //   35: aconst_null
    //   36: astore_1
    //   37: goto -6 -> 31
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	h
    //   0	45	1	paramInteger	Integer
    //   0	45	2	paramLong	Long
    // Exception table:
    //   from	to	target	type
    //   2	16	40	finally
    //   20	31	40	finally
  }
  
  final void b(j paramj)
  {
    try
    {
      if (((paramj instanceof a)) && (paramj.i.a.equals(p.a)))
      {
        int j = 0;
        while (j < paramj.f)
        {
          aa localaa = (aa)paramj.j(j);
          if ((localaa != null) && (localaa.a.y())) {
            this.g.add(localaa.a.a);
          }
          j += 1;
        }
      }
      return;
    }
    finally {}
  }
  
  final void c()
  {
    try
    {
      this.a.n.e(this.f * ao.N);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final Integer d()
  {
    try
    {
      Integer localInteger = (Integer)this.e.firstKey();
      return localInteger;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final int e()
  {
    try
    {
      int j = this.f;
      return j;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */