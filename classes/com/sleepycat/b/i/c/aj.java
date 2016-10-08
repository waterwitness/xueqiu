package com.sleepycat.b.i.c;

import com.sleepycat.b.ba;
import com.sleepycat.b.bc;
import com.sleepycat.b.bn;
import com.sleepycat.b.br;
import com.sleepycat.b.c.aw;
import com.sleepycat.b.h.l;
import com.sleepycat.b.i.ab;
import com.sleepycat.b.i.af;
import com.sleepycat.b.i.f.a;
import com.sleepycat.b.i.h.ah;
import com.sleepycat.b.i.i.c;
import com.sleepycat.b.i.i.k;
import com.sleepycat.b.i.s;
import com.sleepycat.b.i.v;
import com.sleepycat.b.n.y;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.au;
import java.net.InetSocketAddress;
import java.util.Collection;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.Set;
import java.util.SortedSet;
import java.util.StringTokenizer;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.Logger;

public class aj
  extends com.sleepycat.b.c.ad
{
  private static int aA;
  private com.sleepycat.b.c.i aB;
  private boolean aC;
  private boolean aD;
  private boolean aE;
  private boolean aF;
  private int aG;
  private final ReentrantLock aH;
  private int aI;
  private final ba<com.sleepycat.b.i.ad> aJ;
  public com.sleepycat.b.i.i.f aj;
  public final al ak;
  public final com.sleepycat.b.i.e.i al;
  public volatile com.sleepycat.b.i.c.b.aa am;
  public com.sleepycat.b.i.c.b.ac an;
  public com.sleepycat.b.i.c.b.x ao;
  public final com.sleepycat.b.i.c.b.z ap;
  public final Set<com.sleepycat.b.o.b> aq;
  public int ar;
  public int as;
  public bc at;
  public final com.sleepycat.b.p.e au;
  public final com.sleepycat.b.p.an av;
  public volatile CountDownLatch aw;
  public final ReentrantReadWriteLock ax;
  public final com.sleepycat.b.i.i ay;
  
  static
  {
    if (!aj.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      az = bool;
      aA = 0;
      return;
    }
  }
  
  public static int aa()
  {
    return aA;
  }
  
  public final String B()
  {
    return this.ao + ":" + super.B();
  }
  
  public final long C()
  {
    return this.aI;
  }
  
  public final boolean I()
  {
    return true;
  }
  
  public final boolean J()
  {
    return this.aE;
  }
  
  public final boolean K()
  {
    return (this.aE) && (this.aF);
  }
  
  public final int L()
  {
    return this.aG;
  }
  
  public final boolean M()
  {
    return this.aD;
  }
  
  public final au O()
  {
    return new au(this.aj.g.incrementAndGet());
  }
  
  public final void P()
  {
    this.aj.g.decrementAndGet();
  }
  
  public final com.sleepycat.b.h.u Q()
  {
    return new com.sleepycat.b.i.i.o(this, this.u.a(an.A), this.u.a(an.B), this.u.a(an.C));
  }
  
  public final boolean R()
  {
    com.sleepycat.b.i.c.b.aa localaa = this.am;
    if (localaa == null) {
      return false;
    }
    return localaa.g.b();
  }
  
  public final void S()
  {
    if (this.aj != null) {
      this.aj.a(com.sleepycat.b.u.b);
    }
  }
  
  public final y T()
  {
    if (R()) {
      return new a(this);
    }
    return new com.sleepycat.b.i.f.f(this);
  }
  
  public final void U()
  {
    com.sleepycat.b.i.i.f localf = this.aj;
    Object localObject;
    if (localf.g != null)
    {
      localObject = null;
      if (localObject != null) {
        break label126;
      }
      localObject = new au(localf.g.get());
    }
    label126:
    label291:
    for (;;)
    {
      au localau = localf.h.b().c.d();
      if (((au)localObject).b(localau) >= 0) {
        if (localf.f.isLoggable(Level.FINE)) {
          com.sleepycat.b.p.w.d(localf.f, localf.b, "awaitConsistency target=" + localau + " allocatedBeforeCkpt=" + localObject);
        }
      }
      try
      {
        localf.a(localau, com.sleepycat.b.i.i.f.a);
        int i = localau.b((au)localObject);
        if (i >= 0)
        {
          return;
          localau = new au(localf.g.get());
          if (localau.b((au)localObject) >= 0) {
            break label291;
          }
          com.sleepycat.b.p.w.c(localf.f, localf.b, "Reducing awaitConsistency VLSN from " + localObject + " to " + localau);
          localObject = localau;
        }
      }
      catch (k localk)
      {
        com.sleepycat.b.p.w.a(localf.f, localf.b, "Retrying for vlsn index consistency  before checkpoint, awaiting vlsn " + localau + " with ckpt consistency target of " + localObject);
        localf.b.n();
        break;
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          com.sleepycat.b.p.w.a(localf.f, localf.b, "Interrupted while awaiting vlsn index consistency before checkpoint, awaiting vlsn " + localau + " with ckpt consistency target of " + localObject + ", will retry");
        }
      }
    }
  }
  
  public final com.sleepycat.b.i.w Y()
  {
    o localo = (o)this.u;
    Properties localProperties = new Properties();
    Enumeration localEnumeration = localo.a.propertyNames();
    while (localEnumeration.hasMoreElements())
    {
      String str = (String)localEnumeration.nextElement();
      com.sleepycat.b.b.b localb = (com.sleepycat.b.b.b)com.sleepycat.b.b.d.a.get(str);
      Object localObject = localb;
      if (localb == null)
      {
        localObject = com.sleepycat.b.b.b.b(str);
        localb = (com.sleepycat.b.b.b)com.sleepycat.b.b.d.a.get(localObject);
        localObject = localb;
        if (localb == null) {
          throw com.sleepycat.b.aa.c(str + " is not a valid BDBJE environment configuration");
        }
      }
      if (((com.sleepycat.b.b.b)localObject).d) {
        localProperties.setProperty(str, localo.a.getProperty(str));
      }
    }
    return new com.sleepycat.b.i.w(localProperties, localo.d);
  }
  
  public final void Z()
  {
    com.sleepycat.b.p.w.c(this.v, this, "Releasing commit block latch");
    this.aw.countDown();
  }
  
  /* Error */
  final com.sleepycat.b.c.i a(bc parambc, boolean paramBoolean)
  {
    // Byte code:
    //   0: iload_2
    //   1: ifeq +19 -> 20
    //   4: aload_0
    //   5: getfield 371	com/sleepycat/b/i/c/aj:aH	Ljava/util/concurrent/locks/ReentrantLock;
    //   8: lconst_1
    //   9: getstatic 377	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   12: invokevirtual 383	java/util/concurrent/locks/ReentrantLock:tryLock	(JLjava/util/concurrent/TimeUnit;)Z
    //   15: ifne +12 -> 27
    //   18: aconst_null
    //   19: areturn
    //   20: aload_0
    //   21: getfield 371	com/sleepycat/b/i/c/aj:aH	Ljava/util/concurrent/locks/ReentrantLock;
    //   24: invokevirtual 386	java/util/concurrent/locks/ReentrantLock:lockInterruptibly	()V
    //   27: aload_0
    //   28: getfield 388	com/sleepycat/b/i/c/aj:aB	Lcom/sleepycat/b/c/i;
    //   31: ifnull +35 -> 66
    //   34: aload_0
    //   35: getfield 388	com/sleepycat/b/i/c/aj:aB	Lcom/sleepycat/b/c/i;
    //   38: astore_1
    //   39: iconst_0
    //   40: ifeq +11 -> 51
    //   43: new 390	java/lang/NullPointerException
    //   46: dup
    //   47: invokespecial 391	java/lang/NullPointerException:<init>	()V
    //   50: athrow
    //   51: aload_0
    //   52: getfield 371	com/sleepycat/b/i/c/aj:aH	Ljava/util/concurrent/locks/ReentrantLock;
    //   55: invokevirtual 394	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   58: aload_1
    //   59: areturn
    //   60: astore_1
    //   61: aload_1
    //   62: invokestatic 397	com/sleepycat/b/aa:a	(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   65: athrow
    //   66: new 399	com/sleepycat/b/br
    //   69: dup
    //   70: invokespecial 400	com/sleepycat/b/br:<init>	()V
    //   73: astore_3
    //   74: aload_3
    //   75: aload_1
    //   76: putfield 402	com/sleepycat/b/br:f	Lcom/sleepycat/b/bc;
    //   79: new 404	com/sleepycat/b/i/f/d
    //   82: dup
    //   83: aload_0
    //   84: aload_3
    //   85: invokespecial 407	com/sleepycat/b/i/f/d:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)V
    //   88: astore_1
    //   89: aload_0
    //   90: getfield 411	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   93: aload_1
    //   94: getstatic 416	com/sleepycat/b/c/w:d	Lcom/sleepycat/b/c/w;
    //   97: invokevirtual 418	com/sleepycat/b/c/w:b	()Ljava/lang/String;
    //   100: aconst_null
    //   101: invokevirtual 423	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/n/d;)Lcom/sleepycat/b/c/i;
    //   104: astore_3
    //   105: aload_3
    //   106: ifnonnull +35 -> 141
    //   109: new 425	com/sleepycat/b/p
    //   112: dup
    //   113: getstatic 416	com/sleepycat/b/c/w:d	Lcom/sleepycat/b/c/w;
    //   116: invokevirtual 418	com/sleepycat/b/c/w:b	()Ljava/lang/String;
    //   119: invokespecial 426	com/sleepycat/b/p:<init>	(Ljava/lang/String;)V
    //   122: athrow
    //   123: astore_3
    //   124: aload_1
    //   125: ifnull +7 -> 132
    //   128: aload_1
    //   129: invokevirtual 429	com/sleepycat/b/n/z:n	()V
    //   132: aload_0
    //   133: getfield 371	com/sleepycat/b/i/c/aj:aH	Ljava/util/concurrent/locks/ReentrantLock;
    //   136: invokevirtual 394	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   139: aload_3
    //   140: athrow
    //   141: aload_1
    //   142: invokevirtual 432	com/sleepycat/b/n/z:m	()J
    //   145: pop2
    //   146: aload_0
    //   147: aload_3
    //   148: putfield 388	com/sleepycat/b/i/c/aj:aB	Lcom/sleepycat/b/c/i;
    //   151: aload_0
    //   152: getfield 388	com/sleepycat/b/i/c/aj:aB	Lcom/sleepycat/b/c/i;
    //   155: astore_1
    //   156: iconst_0
    //   157: ifeq +11 -> 168
    //   160: new 390	java/lang/NullPointerException
    //   163: dup
    //   164: invokespecial 391	java/lang/NullPointerException:<init>	()V
    //   167: athrow
    //   168: aload_0
    //   169: getfield 371	com/sleepycat/b/i/c/aj:aH	Ljava/util/concurrent/locks/ReentrantLock;
    //   172: invokevirtual 394	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   175: aload_1
    //   176: areturn
    //   177: astore_3
    //   178: aconst_null
    //   179: astore_1
    //   180: goto -56 -> 124
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	183	0	this	aj
    //   0	183	1	parambc	bc
    //   0	183	2	paramBoolean	boolean
    //   73	33	3	localObject1	Object
    //   123	25	3	locali	com.sleepycat.b.c.i
    //   177	1	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   4	18	60	java/lang/InterruptedException
    //   20	27	60	java/lang/InterruptedException
    //   89	105	123	finally
    //   109	123	123	finally
    //   141	146	123	finally
    //   27	39	177	finally
    //   66	89	177	finally
    //   146	156	177	finally
  }
  
  protected final com.sleepycat.b.c.m a(com.sleepycat.b.z paramz)
  {
    return new o(paramz);
  }
  
  /* Error */
  public final com.sleepycat.b.i.u a(com.sleepycat.b.i.p paramp)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 443	com/sleepycat/b/i/c/aj:E	Lcom/sleepycat/b/c/bd;
    //   6: getstatic 448	com/sleepycat/b/c/bg:q	Lcom/sleepycat/b/c/bg;
    //   9: invokevirtual 453	com/sleepycat/b/c/bd:a	(Lcom/sleepycat/b/c/bg;)V
    //   12: aload_0
    //   13: getfield 164	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   16: ifnonnull +23 -> 39
    //   19: aload_0
    //   20: new 166	com/sleepycat/b/i/c/b/aa
    //   23: dup
    //   24: aload_0
    //   25: aload_0
    //   26: getfield 455	com/sleepycat/b/i/c/aj:an	Lcom/sleepycat/b/i/c/b/ac;
    //   29: aload_0
    //   30: getfield 457	com/sleepycat/b/i/c/aj:ap	Lcom/sleepycat/b/i/c/b/z;
    //   33: invokespecial 460	com/sleepycat/b/i/c/b/aa:<init>	(Lcom/sleepycat/b/i/c/aj;Lcom/sleepycat/b/i/c/b/ac;Lcom/sleepycat/b/i/c/b/z;)V
    //   36: putfield 164	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   39: aload_0
    //   40: getfield 164	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   43: aconst_null
    //   44: aload_1
    //   45: invokevirtual 463	com/sleepycat/b/i/c/b/aa:a	(Lcom/sleepycat/b/bc;Lcom/sleepycat/b/i/p;)Lcom/sleepycat/b/i/u;
    //   48: astore_1
    //   49: aload_0
    //   50: getfield 443	com/sleepycat/b/i/c/aj:E	Lcom/sleepycat/b/c/bd;
    //   53: getstatic 448	com/sleepycat/b/c/bg:q	Lcom/sleepycat/b/c/bg;
    //   56: invokevirtual 465	com/sleepycat/b/c/bd:b	(Lcom/sleepycat/b/c/bg;)V
    //   59: aload_0
    //   60: monitorexit
    //   61: aload_1
    //   62: areturn
    //   63: astore_1
    //   64: aload_0
    //   65: new 78	java/lang/StringBuilder
    //   68: dup
    //   69: ldc_w 467
    //   72: invokespecial 247	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   75: aload_0
    //   76: invokevirtual 471	com/sleepycat/b/i/c/aj:ad	()Ljava/net/InetSocketAddress;
    //   79: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: aload_1
    //   86: invokestatic 474	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   89: athrow
    //   90: astore_1
    //   91: aload_0
    //   92: getfield 443	com/sleepycat/b/i/c/aj:E	Lcom/sleepycat/b/c/bd;
    //   95: getstatic 448	com/sleepycat/b/c/bg:q	Lcom/sleepycat/b/c/bg;
    //   98: invokevirtual 465	com/sleepycat/b/c/bd:b	(Lcom/sleepycat/b/c/bg;)V
    //   101: aload_1
    //   102: athrow
    //   103: astore_1
    //   104: aload_0
    //   105: monitorexit
    //   106: aload_1
    //   107: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	aj
    //   0	108	1	paramp	com.sleepycat.b.i.p
    // Exception table:
    //   from	to	target	type
    //   12	39	63	java/io/IOException
    //   39	49	63	java/io/IOException
    //   12	39	90	finally
    //   39	49	90	finally
    //   64	90	90	finally
    //   2	12	103	finally
    //   49	59	103	finally
    //   91	103	103	finally
  }
  
  public final com.sleepycat.b.n.z a(br parambr)
  {
    if (R()) {
      return com.sleepycat.b.i.f.b.a(this, parambr, this.ao);
    }
    return new com.sleepycat.b.i.f.d(this, parambr);
  }
  
  protected final com.sleepycat.b.x a()
  {
    return new ak(this.c, Y(), z(), this);
  }
  
  public final Collection<ai> a(bn parambn, Integer paramInteger)
  {
    parambn = ((com.sleepycat.b.i.q)this.z).a(parambn, paramInteger);
    if (parambn == null) {
      return null;
    }
    return parambn.a();
  }
  
  public final SortedSet<Long> a(SortedSet<Long> paramSortedSet)
  {
    Object localObject = null;
    if (this.am == null) {
      return (SortedSet<Long>)localObject;
    }
    com.sleepycat.b.i.c.b.aa localaa = this.am;
    SortedSet localSortedSet = super.a(paramSortedSet);
    if (localSortedSet.isEmpty()) {
      return localSortedSet;
    }
    long l1 = localaa.r.c();
    localObject = localSortedSet.headSet(Long.valueOf(l1));
    au localau = localaa.i.aj.h.b().c;
    long l2 = localaa.i.aj.a(localau, null).c();
    paramSortedSet = localSortedSet.tailSet(Long.valueOf(1L + l2));
    if ((!paramSortedSet.isEmpty()) && (localaa.x.isLoggable(Level.INFO))) {
      com.sleepycat.b.p.w.c(localaa.x, localaa.D, "CBVLSN file is 0x" + Long.toHexString(l1) + " but these files have no VLSNs and can be deleted :" + com.sleepycat.b.i.c.b.aa.a(paramSortedSet));
    }
    if (localaa.x.isLoggable(Level.FINER))
    {
      if (((SortedSet)localObject).size() > 0) {
        localaa.x.finer("Known unused files before CBVLSN start: " + com.sleepycat.b.i.c.b.aa.a((Set)localObject));
      }
      localaa.x.finer("Candidates for deletion: " + com.sleepycat.b.i.c.b.aa.a(localSortedSet));
    }
    if (!paramSortedSet.isEmpty()) {
      if (!((SortedSet)localObject).isEmpty()) {}
    }
    for (;;)
    {
      localObject = paramSortedSet;
      if (!paramSortedSet.isEmpty()) {
        break;
      }
      com.sleepycat.b.p.w.b(localaa.x, localaa.i, Level.WARNING, "Replication prevents deletion of " + localSortedSet.size() + " files by Cleaner. Start file=0x" + Long.toHexString(l1) + " holds CBVLSN " + localaa.r.a + ", end file=0x" + Long.toHexString(l2) + " holds end VLSN " + localau);
      return paramSortedSet;
      localObject = new TreeSet((SortedSet)localObject);
      ((SortedSet)localObject).addAll(paramSortedSet);
      paramSortedSet = (SortedSet<Long>)localObject;
      continue;
      paramSortedSet = (SortedSet<Long>)localObject;
    }
  }
  
  public final void a(com.sleepycat.b.aa paramaa)
  {
    super.a(paramaa);
    Z();
  }
  
  /* Error */
  public final void a(com.sleepycat.b.g.al paramal)
  {
    // Byte code:
    //   0: aload_1
    //   1: getfield 625	com/sleepycat/b/g/al:g	Lcom/sleepycat/b/g/ae;
    //   4: astore 4
    //   6: aload 4
    //   8: getfield 630	com/sleepycat/b/g/ae:e	Lcom/sleepycat/b/p/au;
    //   11: astore_3
    //   12: aload 4
    //   14: getfield 632	com/sleepycat/b/g/ae:b	B
    //   17: invokestatic 637	com/sleepycat/b/g/af:d	(B)Z
    //   20: ifne +13 -> 33
    //   23: getstatic 639	com/sleepycat/b/p/au:b	Lcom/sleepycat/b/p/au;
    //   26: aload_3
    //   27: invokevirtual 642	com/sleepycat/b/p/au:a	(Lcom/sleepycat/b/p/au;)Z
    //   30: ifeq +111 -> 141
    //   33: aload_0
    //   34: getfield 164	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   37: astore 4
    //   39: aload_1
    //   40: getfield 644	com/sleepycat/b/g/al:d	J
    //   43: lstore 8
    //   45: aload 4
    //   47: getfield 648	com/sleepycat/b/i/c/b/aa:p	Lcom/sleepycat/b/i/c/b/q;
    //   50: astore 4
    //   52: aload 4
    //   54: getfield 651	com/sleepycat/b/i/c/b/q:d	Z
    //   57: ifeq +84 -> 141
    //   60: aload 4
    //   62: getfield 653	com/sleepycat/b/i/c/b/q:e	Lcom/sleepycat/b/i/c/aj;
    //   65: invokevirtual 186	com/sleepycat/b/i/c/aj:R	()Z
    //   68: ifeq +11 -> 79
    //   71: aload 4
    //   73: getfield 655	com/sleepycat/b/i/c/b/q:f	I
    //   76: ifgt +65 -> 141
    //   79: aload 4
    //   81: monitorenter
    //   82: aload_3
    //   83: aload 4
    //   85: getfield 656	com/sleepycat/b/i/c/b/q:a	Lcom/sleepycat/b/p/au;
    //   88: invokevirtual 223	com/sleepycat/b/p/au:b	(Lcom/sleepycat/b/p/au;)I
    //   91: ifle +47 -> 138
    //   94: aload 4
    //   96: getfield 656	com/sleepycat/b/i/c/b/q:a	Lcom/sleepycat/b/p/au;
    //   99: astore 5
    //   101: aload 4
    //   103: aload_3
    //   104: putfield 656	com/sleepycat/b/i/c/b/q:a	Lcom/sleepycat/b/p/au;
    //   107: lload 8
    //   109: invokestatic 661	com/sleepycat/b/p/j:d	(J)J
    //   112: aload 4
    //   114: getfield 663	com/sleepycat/b/i/c/b/q:c	J
    //   117: lcmp
    //   118: ifeq +20 -> 138
    //   121: aload 4
    //   123: lload 8
    //   125: invokestatic 661	com/sleepycat/b/p/j:d	(J)J
    //   128: putfield 663	com/sleepycat/b/i/c/b/q:c	J
    //   131: aload 4
    //   133: aload 5
    //   135: putfield 664	com/sleepycat/b/i/c/b/q:b	Lcom/sleepycat/b/p/au;
    //   138: aload 4
    //   140: monitorexit
    //   141: aload_0
    //   142: getfield 71	com/sleepycat/b/i/c/aj:aj	Lcom/sleepycat/b/i/i/f;
    //   145: astore_3
    //   146: aload_1
    //   147: getfield 625	com/sleepycat/b/g/al:g	Lcom/sleepycat/b/g/ae;
    //   150: getfield 630	com/sleepycat/b/g/ae:e	Lcom/sleepycat/b/p/au;
    //   153: astore 4
    //   155: aload_1
    //   156: getfield 644	com/sleepycat/b/g/al:d	J
    //   159: lstore 8
    //   161: aload_1
    //   162: getfield 625	com/sleepycat/b/g/al:g	Lcom/sleepycat/b/g/ae;
    //   165: getfield 632	com/sleepycat/b/g/ae:b	B
    //   168: istore_2
    //   169: aload_3
    //   170: getfield 667	com/sleepycat/b/i/i/f:i	Lcom/sleepycat/b/i/i/b;
    //   173: astore 5
    //   175: aload 5
    //   177: invokevirtual 672	com/sleepycat/b/i/i/b:b	()[Ljava/util/concurrent/atomic/AtomicReference;
    //   180: astore 6
    //   182: aload 4
    //   184: getfield 673	com/sleepycat/b/p/au:c	J
    //   187: l2i
    //   188: istore 7
    //   190: aload 6
    //   192: aload 5
    //   194: getfield 674	com/sleepycat/b/i/i/b:a	I
    //   197: iload 7
    //   199: iand
    //   200: aaload
    //   201: aload_1
    //   202: invokevirtual 680	java/util/concurrent/atomic/AtomicReference:set	(Ljava/lang/Object;)V
    //   205: aload_3
    //   206: monitorenter
    //   207: aload_3
    //   208: getfield 206	com/sleepycat/b/i/i/f:h	Lcom/sleepycat/b/i/i/p;
    //   211: aload 4
    //   213: lload 8
    //   215: iload_2
    //   216: invokevirtual 683	com/sleepycat/b/i/i/p:a	(Lcom/sleepycat/b/p/au;JB)V
    //   219: aload_3
    //   220: getfield 686	com/sleepycat/b/i/i/f:e	Ljava/lang/Object;
    //   223: astore 5
    //   225: aload 5
    //   227: monitorenter
    //   228: aload_3
    //   229: getfield 689	com/sleepycat/b/i/i/f:c	Lcom/sleepycat/b/i/i/i;
    //   232: ifnull +40 -> 272
    //   235: aload 4
    //   237: aload_3
    //   238: getfield 691	com/sleepycat/b/i/i/f:d	Lcom/sleepycat/b/p/au;
    //   241: invokevirtual 223	com/sleepycat/b/p/au:b	(Lcom/sleepycat/b/p/au;)I
    //   244: iflt +28 -> 272
    //   247: aload_3
    //   248: getfield 689	com/sleepycat/b/i/i/f:c	Lcom/sleepycat/b/i/i/i;
    //   251: aload_1
    //   252: putfield 696	com/sleepycat/b/i/i/i:a	Lcom/sleepycat/b/g/al;
    //   255: aload_3
    //   256: getfield 689	com/sleepycat/b/i/i/f:c	Lcom/sleepycat/b/i/i/i;
    //   259: invokevirtual 697	com/sleepycat/b/i/i/i:countDown	()V
    //   262: aload_3
    //   263: aconst_null
    //   264: putfield 689	com/sleepycat/b/i/i/f:c	Lcom/sleepycat/b/i/i/i;
    //   267: aload_3
    //   268: aconst_null
    //   269: putfield 691	com/sleepycat/b/i/i/f:d	Lcom/sleepycat/b/p/au;
    //   272: aload 5
    //   274: monitorexit
    //   275: aload_3
    //   276: monitorexit
    //   277: aload_3
    //   278: getfield 227	com/sleepycat/b/i/i/f:f	Ljava/util/logging/Logger;
    //   281: getstatic 700	java/util/logging/Level:FINEST	Ljava/util/logging/Level;
    //   284: invokevirtual 239	java/util/logging/Logger:isLoggable	(Ljava/util/logging/Level;)Z
    //   287: ifeq +32 -> 319
    //   290: aload_3
    //   291: getfield 227	com/sleepycat/b/i/i/f:f	Ljava/util/logging/Logger;
    //   294: aload_3
    //   295: getfield 242	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   298: new 78	java/lang/StringBuilder
    //   301: dup
    //   302: ldc_w 702
    //   305: invokespecial 247	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   308: aload 4
    //   310: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   313: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   316: invokestatic 704	com/sleepycat/b/p/w:e	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   319: return
    //   320: astore_1
    //   321: aload 4
    //   323: monitorexit
    //   324: aload_1
    //   325: athrow
    //   326: astore_1
    //   327: aload 5
    //   329: monitorexit
    //   330: aload_1
    //   331: athrow
    //   332: astore_1
    //   333: aload_3
    //   334: monitorexit
    //   335: aload_1
    //   336: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	337	0	this	aj
    //   0	337	1	paramal	com.sleepycat.b.g.al
    //   168	48	2	b	byte
    //   11	323	3	localObject1	Object
    //   4	318	4	localObject2	Object
    //   180	11	6	arrayOfAtomicReference	java.util.concurrent.atomic.AtomicReference[]
    //   188	12	7	i	int
    //   43	171	8	l	long
    // Exception table:
    //   from	to	target	type
    //   82	138	320	finally
    //   138	141	320	finally
    //   321	324	320	finally
    //   228	272	326	finally
    //   272	275	326	finally
    //   327	330	326	finally
    //   207	228	332	finally
    //   275	277	332	finally
    //   330	332	332	finally
    //   333	335	332	finally
  }
  
  public final void a(l paraml)
  {
    int i = this.u.a(an.A);
    int j = this.u.a(an.B);
    int k = this.u.a(an.C);
    new com.sleepycat.b.i.c.b.x(this.u.a(an.p));
    this.aj = new com.sleepycat.b.i.i.f(this, com.sleepycat.b.c.w.e.b(), i, j, k, paraml);
    com.sleepycat.b.i.c.b.ac localac = this.an;
    paraml = paraml.p.values().iterator();
    while (paraml.hasNext()) {
      ((com.sleepycat.b.i.f.e)paraml.next()).a(localac.f);
    }
    localac.h = localac.d.aj.h.b().c;
  }
  
  /* Error */
  public final void a(com.sleepycat.b.i.f.b paramb)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_1
    //   3: getfield 757	com/sleepycat/b/i/f/b:f	Z
    //   6: ifeq +89 -> 95
    //   9: iconst_0
    //   10: istore_2
    //   11: iload_2
    //   12: ifeq +13 -> 25
    //   15: aload_0
    //   16: getfield 759	com/sleepycat/b/i/c/aj:ax	Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    //   19: invokevirtual 765	java/util/concurrent/locks/ReentrantReadWriteLock:readLock	()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    //   22: invokevirtual 768	java/util/concurrent/locks/ReentrantReadWriteLock$ReadLock:lockInterruptibly	()V
    //   25: aload_0
    //   26: getfield 347	com/sleepycat/b/i/c/aj:aw	Ljava/util/concurrent/CountDownLatch;
    //   29: invokevirtual 771	java/util/concurrent/CountDownLatch:getCount	()J
    //   32: lconst_0
    //   33: lcmp
    //   34: ifle +44 -> 78
    //   37: aload_0
    //   38: getfield 343	com/sleepycat/b/i/c/aj:v	Ljava/util/logging/Logger;
    //   41: aload_0
    //   42: new 78	java/lang/StringBuilder
    //   45: dup
    //   46: ldc_w 773
    //   49: invokespecial 247	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   52: aload_1
    //   53: getfield 778	com/sleepycat/b/n/q:k	J
    //   56: invokevirtual 781	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   59: ldc_w 783
    //   62: invokevirtual 92	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: aload_1
    //   66: invokevirtual 786	com/sleepycat/b/i/f/b:A	()Ljava/util/Set;
    //   69: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   72: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: invokestatic 265	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   78: aload_0
    //   79: getfield 347	com/sleepycat/b/i/c/aj:aw	Ljava/util/concurrent/CountDownLatch;
    //   82: invokevirtual 789	java/util/concurrent/CountDownLatch:await	()V
    //   85: aload_0
    //   86: invokevirtual 790	com/sleepycat/b/i/c/aj:n	()V
    //   89: aload_0
    //   90: aload_1
    //   91: invokevirtual 793	com/sleepycat/b/i/c/aj:a	(Lcom/sleepycat/b/n/q;)V
    //   94: return
    //   95: aload_1
    //   96: iconst_1
    //   97: putfield 757	com/sleepycat/b/i/f/b:f	Z
    //   100: goto -89 -> 11
    //   103: astore_1
    //   104: new 795	com/sleepycat/b/bo
    //   107: dup
    //   108: aload_0
    //   109: aload_1
    //   110: invokespecial 798	com/sleepycat/b/bo:<init>	(Lcom/sleepycat/b/c/ad;Ljava/lang/Throwable;)V
    //   113: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	aj
    //   0	114	1	paramb	com.sleepycat.b.i.f.b
    //   1	11	2	i	int
    // Exception table:
    //   from	to	target	type
    //   2	9	103	java/lang/InterruptedException
    //   15	25	103	java/lang/InterruptedException
    //   25	78	103	java/lang/InterruptedException
    //   78	94	103	java/lang/InterruptedException
    //   95	100	103	java/lang/InterruptedException
  }
  
  public final void a(com.sleepycat.b.n.q paramq)
  {
    ab localab = this.ap.b();
    switch (1.a[this.ap.a().ordinal()])
    {
    default: 
      throw com.sleepycat.b.aa.c("Unexpected state: " + this.ap.a());
    case 2: 
      throw new s(paramq, localab);
    case 3: 
      throw new af(paramq, localab);
    case 4: 
      throw new af(paramq, localab);
    }
  }
  
  public final void a(au paramau, long paramLong)
  {
    this.aj.a(paramau, paramLong);
  }
  
  protected final void a(com.sleepycat.b.z paramz, aw paramaw)
  {
    super.a(paramz, paramaw);
    this.ar = this.u.a(an.j);
    this.as = this.u.a(an.k);
    this.aI = this.u.a(an.f);
    this.at = com.sleepycat.b.i.h.q.a(this.u.a(an.m));
    this.aE = this.u.a(an.ae);
    this.aF = this.u.a(an.af);
    this.aG = this.u.a(an.ag);
  }
  
  /* Error */
  protected final void a(java.io.PrintWriter paramPrintWriter)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 388	com/sleepycat/b/i/c/aj:aB	Lcom/sleepycat/b/c/i;
    //   6: ifnull +30 -> 36
    //   9: aload_0
    //   10: getfield 411	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   13: aload_0
    //   14: getfield 388	com/sleepycat/b/i/c/aj:aB	Lcom/sleepycat/b/c/i;
    //   17: invokevirtual 871	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   20: aload_0
    //   21: aconst_null
    //   22: putfield 388	com/sleepycat/b/i/c/aj:aB	Lcom/sleepycat/b/c/i;
    //   25: aload_0
    //   26: getfield 343	com/sleepycat/b/i/c/aj:v	Ljava/util/logging/Logger;
    //   29: aload_0
    //   30: ldc_w 873
    //   33: invokestatic 254	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 164	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   40: ifnull +15 -> 55
    //   43: aload_0
    //   44: getfield 164	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   47: invokevirtual 876	com/sleepycat/b/i/c/b/aa:l	()V
    //   50: aload_0
    //   51: aconst_null
    //   52: putfield 164	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   55: aload_0
    //   56: monitorexit
    //   57: return
    //   58: astore_2
    //   59: aload_1
    //   60: aload_2
    //   61: new 78	java/lang/StringBuilder
    //   64: dup
    //   65: ldc_w 878
    //   68: invokespecial 247	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   71: aload_0
    //   72: getfield 83	com/sleepycat/b/i/c/aj:ao	Lcom/sleepycat/b/i/c/b/x;
    //   75: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   78: invokevirtual 97	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   81: invokestatic 881	com/sleepycat/b/i/c/aj:a	(Ljava/io/PrintWriter;Ljava/lang/Exception;Ljava/lang/String;)V
    //   84: goto -29 -> 55
    //   87: astore_1
    //   88: aload_0
    //   89: monitorexit
    //   90: aload_1
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	aj
    //   0	92	1	paramPrintWriter	java.io.PrintWriter
    //   58	3	2	localInterruptedException	InterruptedException
    // Exception table:
    //   from	to	target	type
    //   36	55	58	java/lang/InterruptedException
    //   2	36	87	finally
    //   36	55	87	finally
    //   59	84	87	finally
  }
  
  protected final void a(boolean paramBoolean)
  {
    try
    {
      if (this.an == null) {
        break label195;
      }
      com.sleepycat.b.i.c.b.ac localac = this.an;
      Iterator localIterator = localac.f.values().iterator();
      while (localIterator.hasNext())
      {
        com.sleepycat.b.i.f.e locale = (com.sleepycat.b.i.f.e)localIterator.next();
        try
        {
          if (localac.C.isLoggable(Level.FINE)) {
            com.sleepycat.b.p.w.d(localac.C, localac.d, "Unregistering open replay txn: " + locale.k);
          }
          locale.x();
          locale.b(false);
        }
        catch (com.sleepycat.b.n localn)
        {
          com.sleepycat.b.p.w.d(localac.C, localac.d, "Replay txn: " + locale.k + " unregistration failed: " + localn.getMessage());
        }
      }
      if (com.sleepycat.b.i.c.b.ac.D) {
        break label190;
      }
    }
    finally {}
    if (((com.sleepycat.b.i.c.b.ac)localObject).f.size() != 0) {
      throw new AssertionError();
    }
    label190:
    this.an = null;
    label195:
    this.ak.a(paramBoolean);
  }
  
  public final boolean a(com.sleepycat.b.o.b paramb)
  {
    synchronized (this.aq)
    {
      if (this.aC) {
        return false;
      }
      if ((!az) && (!this.aq.add(paramb))) {
        throw new AssertionError();
      }
    }
    super.a(paramb);
    return true;
  }
  
  public final String ab()
  {
    String str2 = this.u.a(an.o);
    int i = str2.indexOf(":");
    String str1 = str2;
    if (i >= 0) {
      str1 = str2.substring(0, i);
    }
    return str1;
  }
  
  public final int ac()
  {
    String str = this.u.a(an.o);
    int i = str.indexOf(":");
    if (i >= 0) {
      return Integer.parseInt(str.substring(i + 1));
    }
    return this.u.a(an.n);
  }
  
  public final InetSocketAddress ad()
  {
    return new InetSocketAddress(ab(), ac());
  }
  
  public final Set<InetSocketAddress> ae()
  {
    HashSet localHashSet = new HashSet();
    Object localObject = this.u.a(an.x);
    if (localObject == null) {
      return localHashSet;
    }
    StringTokenizer localStringTokenizer = new StringTokenizer((String)localObject, ",");
    if (localStringTokenizer.hasMoreTokens())
    {
      localObject = localStringTokenizer.nextToken();
      if ("".equals(localObject)) {
        throw new IllegalArgumentException("Host and port pair was missing");
      }
      int i = ((String)localObject).indexOf(":");
      if (i < 0) {
        i = Integer.parseInt(an.n.b);
      }
      for (;;)
      {
        localHashSet.add(new InetSocketAddress((String)localObject, i));
        break;
        String str = ((String)localObject).substring(0, i);
        i = Integer.parseInt(((String)localObject).substring(i + 1));
        localObject = str;
      }
    }
    return localHashSet;
  }
  
  /* Error */
  public final com.sleepycat.b.c.i af()
  {
    // Byte code:
    //   0: getstatic 64	com/sleepycat/b/i/c/aj:az	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: invokevirtual 186	com/sleepycat/b/i/c/aj:R	()Z
    //   10: ifne +11 -> 21
    //   13: new 907	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 908	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: getfield 371	com/sleepycat/b/i/c/aj:aH	Ljava/util/concurrent/locks/ReentrantLock;
    //   25: invokevirtual 386	java/util/concurrent/locks/ReentrantLock:lockInterruptibly	()V
    //   28: aload_0
    //   29: getfield 388	com/sleepycat/b/i/c/aj:aB	Lcom/sleepycat/b/c/i;
    //   32: ifnull +26 -> 58
    //   35: ldc_w 994
    //   38: invokestatic 325	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   41: athrow
    //   42: astore_1
    //   43: aload_0
    //   44: getfield 371	com/sleepycat/b/i/c/aj:aH	Ljava/util/concurrent/locks/ReentrantLock;
    //   47: invokevirtual 394	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   50: aload_1
    //   51: athrow
    //   52: astore_1
    //   53: aload_1
    //   54: invokestatic 397	com/sleepycat/b/aa:a	(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   57: athrow
    //   58: new 399	com/sleepycat/b/br
    //   61: dup
    //   62: invokespecial 400	com/sleepycat/b/br:<init>	()V
    //   65: astore_1
    //   66: aload_1
    //   67: new 176	com/sleepycat/b/u
    //   70: dup
    //   71: getstatic 999	com/sleepycat/b/w:a	Lcom/sleepycat/b/w;
    //   74: getstatic 999	com/sleepycat/b/w:a	Lcom/sleepycat/b/w;
    //   77: getstatic 1004	com/sleepycat/b/v:b	Lcom/sleepycat/b/v;
    //   80: invokespecial 1007	com/sleepycat/b/u:<init>	(Lcom/sleepycat/b/w;Lcom/sleepycat/b/w;Lcom/sleepycat/b/v;)V
    //   83: invokevirtual 1010	com/sleepycat/b/br:a	(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;
    //   86: pop
    //   87: aload_1
    //   88: getstatic 1015	com/sleepycat/b/i/n:a	Lcom/sleepycat/b/i/n;
    //   91: putfield 402	com/sleepycat/b/br:f	Lcom/sleepycat/b/bc;
    //   94: new 477	com/sleepycat/b/i/f/b
    //   97: dup
    //   98: aload_0
    //   99: aload_1
    //   100: aload_0
    //   101: getfield 83	com/sleepycat/b/i/c/aj:ao	Lcom/sleepycat/b/i/c/b/x;
    //   104: invokespecial 1018	com/sleepycat/b/i/f/b:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)V
    //   107: astore_1
    //   108: new 1020	com/sleepycat/b/l
    //   111: dup
    //   112: invokespecial 1021	com/sleepycat/b/l:<init>	()V
    //   115: astore_2
    //   116: aload_2
    //   117: iconst_1
    //   118: putfield 1023	com/sleepycat/b/l:b	Z
    //   121: aload_2
    //   122: iconst_1
    //   123: putfield 1024	com/sleepycat/b/l:d	Z
    //   126: aload_2
    //   127: iconst_1
    //   128: putfield 1026	com/sleepycat/b/l:c	Z
    //   131: aload_2
    //   132: iconst_1
    //   133: putfield 1028	com/sleepycat/b/l:j	Z
    //   136: aload_0
    //   137: getfield 411	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   140: aload_1
    //   141: getstatic 416	com/sleepycat/b/c/w:d	Lcom/sleepycat/b/c/w;
    //   144: invokevirtual 418	com/sleepycat/b/c/w:b	()Ljava/lang/String;
    //   147: aload_2
    //   148: invokevirtual 1031	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/l;)Lcom/sleepycat/b/c/i;
    //   151: astore_2
    //   152: aload_1
    //   153: invokevirtual 432	com/sleepycat/b/n/z:m	()J
    //   156: pop2
    //   157: iconst_0
    //   158: ifeq +11 -> 169
    //   161: new 390	java/lang/NullPointerException
    //   164: dup
    //   165: invokespecial 391	java/lang/NullPointerException:<init>	()V
    //   168: athrow
    //   169: aload_0
    //   170: aload_2
    //   171: putfield 388	com/sleepycat/b/i/c/aj:aB	Lcom/sleepycat/b/c/i;
    //   174: aload_0
    //   175: getfield 371	com/sleepycat/b/i/c/aj:aH	Ljava/util/concurrent/locks/ReentrantLock;
    //   178: invokevirtual 394	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   181: aload_0
    //   182: getfield 388	com/sleepycat/b/i/c/aj:aB	Lcom/sleepycat/b/c/i;
    //   185: areturn
    //   186: astore_2
    //   187: aconst_null
    //   188: astore_1
    //   189: aload_1
    //   190: ifnull +7 -> 197
    //   193: aload_1
    //   194: invokevirtual 429	com/sleepycat/b/n/z:n	()V
    //   197: aload_2
    //   198: athrow
    //   199: astore_2
    //   200: goto -11 -> 189
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	203	0	this	aj
    //   42	9	1	localObject1	Object
    //   52	2	1	localInterruptedException	InterruptedException
    //   65	129	1	localObject2	Object
    //   115	56	2	localObject3	Object
    //   186	12	2	localObject4	Object
    //   199	1	2	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   28	42	42	finally
    //   161	169	42	finally
    //   169	174	42	finally
    //   193	197	42	finally
    //   197	199	42	finally
    //   21	28	52	java/lang/InterruptedException
    //   58	108	186	finally
    //   108	157	199	finally
  }
  
  public final com.sleepycat.b.c.i ag()
  {
    try
    {
      com.sleepycat.b.c.i locali = a(com.sleepycat.b.i.n.a, true);
      return locali;
    }
    catch (com.sleepycat.b.p localp)
    {
      throw com.sleepycat.b.aa.a(localp);
    }
  }
  
  public final boolean ah()
  {
    return this.u.a(an.s);
  }
  
  public final String ai()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    localStringBuilder1.append(this.ao);
    localStringBuilder1.append("[").append(this.ap.a()).append("] ");
    Object localObject;
    if (this.am != null)
    {
      localObject = this.am;
      localStringBuilder1.append("\n" + ((com.sleepycat.b.i.c.b.aa)localObject).f.c() + "\nGlobalCBVLSN=" + ((com.sleepycat.b.i.c.b.aa)localObject).r.a + "\n" + ((com.sleepycat.b.i.c.b.aa)localObject).m);
    }
    if (this.aj != null)
    {
      localStringBuilder1.append("vlsnRange=");
      localStringBuilder1.append(this.aj.h.b()).append("\n");
    }
    if (this.an != null)
    {
      localObject = this.an;
      StringBuilder localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append("lastReplayedTxn=").append(((com.sleepycat.b.i.c.b.ac)localObject).g);
      localStringBuilder2.append(" lastReplayedVLSN=").append(((com.sleepycat.b.i.c.b.ac)localObject).h);
      localStringBuilder2.append(" numActiveReplayTxns=").append(((com.sleepycat.b.i.c.b.ac)localObject).f.size());
      localStringBuilder2.append("\n");
      localStringBuilder1.append(localStringBuilder2.toString());
    }
    return localStringBuilder1.toString();
  }
  
  public final void aj()
  {
    if (this.aJ == null) {}
    while (this.aJ.a()) {
      return;
    }
    throw new com.sleepycat.b.aa(this, com.sleepycat.b.c.ac.s, "ReplicatedEnvironmentConfig.syncupProgressListener: ");
  }
  
  public final com.sleepycat.b.n.z b(long paramLong)
  {
    return new com.sleepycat.b.i.f.e(this, br.a, paramLong, this.v);
  }
  
  public final String b()
  {
    return "com.sleepycat.je.rep.jmx.RepJEMonitor";
  }
  
  public final void b(com.sleepycat.b.o.b paramb)
  {
    synchronized (this.aq)
    {
      if ((!az) && (!this.aq.remove(paramb))) {
        throw new AssertionError();
      }
    }
    super.b(paramb);
  }
  
  public final void b(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!paramBoolean1) {
      throw new UnsupportedOperationException("This environment must be converted for replication. using com.sleepycat.je.rep.util.DbEnableReplication.");
    }
    if (paramBoolean2 != this.aE) {
      throw new IllegalArgumentException(an.ae.a + " parameter may not be changed. Previous value: " + paramBoolean2 + " New value: " + this.aE);
    }
  }
  
  public final String c()
  {
    return "com.sleepycat.je.rep.jmx.RepJEDiagnostics";
  }
  
  public final void c(boolean paramBoolean)
  {
    synchronized (this.aq)
    {
      this.aC = paramBoolean;
      return;
    }
  }
  
  public final void d()
  {
    this.am.p.a();
  }
  
  public final SortedSet<String> e()
  {
    return new ah().a();
  }
  
  public final com.sleepycat.b.j.d f()
  {
    return new com.sleepycat.b.i.q(this);
  }
  
  protected final Formatter h()
  {
    this.ao = new com.sleepycat.b.i.c.b.x(this.u.a(an.p));
    return new com.sleepycat.b.i.h.w(this.ao);
  }
  
  public final void o()
  {
    w();
    try
    {
      if (this.am != null)
      {
        this.am.t.a = 0L;
        this.am.l();
        this.am = null;
      }
      try
      {
        this.ak.b();
        try
        {
          super.o();
          return;
        }
        catch (com.sleepycat.b.n localn1) {}
      }
      catch (com.sleepycat.b.n localn2)
      {
        for (;;) {}
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  /* Error */
  protected final void p()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: invokespecial 1150	com/sleepycat/b/c/ad:p	()V
    //   6: aload_0
    //   7: getfield 1152	com/sleepycat/b/i/c/aj:m	Z
    //   10: ifeq +199 -> 209
    //   13: aload_0
    //   14: getfield 1153	com/sleepycat/b/i/c/aj:q	Lcom/sleepycat/b/c/p;
    //   17: getstatic 1156	com/sleepycat/b/c/p:b	Lcom/sleepycat/b/c/h;
    //   20: invokevirtual 1159	com/sleepycat/b/c/p:b	(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    //   23: astore_1
    //   24: aload_1
    //   25: invokevirtual 1163	com/sleepycat/b/c/i:o	()Z
    //   28: ifne +12 -> 40
    //   31: aload_1
    //   32: invokevirtual 1164	com/sleepycat/b/c/i:p	()V
    //   35: aload_1
    //   36: iconst_1
    //   37: putfield 1165	com/sleepycat/b/c/i:f	Z
    //   40: aload_1
    //   41: ifnull +11 -> 52
    //   44: aload_0
    //   45: getfield 1153	com/sleepycat/b/i/c/aj:q	Lcom/sleepycat/b/c/p;
    //   48: aload_1
    //   49: invokevirtual 871	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   52: aload_0
    //   53: getfield 1153	com/sleepycat/b/i/c/aj:q	Lcom/sleepycat/b/c/p;
    //   56: invokevirtual 1168	com/sleepycat/b/c/p:c	()Ljava/util/Map;
    //   59: astore_3
    //   60: aload_3
    //   61: invokeinterface 1171 1 0
    //   66: invokeinterface 1172 1 0
    //   71: astore 4
    //   73: aload 4
    //   75: invokeinterface 737 1 0
    //   80: ifeq +102 -> 182
    //   83: aload 4
    //   85: invokeinterface 740 1 0
    //   90: checkcast 1174	com/sleepycat/b/c/h
    //   93: astore 5
    //   95: aload_0
    //   96: getfield 1153	com/sleepycat/b/i/c/aj:q	Lcom/sleepycat/b/c/p;
    //   99: aload 5
    //   101: invokevirtual 1159	com/sleepycat/b/c/p:b	(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    //   104: astore_1
    //   105: aload_1
    //   106: ifnull +29 -> 135
    //   109: aload_3
    //   110: aload 5
    //   112: invokeinterface 313 2 0
    //   117: checkcast 303	java/lang/String
    //   120: invokestatic 1177	com/sleepycat/b/c/p:b	(Ljava/lang/String;)Z
    //   123: ifne +12 -> 135
    //   126: aload_1
    //   127: invokevirtual 1164	com/sleepycat/b/c/i:p	()V
    //   130: aload_1
    //   131: iconst_1
    //   132: putfield 1165	com/sleepycat/b/c/i:f	Z
    //   135: aload_1
    //   136: ifnull -63 -> 73
    //   139: aload_0
    //   140: getfield 1153	com/sleepycat/b/i/c/aj:q	Lcom/sleepycat/b/c/p;
    //   143: aload_1
    //   144: invokevirtual 871	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   147: goto -74 -> 73
    //   150: astore_2
    //   151: aconst_null
    //   152: astore_1
    //   153: aload_1
    //   154: ifnull +11 -> 165
    //   157: aload_0
    //   158: getfield 1153	com/sleepycat/b/i/c/aj:q	Lcom/sleepycat/b/c/p;
    //   161: aload_1
    //   162: invokevirtual 871	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   165: aload_2
    //   166: athrow
    //   167: astore_1
    //   168: aload_2
    //   169: ifnull +11 -> 180
    //   172: aload_0
    //   173: getfield 1153	com/sleepycat/b/i/c/aj:q	Lcom/sleepycat/b/c/p;
    //   176: aload_2
    //   177: invokevirtual 871	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   180: aload_1
    //   181: athrow
    //   182: new 1179	com/sleepycat/b/c
    //   185: dup
    //   186: invokespecial 1180	com/sleepycat/b/c:<init>	()V
    //   189: astore_1
    //   190: aload_1
    //   191: iconst_1
    //   192: putfield 1181	com/sleepycat/b/c:b	Z
    //   195: aload_1
    //   196: iconst_1
    //   197: putfield 1183	com/sleepycat/b/c:e	Z
    //   200: aload_0
    //   201: aload_1
    //   202: ldc_w 1185
    //   205: invokevirtual 1188	com/sleepycat/b/i/c/aj:a	(Lcom/sleepycat/b/c;Ljava/lang/String;)Z
    //   208: pop
    //   209: return
    //   210: astore_3
    //   211: aload_1
    //   212: astore_2
    //   213: aload_3
    //   214: astore_1
    //   215: goto -47 -> 168
    //   218: astore_2
    //   219: goto -66 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	222	0	this	aj
    //   23	139	1	locali1	com.sleepycat.b.c.i
    //   167	14	1	localObject1	Object
    //   189	26	1	localObject2	Object
    //   1	1	2	localObject3	Object
    //   150	27	2	locali2	com.sleepycat.b.c.i
    //   212	1	2	localObject4	Object
    //   218	1	2	localObject5	Object
    //   59	51	3	localMap	Map
    //   210	4	3	localObject6	Object
    //   71	13	4	localIterator	Iterator
    //   93	18	5	localh	com.sleepycat.b.c.h
    // Exception table:
    //   from	to	target	type
    //   13	24	150	finally
    //   95	105	167	finally
    //   109	135	210	finally
    //   24	40	218	finally
  }
  
  /* Error */
  public final void q()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 164	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   6: ifnull +15 -> 21
    //   9: aload_0
    //   10: getfield 164	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   13: invokevirtual 876	com/sleepycat/b/i/c/b/aa:l	()V
    //   16: aload_0
    //   17: aconst_null
    //   18: putfield 164	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   21: aload_0
    //   22: invokespecial 1192	com/sleepycat/b/c/ad:q	()V
    //   25: aload_0
    //   26: monitorexit
    //   27: return
    //   28: astore_1
    //   29: aload_0
    //   30: monitorexit
    //   31: aload_1
    //   32: athrow
    //   33: astore_1
    //   34: goto -13 -> 21
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	aj
    //   28	4	1	localObject	Object
    //   33	1	1	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   2	21	28	finally
    //   21	25	28	finally
    //   2	21	33	java/lang/Exception
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */