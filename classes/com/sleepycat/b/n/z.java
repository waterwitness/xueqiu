package com.sleepycat.b.n;

import com.sleepycat.b.au;
import com.sleepycat.b.bp;
import com.sleepycat.b.bq;
import com.sleepycat.b.br;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.c;
import com.sleepycat.b.c.p;
import com.sleepycat.b.d;
import com.sleepycat.b.g.a;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.g.av;
import com.sleepycat.b.g.ax;
import com.sleepycat.b.l.y;
import com.sleepycat.b.n;
import com.sleepycat.b.p.j;
import com.sleepycat.b.p.w;
import com.sleepycat.b.u;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;

public class z
  extends q
  implements ax
{
  public static int J;
  private static final int f;
  private static final int g;
  protected long A = -1L;
  long B = -1L;
  public u C;
  public u D;
  boolean E;
  int F;
  int G = 0;
  public Set<com.sleepycat.b.c.i> H = null;
  public bp I;
  public av K;
  public boolean L = false;
  private boolean N = false;
  private boolean O = false;
  private final AtomicInteger a = new AtomicInteger();
  private au b;
  private Set<Long> c;
  private Map<Long, am> d;
  private Map<b, b> e;
  private boolean h;
  public byte t;
  public bq u;
  public Set<ab> v;
  public Map<com.sleepycat.b.c.h, com.sleepycat.b.c.i> w;
  public Set<com.sleepycat.b.i> x;
  public volatile long y = -1L;
  public long z = -1L;
  
  static
  {
    if (!z.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      M = bool;
      f = ao.o;
      g = ao.m + ao.L;
      J = 10000;
      return;
    }
  }
  
  public z()
  {
    this.z = -1L;
  }
  
  public z(ad paramad, br parambr, av paramav)
  {
    this(paramad, parambr, paramav, 0L);
  }
  
  public z(ad paramad, br parambr, av paramav, long paramLong)
  {
    super(paramad, parambr.h, parambr.g, paramLong);
    this.E = parambr.j;
    this.h = parambr.i;
    this.C = parambr.e;
    if (this.C == null)
    {
      this.O = false;
      paramad = this.i;
      if (!parambr.b) {
        if (parambr.d)
        {
          paramad = u.c;
          this.C = paramad;
          label143:
          if ((!parambr.b) && (!parambr.c) && (!parambr.d)) {
            break label244;
          }
        }
      }
    }
    label244:
    for (boolean bool = true;; bool = false)
    {
      this.N = bool;
      if ((M) || (!this.O) || (!this.N)) {
        break label250;
      }
      throw new AssertionError();
      if (parambr.c)
      {
        paramad = u.b;
        break;
      }
      if (paramad.I())
      {
        paramad = u.b;
        break;
      }
      paramad = u.a;
      break;
      this.O = true;
      break label143;
    }
    label250:
    this.z = -1L;
    this.y = -1L;
    this.t = 0;
    a(bq.a);
    if (this.i.I()) {
      this.e = new ConcurrentHashMap(4, 0.75F, 4);
    }
    a(parambr);
    a(ao.M);
    if (e_()) {
      this.i.y.a(this);
    }
    this.K = paramav;
  }
  
  private boolean B()
  {
    return (!aj.a(this.k)) || (i() != 0);
  }
  
  private Collection<am> C()
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = this.d.values().iterator();
    while (localIterator.hasNext())
    {
      am localam = (am)localIterator.next();
      if ((localam.a != -1L) && (!localam.b))
      {
        Long localLong = Long.valueOf(localam.a);
        if (!localHashMap.containsKey(localLong)) {
          localHashMap.put(localLong, localam);
        }
      }
    }
    return localHashMap.values();
  }
  
  private void D()
  {
    HashSet localHashSet = new HashSet();
    Object localObject1 = new TreeSet();
    com.sleepycat.b.l.al localal = new com.sleepycat.b.l.al();
    long l1 = this.z;
    while (l1 != -1L) {
      try
      {
        al localal1 = al.a(this.i, l1, this.w);
        Object localObject2 = localal1.a;
        long l2 = ((k)localObject2).e;
        boolean bool;
        if (l2 != -1L)
        {
          bool = localHashSet.add(Long.valueOf(l2));
          label90:
          if (bool)
          {
            com.sleepycat.b.h.m.a(this.i.v, Level.FINER, localal1.c, localal, localal1.b, localal1.a.k(), l1, localal1.a.e, localal1.a.f);
            bool = w();
            if (!localal1.b.i())
            {
              localObject2 = this.i.w;
              if (!bool) {
                break label245;
              }
              ((com.sleepycat.b.g.am)localObject2).a(l1, localal1.b.g & 0x7FFFFFFF, localal1.c);
            }
          }
        }
        for (;;)
        {
          l2 = localal1.a.m().z;
          l1 = l2;
          break;
          bool = ((Set)localObject1).add(new ae(localal1.c, (k)localObject2));
          break label90;
          label245:
          ((com.sleepycat.b.g.am)localObject2).a(l1, null, localal1.b.g & 0x7FFFFFFF, localal1.c, true);
        }
        if (this.c == null) {
          break label358;
        }
      }
      catch (n localn)
      {
        localObject1 = "LSN=" + j.h(l1);
        w.a(this.i, "Txn", "undo", (String)localObject1, localn);
        localn.a((String)localObject1);
        throw localn;
      }
      catch (RuntimeException localRuntimeException)
      {
        throw com.sleepycat.b.aa.a("Txn undo for LSN=" + j.h(l1), localRuntimeException);
      }
    }
    y();
    label358:
    c(false);
    a(Collections.emptySet());
    this.p = null;
  }
  
  private void E()
  {
    try
    {
      if (this.d == null)
      {
        this.d = new HashMap();
        this.w = new HashMap();
        a(ao.p);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private boolean F()
  {
    return this.a.get() != 0;
  }
  
  /* Error */
  private com.sleepycat.b.g.al a(com.sleepycat.b.w paramw, Collection<am> paramCollection)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   4: getfield 319	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   7: astore_3
    //   8: getstatic 64	com/sleepycat/b/n/z:M	Z
    //   11: ifne +18 -> 29
    //   14: aload_0
    //   15: invokespecial 404	com/sleepycat/b/n/z:B	()Z
    //   18: ifne +11 -> 29
    //   21: new 150	java/lang/AssertionError
    //   24: dup
    //   25: invokespecial 151	java/lang/AssertionError:<init>	()V
    //   28: athrow
    //   29: new 406	com/sleepycat/b/g/a/e
    //   32: dup
    //   33: new 408	com/sleepycat/b/n/ah
    //   36: dup
    //   37: aload_0
    //   38: getfield 200	com/sleepycat/b/n/z:k	J
    //   41: aload_0
    //   42: getfield 95	com/sleepycat/b/n/z:z	J
    //   45: aload_0
    //   46: invokevirtual 206	com/sleepycat/b/n/z:i	()I
    //   49: invokespecial 411	com/sleepycat/b/n/ah:<init>	(JJI)V
    //   52: invokespecial 414	com/sleepycat/b/g/a/e:<init>	(Lcom/sleepycat/b/n/ah;)V
    //   55: astore 5
    //   57: new 416	com/sleepycat/b/g/al
    //   60: dup
    //   61: invokespecial 417	com/sleepycat/b/g/al:<init>	()V
    //   64: astore 4
    //   66: aload 4
    //   68: aload 5
    //   70: putfield 420	com/sleepycat/b/g/al:a	Lcom/sleepycat/b/g/a/m;
    //   73: aload 4
    //   75: getstatic 425	com/sleepycat/b/g/au:a	Lcom/sleepycat/b/g/au;
    //   78: putfield 427	com/sleepycat/b/g/al:e	Lcom/sleepycat/b/g/au;
    //   81: aload 4
    //   83: aload_0
    //   84: getfield 197	com/sleepycat/b/n/z:K	Lcom/sleepycat/b/g/av;
    //   87: putfield 429	com/sleepycat/b/g/al:f	Lcom/sleepycat/b/g/av;
    //   90: new 431	com/sleepycat/b/g/ad
    //   93: dup
    //   94: invokespecial 432	com/sleepycat/b/g/ad:<init>	()V
    //   97: astore 5
    //   99: aload 5
    //   101: aload_2
    //   102: putfield 435	com/sleepycat/b/g/ad:f	Ljava/util/Collection;
    //   105: getstatic 438	com/sleepycat/b/n/z$1:a	[I
    //   108: aload_1
    //   109: invokevirtual 443	com/sleepycat/b/w:ordinal	()I
    //   112: iaload
    //   113: tableswitch	default:+23->136, 1:+56->169, 2:+71->184
    //   136: aload 5
    //   138: iconst_0
    //   139: putfield 444	com/sleepycat/b/g/ad:b	Z
    //   142: aload 5
    //   144: iconst_0
    //   145: putfield 445	com/sleepycat/b/g/ad:d	Z
    //   148: invokestatic 450	java/lang/Thread:interrupted	()Z
    //   151: ifeq +48 -> 199
    //   154: new 452	com/sleepycat/b/bo
    //   157: dup
    //   158: aload_0
    //   159: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   162: ldc_w 454
    //   165: invokespecial 457	com/sleepycat/b/bo:<init>	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   168: athrow
    //   169: aload 5
    //   171: iconst_1
    //   172: putfield 444	com/sleepycat/b/g/ad:b	Z
    //   175: aload 5
    //   177: iconst_1
    //   178: putfield 445	com/sleepycat/b/g/ad:d	Z
    //   181: goto -33 -> 148
    //   184: aload 5
    //   186: iconst_1
    //   187: putfield 444	com/sleepycat/b/g/ad:b	Z
    //   190: aload 5
    //   192: iconst_0
    //   193: putfield 445	com/sleepycat/b/g/ad:d	Z
    //   196: goto -48 -> 148
    //   199: aload_0
    //   200: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   203: invokevirtual 460	com/sleepycat/b/c/ad:n	()V
    //   206: aload_3
    //   207: aload 4
    //   209: aload 5
    //   211: invokevirtual 463	com/sleepycat/b/g/am:a	(Lcom/sleepycat/b/g/al;Lcom/sleepycat/b/g/ad;)V
    //   214: aload 4
    //   216: areturn
    //   217: astore_1
    //   218: aload_0
    //   219: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   222: invokevirtual 465	com/sleepycat/b/c/ad:j	()Z
    //   225: ifeq +31 -> 256
    //   228: invokestatic 469	com/sleepycat/b/g/m:a	()Z
    //   231: ifne +25 -> 256
    //   234: aload_0
    //   235: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   238: ldc_w 471
    //   241: aload_1
    //   242: invokestatic 474	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   245: athrow
    //   246: astore_1
    //   247: aload_0
    //   248: getstatic 476	com/sleepycat/b/bq:b	Lcom/sleepycat/b/bq;
    //   251: invokespecial 168	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/bq;)V
    //   254: aload_1
    //   255: athrow
    //   256: aload_1
    //   257: athrow
    //   258: astore_1
    //   259: aload_0
    //   260: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   263: aload_1
    //   264: invokevirtual 479	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   267: aload_1
    //   268: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	269	0	this	z
    //   0	269	1	paramw	com.sleepycat.b.w
    //   0	269	2	paramCollection	Collection<am>
    //   7	200	3	localam	com.sleepycat.b.g.am
    //   64	151	4	localal	com.sleepycat.b.g.al
    //   55	155	5	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   206	214	217	java/lang/RuntimeException
    //   206	214	246	finally
    //   218	246	246	finally
    //   256	258	246	finally
    //   259	269	246	finally
    //   206	214	258	java/lang/Error
  }
  
  public static z a(ad paramad, br parambr)
  {
    return new z(paramad, parambr, av.g);
  }
  
  /* Error */
  static z a(ad paramad, br parambr, av paramav)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload 4
    //   5: astore_3
    //   6: aload_0
    //   7: invokevirtual 157	com/sleepycat/b/c/ad:I	()Z
    //   10: ifeq +31 -> 41
    //   13: aload 4
    //   15: astore_3
    //   16: aload_2
    //   17: getfield 489	com/sleepycat/b/g/av:h	Z
    //   20: ifeq +21 -> 41
    //   23: aload 4
    //   25: astore_3
    //   26: aload_0
    //   27: aload_1
    //   28: invokevirtual 492	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;
    //   31: astore_0
    //   32: aload_0
    //   33: astore_3
    //   34: aload_0
    //   35: iconst_1
    //   36: putfield 109	com/sleepycat/b/n/z:L	Z
    //   39: aload_0
    //   40: areturn
    //   41: aload 4
    //   43: astore_3
    //   44: new 2	com/sleepycat/b/n/z
    //   47: dup
    //   48: aload_0
    //   49: aload_1
    //   50: aload_2
    //   51: invokespecial 487	com/sleepycat/b/n/z:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/g/av;)V
    //   54: astore_0
    //   55: goto -23 -> 32
    //   58: astore_0
    //   59: aload_3
    //   60: ifnull +8 -> 68
    //   63: aload_3
    //   64: iconst_0
    //   65: invokevirtual 494	com/sleepycat/b/n/z:b	(Z)V
    //   68: aload_0
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	paramad	ad
    //   0	70	1	parambr	br
    //   0	70	2	paramav	av
    //   5	59	3	localObject1	Object
    //   1	41	4	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   6	13	58	com/sleepycat/b/n
    //   16	23	58	com/sleepycat/b/n
    //   26	32	58	com/sleepycat/b/n
    //   34	39	58	com/sleepycat/b/n
    //   44	55	58	com/sleepycat/b/n
  }
  
  private void a(int paramInt)
  {
    this.F += paramInt;
    this.G += paramInt;
    if ((this.G > J) || (this.G < -J))
    {
      this.i.n.d(this.G);
      this.G = 0;
    }
  }
  
  private void a(bq parambq)
  {
    try
    {
      this.u = parambq;
      return;
    }
    finally
    {
      parambq = finally;
      throw parambq;
    }
  }
  
  private void a(Long paramLong)
  {
    int i = 0;
    if (this.c == null)
    {
      this.c = new HashSet();
      i = ao.n;
    }
    this.c.add(paramLong);
    a(i + f);
  }
  
  private static boolean a(ab[] paramArrayOfab, ab paramab)
  {
    boolean bool2 = false;
    int j = paramArrayOfab.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < j)
      {
        ab localab = paramArrayOfab[i];
        if ((localab.a.a.equals(paramab.a.a)) && (localab.b != paramab.b)) {
          bool1 = true;
        }
      }
      else
      {
        return bool1;
      }
      i += 1;
    }
  }
  
  public static z b(ad paramad, br parambr)
  {
    paramad = a(paramad, parambr);
    paramad.L = true;
    return paramad;
  }
  
  public static z c(ad paramad, br parambr)
  {
    try
    {
      if (paramad.I()) {
        return paramad.a(parambr);
      }
      paramad = a(paramad, parambr);
      return paramad;
    }
    catch (n paramad)
    {
      throw paramad;
    }
  }
  
  /* Error */
  private long e(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: invokevirtual 528	com/sleepycat/b/n/z:a	(Z)V
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: iconst_1
    //   9: invokevirtual 531	com/sleepycat/b/n/z:b_	(Z)V
    //   12: aload_0
    //   13: getstatic 533	com/sleepycat/b/bq:e	Lcom/sleepycat/b/bq;
    //   16: invokespecial 168	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/bq;)V
    //   19: aload_0
    //   20: invokevirtual 536	com/sleepycat/b/n/z:f_	()Z
    //   23: ifeq +410 -> 433
    //   26: aload_0
    //   27: invokevirtual 539	com/sleepycat/b/n/z:n_	()V
    //   30: getstatic 64	com/sleepycat/b/n/z:M	Z
    //   33: ifne +66 -> 99
    //   36: aload_0
    //   37: invokespecial 404	com/sleepycat/b/n/z:B	()Z
    //   40: ifne +59 -> 99
    //   43: new 150	java/lang/AssertionError
    //   46: dup
    //   47: invokespecial 151	java/lang/AssertionError:<init>	()V
    //   50: athrow
    //   51: astore_2
    //   52: iconst_1
    //   53: istore_3
    //   54: iload_3
    //   55: istore 4
    //   57: aload_0
    //   58: monitorexit
    //   59: aload_2
    //   60: athrow
    //   61: astore_2
    //   62: iload_3
    //   63: ifeq +7 -> 70
    //   66: aload_0
    //   67: invokevirtual 542	com/sleepycat/b/n/z:o_	()V
    //   70: aload_0
    //   71: invokespecial 544	com/sleepycat/b/n/z:D	()V
    //   74: aload_2
    //   75: athrow
    //   76: astore_2
    //   77: aload_0
    //   78: iconst_0
    //   79: invokevirtual 494	com/sleepycat/b/n/z:b	(Z)V
    //   82: aload_0
    //   83: getfield 99	com/sleepycat/b/n/z:B	J
    //   86: ldc2_w 90
    //   89: lcmp
    //   90: ifeq +7 -> 97
    //   93: aload_0
    //   94: invokestatic 548	com/sleepycat/b/c/bh:b	(Lcom/sleepycat/b/n/z;)V
    //   97: aload_2
    //   98: athrow
    //   99: getstatic 64	com/sleepycat/b/n/z:M	Z
    //   102: ifne +33 -> 135
    //   105: aload_0
    //   106: getfield 97	com/sleepycat/b/n/z:A	J
    //   109: ldc2_w 90
    //   112: lcmp
    //   113: ifne +14 -> 127
    //   116: aload_0
    //   117: getfield 99	com/sleepycat/b/n/z:B	J
    //   120: ldc2_w 90
    //   123: lcmp
    //   124: ifeq +11 -> 135
    //   127: new 150	java/lang/AssertionError
    //   130: dup
    //   131: invokespecial 151	java/lang/AssertionError:<init>	()V
    //   134: athrow
    //   135: new 550	com/sleepycat/b/g/a/a
    //   138: dup
    //   139: new 552	com/sleepycat/b/n/ac
    //   142: dup
    //   143: aload_0
    //   144: getfield 200	com/sleepycat/b/n/z:k	J
    //   147: aload_0
    //   148: getfield 95	com/sleepycat/b/n/z:z	J
    //   151: aload_0
    //   152: invokevirtual 206	com/sleepycat/b/n/z:i	()I
    //   155: invokespecial 553	com/sleepycat/b/n/ac:<init>	(JJI)V
    //   158: invokespecial 556	com/sleepycat/b/g/a/a:<init>	(Lcom/sleepycat/b/n/ac;)V
    //   161: astore_2
    //   162: iload_1
    //   163: ifeq +159 -> 322
    //   166: aload_0
    //   167: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   170: getfield 319	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   173: aload_2
    //   174: aload_0
    //   175: getfield 197	com/sleepycat/b/n/z:K	Lcom/sleepycat/b/g/av;
    //   178: invokevirtual 559	com/sleepycat/b/g/am:a	(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J
    //   181: lstore 5
    //   183: aload_0
    //   184: lload 5
    //   186: putfield 99	com/sleepycat/b/n/z:B	J
    //   189: iconst_1
    //   190: istore_3
    //   191: iload_3
    //   192: istore 4
    //   194: aload_0
    //   195: monitorexit
    //   196: iload_3
    //   197: ifeq +7 -> 204
    //   200: aload_0
    //   201: invokevirtual 542	com/sleepycat/b/n/z:o_	()V
    //   204: aload_0
    //   205: invokespecial 544	com/sleepycat/b/n/z:D	()V
    //   208: aload_0
    //   209: iconst_0
    //   210: invokevirtual 561	com/sleepycat/b/n/z:d	(Z)V
    //   213: aload_0
    //   214: monitorenter
    //   215: aload_0
    //   216: invokespecial 563	com/sleepycat/b/n/z:F	()Z
    //   219: istore_1
    //   220: aload_0
    //   221: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   224: getfield 288	com/sleepycat/b/c/ad:v	Ljava/util/logging/Logger;
    //   227: astore_2
    //   228: aload_2
    //   229: getstatic 566	java/util/logging/Level:FINE	Ljava/util/logging/Level;
    //   232: invokevirtual 572	java/util/logging/Logger:isLoggable	(Ljava/util/logging/Level;)Z
    //   235: ifeq +41 -> 276
    //   238: aload_2
    //   239: aload_0
    //   240: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   243: new 339	java/lang/StringBuilder
    //   246: dup
    //   247: ldc_w 574
    //   250: invokespecial 344	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   253: aload_0
    //   254: getfield 200	com/sleepycat/b/n/z:k	J
    //   257: invokevirtual 577	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   260: ldc_w 579
    //   263: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   266: iload_1
    //   267: invokevirtual 582	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   270: invokevirtual 357	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   273: invokestatic 585	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   276: aload_0
    //   277: getfield 587	com/sleepycat/b/n/z:x	Ljava/util/Set;
    //   280: ifnull +62 -> 342
    //   283: aload_0
    //   284: getfield 587	com/sleepycat/b/n/z:x	Ljava/util/Set;
    //   287: invokeinterface 588 1 0
    //   292: astore_2
    //   293: aload_2
    //   294: invokeinterface 228 1 0
    //   299: ifeq +43 -> 342
    //   302: aload_2
    //   303: invokeinterface 232 1 0
    //   308: checkcast 590	com/sleepycat/b/i
    //   311: invokevirtual 592	com/sleepycat/b/i:c	()V
    //   314: goto -21 -> 293
    //   317: astore_2
    //   318: aload_0
    //   319: monitorexit
    //   320: aload_2
    //   321: athrow
    //   322: aload_0
    //   323: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   326: getfield 319	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   329: aload_2
    //   330: aload_0
    //   331: getfield 197	com/sleepycat/b/n/z:K	Lcom/sleepycat/b/g/av;
    //   334: invokevirtual 594	com/sleepycat/b/g/am:b	(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J
    //   337: lstore 5
    //   339: goto -156 -> 183
    //   342: iload_1
    //   343: ifeq +44 -> 387
    //   346: aload_0
    //   347: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   350: invokevirtual 460	com/sleepycat/b/c/ad:n	()V
    //   353: new 596	java/lang/IllegalStateException
    //   356: dup
    //   357: new 339	java/lang/StringBuilder
    //   360: dup
    //   361: ldc_w 598
    //   364: invokespecial 344	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   367: aload_0
    //   368: getfield 200	com/sleepycat/b/n/z:k	J
    //   371: invokevirtual 577	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   374: ldc_w 600
    //   377: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   380: invokevirtual 357	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   383: invokespecial 601	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   386: athrow
    //   387: aload_0
    //   388: monitorexit
    //   389: aload_0
    //   390: iconst_0
    //   391: invokevirtual 494	com/sleepycat/b/n/z:b	(Z)V
    //   394: aload_0
    //   395: getfield 99	com/sleepycat/b/n/z:B	J
    //   398: ldc2_w 90
    //   401: lcmp
    //   402: ifeq +7 -> 409
    //   405: aload_0
    //   406: invokestatic 548	com/sleepycat/b/c/bh:b	(Lcom/sleepycat/b/n/z;)V
    //   409: aload_0
    //   410: getfield 99	com/sleepycat/b/n/z:B	J
    //   413: lreturn
    //   414: astore_2
    //   415: iconst_0
    //   416: istore_3
    //   417: goto -355 -> 62
    //   420: astore_2
    //   421: iconst_0
    //   422: istore_3
    //   423: goto -369 -> 54
    //   426: astore_2
    //   427: iload 4
    //   429: istore_3
    //   430: goto -376 -> 54
    //   433: iconst_0
    //   434: istore_3
    //   435: goto -244 -> 191
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	438	0	this	z
    //   0	438	1	paramBoolean	boolean
    //   51	9	2	localObject1	Object
    //   61	14	2	localObject2	Object
    //   76	22	2	localObject3	Object
    //   161	142	2	localObject4	Object
    //   317	13	2	localm	com.sleepycat.b.g.a.m
    //   414	1	2	localObject5	Object
    //   420	1	2	localObject6	Object
    //   426	1	2	localObject7	Object
    //   53	382	3	i	int
    //   55	373	4	j	int
    //   181	157	5	l	long
    // Exception table:
    //   from	to	target	type
    //   30	51	51	finally
    //   99	127	51	finally
    //   127	135	51	finally
    //   135	162	51	finally
    //   166	183	51	finally
    //   183	189	51	finally
    //   322	339	51	finally
    //   59	61	61	finally
    //   66	70	76	finally
    //   70	76	76	finally
    //   200	204	76	finally
    //   204	215	76	finally
    //   320	322	76	finally
    //   215	276	317	finally
    //   276	293	317	finally
    //   293	314	317	finally
    //   318	320	317	finally
    //   346	387	317	finally
    //   387	389	317	finally
    //   5	7	414	finally
    //   7	30	420	finally
    //   57	59	426	finally
    //   194	196	426	finally
  }
  
  public final Set<Long> A()
  {
    if (this.d == null) {
      return Collections.emptySet();
    }
    return this.d.keySet();
  }
  
  public final int a()
  {
    return ar.a(this.k) + ar.a(this.z);
  }
  
  public long a(aj paramaj, long paramLong)
  {
    return paramaj.g.incrementAndGet();
  }
  
  /* Error */
  public long a(u paramu)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: iconst_1
    //   4: istore 9
    //   6: aload_0
    //   7: iconst_1
    //   8: invokevirtual 528	com/sleepycat/b/n/z:a	(Z)V
    //   11: aload_0
    //   12: aload_1
    //   13: putfield 623	com/sleepycat/b/n/z:D	Lcom/sleepycat/b/u;
    //   16: aload_0
    //   17: monitorenter
    //   18: aload_0
    //   19: iconst_0
    //   20: invokevirtual 531	com/sleepycat/b/n/z:b_	(Z)V
    //   23: aload_0
    //   24: invokespecial 563	com/sleepycat/b/n/z:F	()Z
    //   27: ifeq +73 -> 100
    //   30: new 596	java/lang/IllegalStateException
    //   33: dup
    //   34: new 339	java/lang/StringBuilder
    //   37: dup
    //   38: ldc_w 598
    //   41: invokespecial 344	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   44: aload_0
    //   45: getfield 200	com/sleepycat/b/n/z:k	J
    //   48: invokevirtual 577	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   51: ldc_w 625
    //   54: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 357	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: invokespecial 601	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   63: athrow
    //   64: astore_2
    //   65: aload_0
    //   66: monitorexit
    //   67: aload_2
    //   68: athrow
    //   69: astore_1
    //   70: aload_0
    //   71: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   74: aload_1
    //   75: invokevirtual 479	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   78: aload_1
    //   79: athrow
    //   80: astore_1
    //   81: aload_0
    //   82: getfield 504	com/sleepycat/b/n/z:u	Lcom/sleepycat/b/bq;
    //   85: getstatic 165	com/sleepycat/b/bq:a	Lcom/sleepycat/b/bq;
    //   88: if_acmpne +10 -> 98
    //   91: aload_0
    //   92: getstatic 627	com/sleepycat/b/bq:c	Lcom/sleepycat/b/bq;
    //   95: invokespecial 168	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/bq;)V
    //   98: aload_1
    //   99: athrow
    //   100: aload_0
    //   101: invokevirtual 536	com/sleepycat/b/n/z:f_	()Z
    //   104: ifeq +7 -> 111
    //   107: aload_0
    //   108: invokevirtual 630	com/sleepycat/b/n/z:m_	()V
    //   111: aload_0
    //   112: invokevirtual 379	com/sleepycat/b/n/z:y	()I
    //   115: istore 6
    //   117: aload_0
    //   118: getfield 212	com/sleepycat/b/n/z:d	Ljava/util/Map;
    //   121: ifnull +611 -> 732
    //   124: aload_0
    //   125: getfield 212	com/sleepycat/b/n/z:d	Ljava/util/Map;
    //   128: invokeinterface 633 1 0
    //   133: istore 5
    //   135: aload_0
    //   136: invokespecial 635	com/sleepycat/b/n/z:C	()Ljava/util/Collection;
    //   139: astore_3
    //   140: aload 4
    //   142: astore_2
    //   143: aload_0
    //   144: invokevirtual 536	com/sleepycat/b/n/z:f_	()Z
    //   147: ifeq +29 -> 176
    //   150: aload_0
    //   151: aload_1
    //   152: getfield 638	com/sleepycat/b/u:e	Lcom/sleepycat/b/w;
    //   155: aload_3
    //   156: invokespecial 640	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/w;Ljava/util/Collection;)Lcom/sleepycat/b/g/al;
    //   159: astore_2
    //   160: aload_0
    //   161: aload_2
    //   162: getfield 642	com/sleepycat/b/g/al:d	J
    //   165: putfield 97	com/sleepycat/b/n/z:A	J
    //   168: aload_0
    //   169: aload_2
    //   170: invokevirtual 645	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/g/al;)V
    //   173: aload 4
    //   175: astore_2
    //   176: aload_0
    //   177: iconst_1
    //   178: invokevirtual 382	com/sleepycat/b/n/z:c	(Z)V
    //   181: iload 5
    //   183: ifle +7 -> 190
    //   186: aload_0
    //   187: invokevirtual 647	com/sleepycat/b/n/z:x	()V
    //   190: aload_0
    //   191: aconst_null
    //   192: putfield 212	com/sleepycat/b/n/z:d	Ljava/util/Map;
    //   195: aload_0
    //   196: getfield 394	com/sleepycat/b/n/z:p	Ljava/util/Map;
    //   199: ifnull +40 -> 239
    //   202: aload_0
    //   203: getfield 394	com/sleepycat/b/n/z:p	Ljava/util/Map;
    //   206: invokeinterface 633 1 0
    //   211: ifle +28 -> 239
    //   214: aload_0
    //   215: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   218: aload_0
    //   219: getfield 394	com/sleepycat/b/n/z:p	Ljava/util/Map;
    //   222: invokeinterface 217 1 0
    //   227: invokevirtual 650	com/sleepycat/b/c/ad:a	(Ljava/util/Collection;)V
    //   230: aload_0
    //   231: getfield 394	com/sleepycat/b/n/z:p	Ljava/util/Map;
    //   234: invokeinterface 653 1 0
    //   239: aload_0
    //   240: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   243: getfield 288	com/sleepycat/b/c/ad:v	Ljava/util/logging/Logger;
    //   246: astore_3
    //   247: aload_3
    //   248: getstatic 566	java/util/logging/Level:FINE	Ljava/util/logging/Level;
    //   251: invokevirtual 572	java/util/logging/Logger:isLoggable	(Ljava/util/logging/Level;)Z
    //   254: ifeq +69 -> 323
    //   257: new 339	java/lang/StringBuilder
    //   260: dup
    //   261: invokespecial 654	java/lang/StringBuilder:<init>	()V
    //   264: astore 4
    //   266: aload 4
    //   268: ldc_w 656
    //   271: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: aload_0
    //   275: getfield 200	com/sleepycat/b/n/z:k	J
    //   278: invokevirtual 577	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   281: pop
    //   282: aload 4
    //   284: ldc_w 658
    //   287: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: iload 5
    //   292: invokevirtual 661	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   295: pop
    //   296: aload 4
    //   298: ldc_w 663
    //   301: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: iload 6
    //   306: invokevirtual 661	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   309: pop
    //   310: aload_3
    //   311: aload_0
    //   312: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   315: aload 4
    //   317: invokevirtual 357	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   320: invokestatic 585	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   323: aload_0
    //   324: monitorexit
    //   325: aload_0
    //   326: iconst_1
    //   327: invokevirtual 561	com/sleepycat/b/n/z:d	(Z)V
    //   330: aload_0
    //   331: iconst_1
    //   332: invokevirtual 494	com/sleepycat/b/n/z:b	(Z)V
    //   335: aload_2
    //   336: ifnonnull +377 -> 713
    //   339: aload_0
    //   340: invokestatic 664	com/sleepycat/b/c/bh:a	(Lcom/sleepycat/b/n/z;)V
    //   343: aload_0
    //   344: getfield 97	com/sleepycat/b/n/z:A	J
    //   347: lstore 7
    //   349: aload_0
    //   350: getfield 504	com/sleepycat/b/n/z:u	Lcom/sleepycat/b/bq;
    //   353: getstatic 165	com/sleepycat/b/bq:a	Lcom/sleepycat/b/bq;
    //   356: if_acmpne +10 -> 366
    //   359: aload_0
    //   360: getstatic 627	com/sleepycat/b/bq:c	Lcom/sleepycat/b/bq;
    //   363: invokespecial 168	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/bq;)V
    //   366: lload 7
    //   368: lreturn
    //   369: astore_3
    //   370: aload_0
    //   371: getfield 504	com/sleepycat/b/n/z:u	Lcom/sleepycat/b/bq;
    //   374: getstatic 666	com/sleepycat/b/bq:d	Lcom/sleepycat/b/bq;
    //   377: if_acmpne +11 -> 388
    //   380: ldc_w 668
    //   383: aload_3
    //   384: invokestatic 375	com/sleepycat/b/aa:a	(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   387: athrow
    //   388: aload_3
    //   389: astore_2
    //   390: aload_0
    //   391: aload_3
    //   392: invokevirtual 671	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/n;)Z
    //   395: ifne -219 -> 176
    //   398: aload_3
    //   399: athrow
    //   400: astore_2
    //   401: aload_0
    //   402: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   405: invokevirtual 465	com/sleepycat/b/c/ad:j	()Z
    //   408: ifne +5 -> 413
    //   411: aload_2
    //   412: athrow
    //   413: aload_0
    //   414: getfield 97	com/sleepycat/b/n/z:A	J
    //   417: ldc2_w 90
    //   420: lcmp
    //   421: ifeq +52 -> 473
    //   424: new 372	com/sleepycat/b/aa
    //   427: dup
    //   428: aload_0
    //   429: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   432: getstatic 677	com/sleepycat/b/c/ac:l	Lcom/sleepycat/b/c/ac;
    //   435: new 339	java/lang/StringBuilder
    //   438: dup
    //   439: ldc_w 679
    //   442: invokespecial 344	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   445: aload_0
    //   446: getfield 200	com/sleepycat/b/n/z:k	J
    //   449: invokevirtual 577	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   452: ldc_w 681
    //   455: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   458: aload_2
    //   459: invokevirtual 684	java/lang/RuntimeException:getMessage	()Ljava/lang/String;
    //   462: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   465: invokevirtual 357	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   468: aload_2
    //   469: invokespecial 687	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   472: athrow
    //   473: aload_0
    //   474: iconst_1
    //   475: invokevirtual 528	com/sleepycat/b/n/z:a	(Z)V
    //   478: aload_1
    //   479: getfield 638	com/sleepycat/b/u:e	Lcom/sleepycat/b/w;
    //   482: getstatic 689	com/sleepycat/b/w:a	Lcom/sleepycat/b/w;
    //   485: if_acmpne +255 -> 740
    //   488: aload_0
    //   489: iload 9
    //   491: invokespecial 691	com/sleepycat/b/n/z:e	(Z)J
    //   494: pop2
    //   495: aload_0
    //   496: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   499: ldc_w 359
    //   502: ldc_w 693
    //   505: new 339	java/lang/StringBuilder
    //   508: dup
    //   509: ldc_w 695
    //   512: invokespecial 344	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   515: aload_0
    //   516: getfield 200	com/sleepycat/b/n/z:k	J
    //   519: invokevirtual 577	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   522: ldc_w 697
    //   525: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   528: invokevirtual 357	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   531: aload_2
    //   532: invokestatic 366	com/sleepycat/b/p/w:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   535: aload_0
    //   536: invokevirtual 699	com/sleepycat/b/n/z:g	()V
    //   539: aload_2
    //   540: instanceof 255
    //   543: ifne +10 -> 553
    //   546: aload_2
    //   547: instanceof 596
    //   550: ifeq +125 -> 675
    //   553: aload_2
    //   554: athrow
    //   555: astore_1
    //   556: aload_0
    //   557: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   560: aload_1
    //   561: invokevirtual 479	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   564: aload_1
    //   565: athrow
    //   566: astore_1
    //   567: aload_0
    //   568: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   571: invokevirtual 465	com/sleepycat/b/c/ad:j	()Z
    //   574: ifne +5 -> 579
    //   577: aload_1
    //   578: athrow
    //   579: new 339	java/lang/StringBuilder
    //   582: dup
    //   583: ldc_w 701
    //   586: invokespecial 344	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   589: aload_0
    //   590: getfield 200	com/sleepycat/b/n/z:k	J
    //   593: invokevirtual 577	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   596: ldc_w 703
    //   599: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   602: aload_2
    //   603: invokevirtual 684	java/lang/RuntimeException:getMessage	()Ljava/lang/String;
    //   606: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   609: ldc_w 705
    //   612: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   615: aload_1
    //   616: invokevirtual 684	java/lang/RuntimeException:getMessage	()Ljava/lang/String;
    //   619: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   622: invokevirtual 357	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   625: astore_1
    //   626: aload_0
    //   627: getfield 212	com/sleepycat/b/n/z:d	Ljava/util/Map;
    //   630: ifnull +31 -> 661
    //   633: aload_0
    //   634: getfield 99	com/sleepycat/b/n/z:B	J
    //   637: ldc2_w 90
    //   640: lcmp
    //   641: ifne +20 -> 661
    //   644: new 372	com/sleepycat/b/aa
    //   647: dup
    //   648: aload_0
    //   649: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   652: getstatic 677	com/sleepycat/b/c/ac:l	Lcom/sleepycat/b/c/ac;
    //   655: aload_1
    //   656: aload_2
    //   657: invokespecial 687	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   660: athrow
    //   661: getstatic 708	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   664: aload_0
    //   665: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   668: aload_1
    //   669: invokestatic 711	com/sleepycat/b/p/w:a	(Ljava/util/logging/Level;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   672: goto -137 -> 535
    //   675: new 339	java/lang/StringBuilder
    //   678: dup
    //   679: ldc_w 701
    //   682: invokespecial 344	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   685: aload_0
    //   686: getfield 200	com/sleepycat/b/n/z:k	J
    //   689: invokevirtual 577	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   692: ldc_w 713
    //   695: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   698: aload_2
    //   699: invokevirtual 684	java/lang/RuntimeException:getMessage	()Ljava/lang/String;
    //   702: invokevirtual 353	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   705: invokevirtual 357	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   708: aload_2
    //   709: invokestatic 375	com/sleepycat/b/aa:a	(Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   712: athrow
    //   713: aload_0
    //   714: getfield 504	com/sleepycat/b/n/z:u	Lcom/sleepycat/b/bq;
    //   717: getstatic 165	com/sleepycat/b/bq:a	Lcom/sleepycat/b/bq;
    //   720: if_acmpne +10 -> 730
    //   723: aload_0
    //   724: getstatic 627	com/sleepycat/b/bq:c	Lcom/sleepycat/b/bq;
    //   727: invokespecial 168	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/bq;)V
    //   730: aload_2
    //   731: athrow
    //   732: aconst_null
    //   733: astore_3
    //   734: iconst_0
    //   735: istore 5
    //   737: goto -597 -> 140
    //   740: iconst_0
    //   741: istore 9
    //   743: goto -255 -> 488
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	746	0	this	z
    //   0	746	1	paramu	u
    //   64	4	2	localObject1	Object
    //   142	248	2	localObject2	Object
    //   400	331	2	localRuntimeException	RuntimeException
    //   139	172	3	localObject3	Object
    //   369	30	3	localn	n
    //   733	1	3	localObject4	Object
    //   1	315	4	localStringBuilder	StringBuilder
    //   133	603	5	i	int
    //   115	190	6	j	int
    //   347	20	7	l	long
    //   4	738	9	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   18	64	64	finally
    //   65	67	64	finally
    //   100	111	64	finally
    //   111	140	64	finally
    //   143	168	64	finally
    //   168	173	64	finally
    //   176	181	64	finally
    //   186	190	64	finally
    //   190	239	64	finally
    //   239	323	64	finally
    //   323	325	64	finally
    //   370	388	64	finally
    //   390	400	64	finally
    //   16	18	69	java/lang/Error
    //   67	69	69	java/lang/Error
    //   325	335	69	java/lang/Error
    //   339	349	69	java/lang/Error
    //   16	18	80	finally
    //   67	69	80	finally
    //   70	80	80	finally
    //   325	335	80	finally
    //   339	349	80	finally
    //   401	413	80	finally
    //   413	473	80	finally
    //   473	478	80	finally
    //   478	488	80	finally
    //   488	535	80	finally
    //   535	553	80	finally
    //   553	555	80	finally
    //   556	566	80	finally
    //   567	579	80	finally
    //   579	661	80	finally
    //   661	672	80	finally
    //   675	713	80	finally
    //   168	173	369	com/sleepycat/b/n
    //   16	18	400	java/lang/RuntimeException
    //   67	69	400	java/lang/RuntimeException
    //   325	335	400	java/lang/RuntimeException
    //   339	349	400	java/lang/RuntimeException
    //   478	488	555	java/lang/Error
    //   488	535	555	java/lang/Error
    //   478	488	566	java/lang/RuntimeException
    //   488	535	566	java/lang/RuntimeException
  }
  
  public m a(long paramLong, o paramo, boolean paramBoolean1, boolean paramBoolean2, com.sleepycat.b.c.i parami)
  {
    long l = 0L;
    if ((paramBoolean1) || (this.m)) {}
    for (paramBoolean1 = true;; paramBoolean1 = false)
    {
      h localh;
      Object localObject1;
      try
      {
        b_(false);
        if (!paramBoolean1) {
          l = r_();
        }
        localh = this.j.a(paramLong, this, paramo, l, paramBoolean1, paramBoolean2, parami);
        Object localObject2 = null;
        localObject1 = localObject2;
        if (this.d != null)
        {
          localObject1 = localObject2;
          if (localh != h.f)
          {
            localObject1 = localObject2;
            if (!paramo.h) {}
          }
        }
      }
      finally {}
      try
      {
        localObject1 = (am)this.d.get(Long.valueOf(paramLong));
        this.w.put(parami.a, parami);
        return new m(localh, (am)localObject1);
      }
      finally {}
    }
  }
  
  /* Error */
  public final void a(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 377	com/sleepycat/b/n/z:c	Ljava/util/Set;
    //   6: ifnull +31 -> 37
    //   9: aload_0
    //   10: getfield 377	com/sleepycat/b/n/z:c	Ljava/util/Set;
    //   13: lload_1
    //   14: invokestatic 243	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   17: invokeinterface 746 2 0
    //   22: ifeq +15 -> 37
    //   25: aload_0
    //   26: iconst_0
    //   27: getstatic 71	com/sleepycat/b/n/z:f	I
    //   30: isub
    //   31: invokespecial 184	com/sleepycat/b/n/z:a	(I)V
    //   34: aload_0
    //   35: monitorexit
    //   36: return
    //   37: aload_0
    //   38: getfield 212	com/sleepycat/b/n/z:d	Ljava/util/Map;
    //   41: ifnull -7 -> 34
    //   44: aload_0
    //   45: getfield 212	com/sleepycat/b/n/z:d	Ljava/util/Map;
    //   48: lload_1
    //   49: invokestatic 243	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   52: invokeinterface 748 2 0
    //   57: ifnull -23 -> 34
    //   60: aload_0
    //   61: iconst_0
    //   62: getstatic 78	com/sleepycat/b/n/z:g	I
    //   65: isub
    //   66: invokespecial 184	com/sleepycat/b/n/z:a	(I)V
    //   69: goto -35 -> 34
    //   72: astore_3
    //   73: aload_0
    //   74: monitorexit
    //   75: aload_3
    //   76: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	this	z
    //   0	77	1	paramLong	long
    //   72	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	34	72	finally
    //   37	69	72	finally
  }
  
  public final void a(au paramau)
  {
    if ((!M) && (paramau == null)) {
      throw new AssertionError();
    }
    a(bq.d);
    this.b = paramau;
  }
  
  public void a(br parambr) {}
  
  public final void a(c paramc)
  {
    this.a.getAndIncrement();
  }
  
  public void a(com.sleepycat.b.c.i parami)
  {
    try
    {
      E();
      this.w.put(parami.a, parami);
      return;
    }
    finally
    {
      parami = finally;
      throw parami;
    }
  }
  
  public final void a(com.sleepycat.b.c.i parami, boolean paramBoolean)
  {
    int i = 0;
    try
    {
      if (this.v == null)
      {
        this.v = new HashSet();
        i = ao.n + 0;
      }
      this.v.add(new ab(parami, paramBoolean));
      a(i + (ao.o + ao.j));
      return;
    }
    finally {}
  }
  
  public void a(com.sleepycat.b.g.al paramal) {}
  
  /* Error */
  public final void a(com.sleepycat.b.i parami)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 109	com/sleepycat/b/n/z:L	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 587	com/sleepycat/b/n/z:x	Ljava/util/Set;
    //   18: ifnonnull +14 -> 32
    //   21: aload_0
    //   22: new 259	java/util/HashSet
    //   25: dup
    //   26: invokespecial 260	java/util/HashSet:<init>	()V
    //   29: putfield 587	com/sleepycat/b/n/z:x	Ljava/util/Set;
    //   32: aload_0
    //   33: getfield 587	com/sleepycat/b/n/z:x	Ljava/util/Set;
    //   36: aload_1
    //   37: invokeinterface 285 2 0
    //   42: pop
    //   43: goto -32 -> 11
    //   46: astore_1
    //   47: aload_0
    //   48: monitorexit
    //   49: aload_1
    //   50: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	51	0	this	z
    //   0	51	1	parami	com.sleepycat.b.i
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	46	finally
    //   14	32	46	finally
    //   32	43	46	finally
  }
  
  final void a(b paramb)
  {
    if (this.e != null) {
      this.e.put(paramb, paramb);
    }
  }
  
  /* Error */
  public final void a(Long paramLong, o paramo, h paramh)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_2
    //   3: getfield 735	com/sleepycat/b/n/o:h	Z
    //   6: ifeq +78 -> 84
    //   9: aload_0
    //   10: invokespecial 758	com/sleepycat/b/n/z:E	()V
    //   13: aload_0
    //   14: getfield 212	com/sleepycat/b/n/z:d	Ljava/util/Map;
    //   17: aload_1
    //   18: new 234	com/sleepycat/b/n/am
    //   21: dup
    //   22: invokespecial 769	com/sleepycat/b/n/am:<init>	()V
    //   25: invokeinterface 251 3 0
    //   30: pop
    //   31: getstatic 78	com/sleepycat/b/n/z:g	I
    //   34: iconst_0
    //   35: iadd
    //   36: istore 5
    //   38: aload_3
    //   39: getstatic 771	com/sleepycat/b/n/h:c	Lcom/sleepycat/b/n/h;
    //   42: if_acmpeq +14 -> 56
    //   45: iload 5
    //   47: istore 4
    //   49: aload_3
    //   50: getstatic 773	com/sleepycat/b/n/h:d	Lcom/sleepycat/b/n/h;
    //   53: if_acmpne +22 -> 75
    //   56: aload_0
    //   57: getfield 377	com/sleepycat/b/n/z:c	Ljava/util/Set;
    //   60: aload_1
    //   61: invokeinterface 746 2 0
    //   66: pop
    //   67: iload 5
    //   69: getstatic 71	com/sleepycat/b/n/z:f	I
    //   72: isub
    //   73: istore 4
    //   75: aload_0
    //   76: iload 4
    //   78: invokespecial 184	com/sleepycat/b/n/z:a	(I)V
    //   81: aload_0
    //   82: monitorexit
    //   83: return
    //   84: aload_0
    //   85: aload_1
    //   86: invokespecial 775	com/sleepycat/b/n/z:a	(Ljava/lang/Long;)V
    //   89: goto -8 -> 81
    //   92: astore_1
    //   93: aload_0
    //   94: monitorexit
    //   95: aload_1
    //   96: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	this	z
    //   0	97	1	paramLong	Long
    //   0	97	2	paramo	o
    //   0	97	3	paramh	h
    //   47	30	4	i	int
    //   36	37	5	j	int
    // Exception table:
    //   from	to	target	type
    //   2	45	92	finally
    //   49	56	92	finally
    //   56	75	92	finally
    //   75	81	92	finally
    //   84	89	92	finally
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<txn id=\"");
    paramStringBuilder.append(this.k);
    paramStringBuilder.append("\">");
    paramStringBuilder.append(j.g(this.z));
    paramStringBuilder.append("</txn>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.c(paramByteBuffer, this.k);
    ar.c(paramByteBuffer, this.z);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    boolean bool2 = true;
    if (paramInt < 6)
    {
      bool1 = true;
      this.k = ar.b(paramByteBuffer, bool1);
      if (paramInt >= 6) {
        break label44;
      }
    }
    label44:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.z = ar.b(paramByteBuffer, bool1);
      return;
      bool1 = false;
      break;
    }
  }
  
  public final void a(Set<Long> paramSet)
  {
    if (this.d == null) {}
    do
    {
      return;
      Iterator localIterator = this.d.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Long localLong = (Long)((Map.Entry)localIterator.next()).getKey();
        if (!paramSet.contains(localLong))
        {
          this.j.c(localLong.longValue(), this);
          localIterator.remove();
        }
      }
    } while (this.d.size() != 0);
    this.d = null;
  }
  
  public void a(boolean paramBoolean) {}
  
  public final boolean a(at paramat)
  {
    if (!(paramat instanceof z)) {}
    while (this.k != ((z)paramat).k) {
      return false;
    }
    return true;
  }
  
  public boolean a(n paramn)
  {
    return false;
  }
  
  public final void a_(boolean paramBoolean)
  {
    if (!this.L) {
      return;
    }
    if (paramBoolean)
    {
      m();
      return;
    }
    o();
  }
  
  public final long b()
  {
    return this.k;
  }
  
  final void b(long paramLong)
  {
    int j = 0;
    int i = j;
    try
    {
      if (this.d != null)
      {
        i = j;
        if (this.d.remove(Long.valueOf(paramLong)) != null)
        {
          i = 1;
          a(0 - g);
        }
      }
      if ((!M) && (i == 0)) {
        throw new AssertionError("Couldn't find lock for Node " + paramLong + " in writeInfo Map.");
      }
    }
    finally {}
    a(Long.valueOf(paramLong));
  }
  
  public final void b(c paramc)
  {
    this.a.getAndDecrement();
  }
  
  final void b(b paramb)
  {
    if (this.e != null) {
      this.e.remove(paramb);
    }
  }
  
  public final void b(q paramq)
  {
    c(paramq);
    if (this.e != null)
    {
      Iterator localIterator = this.e.keySet().iterator();
      while (localIterator.hasNext()) {
        ((b)localIterator.next()).c(paramq);
      }
    }
  }
  
  public final void b(ByteBuffer paramByteBuffer, int paramInt)
  {
    a.a(this, paramByteBuffer, paramInt);
  }
  
  /* Error */
  public void b(boolean paramBoolean)
  {
    // Byte code:
    //   0: iload_1
    //   1: ifeq +106 -> 107
    //   4: aload_0
    //   5: getfield 504	com/sleepycat/b/n/z:u	Lcom/sleepycat/b/bq;
    //   8: getstatic 165	com/sleepycat/b/bq:a	Lcom/sleepycat/b/bq;
    //   11: if_acmpne +10 -> 21
    //   14: aload_0
    //   15: getstatic 627	com/sleepycat/b/bq:c	Lcom/sleepycat/b/bq;
    //   18: invokespecial 168	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/bq;)V
    //   21: aload_0
    //   22: getfield 138	com/sleepycat/b/n/z:i	Lcom/sleepycat/b/c/ad;
    //   25: getfield 190	com/sleepycat/b/c/ad:y	Lcom/sleepycat/b/n/aj;
    //   28: astore_2
    //   29: aload_2
    //   30: getfield 843	com/sleepycat/b/n/aj:c	Lcom/sleepycat/b/f/f;
    //   33: invokevirtual 846	com/sleepycat/b/f/f:c	()V
    //   36: aload_2
    //   37: getfield 847	com/sleepycat/b/n/aj:d	Ljava/util/Map;
    //   40: aload_0
    //   41: invokeinterface 748 2 0
    //   46: pop
    //   47: aload_2
    //   48: getfield 849	com/sleepycat/b/n/aj:b	Lcom/sleepycat/b/c/ad;
    //   51: getfield 499	com/sleepycat/b/c/ad:n	Lcom/sleepycat/b/c/ao;
    //   54: iconst_0
    //   55: aload_0
    //   56: getfield 496	com/sleepycat/b/n/z:F	I
    //   59: aload_0
    //   60: getfield 101	com/sleepycat/b/n/z:G	I
    //   63: isub
    //   64: isub
    //   65: i2l
    //   66: invokevirtual 502	com/sleepycat/b/c/ao:d	(J)V
    //   69: iload_1
    //   70: ifeq +47 -> 117
    //   73: aload_2
    //   74: getfield 852	com/sleepycat/b/n/aj:j	Lcom/sleepycat/b/p/z;
    //   77: invokevirtual 856	com/sleepycat/b/p/z:f	()V
    //   80: aload_0
    //   81: getfield 127	com/sleepycat/b/n/z:E	Z
    //   84: ifeq +11 -> 95
    //   87: aload_2
    //   88: getfield 858	com/sleepycat/b/n/aj:i	Ljava/util/concurrent/atomic/AtomicInteger;
    //   91: invokevirtual 861	java/util/concurrent/atomic/AtomicInteger:decrementAndGet	()I
    //   94: pop
    //   95: aload_2
    //   96: getfield 843	com/sleepycat/b/n/aj:c	Lcom/sleepycat/b/f/f;
    //   99: invokevirtual 863	com/sleepycat/b/f/f:d	()V
    //   102: aload_0
    //   103: invokevirtual 865	com/sleepycat/b/n/z:j	()V
    //   106: return
    //   107: aload_0
    //   108: getstatic 533	com/sleepycat/b/bq:e	Lcom/sleepycat/b/bq;
    //   111: invokespecial 168	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/bq;)V
    //   114: goto -93 -> 21
    //   117: aload_2
    //   118: getfield 867	com/sleepycat/b/n/aj:k	Lcom/sleepycat/b/p/z;
    //   121: invokevirtual 856	com/sleepycat/b/p/z:f	()V
    //   124: goto -44 -> 80
    //   127: astore_3
    //   128: aload_2
    //   129: getfield 843	com/sleepycat/b/n/aj:c	Lcom/sleepycat/b/f/f;
    //   132: invokevirtual 863	com/sleepycat/b/f/f:d	()V
    //   135: aload_3
    //   136: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	137	0	this	z
    //   0	137	1	paramBoolean	boolean
    //   28	101	2	localaj	aj
    //   127	9	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   36	69	127	finally
    //   73	80	127	finally
    //   80	95	127	finally
    //   117	124	127	finally
  }
  
  public final void b_(boolean paramBoolean)
  {
    switch (1.b[this.u.ordinal()])
    {
    default: 
      throw new IllegalStateException("Transaction " + this.k + " has been closed.");
    case 2: 
      if (!paramBoolean) {
        break;
      }
    case 1: 
      return;
    }
    throw this.b.b("Transaction " + this.k + " must be aborted, caused by: " + this.b);
  }
  
  public final void c(boolean paramBoolean)
  {
    if (this.v != null)
    {
      Iterator localIterator = this.v.iterator();
      while (localIterator.hasNext())
      {
        ab localab = (ab)localIterator.next();
        if (localab.b == paramBoolean) {
          localab.a.B();
        }
      }
    }
  }
  
  public final boolean c()
  {
    return this.E;
  }
  
  public d d()
  {
    return null;
  }
  
  public final void d(boolean paramBoolean)
  {
    if (this.v != null)
    {
      for (;;)
      {
        ab localab;
        try
        {
          ab[] arrayOfab1 = new ab[this.v.size()];
          this.v.toArray(arrayOfab1);
          int j = arrayOfab1.length;
          int i = 0;
          if (i >= j) {
            break;
          }
          localab = arrayOfab1[i];
          if (localab.b == paramBoolean)
          {
            if (a(arrayOfab1, localab)) {
              this.i.q.c(localab.a);
            }
            localab.a.C();
            i += 1;
            continue;
          }
          if (a(arrayOfab2, localab)) {
            continue;
          }
        }
        finally {}
        this.i.q.c(localab.a);
      }
      this.v = null;
    }
  }
  
  public final z e()
  {
    return this;
  }
  
  public final void e(long paramLong)
  {
    try
    {
      this.z = paramLong;
      if (this.y == -1L) {
        this.y = paramLong;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean e_()
  {
    return true;
  }
  
  public final am f(long paramLong)
  {
    am localam1 = null;
    try
    {
      if (this.d != null) {
        localam1 = (am)this.d.get(Long.valueOf(paramLong));
      }
      if (localam1 == null) {
        throw com.sleepycat.b.aa.c("writeInfo is null in Txn.getWriteLockInfo");
      }
    }
    finally {}
    return localam2;
  }
  
  public final q f()
  {
    return this;
  }
  
  public boolean f_()
  {
    return this.z != -1L;
  }
  
  public void g() {}
  
  public final void h() {}
  
  public int i()
  {
    return 0;
  }
  
  public final boolean i_()
  {
    return true;
  }
  
  public final boolean j_()
  {
    return this.h;
  }
  
  public final void k_() {}
  
  public final boolean l_()
  {
    return true;
  }
  
  public long m()
  {
    return a(this.C);
  }
  
  public void m_() {}
  
  public void n()
  {
    if (z()) {
      return;
    }
    o();
  }
  
  public void n_() {}
  
  public long o()
  {
    return e(false);
  }
  
  public void o_() {}
  
  public final bp p_()
  {
    if (this.I != null) {
      return this.I;
    }
    aa localaa = new aa(this);
    this.I = localaa;
    return localaa;
  }
  
  public boolean q_()
  {
    return false;
  }
  
  public final boolean t()
  {
    return (this.t & 0x8) != 0;
  }
  
  public final boolean v()
  {
    return this.u == bq.a;
  }
  
  public final boolean w()
  {
    return (this.t & 0x4) != 0;
  }
  
  public final void x()
  {
    if (this.d == null) {
      return;
    }
    Iterator localIterator = this.d.keySet().iterator();
    while (localIterator.hasNext())
    {
      Long localLong = (Long)localIterator.next();
      this.j.c(localLong.longValue(), this);
    }
    this.d = null;
  }
  
  public final int y()
  {
    int i = 0;
    if (this.c != null)
    {
      i = this.c.size();
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
      {
        Long localLong = (Long)localIterator.next();
        this.j.c(localLong.longValue(), this);
      }
      this.c = null;
    }
    return i;
  }
  
  public final boolean z()
  {
    return (this.u != bq.a) && (this.u != bq.d);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */