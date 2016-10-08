package com.sleepycat.b.a;

import com.sleepycat.b.br;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.e;
import com.sleepycat.b.c.g;
import com.sleepycat.b.c.i;
import com.sleepycat.b.c.p;
import com.sleepycat.b.g.am;
import com.sleepycat.b.l;
import com.sleepycat.b.n.q;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.logging.Logger;

public class ad
{
  i a;
  private final com.sleepycat.b.c.ad c;
  private final ae d;
  private SortedMap<Long, o> e;
  private boolean f;
  private final Logger g;
  
  static
  {
    if (!ad.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  public ad(com.sleepycat.b.c.ad paramad, ae paramae)
  {
    this.c = paramad;
    this.d = paramae;
    this.e = new TreeMap();
    this.g = com.sleepycat.b.p.w.a(getClass());
  }
  
  private static boolean a(com.sleepycat.b.c.c paramc, long paramLong, com.sleepycat.b.m paramm1, com.sleepycat.b.m paramm2, com.sleepycat.b.n.o paramo)
  {
    boolean bool = true;
    paramm1.a(com.sleepycat.b.l.h.a(paramLong));
    do
    {
      try
      {
        int i = paramc.a(paramm1, e.c, paramo);
        if ((i & 0x1) == 0)
        {
          paramc.c();
          bool = false;
          return bool;
        }
        if ((i & 0x2) != 0) {}
        for (i = 1; i != 0; i = 0)
        {
          com.sleepycat.b.av localav1 = paramc.b(paramm1, paramm2, paramo);
          com.sleepycat.b.av localav2 = com.sleepycat.b.av.c;
          if (localav1 == localav2) {
            break;
          }
          return true;
        }
      }
      finally
      {
        paramc.c();
      }
      paramc.f();
    } while (paramc.a(paramm1, paramm2, paramo, true, false, null) == com.sleepycat.b.av.a);
    return false;
  }
  
  /* Error */
  private boolean a(com.sleepycat.b.l.h paramh, long paramLong, int paramInt)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 9
    //   3: aconst_null
    //   4: astore 6
    //   6: aload_0
    //   7: monitorenter
    //   8: lload_2
    //   9: iload 4
    //   11: invokestatic 97	com/sleepycat/b/l/h:a	(JI)[B
    //   14: astore 7
    //   16: aload_0
    //   17: getfield 37	com/sleepycat/b/a/ad:c	Lcom/sleepycat/b/c/ad;
    //   20: iconst_0
    //   21: invokestatic 102	com/sleepycat/b/n/a:a	(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;
    //   24: astore 5
    //   26: new 73	com/sleepycat/b/c/c
    //   29: dup
    //   30: aload_0
    //   31: getfield 104	com/sleepycat/b/a/ad:a	Lcom/sleepycat/b/c/i;
    //   34: aload 5
    //   36: invokespecial 107	com/sleepycat/b/c/c:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    //   39: astore 6
    //   41: aload 6
    //   43: aload 7
    //   45: aload_1
    //   46: getstatic 112	com/sleepycat/b/g/av:g	Lcom/sleepycat/b/g/av;
    //   49: invokevirtual 115	com/sleepycat/b/c/c:a	([BLcom/sleepycat/b/l/y;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   52: getstatic 117	com/sleepycat/b/av:b	Lcom/sleepycat/b/av;
    //   55: if_acmpne +85 -> 140
    //   58: aload_0
    //   59: getfield 55	com/sleepycat/b/a/ad:g	Ljava/util/logging/Logger;
    //   62: aload_0
    //   63: getfield 37	com/sleepycat/b/a/ad:c	Lcom/sleepycat/b/c/ad;
    //   66: getstatic 123	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   69: new 125	java/lang/StringBuilder
    //   72: dup
    //   73: ldc 127
    //   75: invokespecial 130	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   78: lload_2
    //   79: invokestatic 136	java/lang/Long:toHexString	(J)Ljava/lang/String;
    //   82: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: ldc -114
    //   87: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   90: iload 4
    //   92: i2l
    //   93: invokestatic 136	java/lang/Long:toHexString	(J)Ljava/lang/String;
    //   96: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 146	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: invokestatic 149	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   105: aload 6
    //   107: ifnull +9 -> 116
    //   110: aload 6
    //   112: aconst_null
    //   113: invokevirtual 152	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   116: iload 9
    //   118: istore 8
    //   120: aload 5
    //   122: ifnull +13 -> 135
    //   125: aload 5
    //   127: iconst_1
    //   128: invokevirtual 158	com/sleepycat/b/n/q:a_	(Z)V
    //   131: iload 9
    //   133: istore 8
    //   135: aload_0
    //   136: monitorexit
    //   137: iload 8
    //   139: ireturn
    //   140: aload 6
    //   142: invokevirtual 88	com/sleepycat/b/c/c:f	()V
    //   145: aload 6
    //   147: ifnull +9 -> 156
    //   150: aload 6
    //   152: aconst_null
    //   153: invokevirtual 152	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   156: aload 5
    //   158: ifnull +72 -> 230
    //   161: aload 5
    //   163: iconst_1
    //   164: invokevirtual 158	com/sleepycat/b/n/q:a_	(Z)V
    //   167: goto +63 -> 230
    //   170: aload 5
    //   172: ifnull +9 -> 181
    //   175: aload 5
    //   177: aconst_null
    //   178: invokevirtual 152	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   181: aload 6
    //   183: ifnull +9 -> 192
    //   186: aload 6
    //   188: iconst_1
    //   189: invokevirtual 158	com/sleepycat/b/n/q:a_	(Z)V
    //   192: aload_1
    //   193: athrow
    //   194: astore_1
    //   195: aload_0
    //   196: monitorexit
    //   197: aload_1
    //   198: athrow
    //   199: astore_1
    //   200: aconst_null
    //   201: astore 7
    //   203: aload 5
    //   205: astore 6
    //   207: aload 7
    //   209: astore 5
    //   211: goto -41 -> 170
    //   214: astore_1
    //   215: aload 5
    //   217: astore 7
    //   219: aload 6
    //   221: astore 5
    //   223: aload 7
    //   225: astore 6
    //   227: goto -57 -> 170
    //   230: iconst_1
    //   231: istore 8
    //   233: goto -98 -> 135
    //   236: astore_1
    //   237: aconst_null
    //   238: astore 5
    //   240: goto -70 -> 170
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	243	0	this	ad
    //   0	243	1	paramh	com.sleepycat.b.l.h
    //   0	243	2	paramLong	long
    //   0	243	4	paramInt	int
    //   24	215	5	localObject1	Object
    //   4	222	6	localObject2	Object
    //   14	210	7	localObject3	Object
    //   118	114	8	bool1	boolean
    //   1	131	9	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   8	16	194	finally
    //   110	116	194	finally
    //   125	131	194	finally
    //   150	156	194	finally
    //   161	167	194	finally
    //   175	181	194	finally
    //   186	192	194	finally
    //   192	194	194	finally
    //   26	41	199	finally
    //   41	105	214	finally
    //   140	145	214	finally
    //   16	26	236	finally
  }
  
  private w b(z paramz)
  {
    try
    {
      if (this.c.g) {
        throw com.sleepycat.b.aa.c("Cannot write file summary in a read-only environment");
      }
    }
    finally {}
    boolean bool = paramz.d();
    if (bool) {
      paramz = null;
    }
    for (;;)
    {
      return paramz;
      if (!this.f)
      {
        paramz = null;
      }
      else
      {
        long l = paramz.m;
        Long localLong = Long.valueOf(l);
        o localo = (o)this.e.get(localLong);
        Object localObject = localo;
        if (localo == null)
        {
          if ((!this.e.isEmpty()) && (l < ((Long)this.e.lastKey()).longValue()) && (!this.c.x.a(l)))
          {
            this.c.w.a(paramz);
            paramz = null;
          }
          else
          {
            localObject = new o();
          }
        }
        else
        {
          localo = new o();
          localo.a((o)localObject);
          localo.a(paramz);
          int i = localo.a;
          int j = localo.i;
          int k = localo.h;
          localObject = new com.sleepycat.b.l.h((o)localObject);
          ((com.sleepycat.b.l.h)localObject).b = paramz;
          ((com.sleepycat.b.l.h)localObject).d = true;
          a((com.sleepycat.b.l.h)localObject, l, k + (i + j));
          paramz = ((com.sleepycat.b.l.h)localObject).a;
          if (this.e.put(localLong, paramz) == null) {
            this.c.n.e(ao.O);
          }
          paramz = ((com.sleepycat.b.l.h)localObject).c;
        }
      }
    }
  }
  
  private o c(Long paramLong)
  {
    try
    {
      o localo = (o)this.e.get(paramLong);
      z localz = this.d.a(paramLong.longValue());
      paramLong = localo;
      if (localz != null)
      {
        paramLong = new o();
        paramLong.a(localo);
        paramLong.a(localz);
      }
      return paramLong;
    }
    finally {}
  }
  
  private void d(Long paramLong)
  {
    try
    {
      com.sleepycat.b.n.a locala = com.sleepycat.b.n.a.a(this.c, false);
      com.sleepycat.b.m localm1;
      com.sleepycat.b.m localm2;
      long l;
      this.c.w.a(paramLong);
    }
    finally
    {
      for (;;)
      {
        com.sleepycat.b.c.c localc;
        Object localObject;
        try
        {
          localc = new com.sleepycat.b.c.c(this.a, locala);
        }
        finally
        {
          localObject = null;
          continue;
        }
        try
        {
          localc.i = true;
          localm1 = new com.sleepycat.b.m();
          localm2 = new com.sleepycat.b.m();
          l = paramLong.longValue();
          localm2.a(0, 0, true);
          localObject = com.sleepycat.b.av.a;
          if (a(localc, l, localm1, localm2, com.sleepycat.b.n.o.b))
          {
            localObject = com.sleepycat.b.av.a;
            if ((localObject != com.sleepycat.b.av.a) || (l != com.sleepycat.b.l.h.b(localm1.a))) {
              continue;
            }
            this.c.b(true);
            localc.a(com.sleepycat.b.g.av.g);
            localObject = localc.a(localm1, localm2, com.sleepycat.b.n.o.b, true, false, null);
            continue;
          }
          localObject = com.sleepycat.b.av.d;
          continue;
          paramLong = finally;
          locala = null;
          localObject = null;
        }
        finally
        {
          localObject = localc;
        }
      }
      if (localObject != null) {
        ((com.sleepycat.b.c.c)localObject).a(null);
      }
      if (locala != null) {
        locala.a_(true);
      }
      throw paramLong;
      if (localc != null) {
        localc.a(null);
      }
      if (locala != null) {
        locala.a_(true);
      }
      paramLong = this.d.a(paramLong.longValue());
      if (paramLong == null) {}
    }
  }
  
  private boolean d()
  {
    Object localObject1 = null;
    if (this.a != null) {}
    for (;;)
    {
      return true;
      p localp = this.c.q;
      try
      {
        com.sleepycat.b.n.z localz = com.sleepycat.b.n.z.b(this.c, new br());
        localObject1 = localz;
        i locali = localp.a(localz, com.sleepycat.b.c.w.c.b(), null);
        Object localObject2 = locali;
        if (locali == null)
        {
          localObject1 = localz;
          boolean bool = this.c.g;
          if (bool)
          {
            if (localz != null) {
              localz.a_(false);
            }
            return false;
          }
          localObject1 = localz;
          localObject2 = new l();
          localObject1 = localz;
          ((l)localObject2).j = false;
          localObject1 = localz;
          localObject2 = localp.a(localz, com.sleepycat.b.c.w.c.b(), (l)localObject2);
        }
        localObject1 = localz;
        this.a = ((i)localObject2);
        if (localz == null) {
          continue;
        }
        localz.a_(true);
        return true;
      }
      finally
      {
        if (localObject1 != null) {
          ((q)localObject1).a_(false);
        }
      }
    }
  }
  
  public final long a()
  {
    l = 0L;
    try
    {
      Iterator localIterator = this.e.values().iterator();
      while (localIterator.hasNext()) {
        l += ((o)localIterator.next()).b;
      }
      localIterator = this.d.a().iterator();
      while (localIterator.hasNext()) {
        l = ((z)localIterator.next()).b + l;
      }
      return l;
    }
    finally {}
  }
  
  public final void a(s params)
  {
    this.c.w.a(params);
    a(params.a());
    if (this.c.u.b.c)
    {
      params = params.a.keySet().iterator();
      while (params.hasNext())
      {
        i locali = (i)params.next();
        if ((!locali.z()) && (locali.f)) {
          this.c.q.b(locali);
        }
      }
    }
  }
  
  public final void a(z paramz)
  {
    if (paramz.q) {
      b(paramz);
    }
  }
  
  final void a(Long paramLong)
  {
    try
    {
      if ((!b) && (!this.f)) {
        throw new AssertionError();
      }
    }
    finally {}
    if ((o)this.e.remove(paramLong) != null) {
      this.c.n.e(0 - ao.O);
    }
    d(paramLong);
  }
  
  public final void a(Collection<z> paramCollection)
  {
    if (!this.c.u.b.c) {}
    for (;;)
    {
      return;
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        long l = ((z)paramCollection.next()).m;
        z localz = this.d.a(l);
        if (localz != null) {
          a(localz);
        }
      }
    }
  }
  
  final void a(final Collection<Long> paramCollection, Set<com.sleepycat.b.c.h> paramSet)
  {
    final am localam = this.c.w;
    final p localp = this.c.q;
    Object localObject = localp.b(p.a);
    i locali = localp.b(p.b);
    int i = 0;
    if (localam.a((i)localObject, paramCollection)) {
      i = 1;
    }
    if (localam.a(locali, paramCollection)) {
      i = 1;
    }
    if (i != 0) {
      this.c.a(-1L);
    }
    if (paramSet != null) {
      paramSet = paramSet.iterator();
    }
    for (;;)
    {
      if (paramSet.hasNext())
      {
        localObject = (com.sleepycat.b.c.h)paramSet.next();
        if ((!((com.sleepycat.b.c.h)localObject).equals(p.a)) && (!((com.sleepycat.b.c.h)localObject).equals(p.b)))
        {
          localObject = localp.b((com.sleepycat.b.c.h)localObject);
          if (localObject != null) {}
          try
          {
            if (localam.a((i)localObject, paramCollection)) {
              localp.b((i)localObject);
            }
            localp.c((i)localObject);
          }
          finally
          {
            localp.c((i)localObject);
          }
        }
      }
    }
  }
  
  /* Error */
  public final boolean a(com.sleepycat.b.c.be parambe)
  {
    // Byte code:
    //   0: getstatic 30	com/sleepycat/b/a/ad:b	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: getfield 176	com/sleepycat/b/a/ad:f	Z
    //   10: ifeq +11 -> 21
    //   13: new 405	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 406	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: invokespecial 449	com/sleepycat/b/a/ad:d	()Z
    //   25: ifne +5 -> 30
    //   28: iconst_0
    //   29: ireturn
    //   30: aload_0
    //   31: getfield 44	com/sleepycat/b/a/ad:e	Ljava/util/SortedMap;
    //   34: invokeinterface 453 1 0
    //   39: getstatic 259	com/sleepycat/b/c/ao:O	I
    //   42: imul
    //   43: istore 11
    //   45: aload_0
    //   46: getfield 37	com/sleepycat/b/a/ad:c	Lcom/sleepycat/b/c/ad;
    //   49: getfield 207	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   52: invokevirtual 456	com/sleepycat/b/g/m:c	()[Ljava/lang/Long;
    //   55: astore 6
    //   57: aconst_null
    //   58: astore_2
    //   59: aconst_null
    //   60: astore 5
    //   62: aload_0
    //   63: getfield 37	com/sleepycat/b/a/ad:c	Lcom/sleepycat/b/c/ad;
    //   66: iconst_0
    //   67: invokestatic 102	com/sleepycat/b/n/a:a	(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;
    //   70: astore_3
    //   71: new 73	com/sleepycat/b/c/c
    //   74: dup
    //   75: aload_0
    //   76: getfield 104	com/sleepycat/b/a/ad:a	Lcom/sleepycat/b/c/i;
    //   79: aload_3
    //   80: invokespecial 107	com/sleepycat/b/c/c:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    //   83: astore 4
    //   85: aload 4
    //   87: iconst_1
    //   88: putfield 274	com/sleepycat/b/c/c:i	Z
    //   91: new 63	com/sleepycat/b/m
    //   94: dup
    //   95: invokespecial 275	com/sleepycat/b/m:<init>	()V
    //   98: astore 7
    //   100: new 63	com/sleepycat/b/m
    //   103: dup
    //   104: invokespecial 275	com/sleepycat/b/m:<init>	()V
    //   107: astore 8
    //   109: aload 4
    //   111: iconst_1
    //   112: invokevirtual 459	com/sleepycat/b/c/c:a	(Z)Z
    //   115: ifeq +384 -> 499
    //   118: aload 4
    //   120: aload 7
    //   122: aload 8
    //   124: getstatic 440	com/sleepycat/b/n/o:f	Lcom/sleepycat/b/n/o;
    //   127: invokevirtual 81	com/sleepycat/b/c/c:b	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;
    //   130: astore 5
    //   132: aload 5
    //   134: astore_2
    //   135: aload 5
    //   137: getstatic 93	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   140: if_acmpeq +19 -> 159
    //   143: aload 4
    //   145: aload 7
    //   147: aload 8
    //   149: getstatic 440	com/sleepycat/b/n/o:f	Lcom/sleepycat/b/n/o;
    //   152: iconst_1
    //   153: iconst_0
    //   154: aconst_null
    //   155: invokevirtual 91	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    //   158: astore_2
    //   159: aload_2
    //   160: getstatic 93	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   163: if_acmpne +336 -> 499
    //   166: aload_1
    //   167: invokevirtual 463	com/sleepycat/b/c/be:a	()V
    //   170: aload_0
    //   171: getfield 37	com/sleepycat/b/a/ad:c	Lcom/sleepycat/b/c/ad;
    //   174: iconst_0
    //   175: invokevirtual 293	com/sleepycat/b/c/ad:b	(Z)V
    //   178: aload 4
    //   180: getstatic 440	com/sleepycat/b/n/o:f	Lcom/sleepycat/b/n/o;
    //   183: invokevirtual 466	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;
    //   186: checkcast 58	com/sleepycat/b/l/h
    //   189: astore 5
    //   191: aload 5
    //   193: ifnonnull +22 -> 215
    //   196: aload 4
    //   198: aload 7
    //   200: aload 8
    //   202: getstatic 440	com/sleepycat/b/n/o:f	Lcom/sleepycat/b/n/o;
    //   205: iconst_1
    //   206: iconst_0
    //   207: aconst_null
    //   208: invokevirtual 91	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    //   211: astore_2
    //   212: goto -53 -> 159
    //   215: aload 7
    //   217: getfield 288	com/sleepycat/b/m:a	[B
    //   220: astore 9
    //   222: aload 9
    //   224: invokestatic 469	com/sleepycat/b/l/h:a	([B)Z
    //   227: istore 16
    //   229: aload 9
    //   231: invokestatic 291	com/sleepycat/b/l/h:b	([B)J
    //   234: lstore 14
    //   236: lload 14
    //   238: invokestatic 184	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   241: astore 9
    //   243: aload 6
    //   245: aload 9
    //   247: invokestatic 475	java/util/Arrays:binarySearch	([Ljava/lang/Object;Ljava/lang/Object;)I
    //   250: iflt +155 -> 405
    //   253: aload_1
    //   254: invokevirtual 477	com/sleepycat/b/c/be:b	()V
    //   257: aload 5
    //   259: getfield 246	com/sleepycat/b/l/h:a	Lcom/sleepycat/b/a/o;
    //   262: astore 10
    //   264: aload_0
    //   265: getfield 44	com/sleepycat/b/a/ad:e	Ljava/util/SortedMap;
    //   268: aload 9
    //   270: aload 10
    //   272: invokeinterface 250 3 0
    //   277: pop
    //   278: iload 16
    //   280: ifeq +56 -> 336
    //   283: aload_0
    //   284: getfield 37	com/sleepycat/b/a/ad:c	Lcom/sleepycat/b/c/ad;
    //   287: getfield 163	com/sleepycat/b/c/ad:g	Z
    //   290: ifne +46 -> 336
    //   293: aload_0
    //   294: aload 5
    //   296: lload 14
    //   298: iconst_0
    //   299: invokespecial 243	com/sleepycat/b/a/ad:a	(Lcom/sleepycat/b/l/h;JI)Z
    //   302: pop
    //   303: aload 4
    //   305: getstatic 112	com/sleepycat/b/g/av:g	Lcom/sleepycat/b/g/av;
    //   308: invokevirtual 296	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   311: pop
    //   312: iload 16
    //   314: ifeq +159 -> 473
    //   317: aload 4
    //   319: aload 7
    //   321: aload 8
    //   323: getstatic 440	com/sleepycat/b/n/o:f	Lcom/sleepycat/b/n/o;
    //   326: iconst_1
    //   327: iconst_0
    //   328: aconst_null
    //   329: invokevirtual 91	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    //   332: astore_2
    //   333: goto -174 -> 159
    //   336: aload 4
    //   338: invokevirtual 88	com/sleepycat/b/c/c:f	()V
    //   341: goto -29 -> 312
    //   344: astore_1
    //   345: aload_3
    //   346: astore_2
    //   347: aload 4
    //   349: astore_3
    //   350: aload_3
    //   351: ifnull +8 -> 359
    //   354: aload_3
    //   355: aconst_null
    //   356: invokevirtual 152	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   359: aload_2
    //   360: ifnull +8 -> 368
    //   363: aload_2
    //   364: iconst_1
    //   365: invokevirtual 158	com/sleepycat/b/n/q:a_	(Z)V
    //   368: aload_0
    //   369: getfield 44	com/sleepycat/b/a/ad:e	Ljava/util/SortedMap;
    //   372: invokeinterface 453 1 0
    //   377: istore 12
    //   379: getstatic 259	com/sleepycat/b/c/ao:O	I
    //   382: istore 13
    //   384: aload_0
    //   385: getfield 37	com/sleepycat/b/a/ad:c	Lcom/sleepycat/b/c/ad;
    //   388: getfield 254	com/sleepycat/b/c/ad:n	Lcom/sleepycat/b/c/ao;
    //   391: iload 12
    //   393: iload 13
    //   395: imul
    //   396: iload 11
    //   398: isub
    //   399: i2l
    //   400: invokevirtual 262	com/sleepycat/b/c/ao:e	(J)V
    //   403: aload_1
    //   404: athrow
    //   405: aload_1
    //   406: invokevirtual 478	com/sleepycat/b/c/be:c	()V
    //   409: aload_0
    //   410: getfield 44	com/sleepycat/b/a/ad:e	Ljava/util/SortedMap;
    //   413: aload 9
    //   415: invokeinterface 409 2 0
    //   420: pop
    //   421: aload_0
    //   422: getfield 37	com/sleepycat/b/a/ad:c	Lcom/sleepycat/b/c/ad;
    //   425: getfield 163	com/sleepycat/b/c/ad:g	Z
    //   428: ifne -116 -> 312
    //   431: aload_0
    //   432: aload 9
    //   434: invokestatic 484	java/util/Collections:singleton	(Ljava/lang/Object;)Ljava/util/Set;
    //   437: aconst_null
    //   438: invokevirtual 486	com/sleepycat/b/a/ad:a	(Ljava/util/Collection;Ljava/util/Set;)V
    //   441: iload 16
    //   443: ifeq +21 -> 464
    //   446: aload 4
    //   448: invokevirtual 489	com/sleepycat/b/c/c:b	()Lcom/sleepycat/b/l/a;
    //   451: pop
    //   452: aload 4
    //   454: getstatic 112	com/sleepycat/b/g/av:g	Lcom/sleepycat/b/g/av;
    //   457: invokevirtual 296	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   460: pop
    //   461: goto -149 -> 312
    //   464: aload_0
    //   465: aload 9
    //   467: invokespecial 411	com/sleepycat/b/a/ad:d	(Ljava/lang/Long;)V
    //   470: goto -158 -> 312
    //   473: aload 4
    //   475: lconst_1
    //   476: lload 14
    //   478: ladd
    //   479: aload 7
    //   481: aload 8
    //   483: getstatic 440	com/sleepycat/b/n/o:f	Lcom/sleepycat/b/n/o;
    //   486: invokestatic 285	com/sleepycat/b/a/ad:a	(Lcom/sleepycat/b/c/c;JLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Z
    //   489: ifne +88 -> 577
    //   492: getstatic 298	com/sleepycat/b/av:d	Lcom/sleepycat/b/av;
    //   495: astore_2
    //   496: goto -337 -> 159
    //   499: aload 4
    //   501: ifnull +9 -> 510
    //   504: aload 4
    //   506: aconst_null
    //   507: invokevirtual 152	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   510: aload_3
    //   511: ifnull +8 -> 519
    //   514: aload_3
    //   515: iconst_1
    //   516: invokevirtual 158	com/sleepycat/b/n/q:a_	(Z)V
    //   519: aload_0
    //   520: getfield 44	com/sleepycat/b/a/ad:e	Ljava/util/SortedMap;
    //   523: invokeinterface 453 1 0
    //   528: istore 12
    //   530: getstatic 259	com/sleepycat/b/c/ao:O	I
    //   533: istore 13
    //   535: aload_0
    //   536: getfield 37	com/sleepycat/b/a/ad:c	Lcom/sleepycat/b/c/ad;
    //   539: getfield 254	com/sleepycat/b/c/ad:n	Lcom/sleepycat/b/c/ao;
    //   542: iload 12
    //   544: iload 13
    //   546: imul
    //   547: iload 11
    //   549: isub
    //   550: i2l
    //   551: invokevirtual 262	com/sleepycat/b/c/ao:e	(J)V
    //   554: aload_0
    //   555: iconst_1
    //   556: putfield 176	com/sleepycat/b/a/ad:f	Z
    //   559: iconst_1
    //   560: ireturn
    //   561: astore_1
    //   562: aload 5
    //   564: astore_3
    //   565: goto -215 -> 350
    //   568: astore_1
    //   569: aload_3
    //   570: astore_2
    //   571: aload 5
    //   573: astore_3
    //   574: goto -224 -> 350
    //   577: goto -81 -> 496
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	580	0	this	ad
    //   0	580	1	parambe	com.sleepycat.b.c.be
    //   58	513	2	localObject1	Object
    //   70	504	3	localObject2	Object
    //   83	422	4	localc	com.sleepycat.b.c.c
    //   60	512	5	localObject3	Object
    //   55	189	6	arrayOfLong	Long[]
    //   98	382	7	localm1	com.sleepycat.b.m
    //   107	375	8	localm2	com.sleepycat.b.m
    //   220	246	9	localObject4	Object
    //   262	9	10	localo	o
    //   43	507	11	i	int
    //   377	170	12	j	int
    //   382	165	13	k	int
    //   234	243	14	l	long
    //   227	215	16	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   85	132	344	finally
    //   135	159	344	finally
    //   159	191	344	finally
    //   196	212	344	finally
    //   215	278	344	finally
    //   283	312	344	finally
    //   317	333	344	finally
    //   336	341	344	finally
    //   405	441	344	finally
    //   446	461	344	finally
    //   464	470	344	finally
    //   473	496	344	finally
    //   62	71	561	finally
    //   71	85	568	finally
  }
  
  final w b(Long paramLong)
  {
    w localw = new w();
    if (!this.c.D.N) {
      return localw;
    }
    if ((!b) && (!this.f)) {
      throw new AssertionError();
    }
    long l = paramLong.longValue();
    ArrayList localArrayList = new ArrayList();
    Object localObject = this.c.w.h(l);
    com.sleepycat.b.n.a locala;
    try
    {
      locala = com.sleepycat.b.n.a.a(this.c, false);
      com.sleepycat.b.c.c localc = new com.sleepycat.b.c.c(this.a, locala);
      try
      {
        localc.i = true;
        com.sleepycat.b.m localm1 = new com.sleepycat.b.m();
        com.sleepycat.b.m localm2 = new com.sleepycat.b.m();
        paramLong = com.sleepycat.b.av.a;
        if (!a(localc, l, localm1, localm2, com.sleepycat.b.n.o.f)) {
          paramLong = com.sleepycat.b.av.d;
        }
        while (paramLong == com.sleepycat.b.av.a)
        {
          this.c.b(true);
          paramLong = (com.sleepycat.b.l.h)localc.a(com.sleepycat.b.n.o.f);
          if (paramLong != null)
          {
            if (l == com.sleepycat.b.l.h.b(localm1.a))
            {
              paramLong = paramLong.c;
              if (paramLong != null) {
                localArrayList.add(paramLong.d());
              }
              localc.f();
            }
          }
          else
          {
            paramLong = localc.a(localm1, localm2, com.sleepycat.b.n.o.f, true, false, null);
            continue;
            paramLong = finally;
          }
        }
      }
      finally
      {
        localc.a(null);
        locala.a_(true);
      }
      localc.a(null);
    }
    finally
    {
      ((z)localObject).q = true;
    }
    locala.a_(true);
    if (!((z)localObject).d())
    {
      paramLong = b((z)localObject);
      if (paramLong != null) {
        localArrayList.add(paramLong.d());
      }
    }
    ((z)localObject).q = true;
    int j = 0;
    int i = 0;
    while (i < localArrayList.size())
    {
      j += ((long[])localArrayList.get(i)).length;
      i += 1;
    }
    paramLong = new long[j];
    j = 0;
    i = 0;
    while (i < localArrayList.size())
    {
      localObject = (long[])localArrayList.get(i);
      System.arraycopy(localObject, 0, paramLong, j, localObject.length);
      j += localObject.length;
      i += 1;
    }
    if ((!b) && (j != paramLong.length)) {
      throw new AssertionError();
    }
    localw.a(paramLong);
    return localw;
  }
  
  public final SortedMap<Long, o> b()
  {
    try
    {
      if ((!b) && (!this.f)) {
        throw new AssertionError();
      }
    }
    finally {}
    TreeMap localTreeMap = new TreeMap();
    Iterator localIterator = this.e.keySet().iterator();
    Object localObject2;
    while (localIterator.hasNext())
    {
      localObject2 = (Long)localIterator.next();
      localTreeMap.put(localObject2, c((Long)localObject2));
    }
    localIterator = this.d.a().iterator();
    while (localIterator.hasNext())
    {
      localObject2 = (z)localIterator.next();
      Long localLong = Long.valueOf(((z)localObject2).m);
      if (!localTreeMap.containsKey(localLong)) {
        localTreeMap.put(localLong, localObject2);
      }
    }
    return localTreeMap;
  }
  
  final void c()
  {
    try
    {
      int i = this.e.size();
      int j = ao.O;
      this.c.n.e(0 - i * j);
      this.e = new TreeMap();
      this.f = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\ad.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */