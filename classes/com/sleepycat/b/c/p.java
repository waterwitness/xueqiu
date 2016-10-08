package com.sleepycat.b.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.g.a.f;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.g.av;
import com.sleepycat.b.l;
import com.sleepycat.b.l.a;
import com.sleepycat.b.l.ab;
import com.sleepycat.b.l.ah;
import com.sleepycat.b.n.d;
import com.sleepycat.b.n.o;
import com.sleepycat.b.n.z;
import com.sleepycat.b.p.j;
import com.sleepycat.d.b;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class p
  implements at
{
  public static final h a;
  public static final h b;
  private static final Map<String, w> j;
  public final AtomicLong c;
  public final AtomicLong d;
  public final i e;
  public final i f;
  public byte g;
  public ad h;
  
  static
  {
    if (!p.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      a = new h(0L);
      b = new h(1L);
      Object localObject = EnumSet.allOf(w.class);
      j = new HashMap(((EnumSet)localObject).size());
      localObject = ((EnumSet)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        w localw = (w)((Iterator)localObject).next();
        if (localw.a()) {
          j.put(localw.b(), localw);
        }
      }
    }
  }
  
  public p()
  {
    this.h = null;
    this.e = new i();
    this.e.t = w.a.b();
    this.e.n();
    this.f = new i();
    this.f.n();
    this.f.t = w.b.b();
    this.c = new AtomicLong();
    this.d = new AtomicLong();
  }
  
  public p(ad paramad, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.h = paramad;
    this.c = new AtomicLong(1L);
    this.d = new AtomicLong(-256L);
    l locall = new l();
    locall.j = false;
    locall.b(false);
    this.e = new i(null, w.a.b(), new h(0L), paramad, locall);
    this.e.n();
    locall = new l();
    locall.b(false);
    this.f = new i(null, w.b.b(), new h(1L), paramad, locall);
    this.f.n();
    if (paramBoolean1) {
      e();
    }
    if (paramBoolean2) {
      this.g = ((byte)(this.g | 0x8));
    }
    f();
  }
  
  private r a(com.sleepycat.b.n.q paramq, String paramString1, String paramString2, q paramq1)
  {
    int k = 0;
    r localr = new r((byte)0);
    localr.b = a(paramq, paramString1, null);
    if (localr.b == null) {
      throw new com.sleepycat.b.p("Attempted to " + paramString2 + " non-existent database " + paramString1);
    }
    try
    {
      localr.d = paramq1.a(localr.b);
      a(paramq, localr.d);
      if ((this.h.I()) && (localr.b.o()) && (paramq.e() != null) && (paramq.e().L) && (!paramq.h_())) {
        throw new s();
      }
    }
    finally
    {
      c(localr.b);
      if (localr.a != null)
      {
        localr.a.c();
        localr.a.a(null);
      }
    }
    localr.a = new c(this.f, paramq);
    paramq1 = new com.sleepycat.b.m(b.a(paramString1));
    if ((localr.a.a(paramq1, e.a, o.b) & 0x1) != 0) {
      k = 1;
    }
    if (k == 0) {
      throw new com.sleepycat.b.p("Attempted to " + paramString2 + " non-existent database " + paramString1);
    }
    localr.c = ((ab)localr.a.b(o.b));
    if ((!i) && (localr.c == null)) {
      throw new AssertionError();
    }
    if (paramq.t())
    {
      paramq = "Database " + paramString1 + " has been forcibly closed in order to apply a replicated " + paramString2 + " operation.  This Database and all associated Cursors must be closed.  All associated Transactions must be aborted.";
      paramString2 = localr.b.s().iterator();
      while (paramString2.hasNext()) {
        ((com.sleepycat.b.i)paramString2.next()).a(paramString1, paramq);
      }
    }
    k = localr.b.g.size();
    if (k > 0) {
      throw new IllegalStateException("Can't " + paramString2 + " database " + paramString1 + ", " + k + " open Database handles exist");
    }
    return localr;
  }
  
  public static w a(String paramString)
  {
    paramString = (w)j.get(paramString);
    if (paramString != null) {
      return paramString;
    }
    return w.g;
  }
  
  private void a(c paramc, d paramd)
  {
    paramc.b();
    try
    {
      long l = paramc.a.k(paramc.b);
      if (paramd.b(l, o.a, true, this.f).a == com.sleepycat.b.n.h.f)
      {
        paramc.e.b(null);
        throw aa.c("No contention is possible with HandleLocker: " + j.h(l));
      }
    }
    finally
    {
      paramc.c();
    }
    paramc.c();
  }
  
  private static void a(com.sleepycat.b.n.q paramq, av paramav)
  {
    if ((paramav != null) && (paramav.d())) {
      paramq.k();
    }
  }
  
  /* Error */
  private i b(com.sleepycat.b.n.q paramq, String paramString1, String paramString2, ab paramab, final com.sleepycat.b.g.g paramg)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_2
    //   3: ldc_w 371
    //   6: new 10	com/sleepycat/b/c/p$2
    //   9: dup
    //   10: aload_0
    //   11: aload 5
    //   13: invokespecial 374	com/sleepycat/b/c/p$2:<init>	(Lcom/sleepycat/b/c/p;Lcom/sleepycat/b/g/g;)V
    //   16: invokespecial 376	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/c/q;)Lcom/sleepycat/b/c/r;
    //   19: astore 5
    //   21: aload 5
    //   23: getfield 224	com/sleepycat/b/c/r:a	Lcom/sleepycat/b/c/c;
    //   26: astore_1
    //   27: aload 5
    //   29: getfield 164	com/sleepycat/b/c/r:b	Lcom/sleepycat/b/c/i;
    //   32: astore_2
    //   33: aload 5
    //   35: getfield 191	com/sleepycat/b/c/r:d	Lcom/sleepycat/b/g/av;
    //   38: astore 5
    //   40: aload_1
    //   41: getstatic 378	com/sleepycat/b/g/av:g	Lcom/sleepycat/b/g/av;
    //   44: invokevirtual 381	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   47: pop
    //   48: aload 4
    //   50: ifnull +37 -> 87
    //   53: aload_1
    //   54: invokevirtual 382	com/sleepycat/b/c/c:e	()V
    //   57: aload_1
    //   58: aload_3
    //   59: invokestatic 241	com/sleepycat/d/b:a	(Ljava/lang/String;)[B
    //   62: aload 4
    //   64: aload 5
    //   66: invokevirtual 385	com/sleepycat/b/c/c:a	([BLcom/sleepycat/b/l/y;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   69: pop
    //   70: aload_2
    //   71: aload_3
    //   72: putfield 118	com/sleepycat/b/c/i:t	Ljava/lang/String;
    //   75: aload_0
    //   76: aload_2
    //   77: invokevirtual 221	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   80: aload_1
    //   81: aconst_null
    //   82: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   85: aload_2
    //   86: areturn
    //   87: new 262	com/sleepycat/b/l/ab
    //   90: dup
    //   91: aload_2
    //   92: getfield 386	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   95: invokespecial 389	com/sleepycat/b/l/ab:<init>	(Lcom/sleepycat/b/c/h;)V
    //   98: astore 4
    //   100: goto -47 -> 53
    //   103: astore_3
    //   104: aload_0
    //   105: aload_2
    //   106: invokevirtual 221	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   109: aload_1
    //   110: aconst_null
    //   111: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   114: aload_3
    //   115: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	p
    //   0	116	1	paramq	com.sleepycat.b.n.q
    //   0	116	2	paramString1	String
    //   0	116	3	paramString2	String
    //   0	116	4	paramab	ab
    //   0	116	5	paramg	com.sleepycat.b.g.g
    // Exception table:
    //   from	to	target	type
    //   40	48	103	finally
    //   53	75	103	finally
    //   87	100	103	finally
  }
  
  /* Error */
  private v b(com.sleepycat.b.n.q paramq, String paramString, ab paramab, final com.sleepycat.b.g.g paramg)
  {
    // Byte code:
    //   0: getstatic 48	com/sleepycat/b/c/p:i	Z
    //   3: ifne +20 -> 23
    //   6: aload_3
    //   7: ifnull +16 -> 23
    //   10: aload 4
    //   12: ifnonnull +11 -> 23
    //   15: new 267	java/lang/AssertionError
    //   18: dup
    //   19: invokespecial 268	java/lang/AssertionError:<init>	()V
    //   22: athrow
    //   23: aload_0
    //   24: aload_1
    //   25: aload_2
    //   26: ldc_w 392
    //   29: new 14	com/sleepycat/b/c/p$4
    //   32: dup
    //   33: aload_0
    //   34: aload 4
    //   36: invokespecial 393	com/sleepycat/b/c/p$4:<init>	(Lcom/sleepycat/b/c/p;Lcom/sleepycat/b/g/g;)V
    //   39: invokespecial 376	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/c/q;)Lcom/sleepycat/b/c/r;
    //   42: astore 6
    //   44: aload 6
    //   46: getfield 224	com/sleepycat/b/c/r:a	Lcom/sleepycat/b/c/c;
    //   49: astore 5
    //   51: aload 6
    //   53: getfield 191	com/sleepycat/b/c/r:d	Lcom/sleepycat/b/g/av;
    //   56: astore 7
    //   58: aload 6
    //   60: getfield 164	com/sleepycat/b/c/r:b	Lcom/sleepycat/b/c/i;
    //   63: astore 8
    //   65: aload_3
    //   66: ifnull +181 -> 247
    //   69: aload_3
    //   70: getfield 394	com/sleepycat/b/l/ab:a	Lcom/sleepycat/b/c/h;
    //   73: astore_3
    //   74: aload 8
    //   76: invokevirtual 397	com/sleepycat/b/c/i:d	()Lcom/sleepycat/b/c/i;
    //   79: astore 9
    //   81: aload 9
    //   83: invokevirtual 400	com/sleepycat/b/c/i:u	()V
    //   86: aload 9
    //   88: aload_3
    //   89: putfield 386	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   92: aload 9
    //   94: new 402	com/sleepycat/b/l/ah
    //   97: dup
    //   98: aload 9
    //   100: invokespecial 404	com/sleepycat/b/l/ah:<init>	(Lcom/sleepycat/b/c/i;)V
    //   103: putfield 407	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   106: aload_0
    //   107: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   110: invokestatic 412	com/sleepycat/b/n/a:a	(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    //   113: astore_2
    //   114: new 226	com/sleepycat/b/c/c
    //   117: dup
    //   118: aload_0
    //   119: getfield 111	com/sleepycat/b/c/p:e	Lcom/sleepycat/b/c/i;
    //   122: aload_2
    //   123: invokespecial 234	com/sleepycat/b/c/c:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    //   126: astore 4
    //   128: aload 4
    //   130: aload_3
    //   131: invokevirtual 413	com/sleepycat/b/c/h:toString	()Ljava/lang/String;
    //   134: invokestatic 241	com/sleepycat/d/b:a	(Ljava/lang/String;)[B
    //   137: new 415	com/sleepycat/b/l/aa
    //   140: dup
    //   141: aload 9
    //   143: invokespecial 416	com/sleepycat/b/l/aa:<init>	(Lcom/sleepycat/b/c/i;)V
    //   146: getstatic 378	com/sleepycat/b/g/av:g	Lcom/sleepycat/b/g/av;
    //   149: invokevirtual 385	com/sleepycat/b/c/c:a	([BLcom/sleepycat/b/l/y;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   152: pop
    //   153: aload 4
    //   155: ifnull +9 -> 164
    //   158: aload 4
    //   160: aconst_null
    //   161: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   164: aload_2
    //   165: ifnull +8 -> 173
    //   168: aload_2
    //   169: iconst_1
    //   170: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   173: aload 6
    //   175: getfield 265	com/sleepycat/b/c/r:c	Lcom/sleepycat/b/l/ab;
    //   178: aload 9
    //   180: getfield 386	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   183: putfield 394	com/sleepycat/b/l/ab:a	Lcom/sleepycat/b/c/h;
    //   186: aload 5
    //   188: aconst_null
    //   189: new 236	com/sleepycat/b/m
    //   192: dup
    //   193: iconst_0
    //   194: newarray <illegal type>
    //   196: invokespecial 244	com/sleepycat/b/m:<init>	([B)V
    //   199: aconst_null
    //   200: aconst_null
    //   201: aconst_null
    //   202: aload 7
    //   204: invokevirtual 422	com/sleepycat/b/c/c:a	([BLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   207: pop
    //   208: aload_1
    //   209: aload 8
    //   211: iconst_1
    //   212: invokevirtual 425	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/c/i;Z)V
    //   215: aload_1
    //   216: aload 9
    //   218: iconst_0
    //   219: invokevirtual 425	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/c/i;Z)V
    //   222: new 427	com/sleepycat/b/c/v
    //   225: dup
    //   226: aload 8
    //   228: aload 9
    //   230: invokespecial 430	com/sleepycat/b/c/v:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/c/i;)V
    //   233: astore_1
    //   234: aload 5
    //   236: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   239: aload 5
    //   241: aconst_null
    //   242: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   245: aload_1
    //   246: areturn
    //   247: aload 8
    //   249: getfield 386	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   252: getfield 433	com/sleepycat/b/c/h:a	J
    //   255: ldc2_w 135
    //   258: lcmp
    //   259: ifge +47 -> 306
    //   262: iconst_1
    //   263: istore 10
    //   265: iload 10
    //   267: ifeq +45 -> 312
    //   270: aload_0
    //   271: getfield 132	com/sleepycat/b/c/p:d	Ljava/util/concurrent/atomic/AtomicLong;
    //   274: invokevirtual 437	java/util/concurrent/atomic/AtomicLong:decrementAndGet	()J
    //   277: lstore 11
    //   279: new 50	com/sleepycat/b/c/h
    //   282: dup
    //   283: lload 11
    //   285: invokespecial 54	com/sleepycat/b/c/h:<init>	(J)V
    //   288: astore_3
    //   289: goto -215 -> 74
    //   292: astore_1
    //   293: aload 5
    //   295: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   298: aload 5
    //   300: aconst_null
    //   301: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   304: aload_1
    //   305: athrow
    //   306: iconst_0
    //   307: istore 10
    //   309: goto -44 -> 265
    //   312: aload_0
    //   313: getfield 130	com/sleepycat/b/c/p:c	Ljava/util/concurrent/atomic/AtomicLong;
    //   316: invokevirtual 440	java/util/concurrent/atomic/AtomicLong:incrementAndGet	()J
    //   319: lstore 11
    //   321: goto -42 -> 279
    //   324: aload_2
    //   325: ifnull +8 -> 333
    //   328: aload_2
    //   329: aconst_null
    //   330: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   333: aload_3
    //   334: ifnull +8 -> 342
    //   337: aload_3
    //   338: iconst_0
    //   339: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   342: aload_1
    //   343: athrow
    //   344: astore_1
    //   345: aconst_null
    //   346: astore 4
    //   348: aload_2
    //   349: astore_3
    //   350: aload 4
    //   352: astore_2
    //   353: goto -29 -> 324
    //   356: astore_1
    //   357: aload_2
    //   358: astore_3
    //   359: aload 4
    //   361: astore_2
    //   362: goto -38 -> 324
    //   365: astore_1
    //   366: aconst_null
    //   367: astore_3
    //   368: aconst_null
    //   369: astore_2
    //   370: goto -46 -> 324
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	373	0	this	p
    //   0	373	1	paramq	com.sleepycat.b.n.q
    //   0	373	2	paramString	String
    //   0	373	3	paramab	ab
    //   0	373	4	paramg	com.sleepycat.b.g.g
    //   49	250	5	localc	c
    //   42	132	6	localr	r
    //   56	147	7	localav	av
    //   63	185	8	locali1	i
    //   79	150	9	locali2	i
    //   263	45	10	k	int
    //   277	43	11	l	long
    // Exception table:
    //   from	to	target	type
    //   58	65	292	finally
    //   69	74	292	finally
    //   74	106	292	finally
    //   158	164	292	finally
    //   168	173	292	finally
    //   173	234	292	finally
    //   247	262	292	finally
    //   270	279	292	finally
    //   279	289	292	finally
    //   312	321	292	finally
    //   328	333	292	finally
    //   337	342	292	finally
    //   342	344	292	finally
    //   114	128	344	finally
    //   128	153	356	finally
    //   106	114	365	finally
  }
  
  public static boolean b(String paramString)
  {
    return a(paramString).a();
  }
  
  public static int d(i parami)
  {
    u localu = new u(parami);
    parami.b.b(localu);
    return localu.a;
  }
  
  public final int a()
  {
    ar.b();
    ar.b();
    return this.e.a() + 16 + this.f.a() + 1;
  }
  
  /* Error */
  public final i a(h paramh, long paramLong, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_0
    //   2: getfield 111	com/sleepycat/b/c/p:e	Lcom/sleepycat/b/c/i;
    //   5: getfield 386	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   8: invokevirtual 465	com/sleepycat/b/c/h:equals	(Ljava/lang/Object;)Z
    //   11: ifeq +12 -> 23
    //   14: aload_0
    //   15: getfield 111	com/sleepycat/b/c/p:e	Lcom/sleepycat/b/c/i;
    //   18: astore 5
    //   20: aload 5
    //   22: areturn
    //   23: aload_1
    //   24: aload_0
    //   25: getfield 123	com/sleepycat/b/c/p:f	Lcom/sleepycat/b/c/i;
    //   28: getfield 386	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   31: invokevirtual 465	com/sleepycat/b/c/h:equals	(Ljava/lang/Object;)Z
    //   34: ifeq +8 -> 42
    //   37: aload_0
    //   38: getfield 123	com/sleepycat/b/c/p:f	Lcom/sleepycat/b/c/i;
    //   41: areturn
    //   42: aconst_null
    //   43: astore 7
    //   45: aload_0
    //   46: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   49: invokestatic 412	com/sleepycat/b/n/a:a	(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    //   52: astore 5
    //   54: lload_2
    //   55: ldc2_w 466
    //   58: lcmp
    //   59: ifeq +9 -> 68
    //   62: aload 5
    //   64: lload_2
    //   65: invokevirtual 469	com/sleepycat/b/n/q:c	(J)V
    //   68: new 226	com/sleepycat/b/c/c
    //   71: dup
    //   72: aload_0
    //   73: getfield 111	com/sleepycat/b/c/p:e	Lcom/sleepycat/b/c/i;
    //   76: aload 5
    //   78: invokespecial 234	com/sleepycat/b/c/c:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    //   81: astore 6
    //   83: aload 6
    //   85: new 236	com/sleepycat/b/m
    //   88: dup
    //   89: aload_1
    //   90: invokevirtual 413	com/sleepycat/b/c/h:toString	()Ljava/lang/String;
    //   93: invokestatic 241	com/sleepycat/d/b:a	(Ljava/lang/String;)[B
    //   96: invokespecial 244	com/sleepycat/b/m:<init>	([B)V
    //   99: getstatic 249	com/sleepycat/b/c/e:a	Lcom/sleepycat/b/c/e;
    //   102: getstatic 330	com/sleepycat/b/n/o:a	Lcom/sleepycat/b/n/o;
    //   105: invokevirtual 257	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I
    //   108: iconst_1
    //   109: iand
    //   110: ifeq +99 -> 209
    //   113: iconst_1
    //   114: istore 10
    //   116: iload 10
    //   118: ifeq +343 -> 461
    //   121: aload 6
    //   123: getstatic 330	com/sleepycat/b/n/o:a	Lcom/sleepycat/b/n/o;
    //   126: invokevirtual 260	com/sleepycat/b/c/c:b	(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;
    //   129: checkcast 415	com/sleepycat/b/l/aa
    //   132: astore 8
    //   134: getstatic 48	com/sleepycat/b/c/p:i	Z
    //   137: ifne +78 -> 215
    //   140: aload 8
    //   142: ifnonnull +73 -> 215
    //   145: new 267	java/lang/AssertionError
    //   148: dup
    //   149: invokespecial 268	java/lang/AssertionError:<init>	()V
    //   152: athrow
    //   153: astore 8
    //   155: aload 6
    //   157: astore 9
    //   159: aload 5
    //   161: astore 6
    //   163: aload 7
    //   165: astore 8
    //   167: aload 9
    //   169: astore 5
    //   171: aload 5
    //   173: ifnull +14 -> 187
    //   176: aload 5
    //   178: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   181: aload 5
    //   183: aconst_null
    //   184: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   187: aload 8
    //   189: astore 7
    //   191: aload 6
    //   193: ifnull -148 -> 45
    //   196: aload 6
    //   198: iconst_0
    //   199: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   202: aload 8
    //   204: astore 7
    //   206: goto -161 -> 45
    //   209: iconst_0
    //   210: istore 10
    //   212: goto -96 -> 116
    //   215: aload 8
    //   217: getfield 471	com/sleepycat/b/l/aa:a	Lcom/sleepycat/b/c/i;
    //   220: astore 8
    //   222: aload 8
    //   224: invokevirtual 400	com/sleepycat/b/c/i:u	()V
    //   227: aload 8
    //   229: astore_1
    //   230: aload 6
    //   232: ifnull +14 -> 246
    //   235: aload 6
    //   237: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   240: aload 6
    //   242: aconst_null
    //   243: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   246: aload 5
    //   248: ifnull +9 -> 257
    //   251: aload 5
    //   253: iconst_1
    //   254: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   257: aload_1
    //   258: astore 5
    //   260: aload_1
    //   261: ifnull -241 -> 20
    //   264: aload 4
    //   266: ifnull +47 -> 313
    //   269: aload_1
    //   270: aload 4
    //   272: putfield 118	com/sleepycat/b/c/i:t	Ljava/lang/String;
    //   275: aload_1
    //   276: areturn
    //   277: astore_1
    //   278: aconst_null
    //   279: astore 6
    //   281: aconst_null
    //   282: astore 5
    //   284: aload 6
    //   286: ifnull +14 -> 300
    //   289: aload 6
    //   291: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   294: aload 6
    //   296: aconst_null
    //   297: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   300: aload 5
    //   302: ifnull +9 -> 311
    //   305: aload 5
    //   307: iconst_0
    //   308: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   311: aload_1
    //   312: athrow
    //   313: aload_1
    //   314: astore 5
    //   316: aload_0
    //   317: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   320: invokevirtual 473	com/sleepycat/b/c/ad:j	()Z
    //   323: ifeq -303 -> 20
    //   326: aload_1
    //   327: getfield 118	com/sleepycat/b/c/i:t	Ljava/lang/String;
    //   330: ifnull +56 -> 386
    //   333: iconst_1
    //   334: istore 10
    //   336: aload_1
    //   337: astore 5
    //   339: iload 10
    //   341: ifne -321 -> 20
    //   344: aload_0
    //   345: getfield 123	com/sleepycat/b/c/p:f	Lcom/sleepycat/b/c/i;
    //   348: getfield 407	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   351: invokevirtual 475	com/sleepycat/b/l/ah:e	()J
    //   354: ldc2_w 476
    //   357: lcmp
    //   358: ifgt +34 -> 392
    //   361: iconst_1
    //   362: istore 10
    //   364: aload_1
    //   365: astore 5
    //   367: iload 10
    //   369: ifeq -349 -> 20
    //   372: aload_1
    //   373: aload_0
    //   374: aload_1
    //   375: getfield 386	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   378: invokevirtual 480	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/h;)Ljava/lang/String;
    //   381: putfield 118	com/sleepycat/b/c/i:t	Ljava/lang/String;
    //   384: aload_1
    //   385: areturn
    //   386: iconst_0
    //   387: istore 10
    //   389: goto -53 -> 336
    //   392: iconst_0
    //   393: istore 10
    //   395: goto -31 -> 364
    //   398: astore_1
    //   399: aconst_null
    //   400: astore 6
    //   402: goto -118 -> 284
    //   405: astore_1
    //   406: goto -122 -> 284
    //   409: astore 5
    //   411: aconst_null
    //   412: astore 5
    //   414: aconst_null
    //   415: astore 6
    //   417: aload 7
    //   419: astore 8
    //   421: goto -250 -> 171
    //   424: astore 6
    //   426: aconst_null
    //   427: astore 8
    //   429: aload 5
    //   431: astore 6
    //   433: aload 8
    //   435: astore 5
    //   437: aload 7
    //   439: astore 8
    //   441: goto -270 -> 171
    //   444: astore 7
    //   446: aload 6
    //   448: astore 7
    //   450: aload 5
    //   452: astore 6
    //   454: aload 7
    //   456: astore 5
    //   458: goto -287 -> 171
    //   461: aload 7
    //   463: astore_1
    //   464: goto -234 -> 230
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	467	0	this	p
    //   0	467	1	paramh	h
    //   0	467	2	paramLong	long
    //   0	467	4	paramString	String
    //   18	348	5	localObject1	Object
    //   409	1	5	localan1	com.sleepycat.b.an
    //   412	45	5	localObject2	Object
    //   81	335	6	localObject3	Object
    //   424	1	6	localan2	com.sleepycat.b.an
    //   431	22	6	localObject4	Object
    //   43	395	7	localObject5	Object
    //   444	1	7	localan3	com.sleepycat.b.an
    //   448	14	7	localObject6	Object
    //   132	9	8	localaa	com.sleepycat.b.l.aa
    //   153	1	8	localan4	com.sleepycat.b.an
    //   165	275	8	localObject7	Object
    //   157	11	9	localObject8	Object
    //   114	280	10	k	int
    // Exception table:
    //   from	to	target	type
    //   83	113	153	com/sleepycat/b/an
    //   121	140	153	com/sleepycat/b/an
    //   145	153	153	com/sleepycat/b/an
    //   215	222	153	com/sleepycat/b/an
    //   45	54	277	finally
    //   62	68	398	finally
    //   68	83	398	finally
    //   83	113	405	finally
    //   121	140	405	finally
    //   145	153	405	finally
    //   215	222	405	finally
    //   222	227	405	finally
    //   45	54	409	com/sleepycat/b/an
    //   62	68	424	com/sleepycat/b/an
    //   68	83	424	com/sleepycat/b/an
    //   222	227	444	com/sleepycat/b/an
  }
  
  public final i a(h paramh, long paramLong, Map<h, i> paramMap)
  {
    if (paramMap.containsKey(paramh)) {
      return (i)paramMap.get(paramh);
    }
    i locali = a(paramh, paramLong, null);
    paramMap.put(paramh, locali);
    return locali;
  }
  
  public final i a(com.sleepycat.b.n.q paramq, String paramString, h paramh)
  {
    return a(paramq, paramString, paramh, null);
  }
  
  public final i a(com.sleepycat.b.n.q paramq, String paramString, h paramh, final com.sleepycat.b.g.g paramg)
  {
    r localr = a(paramq, paramString, "remove", new q()
    {
      public final av a(i paramAnonymousi)
      {
        if (paramg != null) {
          return paramg;
        }
        return paramAnonymousi.a(f.c);
      }
    });
    av localav = localr.d;
    try
    {
      paramg = localr.a;
      if (paramh == null) {
        break label94;
      }
      try
      {
        if (paramh.equals(localr.c.a)) {
          break label94;
        }
        throw new com.sleepycat.b.p("ID mismatch: " + paramString);
      }
      finally
      {
        paramString = paramg;
      }
    }
    finally
    {
      for (;;)
      {
        paramString = null;
      }
    }
    if (paramString != null) {
      paramString.a(null);
    }
    throw paramq;
    label94:
    paramg.a(localav);
    paramq.a(localr.b, true);
    paramq = localr.b;
    if (paramg != null) {
      paramg.a(null);
    }
    return paramq;
  }
  
  public final i a(com.sleepycat.b.n.q paramq, String paramString, l paraml)
  {
    paraml.b(false);
    paramq = a(paramq, paramString, paraml, null, null, null);
    paramq.n();
    return paramq;
  }
  
  /* Error */
  public final i a(com.sleepycat.b.n.q paramq, String paramString, l paraml, d paramd, ab paramab, av paramav)
  {
    // Byte code:
    //   0: aload 5
    //   2: ifnull +184 -> 186
    //   5: aload 5
    //   7: getfield 394	com/sleepycat/b/l/ab:a	Lcom/sleepycat/b/c/h;
    //   10: astore 7
    //   12: lconst_0
    //   13: lstore 9
    //   15: lconst_0
    //   16: lstore 11
    //   18: new 108	com/sleepycat/b/c/i
    //   21: dup
    //   22: aload_1
    //   23: aload_2
    //   24: aload 7
    //   26: aload_0
    //   27: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   30: aload_3
    //   31: invokespecial 147	com/sleepycat/b/c/i:<init>	(Lcom/sleepycat/b/n/q;Ljava/lang/String;Lcom/sleepycat/b/c/h;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/l;)V
    //   34: astore 8
    //   36: aload 6
    //   38: astore_3
    //   39: aload 6
    //   41: ifnonnull +12 -> 53
    //   44: aload 8
    //   46: getstatic 506	com/sleepycat/b/g/a/f:b	Lcom/sleepycat/b/g/a/f;
    //   49: invokevirtual 509	com/sleepycat/b/c/i:a	(Lcom/sleepycat/b/g/a/f;)Lcom/sleepycat/b/g/g;
    //   52: astore_3
    //   53: aload_1
    //   54: aload_3
    //   55: invokestatic 194	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g/av;)V
    //   58: new 226	com/sleepycat/b/c/c
    //   61: dup
    //   62: aload_0
    //   63: getfield 123	com/sleepycat/b/c/p:f	Lcom/sleepycat/b/c/i;
    //   66: aload_1
    //   67: invokespecial 234	com/sleepycat/b/c/c:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    //   70: astore 6
    //   72: aload 5
    //   74: ifnull +187 -> 261
    //   77: aload 6
    //   79: aload_2
    //   80: invokestatic 241	com/sleepycat/d/b:a	(Ljava/lang/String;)[B
    //   83: aload 5
    //   85: aload_3
    //   86: invokevirtual 385	com/sleepycat/b/c/c:a	([BLcom/sleepycat/b/l/y;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   89: pop
    //   90: aload 4
    //   92: ifnull +11 -> 103
    //   95: aload_0
    //   96: aload 6
    //   98: aload 4
    //   100: invokespecial 511	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/n/d;)V
    //   103: aload_0
    //   104: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   107: invokestatic 412	com/sleepycat/b/n/a:a	(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    //   110: astore_3
    //   111: new 226	com/sleepycat/b/c/c
    //   114: dup
    //   115: aload_0
    //   116: getfield 111	com/sleepycat/b/c/p:e	Lcom/sleepycat/b/c/i;
    //   119: aload_3
    //   120: invokespecial 234	com/sleepycat/b/c/c:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    //   123: astore_2
    //   124: aload_2
    //   125: aload 7
    //   127: invokevirtual 413	com/sleepycat/b/c/h:toString	()Ljava/lang/String;
    //   130: invokestatic 241	com/sleepycat/d/b:a	(Ljava/lang/String;)[B
    //   133: new 415	com/sleepycat/b/l/aa
    //   136: dup
    //   137: aload 8
    //   139: invokespecial 416	com/sleepycat/b/l/aa:<init>	(Lcom/sleepycat/b/c/i;)V
    //   142: getstatic 378	com/sleepycat/b/g/av:g	Lcom/sleepycat/b/g/av;
    //   145: invokevirtual 385	com/sleepycat/b/c/c:a	([BLcom/sleepycat/b/l/y;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   148: pop
    //   149: aload 8
    //   151: invokevirtual 400	com/sleepycat/b/c/i:u	()V
    //   154: aload_2
    //   155: ifnull +8 -> 163
    //   158: aload_2
    //   159: aconst_null
    //   160: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   163: aload 6
    //   165: ifnull +9 -> 174
    //   168: aload 6
    //   170: aconst_null
    //   171: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   174: aload_3
    //   175: ifnull +8 -> 183
    //   178: aload_3
    //   179: iconst_1
    //   180: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   183: aload 8
    //   185: areturn
    //   186: aload_0
    //   187: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   190: invokevirtual 199	com/sleepycat/b/c/ad:I	()Z
    //   193: ifeq +39 -> 232
    //   196: aload_3
    //   197: getfield 141	com/sleepycat/b/l:j	Z
    //   200: ifeq +32 -> 232
    //   203: new 50	com/sleepycat/b/c/h
    //   206: dup
    //   207: aload_0
    //   208: getfield 132	com/sleepycat/b/c/p:d	Ljava/util/concurrent/atomic/AtomicLong;
    //   211: invokevirtual 437	java/util/concurrent/atomic/AtomicLong:decrementAndGet	()J
    //   214: invokespecial 54	com/sleepycat/b/c/h:<init>	(J)V
    //   217: astore 7
    //   219: aload 7
    //   221: getfield 433	com/sleepycat/b/c/h:a	J
    //   224: lstore 9
    //   226: lconst_0
    //   227: lstore 11
    //   229: goto -211 -> 18
    //   232: new 50	com/sleepycat/b/c/h
    //   235: dup
    //   236: aload_0
    //   237: getfield 130	com/sleepycat/b/c/p:c	Ljava/util/concurrent/atomic/AtomicLong;
    //   240: invokevirtual 440	java/util/concurrent/atomic/AtomicLong:incrementAndGet	()J
    //   243: invokespecial 54	com/sleepycat/b/c/h:<init>	(J)V
    //   246: astore 7
    //   248: aload 7
    //   250: getfield 433	com/sleepycat/b/c/h:a	J
    //   253: lstore 11
    //   255: lconst_0
    //   256: lstore 9
    //   258: goto -240 -> 18
    //   261: new 262	com/sleepycat/b/l/ab
    //   264: dup
    //   265: aload 7
    //   267: invokespecial 389	com/sleepycat/b/l/ab:<init>	(Lcom/sleepycat/b/c/h;)V
    //   270: astore 5
    //   272: goto -195 -> 77
    //   275: astore_1
    //   276: aconst_null
    //   277: astore_3
    //   278: aconst_null
    //   279: astore_2
    //   280: aload 6
    //   282: astore 4
    //   284: aload_2
    //   285: ifnull +8 -> 293
    //   288: aload_2
    //   289: aconst_null
    //   290: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   293: aload 4
    //   295: ifnull +9 -> 304
    //   298: aload 4
    //   300: aconst_null
    //   301: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   304: aload_3
    //   305: ifnull +8 -> 313
    //   308: aload_3
    //   309: iconst_0
    //   310: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   313: lload 9
    //   315: lconst_0
    //   316: lcmp
    //   317: ifeq +17 -> 334
    //   320: aload_0
    //   321: getfield 132	com/sleepycat/b/c/p:d	Ljava/util/concurrent/atomic/AtomicLong;
    //   324: lload 9
    //   326: lconst_1
    //   327: lload 9
    //   329: ladd
    //   330: invokevirtual 515	java/util/concurrent/atomic/AtomicLong:compareAndSet	(JJ)Z
    //   333: pop
    //   334: lload 11
    //   336: lconst_0
    //   337: lcmp
    //   338: ifeq +17 -> 355
    //   341: aload_0
    //   342: getfield 130	com/sleepycat/b/c/p:c	Ljava/util/concurrent/atomic/AtomicLong;
    //   345: lload 11
    //   347: lload 11
    //   349: lconst_1
    //   350: lsub
    //   351: invokevirtual 515	java/util/concurrent/atomic/AtomicLong:compareAndSet	(JJ)Z
    //   354: pop
    //   355: aload_1
    //   356: athrow
    //   357: astore_1
    //   358: aconst_null
    //   359: astore_3
    //   360: aconst_null
    //   361: astore 4
    //   363: aconst_null
    //   364: astore_2
    //   365: goto -81 -> 284
    //   368: astore_1
    //   369: aconst_null
    //   370: astore_2
    //   371: aload 6
    //   373: astore 4
    //   375: goto -91 -> 284
    //   378: astore_1
    //   379: aload 6
    //   381: astore 4
    //   383: goto -99 -> 284
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	386	0	this	p
    //   0	386	1	paramq	com.sleepycat.b.n.q
    //   0	386	2	paramString	String
    //   0	386	3	paraml	l
    //   0	386	4	paramd	d
    //   0	386	5	paramab	ab
    //   0	386	6	paramav	av
    //   10	256	7	localh	h
    //   34	150	8	locali	i
    //   13	315	9	l1	long
    //   16	332	11	l2	long
    // Exception table:
    //   from	to	target	type
    //   77	90	275	finally
    //   95	103	275	finally
    //   103	111	275	finally
    //   261	272	275	finally
    //   18	36	357	finally
    //   44	53	357	finally
    //   53	72	357	finally
    //   111	124	368	finally
    //   124	154	378	finally
  }
  
  public final i a(com.sleepycat.b.n.q paramq, String paramString, d paramd)
  {
    if (paramString.equals(w.a.b())) {
      return this.e;
    }
    if (paramString.equals(w.b.b())) {
      return this.f;
    }
    for (;;)
    {
      try
      {
        localc = new c(this.f, paramq);
        try
        {
          if ((localc.a(new com.sleepycat.b.m(b.a(paramString)), e.a, o.a) & 0x1) == 0) {
            continue;
          }
          k = 1;
          if (k == 0) {
            continue;
          }
          paramq = (ab)localc.b(o.a);
          if ((i) || (paramq != null)) {
            continue;
          }
          throw new AssertionError();
        }
        finally
        {
          paramString = localc;
        }
      }
      finally
      {
        c localc;
        int k;
        h localh;
        paramString = null;
        continue;
        paramq = null;
        continue;
      }
      if (paramString != null)
      {
        paramString.c();
        paramString.a(null);
      }
      throw paramq;
      k = 0;
    }
    localh = paramq.a;
    paramq = localh;
    if (paramd != null)
    {
      a(localc, paramd);
      paramq = localh;
    }
    if (localc != null)
    {
      localc.c();
      localc.a(null);
    }
    if (paramq == null) {
      return null;
    }
    return a(paramq, -1L, paramString);
  }
  
  public final i a(com.sleepycat.b.n.q paramq, String paramString1, String paramString2, ab paramab, com.sleepycat.b.g.g paramg)
  {
    try
    {
      paramq = b(paramq, paramString1, paramString2, paramab, paramg);
      return paramq;
    }
    catch (s paramq)
    {
      throw aa.a(this.h, paramq);
    }
  }
  
  public final v a(com.sleepycat.b.n.q paramq, String paramString, ab paramab, com.sleepycat.b.g.g paramg)
  {
    try
    {
      paramq = b(paramq, paramString, paramab, paramg);
      return paramq;
    }
    catch (s paramq)
    {
      throw aa.a(this.h, paramq);
    }
  }
  
  /* Error */
  final void a(h paramh)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: iload 5
    //   5: ifne +248 -> 253
    //   8: aload_0
    //   9: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   12: invokestatic 412	com/sleepycat/b/n/a:a	(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    //   15: astore_2
    //   16: new 226	com/sleepycat/b/c/c
    //   19: dup
    //   20: aload_0
    //   21: getfield 111	com/sleepycat/b/c/p:e	Lcom/sleepycat/b/c/i;
    //   24: aload_2
    //   25: invokespecial 234	com/sleepycat/b/c/c:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    //   28: astore_3
    //   29: aload_3
    //   30: new 236	com/sleepycat/b/m
    //   33: dup
    //   34: aload_1
    //   35: invokevirtual 413	com/sleepycat/b/c/h:toString	()Ljava/lang/String;
    //   38: invokestatic 241	com/sleepycat/d/b:a	(Ljava/lang/String;)[B
    //   41: invokespecial 244	com/sleepycat/b/m:<init>	([B)V
    //   44: getstatic 249	com/sleepycat/b/c/e:a	Lcom/sleepycat/b/c/e;
    //   47: getstatic 254	com/sleepycat/b/n/o:b	Lcom/sleepycat/b/n/o;
    //   50: invokevirtual 257	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I
    //   53: iconst_1
    //   54: iand
    //   55: ifeq +77 -> 132
    //   58: iconst_1
    //   59: istore 6
    //   61: iload 6
    //   63: ifeq +155 -> 218
    //   66: aload_3
    //   67: getstatic 254	com/sleepycat/b/n/o:b	Lcom/sleepycat/b/n/o;
    //   70: invokevirtual 260	com/sleepycat/b/c/c:b	(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;
    //   73: checkcast 415	com/sleepycat/b/l/aa
    //   76: astore 4
    //   78: getstatic 48	com/sleepycat/b/c/p:i	Z
    //   81: ifne +57 -> 138
    //   84: aload 4
    //   86: ifnonnull +52 -> 138
    //   89: new 267	java/lang/AssertionError
    //   92: dup
    //   93: invokespecial 268	java/lang/AssertionError:<init>	()V
    //   96: athrow
    //   97: astore 4
    //   99: aload_3
    //   100: astore 4
    //   102: aload_2
    //   103: astore_3
    //   104: aload 4
    //   106: astore_2
    //   107: aload_2
    //   108: ifnull +12 -> 120
    //   111: aload_2
    //   112: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   115: aload_2
    //   116: aconst_null
    //   117: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   120: aload_3
    //   121: ifnull -118 -> 3
    //   124: aload_3
    //   125: iconst_0
    //   126: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   129: goto -126 -> 3
    //   132: iconst_0
    //   133: istore 6
    //   135: goto -74 -> 61
    //   138: aload 4
    //   140: getfield 471	com/sleepycat/b/l/aa:a	Lcom/sleepycat/b/c/i;
    //   143: astore 4
    //   145: aload 4
    //   147: getfield 528	com/sleepycat/b/c/i:j	Ljava/util/concurrent/atomic/AtomicInteger;
    //   150: invokevirtual 532	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   153: aload 4
    //   155: getfield 291	com/sleepycat/b/c/i:g	Ljava/util/Set;
    //   158: invokeinterface 292 1 0
    //   163: iconst_1
    //   164: iadd
    //   165: if_icmple +47 -> 212
    //   168: iconst_1
    //   169: istore 6
    //   171: iload 6
    //   173: ifne +111 -> 284
    //   176: aload_3
    //   177: getstatic 378	com/sleepycat/b/g/av:g	Lcom/sleepycat/b/g/av;
    //   180: invokevirtual 381	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   183: pop
    //   184: iconst_1
    //   185: istore 5
    //   187: aload_3
    //   188: ifnull +12 -> 200
    //   191: aload_3
    //   192: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   195: aload_3
    //   196: aconst_null
    //   197: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   200: aload_2
    //   201: ifnull +8 -> 209
    //   204: aload_2
    //   205: iconst_1
    //   206: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   209: goto -206 -> 3
    //   212: iconst_0
    //   213: istore 6
    //   215: goto -44 -> 171
    //   218: iconst_1
    //   219: istore 5
    //   221: goto -34 -> 187
    //   224: astore_1
    //   225: aconst_null
    //   226: astore_3
    //   227: aconst_null
    //   228: astore_2
    //   229: aload_3
    //   230: ifnull +12 -> 242
    //   233: aload_3
    //   234: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   237: aload_3
    //   238: aconst_null
    //   239: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   242: aload_2
    //   243: ifnull +8 -> 251
    //   246: aload_2
    //   247: iconst_0
    //   248: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   251: aload_1
    //   252: athrow
    //   253: return
    //   254: astore_1
    //   255: aconst_null
    //   256: astore_3
    //   257: goto -28 -> 229
    //   260: astore_1
    //   261: goto -32 -> 229
    //   264: astore_2
    //   265: aconst_null
    //   266: astore_2
    //   267: aconst_null
    //   268: astore_3
    //   269: goto -162 -> 107
    //   272: astore_3
    //   273: aconst_null
    //   274: astore 4
    //   276: aload_2
    //   277: astore_3
    //   278: aload 4
    //   280: astore_2
    //   281: goto -174 -> 107
    //   284: goto -97 -> 187
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	287	0	this	p
    //   0	287	1	paramh	h
    //   15	232	2	localObject1	Object
    //   264	1	2	localan1	com.sleepycat.b.an
    //   266	15	2	localObject2	Object
    //   28	241	3	localObject3	Object
    //   272	1	3	localan2	com.sleepycat.b.an
    //   277	1	3	localObject4	Object
    //   76	9	4	localaa	com.sleepycat.b.l.aa
    //   97	1	4	localan3	com.sleepycat.b.an
    //   100	179	4	localObject5	Object
    //   1	219	5	k	int
    //   59	155	6	m	int
    // Exception table:
    //   from	to	target	type
    //   29	58	97	com/sleepycat/b/an
    //   66	84	97	com/sleepycat/b/an
    //   89	97	97	com/sleepycat/b/an
    //   138	168	97	com/sleepycat/b/an
    //   176	184	97	com/sleepycat/b/an
    //   8	16	224	finally
    //   16	29	254	finally
    //   29	58	260	finally
    //   66	84	260	finally
    //   89	97	260	finally
    //   138	168	260	finally
    //   176	184	260	finally
    //   8	16	264	com/sleepycat/b/an
    //   16	29	272	com/sleepycat/b/an
  }
  
  public final void a(i parami)
  {
    if (parami.g()) {
      return;
    }
    b(parami);
  }
  
  /* Error */
  public final void a(i parami, long paramLong, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   4: getfield 539	com/sleepycat/b/c/ad:g	Z
    //   7: ifeq +14 -> 21
    //   10: aload_0
    //   11: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   14: invokevirtual 541	com/sleepycat/b/c/ad:k	()Z
    //   17: ifeq +4 -> 21
    //   20: return
    //   21: aload_1
    //   22: getfield 386	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   25: getstatic 56	com/sleepycat/b/c/p:a	Lcom/sleepycat/b/c/h;
    //   28: invokevirtual 465	com/sleepycat/b/c/h:equals	(Ljava/lang/Object;)Z
    //   31: ifne +16 -> 47
    //   34: aload_1
    //   35: getfield 386	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   38: getstatic 58	com/sleepycat/b/c/p:b	Lcom/sleepycat/b/c/h;
    //   41: invokevirtual 465	com/sleepycat/b/c/h:equals	(Ljava/lang/Object;)Z
    //   44: ifeq +14 -> 58
    //   47: aload_0
    //   48: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   51: ldc2_w 466
    //   54: invokevirtual 543	com/sleepycat/b/c/ad:a	(J)V
    //   57: return
    //   58: new 236	com/sleepycat/b/m
    //   61: dup
    //   62: aload_1
    //   63: getfield 386	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   66: invokevirtual 413	com/sleepycat/b/c/h:toString	()Ljava/lang/String;
    //   69: invokestatic 241	com/sleepycat/d/b:a	(Ljava/lang/String;)[B
    //   72: invokespecial 244	com/sleepycat/b/m:<init>	([B)V
    //   75: astore 8
    //   77: aconst_null
    //   78: astore 5
    //   80: aconst_null
    //   81: astore 7
    //   83: aload_0
    //   84: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   87: invokestatic 412	com/sleepycat/b/n/a:a	(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    //   90: astore 6
    //   92: aload 6
    //   94: astore 5
    //   96: new 226	com/sleepycat/b/c/c
    //   99: dup
    //   100: aload_0
    //   101: getfield 111	com/sleepycat/b/c/p:e	Lcom/sleepycat/b/c/i;
    //   104: aload 5
    //   106: invokespecial 234	com/sleepycat/b/c/c:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    //   109: astore 6
    //   111: aload 6
    //   113: aload 8
    //   115: getstatic 249	com/sleepycat/b/c/e:a	Lcom/sleepycat/b/c/e;
    //   118: getstatic 254	com/sleepycat/b/n/o:b	Lcom/sleepycat/b/n/o;
    //   121: invokevirtual 257	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I
    //   124: iconst_1
    //   125: iand
    //   126: ifeq +83 -> 209
    //   129: iconst_1
    //   130: istore 10
    //   132: iload 10
    //   134: ifne +81 -> 215
    //   137: iload 4
    //   139: ifeq +223 -> 362
    //   142: new 359	com/sleepycat/b/aa
    //   145: dup
    //   146: aload_0
    //   147: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   150: getstatic 549	com/sleepycat/b/c/ac:m	Lcom/sleepycat/b/c/ac;
    //   153: new 168	java/lang/StringBuilder
    //   156: dup
    //   157: ldc_w 551
    //   160: invokespecial 173	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   163: aload_1
    //   164: getfield 386	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   167: invokevirtual 554	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   170: invokevirtual 182	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   173: invokespecial 557	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;)V
    //   176: athrow
    //   177: astore 7
    //   179: aload 6
    //   181: ifnull +14 -> 195
    //   184: aload 6
    //   186: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   189: aload 6
    //   191: aconst_null
    //   192: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   195: aload 5
    //   197: ifnull -120 -> 77
    //   200: aload 5
    //   202: iconst_0
    //   203: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   206: goto -129 -> 77
    //   209: iconst_0
    //   210: istore 10
    //   212: goto -80 -> 132
    //   215: lload_2
    //   216: ldc2_w 466
    //   219: lcmp
    //   220: ifeq +23 -> 243
    //   223: aload 6
    //   225: getfield 320	com/sleepycat/b/c/c:a	Lcom/sleepycat/b/l/a;
    //   228: aload 6
    //   230: getfield 322	com/sleepycat/b/c/c:b	I
    //   233: invokevirtual 328	com/sleepycat/b/l/a:k	(I)J
    //   236: lload_2
    //   237: invokestatic 560	com/sleepycat/b/p/j:b	(JJ)I
    //   240: ifge +185 -> 425
    //   243: aload 6
    //   245: getstatic 254	com/sleepycat/b/n/o:b	Lcom/sleepycat/b/n/o;
    //   248: invokevirtual 260	com/sleepycat/b/c/c:b	(Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/l/y;
    //   251: checkcast 415	com/sleepycat/b/l/aa
    //   254: astore 7
    //   256: getstatic 48	com/sleepycat/b/c/p:i	Z
    //   259: ifne +46 -> 305
    //   262: aload 7
    //   264: ifnonnull +41 -> 305
    //   267: new 267	java/lang/AssertionError
    //   270: dup
    //   271: invokespecial 268	java/lang/AssertionError:<init>	()V
    //   274: athrow
    //   275: astore_1
    //   276: aload 6
    //   278: ifnull +14 -> 292
    //   281: aload 6
    //   283: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   286: aload 6
    //   288: aconst_null
    //   289: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   292: aload 5
    //   294: ifnull +9 -> 303
    //   297: aload 5
    //   299: iconst_0
    //   300: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   303: aload_1
    //   304: athrow
    //   305: new 562	com/sleepycat/b/c/t
    //   308: dup
    //   309: aload 6
    //   311: invokespecial 564	com/sleepycat/b/c/t:<init>	(Lcom/sleepycat/b/c/c;)V
    //   314: astore 9
    //   316: aload 7
    //   318: getfield 471	com/sleepycat/b/l/aa:a	Lcom/sleepycat/b/c/i;
    //   321: getfield 407	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   324: aload 9
    //   326: invokevirtual 566	com/sleepycat/b/l/ah:a	(Lcom/sleepycat/b/l/aq;)Lcom/sleepycat/b/l/j;
    //   329: pop
    //   330: iconst_1
    //   331: istore 4
    //   333: aload 6
    //   335: ifnull +14 -> 349
    //   338: aload 6
    //   340: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   343: aload 6
    //   345: aconst_null
    //   346: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   349: aload 5
    //   351: ifnull -331 -> 20
    //   354: aload 5
    //   356: iload 4
    //   358: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   361: return
    //   362: aload 6
    //   364: ifnull +14 -> 378
    //   367: aload 6
    //   369: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   372: aload 6
    //   374: aconst_null
    //   375: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   378: aload 5
    //   380: ifnull -360 -> 20
    //   383: aload 5
    //   385: iconst_0
    //   386: invokevirtual 419	com/sleepycat/b/n/q:a_	(Z)V
    //   389: return
    //   390: astore_1
    //   391: aconst_null
    //   392: astore 5
    //   394: aconst_null
    //   395: astore 6
    //   397: goto -121 -> 276
    //   400: astore_1
    //   401: aconst_null
    //   402: astore 6
    //   404: goto -128 -> 276
    //   407: astore 6
    //   409: aload 7
    //   411: astore 6
    //   413: goto -234 -> 179
    //   416: astore 6
    //   418: aload 7
    //   420: astore 6
    //   422: goto -243 -> 179
    //   425: iconst_0
    //   426: istore 4
    //   428: goto -95 -> 333
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	431	0	this	p
    //   0	431	1	parami	i
    //   0	431	2	paramLong	long
    //   0	431	4	paramBoolean	boolean
    //   78	315	5	localObject1	Object
    //   90	313	6	localObject2	Object
    //   407	1	6	localan1	com.sleepycat.b.an
    //   411	1	6	localaa1	com.sleepycat.b.l.aa
    //   416	1	6	localan2	com.sleepycat.b.an
    //   420	1	6	localaa2	com.sleepycat.b.l.aa
    //   81	1	7	localObject3	Object
    //   177	1	7	localan3	com.sleepycat.b.an
    //   254	165	7	localaa3	com.sleepycat.b.l.aa
    //   75	39	8	localm	com.sleepycat.b.m
    //   314	11	9	localt	t
    //   130	81	10	k	int
    // Exception table:
    //   from	to	target	type
    //   111	129	177	com/sleepycat/b/an
    //   142	177	177	com/sleepycat/b/an
    //   223	243	177	com/sleepycat/b/an
    //   243	262	177	com/sleepycat/b/an
    //   267	275	177	com/sleepycat/b/an
    //   305	330	177	com/sleepycat/b/an
    //   111	129	275	finally
    //   142	177	275	finally
    //   223	243	275	finally
    //   243	262	275	finally
    //   267	275	275	finally
    //   305	330	275	finally
    //   83	92	390	finally
    //   96	111	400	finally
    //   83	92	407	com/sleepycat/b/an
    //   96	111	416	com/sleepycat/b/an
  }
  
  /* Error */
  public final void a(com.sleepycat.b.n.q paramq, String paramString, final com.sleepycat.b.g.g paramg)
  {
    // Byte code:
    //   0: getstatic 48	com/sleepycat/b/c/p:i	Z
    //   3: ifne +15 -> 18
    //   6: aload_2
    //   7: ifnonnull +11 -> 18
    //   10: new 267	java/lang/AssertionError
    //   13: dup
    //   14: invokespecial 268	java/lang/AssertionError:<init>	()V
    //   17: athrow
    //   18: aload_0
    //   19: aload_1
    //   20: aload_2
    //   21: ldc_w 569
    //   24: new 8	com/sleepycat/b/c/p$1
    //   27: dup
    //   28: aload_0
    //   29: aload_3
    //   30: invokespecial 570	com/sleepycat/b/c/p$1:<init>	(Lcom/sleepycat/b/c/p;Lcom/sleepycat/b/g/g;)V
    //   33: invokespecial 376	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/n/q;Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/b/c/q;)Lcom/sleepycat/b/c/r;
    //   36: astore_3
    //   37: aload_3
    //   38: getfield 224	com/sleepycat/b/c/r:a	Lcom/sleepycat/b/c/c;
    //   41: astore_1
    //   42: aload_3
    //   43: getfield 164	com/sleepycat/b/c/r:b	Lcom/sleepycat/b/c/i;
    //   46: astore_2
    //   47: aload_3
    //   48: getfield 191	com/sleepycat/b/c/r:d	Lcom/sleepycat/b/g/av;
    //   51: astore_3
    //   52: aload_1
    //   53: aconst_null
    //   54: new 236	com/sleepycat/b/m
    //   57: dup
    //   58: iconst_0
    //   59: newarray <illegal type>
    //   61: invokespecial 244	com/sleepycat/b/m:<init>	([B)V
    //   64: aconst_null
    //   65: aconst_null
    //   66: aconst_null
    //   67: aload_3
    //   68: invokevirtual 422	com/sleepycat/b/c/c:a	([BLcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   71: pop
    //   72: aload_0
    //   73: aload_2
    //   74: invokevirtual 221	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   77: aload_1
    //   78: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   81: aload_1
    //   82: aconst_null
    //   83: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   86: return
    //   87: astore_1
    //   88: aload_0
    //   89: getfield 106	com/sleepycat/b/c/p:h	Lcom/sleepycat/b/c/ad;
    //   92: aload_1
    //   93: invokestatic 523	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   96: athrow
    //   97: astore_3
    //   98: aload_0
    //   99: aload_2
    //   100: invokevirtual 221	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   103: aload_1
    //   104: invokevirtual 228	com/sleepycat/b/c/c:c	()V
    //   107: aload_1
    //   108: aconst_null
    //   109: invokevirtual 231	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   112: aload_3
    //   113: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	p
    //   0	114	1	paramq	com.sleepycat.b.n.q
    //   0	114	2	paramString	String
    //   0	114	3	paramg	com.sleepycat.b.g.g
    // Exception table:
    //   from	to	target	type
    //   18	37	87	com/sleepycat/b/c/s
    //   52	72	97	finally
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<dbtree lastLocalDbId = \"");
    paramStringBuilder.append(this.c);
    paramStringBuilder.append("\" lastReplicatedDbId = \"");
    paramStringBuilder.append(this.d);
    paramStringBuilder.append("\">");
    paramStringBuilder.append("<idDb>");
    this.e.a(paramStringBuilder, paramBoolean);
    paramStringBuilder.append("</idDb><nameDb>");
    this.f.a(paramStringBuilder, paramBoolean);
    paramStringBuilder.append("</nameDb>");
    paramStringBuilder.append("</dbtree>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.b(paramByteBuffer, this.c.get());
    ar.b(paramByteBuffer, this.d.get());
    this.e.a(paramByteBuffer);
    this.f.a(paramByteBuffer);
    paramByteBuffer.put(this.g);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt >= 8)
    {
      this.c.set(ar.f(paramByteBuffer));
      this.d.set(ar.f(paramByteBuffer));
    }
    for (;;)
    {
      this.e.a(paramByteBuffer, paramInt);
      this.f.a(paramByteBuffer, paramInt);
      if (paramInt < 6) {
        break;
      }
      this.g = paramByteBuffer.get();
      return;
      this.c.set(ar.c(paramByteBuffer));
      if (paramInt >= 6) {
        this.d.set(ar.c(paramByteBuffer));
      }
    }
    this.g = 0;
  }
  
  public final void a(Map<h, i> paramMap)
  {
    if (paramMap != null)
    {
      paramMap = paramMap.values().iterator();
      while (paramMap.hasNext()) {
        c((i)paramMap.next());
      }
    }
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public final i b(h paramh)
  {
    return a(paramh, -1L, null);
  }
  
  public final void b(i parami)
  {
    a(parami, -1L, true);
  }
  
  public final String c(final h paramh)
  {
    if (paramh.equals(a)) {
      return w.a.b();
    }
    if (paramh.equals(b)) {
      return w.b.b();
    }
    paramh = new a(paramh);
    c.a(this.f, o.f, false, paramh);
    return paramh.a;
  }
  
  public final Map<h, String> c()
  {
    final HashMap localHashMap = new HashMap();
    b localb = new b(localHashMap);
    c.a(this.f, o.f, false, localb);
    return localHashMap;
  }
  
  public final void c(i parami)
  {
    if ((parami != null) && (parami != this.e) && (parami != this.f))
    {
      if ((!i.w) && (parami.j.get() <= 0)) {
        throw new AssertionError();
      }
      parami.j.decrementAndGet();
    }
  }
  
  public final boolean d()
  {
    return (this.g & 0x1) != 0;
  }
  
  public final void e()
  {
    this.g = ((byte)(this.g | 0x1));
  }
  
  final void f()
  {
    this.g = ((byte)(this.g | 0x4));
  }
  
  public final void g()
  {
    this.e.l.a();
    this.f.l.a();
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("                                                                                                                                ".substring(0, 0));
    localStringBuilder.append("<dbTree lastDbId =\"");
    localStringBuilder.append(this.c);
    localStringBuilder.append("\">");
    localStringBuilder.append('\n');
    localStringBuilder.append(this.e.a(1));
    localStringBuilder.append('\n');
    localStringBuilder.append(this.f.a(1));
    localStringBuilder.append('\n');
    localStringBuilder.append("</dbtree>");
    return localStringBuilder.toString();
  }
  
  final class a
    implements g
  {
    String a = null;
    
    public final boolean a(c paramc, com.sleepycat.b.m paramm)
    {
      paramc = (ab)paramc.a(o.f);
      if ((paramc != null) && (paramc.a.equals(paramh)))
      {
        this.a = b.a(paramm.a);
        return false;
      }
      return true;
    }
  }
  
  final class b
    implements g
  {
    public final boolean a(c paramc, com.sleepycat.b.m paramm)
    {
      paramc = ((ab)paramc.a(o.f)).a;
      localHashMap.put(paramc, b.a(paramm.a));
      return true;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */