package com.sleepycat.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ak;
import com.sleepycat.b.c.at;
import com.sleepycat.b.c.au;
import com.sleepycat.b.c.bh;
import com.sleepycat.b.c.c;
import com.sleepycat.b.f.d;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.n.o;
import com.sleepycat.b.n.q;
import com.sleepycat.b.n.r;
import com.sleepycat.b.p.ab;
import com.sleepycat.b.p.ap;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.logging.Logger;

public class e
  implements al
{
  static final m e;
  private static final m q;
  public c a;
  g b;
  com.sleepycat.b.c.i c;
  boolean d = false;
  private boolean g;
  private i h;
  private boolean i;
  private boolean j;
  private Logger k;
  private a l;
  private boolean m;
  private au n;
  private bp o;
  private ap p;
  
  static
  {
    if (!e.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      f = bool;
      q = new m(new byte[0]);
      m localm = new m();
      e = localm;
      localm.a(0, 0, true);
      return;
    }
  }
  
  e(com.sleepycat.b.c.i parami, q paramq, g paramg)
  {
    if (paramg == null) {
      paramg = g.a;
    }
    for (;;)
    {
      if (this.h != null) {
        this.h.a("Can't access Database:");
      }
      a(null, parami, paramq, paramg, true);
      return;
    }
  }
  
  e(e parame, boolean paramBoolean)
  {
    this.i = parame.i;
    this.j = parame.j;
    this.g = parame.g;
    c localc = parame.a;
    if ((!c.j) && (!localc.b(false))) {
      throw new AssertionError(localc.h());
    }
    localc = localc.a(paramBoolean, localc.h, null);
    if (!paramBoolean)
    {
      localc.a = null;
      localc.b = -1;
      localc.g = 1;
    }
    this.a = localc;
    this.c = parame.c;
    this.h = parame.h;
    if (this.h != null) {
      this.h.e();
    }
    this.b = parame.b;
    this.k = this.c.c.v;
    this.l = parame.l;
    this.m = parame.m;
    this.p = parame.p;
  }
  
  e(i parami, bp parambp, g paramg)
  {
    if (paramg == null) {
      paramg = g.a;
    }
    for (;;)
    {
      if (parami != null) {
        parami.a("Can't access Database:");
      }
      parambp = r.a(parami.b, parambp, parami.c.d, paramg.e);
      a(parami, parami.c, parambp, paramg, false);
      return;
    }
  }
  
  private e(i parami, q paramq)
  {
    g localg = g.a;
    if (parami != null) {
      parami.a("Can't access Database:");
    }
    a(parami, parami.c, paramq, localg, true);
  }
  
  e(i parami, q paramq, g paramg)
  {
    if (paramg == null) {
      paramg = g.a;
    }
    for (;;)
    {
      if (parami != null) {
        parami.a("Can't access Database:");
      }
      x localx = parami.b;
      boolean bool2 = paramg.e;
      if ((!parami.c.d) && (paramq != null) && (paramq.i_())) {
        throw new IllegalArgumentException("A Transaction cannot be used because the database was opened non-transactionally");
      }
      q localq = paramq;
      if (paramq != null)
      {
        localq = paramq;
        if (!paramq.i_()) {
          localq = null;
        }
      }
      boolean bool1 = bool2;
      if (localq != null)
      {
        bool1 = bool2;
        if (localq.j_()) {
          bool1 = true;
        }
      }
      paramq = r.a(localx, localq, bool1);
      a(parami, parami.c, paramq, paramg, false);
      return;
    }
  }
  
  /* Error */
  private av a(m paramm1, m paramm2, ao paramao, com.sleepycat.b.c.e parame, Comparator<byte[]> paramComparator)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_3
    //   2: invokespecial 187	com/sleepycat/b/e:b	(Lcom/sleepycat/b/ao;)Z
    //   5: ifne +34 -> 39
    //   8: aload_0
    //   9: aload_3
    //   10: iconst_0
    //   11: invokespecial 190	com/sleepycat/b/e:a	(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;
    //   14: astore_3
    //   15: aload_0
    //   16: aload_1
    //   17: aload_2
    //   18: aload_3
    //   19: aload_3
    //   20: aload 4
    //   22: aload 5
    //   24: aload_0
    //   25: getfield 192	com/sleepycat/b/e:n	Lcom/sleepycat/b/c/au;
    //   28: invokespecial 195	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/f;
    //   31: getfield 200	com/sleepycat/b/f:a	Lcom/sleepycat/b/av;
    //   34: astore_1
    //   35: aload_1
    //   36: areturn
    //   37: astore 6
    //   39: aload_0
    //   40: aload_3
    //   41: iconst_0
    //   42: invokespecial 190	com/sleepycat/b/e:a	(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;
    //   45: astore 6
    //   47: aload_0
    //   48: aload_3
    //   49: iconst_1
    //   50: invokespecial 190	com/sleepycat/b/e:a	(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;
    //   53: astore 7
    //   55: aload_1
    //   56: invokestatic 203	com/sleepycat/b/e:d	(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;
    //   59: astore 8
    //   61: aload_2
    //   62: invokestatic 203	com/sleepycat/b/e:d	(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;
    //   65: astore 9
    //   67: aload 4
    //   69: getfield 206	com/sleepycat/b/c/e:e	Z
    //   72: ifeq +50 -> 122
    //   75: aload_0
    //   76: aload 8
    //   78: aload 9
    //   80: aload 6
    //   82: aload 7
    //   84: aload 4
    //   86: aload 5
    //   88: invokespecial 209	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;)Lcom/sleepycat/b/f;
    //   91: astore 6
    //   93: aload 6
    //   95: getfield 200	com/sleepycat/b/f:a	Lcom/sleepycat/b/av;
    //   98: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   101: if_acmpne +15 -> 116
    //   104: aload 8
    //   106: aload_1
    //   107: invokestatic 215	com/sleepycat/b/e:f	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    //   110: aload 9
    //   112: aload_2
    //   113: invokestatic 215	com/sleepycat/b/e:f	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    //   116: aload 6
    //   118: getfield 200	com/sleepycat/b/f:a	Lcom/sleepycat/b/av;
    //   121: areturn
    //   122: aload_0
    //   123: aload 8
    //   125: aload 9
    //   127: aload 6
    //   129: aload 7
    //   131: aload 4
    //   133: aload 5
    //   135: aconst_null
    //   136: invokespecial 195	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/e;Ljava/util/Comparator;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/f;
    //   139: astore 7
    //   141: aload 7
    //   143: getfield 200	com/sleepycat/b/f:a	Lcom/sleepycat/b/av;
    //   146: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   149: if_acmpeq +13 -> 162
    //   152: aload_0
    //   153: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   156: getstatic 220	com/sleepycat/b/n/o:c	Lcom/sleepycat/b/n/o;
    //   159: invokevirtual 223	com/sleepycat/b/c/c:c	(Lcom/sleepycat/b/n/o;)V
    //   162: aload 7
    //   164: astore 6
    //   166: aload 7
    //   168: getfield 200	com/sleepycat/b/f:a	Lcom/sleepycat/b/av;
    //   171: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   174: if_acmpne -81 -> 93
    //   177: aload 7
    //   179: astore 6
    //   181: aload_0
    //   182: aload 8
    //   184: invokespecial 226	com/sleepycat/b/e:c	(Lcom/sleepycat/b/m;)Z
    //   187: ifne -94 -> 93
    //   190: aload 7
    //   192: getstatic 228	com/sleepycat/b/av:d	Lcom/sleepycat/b/av;
    //   195: putfield 200	com/sleepycat/b/f:a	Lcom/sleepycat/b/av;
    //   198: aload 7
    //   200: astore 6
    //   202: goto -109 -> 93
    //   205: astore_1
    //   206: aload_0
    //   207: getfield 125	com/sleepycat/b/e:c	Lcom/sleepycat/b/c/i;
    //   210: getfield 134	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   213: aload_1
    //   214: invokevirtual 231	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   217: aload_1
    //   218: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	this	e
    //   0	219	1	paramm1	m
    //   0	219	2	paramm2	m
    //   0	219	3	paramao	ao
    //   0	219	4	parame	com.sleepycat.b.c.e
    //   0	219	5	paramComparator	Comparator<byte[]>
    //   37	1	6	localav	com.sleepycat.b.c.av
    //   45	156	6	localObject1	Object
    //   53	146	7	localObject2	Object
    //   59	124	8	localm1	m
    //   65	61	9	localm2	m
    // Exception table:
    //   from	to	target	type
    //   39	93	37	com/sleepycat/b/c/av
    //   93	116	37	com/sleepycat/b/c/av
    //   116	122	37	com/sleepycat/b/c/av
    //   122	162	37	com/sleepycat/b/c/av
    //   166	177	37	com/sleepycat/b/c/av
    //   181	198	37	com/sleepycat/b/c/av
    //   0	35	205	java/lang/Error
    //   39	93	205	java/lang/Error
    //   93	116	205	java/lang/Error
    //   116	122	205	java/lang/Error
    //   122	162	205	java/lang/Error
    //   166	177	205	java/lang/Error
    //   181	198	205	java/lang/Error
  }
  
  private av a(m paramm1, m paramm2, o paramo, ak paramak, au paramau)
  {
    if ((!f) && ((paramm1 == null) || (paramm2 == null))) {
      throw new AssertionError();
    }
    c localc;
    av localav;
    for (;;)
    {
      localc = a(true, null);
      try
      {
        if (paramak == ak.a) {
          localav = localc.a(paramm1, paramm2, paramo, true, false, paramau);
        }
        for (;;)
        {
          if (a(paramak, this.a, localc))
          {
            a(localc, false);
            if ((f) || (d.a() == 0)) {
              break;
            }
            throw new AssertionError();
            if (paramak == ak.b) {
              localav = localc.a(paramm1, paramm2, paramo, false, false, paramau);
            } else {
              throw aa.c("unknown GetMode: " + paramak);
            }
          }
        }
      }
      catch (n paramm1)
      {
        a(localc, false);
        throw paramm1;
      }
    }
    if (localav == av.a) {}
    for (boolean bool = true;; bool = false)
    {
      a(localc, bool);
      if ((f) || (d.a() == 0)) {
        break;
      }
      throw new AssertionError();
    }
    return localav;
  }
  
  /* Error */
  private av a(m paramm1, m paramm2, o paramo, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: getstatic 50	com/sleepycat/b/e:f	Z
    //   6: ifne +19 -> 25
    //   9: aload_1
    //   10: ifnull +7 -> 17
    //   13: aload_2
    //   14: ifnonnull +11 -> 25
    //   17: new 103	java/lang/AssertionError
    //   20: dup
    //   21: invokespecial 237	java/lang/AssertionError:<init>	()V
    //   24: athrow
    //   25: getstatic 228	com/sleepycat/b/av:d	Lcom/sleepycat/b/av;
    //   28: astore 6
    //   30: aload_0
    //   31: iconst_0
    //   32: aconst_null
    //   33: invokespecial 240	com/sleepycat/b/e:a	(ZLcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;
    //   36: astore 7
    //   38: aload 6
    //   40: astore 5
    //   42: aload 7
    //   44: iload 4
    //   46: invokevirtual 281	com/sleepycat/b/c/c:a	(Z)Z
    //   49: ifne +76 -> 125
    //   52: aload 6
    //   54: astore 5
    //   56: getstatic 228	com/sleepycat/b/av:d	Lcom/sleepycat/b/av;
    //   59: astore_2
    //   60: aload_2
    //   61: astore 5
    //   63: aload_2
    //   64: astore_1
    //   65: getstatic 50	com/sleepycat/b/e:f	Z
    //   68: ifne +128 -> 196
    //   71: aload_2
    //   72: astore 5
    //   74: aload_2
    //   75: astore_1
    //   76: invokestatic 259	com/sleepycat/b/f/d:a	()I
    //   79: ifeq +117 -> 196
    //   82: aload_2
    //   83: astore 5
    //   85: new 103	java/lang/AssertionError
    //   88: dup
    //   89: invokestatic 283	com/sleepycat/b/f/d:c	()Ljava/lang/String;
    //   92: invokespecial 109	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   95: athrow
    //   96: astore_1
    //   97: aload_0
    //   98: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   101: invokevirtual 285	com/sleepycat/b/c/c:c	()V
    //   104: aload 5
    //   106: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   109: if_acmpne +115 -> 224
    //   112: iconst_1
    //   113: istore 4
    //   115: aload_0
    //   116: aload 7
    //   118: iload 4
    //   120: invokespecial 254	com/sleepycat/b/e:a	(Lcom/sleepycat/b/c/c;Z)V
    //   123: aload_1
    //   124: athrow
    //   125: aload 6
    //   127: astore 5
    //   129: getstatic 50	com/sleepycat/b/e:f	Z
    //   132: ifne +29 -> 161
    //   135: aload 6
    //   137: astore 5
    //   139: invokestatic 259	com/sleepycat/b/f/d:a	()I
    //   142: iconst_1
    //   143: if_icmpeq +18 -> 161
    //   146: aload 6
    //   148: astore 5
    //   150: new 103	java/lang/AssertionError
    //   153: dup
    //   154: invokestatic 283	com/sleepycat/b/f/d:c	()Ljava/lang/String;
    //   157: invokespecial 109	java/lang/AssertionError:<init>	(Ljava/lang/Object;)V
    //   160: athrow
    //   161: aload 6
    //   163: astore 5
    //   165: aload 7
    //   167: aload_1
    //   168: aload_2
    //   169: aload_3
    //   170: invokevirtual 288	com/sleepycat/b/c/c:b	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;
    //   173: astore 6
    //   175: aload 6
    //   177: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   180: if_acmpeq +64 -> 244
    //   183: aload 7
    //   185: aload_1
    //   186: aload_2
    //   187: aload_3
    //   188: iload 4
    //   190: iconst_0
    //   191: aconst_null
    //   192: invokevirtual 248	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    //   195: astore_1
    //   196: aload_0
    //   197: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   200: invokevirtual 285	com/sleepycat/b/c/c:c	()V
    //   203: aload_1
    //   204: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   207: if_acmpne +23 -> 230
    //   210: iload 8
    //   212: istore 4
    //   214: aload_0
    //   215: aload 7
    //   217: iload 4
    //   219: invokespecial 254	com/sleepycat/b/e:a	(Lcom/sleepycat/b/c/c;Z)V
    //   222: aload_1
    //   223: areturn
    //   224: iconst_0
    //   225: istore 4
    //   227: goto -112 -> 115
    //   230: iconst_0
    //   231: istore 4
    //   233: goto -19 -> 214
    //   236: astore_1
    //   237: aload 6
    //   239: astore 5
    //   241: goto -144 -> 97
    //   244: aload 6
    //   246: astore_1
    //   247: goto -51 -> 196
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	250	0	this	e
    //   0	250	1	paramm1	m
    //   0	250	2	paramm2	m
    //   0	250	3	paramo	o
    //   0	250	4	paramBoolean	boolean
    //   40	200	5	localObject	Object
    //   28	217	6	localav	av
    //   36	180	7	localc	c
    //   1	210	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   42	52	96	finally
    //   56	60	96	finally
    //   65	71	96	finally
    //   76	82	96	finally
    //   85	96	96	finally
    //   129	135	96	finally
    //   139	146	96	finally
    //   150	161	96	finally
    //   165	175	96	finally
    //   175	196	236	finally
  }
  
  private c a(boolean paramBoolean, c paramc)
  {
    if (this.a.d())
    {
      this.a.a(this.l);
      this.a.a();
      paramc = this.a;
    }
    c localc1;
    c localc2;
    do
    {
      do
      {
        return paramc;
        if (this.d)
        {
          this.a.a(this.l);
          if (paramBoolean)
          {
            paramc = this.a;
            if ((paramc.h == a.e) && (paramc.a != null)) {
              paramc.f();
            }
            this.a.a();
          }
          for (;;)
          {
            return this.a;
            this.a.e();
          }
        }
        localc1 = this.a.a(paramBoolean, this.l, paramc);
        localc2 = this.a;
        paramc = localc1;
      } while (localc1.f);
      paramc = localc1;
    } while (localc1.e == localc2.e);
    localc1.e.s = localc2.e;
    return localc1;
  }
  
  private f a(c paramc, m paramm1, m paramm2, o paramo1, o paramo2, com.sleepycat.b.c.e parame, Comparator<byte[]> paramComparator, au paramau)
  {
    if ((!f) && ((paramm1 == null) || (paramm2 == null))) {
      throw new AssertionError();
    }
    com.sleepycat.b.c.e locale;
    switch (3.a[parame.ordinal()])
    {
    default: 
      locale = parame;
    }
    while ((!f) && (paramau != null) && (locale != com.sleepycat.b.c.e.c))
    {
      throw new AssertionError();
      locale = com.sleepycat.b.c.e.a;
      continue;
      locale = com.sleepycat.b.c.e.c;
    }
    av localav = av.d;
    Object localObject = localav;
    try
    {
      i2 = paramc.a(paramm1, locale, paramo1, paramComparator);
      paramComparator = localav;
      if ((i2 & 0x1) == 0) {
        break label435;
      }
      if ((i2 & 0x2) == 0) {
        break label273;
      }
      i1 = 1;
    }
    finally
    {
      for (;;)
      {
        int i2;
        int i1;
        continue;
        boolean bool = false;
        paramm1 = paramComparator;
        continue;
        if ((i2 & 0x4) != 0) {
          i2 = 1;
        }
      }
    }
    localObject = localav;
    if ((locale == com.sleepycat.b.c.e.c) && (i1 == 0))
    {
      bool = true;
      label165:
      localObject = localav;
      if (parame != com.sleepycat.b.c.e.a) {
        break label291;
      }
      paramComparator = null;
      label180:
      parame = localav;
      if (!bool)
      {
        localObject = localav;
        parame = paramc.b(paramComparator, paramm2, paramo1);
        localObject = parame;
        paramo1 = av.c;
        paramComparator = parame;
        if (parame != paramo1) {
          break label435;
        }
      }
      if (i2 == 0) {
        break label297;
      }
    }
    for (;;)
    {
      try
      {
        paramm1 = av.d;
        bool = false;
        this.a.c();
        if ((paramm1 != av.a) && (paramc != this.a)) {
          paramc.c();
        }
        return new f(paramm1, bool);
      }
      finally
      {
        label273:
        label291:
        label297:
        localObject = parame;
      }
      i1 = 0;
      break label444;
      i2 = 0;
      break;
      bool = false;
      break label165;
      paramComparator = paramm1;
      break label180;
      if (locale == com.sleepycat.b.c.e.a)
      {
        if ((!f) && (parame != av.c))
        {
          throw new AssertionError();
          this.a.c();
          if ((localObject != av.a) && (paramc != this.a)) {
            paramc.c();
          }
          throw paramm1;
        }
        paramm1 = av.d;
        bool = false;
      }
      else
      {
        if ((!f) && (locale != com.sleepycat.b.c.e.c)) {
          throw new AssertionError();
        }
        paramm1 = paramc.a(paramm1, paramm2, paramo2, true, bool, paramau);
        localObject = paramm1;
        paramm2 = av.a;
        if (paramm1 == paramm2) {
          bool = true;
        } else {
          bool = false;
        }
      }
    }
  }
  
  private f a(m paramm1, m paramm2, o paramo1, o paramo2, com.sleepycat.b.c.e parame, Comparator<byte[]> paramComparator)
  {
    m localm = new m(paramm2.a, paramm2.d, paramm2.e);
    c localc = a(false, null);
    for (;;)
    {
      try
      {
        paramm1 = a(localc, paramm1, paramm2, paramo1, paramo2, com.sleepycat.b.c.e.c, paramComparator, null);
      }
      finally {}
      try
      {
        if ((paramm1.b) && (paramm1.a == av.a)) {
          paramm1.a = av.d;
        }
        if (!a(parame, localm, paramm2)) {
          paramm1.a = av.d;
        }
        if ((paramm1 == null) || (paramm1.a != av.a)) {
          break label179;
        }
        bool = true;
        a(localc, bool);
        if ((paramm1.a != av.a) && (!paramm1.b)) {
          this.a.c(o.c);
        }
        return paramm1;
      }
      finally
      {
        for (;;) {}
      }
      boolean bool = false;
      a(localc, bool);
      throw paramm2;
      if ((paramm1 != null) && (paramm1.a == av.a))
      {
        bool = true;
        continue;
        label179:
        bool = false;
      }
    }
  }
  
  private f a(m paramm1, m paramm2, o paramo1, o paramo2, com.sleepycat.b.c.e parame, Comparator<byte[]> paramComparator, au paramau)
  {
    localav = av.d;
    m localm = new m(paramm2.a, paramm2.d, paramm2.e);
    localc = a(false, null);
    try
    {
      paramm1 = a(localc, paramm1, paramm2, paramo1, paramo2, parame, paramComparator, paramau);
      if (!a(parame, localm, paramm2)) {
        paramm1.a = av.d;
      }
      paramm2 = paramm1.a;
      if (paramm2 != av.a) {
        break label123;
      }
      bool = true;
    }
    finally
    {
      for (;;)
      {
        if (localav == av.a) {}
        for (boolean bool = true;; bool = false)
        {
          a(localc, bool);
          throw paramm1;
        }
        bool = false;
      }
    }
    a(localc, bool);
    return paramm1;
  }
  
  private o a(ao paramao, boolean paramBoolean)
  {
    if (a(paramao)) {
      return o.f;
    }
    if ((paramao == null) || (paramao == ao.a))
    {
      if (paramBoolean) {
        return o.c;
      }
      return o.a;
    }
    if (paramao == ao.d)
    {
      if (paramBoolean) {
        return o.d;
      }
      return o.b;
    }
    if (paramao == ao.c) {
      throw new IllegalArgumentException(paramao.toString() + " not allowed with Cursor methods, use CursorConfig.setReadCommitted instead.");
    }
    if (!f) {
      throw new AssertionError(paramao);
    }
    return o.f;
  }
  
  private ab<av, Boolean> a(m paramm1, m paramm2, com.sleepycat.b.l.y paramy, at paramat, m paramm3, m paramm4, c paramc, com.sleepycat.b.g.av paramav)
  {
    av localav = av.d;
    paramc = a(false, paramc);
    try
    {
      if ((c.j) || (paramm1 != null)) {
        break label54;
      }
      throw new AssertionError();
    }
    finally
    {
      if (localav != av.a) {
        break label251;
      }
    }
    boolean bool = true;
    a(paramc, bool);
    throw paramm1;
    label54:
    if ((!c.j) && (paramm2 == null)) {
      throw new AssertionError();
    }
    if ((!c.j) && (paramy == null)) {
      throw new AssertionError();
    }
    if ((!c.j) && (paramat == null)) {
      throw new AssertionError();
    }
    if ((!c.j) && (!paramc.b(false))) {
      throw new AssertionError(paramc.h());
    }
    if ((!c.j) && (d.a() != 0)) {
      throw new AssertionError();
    }
    switch (com.sleepycat.b.c.c.1.b[paramat.ordinal()])
    {
    case 2: 
      label188:
      throw aa.c(paramat.toString());
    }
    for (;;)
    {
      label197:
      paramm1 = paramc.a(paramy, com.sleepycat.b.l.w.a(paramm1), bool, paramm2, paramm3, paramm4, paramav);
      paramm2 = (av)paramm1.a;
      if (paramm2 == av.a) {}
      for (bool = true;; bool = false)
      {
        a(paramc, bool);
        return paramm1;
        bool = true;
        break label197;
        label251:
        bool = false;
        break;
      }
      break label188;
      bool = false;
    }
  }
  
  /* Error */
  private ab<av, Boolean> a(m paramm1, m paramm2, com.sleepycat.b.l.y paramy, at paramat, m paramm3, m paramm4, com.sleepycat.b.g.av paramav)
  {
    // Byte code:
    //   0: getstatic 50	com/sleepycat/b/e:f	Z
    //   3: ifne +15 -> 18
    //   6: aload_1
    //   7: ifnonnull +11 -> 18
    //   10: new 103	java/lang/AssertionError
    //   13: dup
    //   14: invokespecial 237	java/lang/AssertionError:<init>	()V
    //   17: athrow
    //   18: getstatic 50	com/sleepycat/b/e:f	Z
    //   21: ifne +15 -> 36
    //   24: aload_3
    //   25: ifnonnull +11 -> 36
    //   28: new 103	java/lang/AssertionError
    //   31: dup
    //   32: invokespecial 237	java/lang/AssertionError:<init>	()V
    //   35: athrow
    //   36: getstatic 50	com/sleepycat/b/e:f	Z
    //   39: ifne +16 -> 55
    //   42: aload 4
    //   44: ifnonnull +11 -> 55
    //   47: new 103	java/lang/AssertionError
    //   50: dup
    //   51: invokespecial 237	java/lang/AssertionError:<init>	()V
    //   54: athrow
    //   55: getstatic 50	com/sleepycat/b/e:f	Z
    //   58: ifne +19 -> 77
    //   61: aload 4
    //   63: getstatic 403	com/sleepycat/b/c/at:a	Lcom/sleepycat/b/c/at;
    //   66: if_acmpne +11 -> 77
    //   69: new 103	java/lang/AssertionError
    //   72: dup
    //   73: invokespecial 237	java/lang/AssertionError:<init>	()V
    //   76: athrow
    //   77: aconst_null
    //   78: astore 9
    //   80: aconst_null
    //   81: astore 10
    //   83: aconst_null
    //   84: astore 8
    //   86: aload_0
    //   87: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   90: getfield 306	com/sleepycat/b/c/c:e	Lcom/sleepycat/b/n/q;
    //   93: astore 11
    //   95: aload_0
    //   96: getfield 125	com/sleepycat/b/e:c	Lcom/sleepycat/b/c/i;
    //   99: getfield 134	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   102: getfield 407	com/sleepycat/b/c/ad:y	Lcom/sleepycat/b/n/aj;
    //   105: astore 12
    //   107: aload 11
    //   109: ifnull +269 -> 378
    //   112: aload 11
    //   114: invokevirtual 409	com/sleepycat/b/n/q:c	()Z
    //   117: ifeq +261 -> 378
    //   120: iconst_1
    //   121: istore 13
    //   123: aload 12
    //   125: getfield 414	com/sleepycat/b/n/aj:i	Ljava/util/concurrent/atomic/AtomicInteger;
    //   128: invokevirtual 419	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   131: iload 13
    //   133: isub
    //   134: ifle +250 -> 384
    //   137: iconst_1
    //   138: istore 13
    //   140: iload 13
    //   142: ifeq +327 -> 469
    //   145: aload_0
    //   146: getfield 125	com/sleepycat/b/e:c	Lcom/sleepycat/b/c/i;
    //   149: getfield 134	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   152: aload 11
    //   154: invokestatic 424	com/sleepycat/b/n/b:a	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/n/b;
    //   157: astore 8
    //   159: new 97	com/sleepycat/b/c/c
    //   162: dup
    //   163: aload_0
    //   164: getfield 125	com/sleepycat/b/e:c	Lcom/sleepycat/b/c/i;
    //   167: aload 8
    //   169: invokespecial 427	com/sleepycat/b/c/c:<init>	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/q;)V
    //   172: astore 9
    //   174: aload 9
    //   176: iconst_1
    //   177: putfield 428	com/sleepycat/b/c/c:i	Z
    //   180: new 52	com/sleepycat/b/m
    //   183: dup
    //   184: aload_1
    //   185: getfield 334	com/sleepycat/b/m:a	[B
    //   188: aload_1
    //   189: getfield 336	com/sleepycat/b/m:d	I
    //   192: aload_1
    //   193: getfield 338	com/sleepycat/b/m:e	I
    //   196: invokespecial 341	com/sleepycat/b/m:<init>	([BII)V
    //   199: astore 10
    //   201: aload 10
    //   203: iconst_0
    //   204: iconst_0
    //   205: iconst_1
    //   206: invokevirtual 65	com/sleepycat/b/m:a	(IIZ)V
    //   209: iconst_0
    //   210: istore 14
    //   212: aload 9
    //   214: aload 10
    //   216: getstatic 320	com/sleepycat/b/c/e:c	Lcom/sleepycat/b/c/e;
    //   219: getstatic 430	com/sleepycat/b/n/o:e	Lcom/sleepycat/b/n/o;
    //   222: invokevirtual 433	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/e;Lcom/sleepycat/b/n/o;)I
    //   225: istore 13
    //   227: iload 13
    //   229: iconst_1
    //   230: iand
    //   231: ifeq +232 -> 463
    //   234: iload 13
    //   236: iconst_4
    //   237: iand
    //   238: ifne +225 -> 463
    //   241: new 52	com/sleepycat/b/m
    //   244: dup
    //   245: invokespecial 60	com/sleepycat/b/m:<init>	()V
    //   248: astore 11
    //   250: aload 11
    //   252: iconst_0
    //   253: iconst_0
    //   254: iconst_1
    //   255: invokevirtual 65	com/sleepycat/b/m:a	(IIZ)V
    //   258: aload 9
    //   260: aload 10
    //   262: aload 11
    //   264: getstatic 430	com/sleepycat/b/n/o:e	Lcom/sleepycat/b/n/o;
    //   267: iconst_1
    //   268: iconst_1
    //   269: aconst_null
    //   270: invokevirtual 248	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    //   273: astore 10
    //   275: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   278: astore 11
    //   280: aload 10
    //   282: aload 11
    //   284: if_acmpne +173 -> 457
    //   287: iconst_1
    //   288: istore 13
    //   290: iconst_0
    //   291: istore 15
    //   293: iload 13
    //   295: istore 14
    //   297: iload 15
    //   299: istore 13
    //   301: iload 13
    //   303: ifeq +8 -> 311
    //   306: aload 9
    //   308: invokevirtual 285	com/sleepycat/b/c/c:c	()V
    //   311: iload 14
    //   313: ifne +11 -> 324
    //   316: aload 9
    //   318: getstatic 430	com/sleepycat/b/n/o:e	Lcom/sleepycat/b/n/o;
    //   321: invokevirtual 223	com/sleepycat/b/c/c:c	(Lcom/sleepycat/b/n/o;)V
    //   324: aload 9
    //   326: astore 10
    //   328: aload 8
    //   330: astore 9
    //   332: aload 10
    //   334: astore 8
    //   336: aload_0
    //   337: aload_1
    //   338: aload_2
    //   339: aload_3
    //   340: aload 4
    //   342: aload 5
    //   344: aload 6
    //   346: aload 8
    //   348: aload 7
    //   350: invokespecial 435	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/at;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/p/ab;
    //   353: astore_1
    //   354: aload 8
    //   356: ifnull +9 -> 365
    //   359: aload 8
    //   361: aconst_null
    //   362: invokevirtual 438	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   365: aload 9
    //   367: ifnull +9 -> 376
    //   370: aload 9
    //   372: iconst_1
    //   373: invokevirtual 442	com/sleepycat/b/n/q:a_	(Z)V
    //   376: aload_1
    //   377: areturn
    //   378: iconst_0
    //   379: istore 13
    //   381: goto -258 -> 123
    //   384: iconst_0
    //   385: istore 13
    //   387: goto -247 -> 140
    //   390: astore_1
    //   391: aload 9
    //   393: invokevirtual 285	com/sleepycat/b/c/c:c	()V
    //   396: aload_1
    //   397: athrow
    //   398: astore_1
    //   399: aload 8
    //   401: astore_2
    //   402: aload 9
    //   404: astore 8
    //   406: aload 8
    //   408: ifnull +9 -> 417
    //   411: aload 8
    //   413: aconst_null
    //   414: invokevirtual 438	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   417: aload_2
    //   418: ifnull +8 -> 426
    //   421: aload_2
    //   422: iconst_1
    //   423: invokevirtual 442	com/sleepycat/b/n/q:a_	(Z)V
    //   426: aload_1
    //   427: athrow
    //   428: astore_1
    //   429: aload 9
    //   431: astore_2
    //   432: aload 10
    //   434: astore 8
    //   436: goto -30 -> 406
    //   439: astore_1
    //   440: aload 8
    //   442: astore_2
    //   443: aload 10
    //   445: astore 8
    //   447: goto -41 -> 406
    //   450: astore_1
    //   451: aload 9
    //   453: astore_2
    //   454: goto -48 -> 406
    //   457: iconst_0
    //   458: istore 13
    //   460: goto -170 -> 290
    //   463: iconst_1
    //   464: istore 13
    //   466: goto -165 -> 301
    //   469: aconst_null
    //   470: astore 9
    //   472: goto -136 -> 336
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	475	0	this	e
    //   0	475	1	paramm1	m
    //   0	475	2	paramm2	m
    //   0	475	3	paramy	com.sleepycat.b.l.y
    //   0	475	4	paramat	at
    //   0	475	5	paramm3	m
    //   0	475	6	paramm4	m
    //   0	475	7	paramav	com.sleepycat.b.g.av
    //   84	362	8	localObject1	Object
    //   78	393	9	localObject2	Object
    //   81	363	10	localObject3	Object
    //   93	190	11	localObject4	Object
    //   105	19	12	localaj	com.sleepycat.b.n.aj
    //   121	344	13	i1	int
    //   210	102	14	i2	int
    //   291	7	15	i3	int
    // Exception table:
    //   from	to	target	type
    //   212	227	390	finally
    //   241	280	390	finally
    //   174	209	398	finally
    //   306	311	398	finally
    //   316	324	398	finally
    //   391	398	398	finally
    //   86	107	428	finally
    //   112	120	428	finally
    //   123	137	428	finally
    //   145	159	428	finally
    //   159	174	439	finally
    //   336	354	450	finally
  }
  
  private void a(c paramc, boolean paramBoolean)
  {
    paramc.e.s = null;
    if (paramc == this.a) {
      if (paramBoolean) {
        this.a.a();
      }
    }
    for (;;)
    {
      return;
      this.a.e();
      return;
      if (paramBoolean)
      {
        this.a.a(paramc);
        this.a = paramc;
      }
      while (!this.m)
      {
        this.l = this.c.r();
        return;
        paramc.a(this.a);
      }
    }
  }
  
  private void a(e parame, final m paramm)
  {
    parame.n = new au()
    {
      public final boolean a(byte[] paramAnonymousArrayOfByte)
      {
        return com.sleepycat.b.c.y.a(paramAnonymousArrayOfByte, paramm.a, paramm.d, paramm.e, e.a(e.this).n) == 0;
      }
    };
  }
  
  private void a(e parame, final byte[] paramArrayOfByte)
  {
    parame.n = new au()
    {
      public final boolean a(byte[] paramAnonymousArrayOfByte)
      {
        return com.sleepycat.b.c.y.a(paramAnonymousArrayOfByte, paramArrayOfByte, e.a(e.this).n) == 0;
      }
    };
  }
  
  private void a(i parami, com.sleepycat.b.c.i parami1, q paramq, g paramg, boolean paramBoolean)
  {
    boolean bool = true;
    if ((!f) && (paramq == null)) {
      throw new AssertionError();
    }
    for (;;)
    {
      try
      {
        paramq.b(parami1);
        this.a = new c(parami1, paramq, paramBoolean);
        this.o = paramq.p_();
        this.l = parami1.r();
        this.a.i = true;
        if ((paramg.d) || (paramq.s()))
        {
          paramBoolean = true;
          this.i = paramBoolean;
          this.j = this.a.e.c();
          if (parami1.d)
          {
            paramBoolean = bool;
            if (!paramq.i_()) {}
          }
          else
          {
            if ((parami == null) || (parami.e)) {
              break label206;
            }
            paramBoolean = bool;
          }
          this.g = paramBoolean;
          this.c = parami1;
          if (parami != null)
          {
            this.h = parami;
            parami.e();
            this.p = parami.b.a.ad;
          }
          this.b = paramg;
          this.k = parami1.c.v;
          return;
        }
      }
      catch (RuntimeException parami)
      {
        paramq.a_(true);
        throw parami;
      }
      paramBoolean = false;
      continue;
      label206:
      paramBoolean = false;
    }
  }
  
  private void a(StringBuilder paramStringBuilder)
  {
    paramStringBuilder.append(" locker=").append(this.a.e.k);
    if (this.a.a != null) {
      paramStringBuilder.append(" bin=").append(this.a.a.c);
    }
    paramStringBuilder.append(" idx=").append(this.a.b);
  }
  
  private boolean a(ao paramao)
  {
    return (paramao == ao.b) || ((this.i) && ((paramao == null) || (paramao == ao.a)));
  }
  
  private static boolean a(ak paramak, c paramc1, c paramc2)
  {
    boolean bool = paramak.g;
    if (paramc1.a != paramc2.a)
    {
      paramak = paramc1.b();
      if (!bool) {}
    }
    for (;;)
    {
      try
      {
        if (paramak.f - 1 > paramc1.b)
        {
          int i1 = paramc1.b + 1;
          if (i1 < paramak.f)
          {
            if (!paramak.o(i1))
            {
              paramc2 = paramak.g(i1);
              if (paramc2 != null)
              {
                bool = ((com.sleepycat.b.l.y)paramc2).i();
                if (!bool)
                {
                  bool = true;
                  return bool;
                }
              }
            }
            i1 += 1;
            continue;
          }
          bool = false;
          continue;
          if (paramc1.b > 0)
          {
            i1 = 0;
            if (i1 < paramc1.b)
            {
              if (!paramak.o(i1))
              {
                paramc2 = paramak.g(i1);
                if (paramc2 != null)
                {
                  bool = ((com.sleepycat.b.l.y)paramc2).i();
                  if (!bool)
                  {
                    bool = true;
                    continue;
                  }
                }
              }
              i1 += 1;
              continue;
              return false;
            }
          }
        }
      }
      finally
      {
        paramc1.c();
      }
      bool = false;
    }
  }
  
  private static boolean a(com.sleepycat.b.c.e parame, m paramm1, m paramm2)
  {
    if (!parame.f) {
      return true;
    }
    int i1 = paramm1.e;
    int i2 = paramm2.e;
    if (i1 != i2) {
      return false;
    }
    return com.sleepycat.b.l.w.a(paramm1.a, paramm1.d, i1, paramm2.a, paramm2.d, i2) == 0;
  }
  
  /* Error */
  private av b(m paramm1, m paramm2, ao paramao, ak paramak)
  {
    // Byte code:
    //   0: getstatic 524	com/sleepycat/b/e$3:b	[I
    //   3: aload 4
    //   5: invokevirtual 525	com/sleepycat/b/c/ak:ordinal	()I
    //   8: iaload
    //   9: tableswitch	default:+31->40, 1:+66->75, 2:+66->75, 3:+70->79, 4:+78->87
    //   40: aload 4
    //   42: astore 5
    //   44: aload_0
    //   45: aload_3
    //   46: invokespecial 187	com/sleepycat/b/e:b	(Lcom/sleepycat/b/ao;)Z
    //   49: ifne +48 -> 97
    //   52: aload_0
    //   53: aload_1
    //   54: aload_2
    //   55: aload_0
    //   56: aload_3
    //   57: iconst_0
    //   58: invokespecial 190	com/sleepycat/b/e:a	(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;
    //   61: aload 5
    //   63: aload_0
    //   64: getfield 192	com/sleepycat/b/e:n	Lcom/sleepycat/b/c/au;
    //   67: invokespecial 527	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/ak;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    //   70: astore 6
    //   72: aload 6
    //   74: areturn
    //   75: getstatic 228	com/sleepycat/b/av:d	Lcom/sleepycat/b/av;
    //   78: areturn
    //   79: getstatic 245	com/sleepycat/b/c/ak:a	Lcom/sleepycat/b/c/ak;
    //   82: astore 5
    //   84: goto -40 -> 44
    //   87: getstatic 261	com/sleepycat/b/c/ak:b	Lcom/sleepycat/b/c/ak;
    //   90: astore 5
    //   92: goto -48 -> 44
    //   95: astore 4
    //   97: aload 5
    //   99: getfield 501	com/sleepycat/b/c/ak:g	Z
    //   102: ifne +300 -> 402
    //   105: new 52	com/sleepycat/b/m
    //   108: dup
    //   109: invokespecial 60	com/sleepycat/b/m:<init>	()V
    //   112: astore 10
    //   114: new 52	com/sleepycat/b/m
    //   117: dup
    //   118: invokespecial 60	com/sleepycat/b/m:<init>	()V
    //   121: astore 11
    //   123: aload 10
    //   125: iconst_0
    //   126: iconst_0
    //   127: iconst_1
    //   128: invokevirtual 65	com/sleepycat/b/m:a	(IIZ)V
    //   131: aload 11
    //   133: iconst_0
    //   134: iconst_0
    //   135: iconst_1
    //   136: invokevirtual 65	com/sleepycat/b/m:a	(IIZ)V
    //   139: aload_0
    //   140: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   143: iconst_1
    //   144: aload_0
    //   145: getfield 143	com/sleepycat/b/e:l	Lcom/sleepycat/b/a;
    //   148: aconst_null
    //   149: invokevirtual 114	com/sleepycat/b/c/c:a	(ZLcom/sleepycat/b/a;Lcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;
    //   152: astore 4
    //   154: aload 4
    //   156: astore 6
    //   158: aload 4
    //   160: aload 10
    //   162: aload 11
    //   164: getstatic 220	com/sleepycat/b/n/o:c	Lcom/sleepycat/b/n/o;
    //   167: invokevirtual 529	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/av;
    //   170: astore 9
    //   172: aload 4
    //   174: astore 6
    //   176: aload 9
    //   178: astore 7
    //   180: aload 4
    //   182: astore 8
    //   184: aload 9
    //   186: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   189: if_acmpeq +186 -> 375
    //   192: aload 4
    //   194: astore 6
    //   196: getstatic 50	com/sleepycat/b/e:f	Z
    //   199: ifne +53 -> 252
    //   202: aload 4
    //   204: astore 6
    //   206: invokestatic 259	com/sleepycat/b/f/d:a	()I
    //   209: ifeq +43 -> 252
    //   212: aload 4
    //   214: astore 6
    //   216: new 103	java/lang/AssertionError
    //   219: dup
    //   220: invokespecial 237	java/lang/AssertionError:<init>	()V
    //   223: athrow
    //   224: astore 4
    //   226: aload 6
    //   228: aload_0
    //   229: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   232: invokevirtual 438	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   235: aload 4
    //   237: athrow
    //   238: astore_1
    //   239: aload_0
    //   240: getfield 125	com/sleepycat/b/e:c	Lcom/sleepycat/b/c/i;
    //   243: getfield 134	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   246: aload_1
    //   247: invokevirtual 231	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   250: aload_1
    //   251: athrow
    //   252: aload 4
    //   254: astore 6
    //   256: aload 4
    //   258: aload 10
    //   260: aload 11
    //   262: getstatic 220	com/sleepycat/b/n/o:c	Lcom/sleepycat/b/n/o;
    //   265: iconst_1
    //   266: iconst_0
    //   267: aconst_null
    //   268: invokevirtual 248	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;ZZLcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    //   271: astore 9
    //   273: aload 4
    //   275: astore 6
    //   277: getstatic 245	com/sleepycat/b/c/ak:a	Lcom/sleepycat/b/c/ak;
    //   280: aload_0
    //   281: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   284: aload 4
    //   286: invokestatic 251	com/sleepycat/b/e:a	(Lcom/sleepycat/b/c/ak;Lcom/sleepycat/b/c/c;Lcom/sleepycat/b/c/c;)Z
    //   289: ifeq +38 -> 327
    //   292: aload 4
    //   294: astore 6
    //   296: aload 4
    //   298: aload_0
    //   299: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   302: invokevirtual 438	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   305: aload 4
    //   307: astore 6
    //   309: aload_0
    //   310: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   313: iconst_1
    //   314: aload_0
    //   315: getfield 143	com/sleepycat/b/e:l	Lcom/sleepycat/b/a;
    //   318: aconst_null
    //   319: invokevirtual 114	com/sleepycat/b/c/c:a	(ZLcom/sleepycat/b/a;Lcom/sleepycat/b/c/c;)Lcom/sleepycat/b/c/c;
    //   322: astore 4
    //   324: goto -132 -> 192
    //   327: aload 4
    //   329: astore 6
    //   331: aload 9
    //   333: astore 7
    //   335: aload 4
    //   337: astore 8
    //   339: getstatic 50	com/sleepycat/b/e:f	Z
    //   342: ifne +33 -> 375
    //   345: aload 4
    //   347: astore 6
    //   349: aload 9
    //   351: astore 7
    //   353: aload 4
    //   355: astore 8
    //   357: invokestatic 259	com/sleepycat/b/f/d:a	()I
    //   360: ifeq +15 -> 375
    //   363: aload 4
    //   365: astore 6
    //   367: new 103	java/lang/AssertionError
    //   370: dup
    //   371: invokespecial 237	java/lang/AssertionError:<init>	()V
    //   374: athrow
    //   375: aload 8
    //   377: aload_0
    //   378: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   381: invokevirtual 438	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/c;)V
    //   384: aload 7
    //   386: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   389: if_acmpeq +13 -> 402
    //   392: aload_0
    //   393: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   396: getstatic 220	com/sleepycat/b/n/o:c	Lcom/sleepycat/b/n/o;
    //   399: invokevirtual 223	com/sleepycat/b/c/c:c	(Lcom/sleepycat/b/n/o;)V
    //   402: aload_0
    //   403: aload_3
    //   404: aload 5
    //   406: getfield 501	com/sleepycat/b/c/ak:g	Z
    //   409: invokespecial 190	com/sleepycat/b/e:a	(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;
    //   412: astore 4
    //   414: aload_1
    //   415: invokestatic 203	com/sleepycat/b/e:d	(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;
    //   418: astore 7
    //   420: aload_2
    //   421: invokestatic 203	com/sleepycat/b/e:d	(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/m;
    //   424: astore 8
    //   426: aload_0
    //   427: aload 7
    //   429: aload 8
    //   431: aload 4
    //   433: aload 5
    //   435: aconst_null
    //   436: invokespecial 527	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/c/ak;Lcom/sleepycat/b/c/au;)Lcom/sleepycat/b/av;
    //   439: astore 6
    //   441: aload 5
    //   443: getfield 501	com/sleepycat/b/c/ak:g	Z
    //   446: ifeq +21 -> 467
    //   449: aload 6
    //   451: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   454: if_acmpeq +13 -> 467
    //   457: aload_0
    //   458: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   461: getstatic 220	com/sleepycat/b/n/o:c	Lcom/sleepycat/b/n/o;
    //   464: invokevirtual 223	com/sleepycat/b/c/c:c	(Lcom/sleepycat/b/n/o;)V
    //   467: aload 6
    //   469: astore 4
    //   471: aload 6
    //   473: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   476: if_acmpne +21 -> 497
    //   479: aload 6
    //   481: astore 4
    //   483: aload_0
    //   484: aload 7
    //   486: invokespecial 226	com/sleepycat/b/e:c	(Lcom/sleepycat/b/m;)Z
    //   489: ifne +8 -> 497
    //   492: getstatic 228	com/sleepycat/b/av:d	Lcom/sleepycat/b/av;
    //   495: astore 4
    //   497: aload 4
    //   499: astore 6
    //   501: aload 4
    //   503: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   506: if_acmpne -434 -> 72
    //   509: aload 7
    //   511: aload_1
    //   512: invokestatic 215	com/sleepycat/b/e:f	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    //   515: aload 8
    //   517: aload_2
    //   518: invokestatic 215	com/sleepycat/b/e:f	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    //   521: aload 4
    //   523: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	524	0	this	e
    //   0	524	1	paramm1	m
    //   0	524	2	paramm2	m
    //   0	524	3	paramao	ao
    //   0	524	4	paramak	ak
    //   42	400	5	localak	ak
    //   70	430	6	localObject1	Object
    //   178	332	7	localObject2	Object
    //   182	334	8	localObject3	Object
    //   170	180	9	localav	av
    //   112	147	10	localm1	m
    //   121	140	11	localm2	m
    // Exception table:
    //   from	to	target	type
    //   97	154	95	com/sleepycat/b/c/av
    //   226	238	95	com/sleepycat/b/c/av
    //   375	402	95	com/sleepycat/b/c/av
    //   402	467	95	com/sleepycat/b/c/av
    //   471	479	95	com/sleepycat/b/c/av
    //   483	497	95	com/sleepycat/b/c/av
    //   501	521	95	com/sleepycat/b/c/av
    //   158	172	224	finally
    //   184	192	224	finally
    //   196	202	224	finally
    //   206	212	224	finally
    //   216	224	224	finally
    //   256	273	224	finally
    //   277	292	224	finally
    //   296	305	224	finally
    //   309	324	224	finally
    //   339	345	224	finally
    //   357	363	224	finally
    //   367	375	224	finally
    //   44	72	238	java/lang/Error
    //   97	154	238	java/lang/Error
    //   226	238	238	java/lang/Error
    //   375	402	238	java/lang/Error
    //   402	467	238	java/lang/Error
    //   471	479	238	java/lang/Error
    //   483	497	238	java/lang/Error
    //   501	521	238	java/lang/Error
  }
  
  /* Error */
  private av b(m paramm1, m paramm2, ao paramao, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_3
    //   2: invokespecial 187	com/sleepycat/b/e:b	(Lcom/sleepycat/b/ao;)Z
    //   5: ifne +24 -> 29
    //   8: aload_0
    //   9: aload_1
    //   10: aload_2
    //   11: aload_0
    //   12: aload_3
    //   13: iconst_0
    //   14: invokespecial 190	com/sleepycat/b/e:a	(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;
    //   17: iload 4
    //   19: invokespecial 532	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/av;
    //   22: astore 5
    //   24: aload 5
    //   26: areturn
    //   27: astore 5
    //   29: iload 4
    //   31: ifne +13 -> 44
    //   34: aload_0
    //   35: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   38: getstatic 220	com/sleepycat/b/n/o:c	Lcom/sleepycat/b/n/o;
    //   41: invokevirtual 223	com/sleepycat/b/c/c:c	(Lcom/sleepycat/b/n/o;)V
    //   44: aload_0
    //   45: aload_1
    //   46: aload_2
    //   47: aload_0
    //   48: aload_3
    //   49: iload 4
    //   51: invokespecial 190	com/sleepycat/b/e:a	(Lcom/sleepycat/b/ao;Z)Lcom/sleepycat/b/n/o;
    //   54: iload 4
    //   56: invokespecial 532	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/n/o;Z)Lcom/sleepycat/b/av;
    //   59: astore 6
    //   61: aload 6
    //   63: astore 5
    //   65: iload 4
    //   67: ifeq -43 -> 24
    //   70: aload 6
    //   72: astore 5
    //   74: aload 6
    //   76: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   79: if_acmpeq -55 -> 24
    //   82: aload_0
    //   83: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   86: getstatic 220	com/sleepycat/b/n/o:c	Lcom/sleepycat/b/n/o;
    //   89: invokevirtual 223	com/sleepycat/b/c/c:c	(Lcom/sleepycat/b/n/o;)V
    //   92: aload 6
    //   94: areturn
    //   95: astore_1
    //   96: aload_0
    //   97: getfield 125	com/sleepycat/b/e:c	Lcom/sleepycat/b/c/i;
    //   100: getfield 134	com/sleepycat/b/c/i:c	Lcom/sleepycat/b/c/ad;
    //   103: aload_1
    //   104: invokevirtual 231	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	e
    //   0	109	1	paramm1	m
    //   0	109	2	paramm2	m
    //   0	109	3	paramao	ao
    //   0	109	4	paramBoolean	boolean
    //   22	3	5	localav1	av
    //   27	1	5	localav	com.sleepycat.b.c.av
    //   63	10	5	localObject	Object
    //   59	34	6	localav2	av
    // Exception table:
    //   from	to	target	type
    //   34	44	27	com/sleepycat/b/c/av
    //   44	61	27	com/sleepycat/b/c/av
    //   74	92	27	com/sleepycat/b/c/av
    //   0	24	95	java/lang/Error
    //   34	44	95	java/lang/Error
    //   44	61	95	java/lang/Error
    //   74	92	95	java/lang/Error
  }
  
  private av b(m paramm1, m paramm2, at paramat)
  {
    if (paramat == at.a) {}
    for (com.sleepycat.b.l.y localy = null;; localy = com.sleepycat.b.l.y.a(this.c.c, paramm2)) {
      return b(paramm1, paramm2, localy, paramat, this.c.D());
    }
  }
  
  private av b(m paramm1, m paramm2, com.sleepycat.b.l.y paramy, at paramat, com.sleepycat.b.g.av paramav)
  {
    int i1;
    int i3;
    label33:
    byte[] arrayOfByte;
    label69:
    label84:
    m localm2;
    label136:
    Collection localCollection;
    label179:
    int i2;
    m localm1;
    label193:
    m localm3;
    if (this.c.k() != null)
    {
      i1 = 1;
      if ((this.h == null) || (!this.h.g())) {
        break label300;
      }
      i3 = 1;
      if (i3 != 0) {
        this.c.c.G.c();
      }
      try
      {
        if ((paramat != at.a) || (paramm1 == null)) {
          break label306;
        }
        arrayOfByte = com.sleepycat.b.l.w.a(paramm1);
        if (paramm1 != null) {
          break label611;
        }
        if (paramat != at.a) {
          break label312;
        }
        bool = true;
        aa.a(bool);
        if ((i3 == 0) && (i1 == 0)) {
          break label611;
        }
        localm2 = new m();
        if (i3 == 0) {
          break label617;
        }
        localm2.a(this.a.g());
        if (localm2.a == null) {
          break label318;
        }
        bool = true;
        aa.a(bool);
      }
      catch (Error paramm1)
      {
        this.c.c.a(paramm1);
        throw paramm1;
      }
      finally
      {
        if (i3 == 0) {
          break label292;
        }
        this.c.c.G.d();
      }
      if (i3 == 0) {
        break label330;
      }
      localCollection = this.h.h.c();
      if (i1 != 0) {
        break label620;
      }
      if (!bi.a(localCollection)) {
        break label324;
      }
      break label620;
      if (i2 == 0) {
        break label340;
      }
      localm1 = new m();
      if ((!paramm2.f) || ((i3 == 0) && (i1 == 0))) {
        break label346;
      }
      paramm1 = new m();
      localm3 = paramm1;
      label221:
      if (paramat != at.a) {
        break label427;
      }
      if (paramy != null) {
        break label354;
      }
    }
    label292:
    label300:
    label306:
    label312:
    label318:
    label324:
    label330:
    label340:
    label346:
    label354:
    for (boolean bool = true;; bool = false)
    {
      aa.a(bool);
      if ((f) || (paramm2 != null)) {
        break label360;
      }
      throw new AssertionError();
      i1 = 0;
      break;
      i3 = 0;
      break label33;
      arrayOfByte = null;
      break label69;
      bool = false;
      break label84;
      bool = false;
      break label136;
      i2 = 0;
      break label623;
      localCollection = null;
      i2 = i1;
      break label179;
      localm1 = null;
      break label193;
      paramm1 = null;
      localm3 = paramm2;
      break label221;
    }
    label360:
    c();
    paramm1 = this.a.a(arrayOfByte, paramm2, localm2, localm1, paramm1, paramav);
    this.a.a();
    bool = false;
    label392:
    paramm2 = av.a;
    if (paramm1 != paramm2)
    {
      paramm2 = paramm1;
      if (i3 != 0)
      {
        paramm2 = this.c.c.G;
        label419:
        paramm2.d();
        paramm2 = paramm1;
      }
      label425:
      return paramm2;
      label427:
      if (paramy == null) {
        break label626;
      }
    }
    label611:
    label617:
    label620:
    label623:
    label626:
    for (bool = true;; bool = false)
    {
      aa.a(bool);
      paramm2 = a(localm2, paramm2, paramy, paramat, localm1, paramm1, paramav);
      paramm1 = (av)paramm2.a;
      bool = ((Boolean)paramm2.b).booleanValue();
      break label392;
      paramm1 = localm1;
      if (localm1 != null)
      {
        paramm1 = localm1;
        if (localm1.a == null) {
          paramm1 = null;
        }
      }
      paramm2 = this.a.e;
      if (localCollection != null)
      {
        paramy = localCollection.iterator();
        while (paramy.hasNext())
        {
          paramat = (bi)paramy.next();
          if ((bool) || (paramat.h())) {
            paramat.a(paramm2, null, localm2, paramm1, localm3);
          }
        }
      }
      if (i1 != 0) {
        bh.a(paramm2, this.c, localm2, paramm1, localm3);
      }
      paramm1 = av.a;
      paramm2 = paramm1;
      if (i3 == 0) {
        break label425;
      }
      paramm2 = this.c.c.G;
      break label419;
      localm2 = paramm1;
      break;
      break;
      i2 = 1;
      break label179;
    }
  }
  
  private void b(e parame)
  {
    c localc = parame.a;
    parame.a = this.a;
    this.a = localc;
  }
  
  private boolean b(ao paramao)
  {
    return (this.j) && (!a(paramao));
  }
  
  /* Error */
  private av c(m paramm1, m paramm2)
  {
    // Byte code:
    //   0: new 52	com/sleepycat/b/m
    //   3: dup
    //   4: invokespecial 60	com/sleepycat/b/m:<init>	()V
    //   7: astore 4
    //   9: new 52	com/sleepycat/b/m
    //   12: dup
    //   13: invokespecial 60	com/sleepycat/b/m:<init>	()V
    //   16: astore 5
    //   18: aload_0
    //   19: iconst_0
    //   20: invokevirtual 621	com/sleepycat/b/e:a	(Z)Lcom/sleepycat/b/e;
    //   23: astore_3
    //   24: aload_3
    //   25: iconst_1
    //   26: putfield 70	com/sleepycat/b/e:d	Z
    //   29: aload_1
    //   30: aload 4
    //   32: invokestatic 215	com/sleepycat/b/e:f	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    //   35: aload_3
    //   36: aload 4
    //   38: aload 5
    //   40: getstatic 363	com/sleepycat/b/ao:d	Lcom/sleepycat/b/ao;
    //   43: invokespecial 624	com/sleepycat/b/e:m	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   46: astore 6
    //   48: aload 6
    //   50: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   53: if_acmpne +22 -> 75
    //   56: aload_1
    //   57: aload 4
    //   59: invokevirtual 628	com/sleepycat/b/m:equals	(Ljava/lang/Object;)Z
    //   62: ifeq +13 -> 75
    //   65: getstatic 630	com/sleepycat/b/av:b	Lcom/sleepycat/b/av;
    //   68: astore_1
    //   69: aload_3
    //   70: invokevirtual 633	com/sleepycat/b/e:close	()V
    //   73: aload_1
    //   74: areturn
    //   75: aload 6
    //   77: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   80: if_acmpeq +13 -> 93
    //   83: aload_3
    //   84: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   87: getstatic 367	com/sleepycat/b/n/o:b	Lcom/sleepycat/b/n/o;
    //   90: invokevirtual 223	com/sleepycat/b/c/c:c	(Lcom/sleepycat/b/n/o;)V
    //   93: aload_1
    //   94: aload 4
    //   96: invokestatic 215	com/sleepycat/b/e:f	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    //   99: aload_3
    //   100: aload 4
    //   102: aload 5
    //   104: getstatic 363	com/sleepycat/b/ao:d	Lcom/sleepycat/b/ao;
    //   107: invokespecial 635	com/sleepycat/b/e:l	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   110: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   113: if_acmpne +10 -> 123
    //   116: getstatic 630	com/sleepycat/b/av:b	Lcom/sleepycat/b/av;
    //   119: astore_1
    //   120: goto -51 -> 69
    //   123: aload_3
    //   124: aload_1
    //   125: aload_2
    //   126: invokespecial 637	com/sleepycat/b/e:d	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    //   129: astore_2
    //   130: aload_2
    //   131: astore_1
    //   132: aload_2
    //   133: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   136: if_acmpne -67 -> 69
    //   139: aload_0
    //   140: aload_3
    //   141: invokespecial 639	com/sleepycat/b/e:b	(Lcom/sleepycat/b/e;)V
    //   144: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   147: astore_1
    //   148: goto -79 -> 69
    //   151: astore_1
    //   152: aload_3
    //   153: invokevirtual 633	com/sleepycat/b/e:close	()V
    //   156: aload_1
    //   157: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	158	0	this	e
    //   0	158	1	paramm1	m
    //   0	158	2	paramm2	m
    //   23	130	3	locale	e
    //   7	94	4	localm1	m
    //   16	87	5	localm2	m
    //   46	30	6	localav	av
    // Exception table:
    //   from	to	target	type
    //   24	69	151	finally
    //   75	93	151	finally
    //   93	120	151	finally
    //   123	130	151	finally
    //   132	148	151	finally
  }
  
  /* Error */
  private av c(m paramm1, m paramm2, ao paramao, ak paramak)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 95	com/sleepycat/b/e:a	Lcom/sleepycat/b/c/c;
    //   4: invokevirtual 560	com/sleepycat/b/c/c:g	()[B
    //   7: astore 6
    //   9: aload_0
    //   10: iconst_1
    //   11: invokevirtual 621	com/sleepycat/b/e:a	(Z)Lcom/sleepycat/b/e;
    //   14: astore 5
    //   16: aload 5
    //   18: iconst_1
    //   19: putfield 70	com/sleepycat/b/e:d	Z
    //   22: aload_0
    //   23: aload 5
    //   25: aload 6
    //   27: invokespecial 641	com/sleepycat/b/e:a	(Lcom/sleepycat/b/e;[B)V
    //   30: new 52	com/sleepycat/b/m
    //   33: dup
    //   34: invokespecial 60	com/sleepycat/b/m:<init>	()V
    //   37: astore 6
    //   39: aload 5
    //   41: aload 6
    //   43: getstatic 62	com/sleepycat/b/e:e	Lcom/sleepycat/b/m;
    //   46: aload_3
    //   47: aload 4
    //   49: invokespecial 643	com/sleepycat/b/e:b	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;
    //   52: astore_3
    //   53: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   56: astore 4
    //   58: aload_3
    //   59: aload 4
    //   61: if_acmpeq +12 -> 73
    //   64: aload_3
    //   65: astore_1
    //   66: aload 5
    //   68: invokevirtual 633	com/sleepycat/b/e:close	()V
    //   71: aload_1
    //   72: areturn
    //   73: aload 6
    //   75: aload_1
    //   76: aload_2
    //   77: invokestatic 648	com/sleepycat/b/c/y:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)V
    //   80: aload_0
    //   81: aload 5
    //   83: invokespecial 639	com/sleepycat/b/e:b	(Lcom/sleepycat/b/e;)V
    //   86: getstatic 212	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   89: astore_1
    //   90: goto -24 -> 66
    //   93: astore_1
    //   94: aload 5
    //   96: invokevirtual 633	com/sleepycat/b/e:close	()V
    //   99: aload_1
    //   100: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	this	e
    //   0	101	1	paramm1	m
    //   0	101	2	paramm2	m
    //   0	101	3	paramao	ao
    //   0	101	4	paramak	ak
    //   14	81	5	locale	e
    //   7	67	6	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   16	58	93	finally
    //   73	90	93	finally
  }
  
  private void c()
  {
    this.a.a(this.l);
    this.a.a();
  }
  
  private boolean c(m paramm)
  {
    if ((!f) && (paramm.d != 0)) {
      throw new AssertionError();
    }
    if ((!f) && (paramm.a.length != paramm.e)) {
      throw new AssertionError();
    }
    if (this.n == null) {
      return true;
    }
    return this.n.a(paramm.a);
  }
  
  private av d(m paramm1, m paramm2)
  {
    return b(com.sleepycat.b.c.y.a(paramm1, paramm2), q, at.c);
  }
  
  private static m d(m paramm)
  {
    m localm = new m();
    f(paramm, localm);
    return localm;
  }
  
  private void d()
  {
    this.a.d.c.n();
  }
  
  private Object e()
  {
    Object localObject = this;
    if (this.o != null) {
      localObject = this.o;
    }
    return localObject;
  }
  
  private static void e(m paramm1, m paramm2)
  {
    com.sleepycat.b.p.i.a(paramm1, "key", false);
    com.sleepycat.b.p.i.a(paramm2, "data", false);
  }
  
  private void f()
  {
    if (this.o == null) {
      return;
    }
    this.o.c();
    this.o.a.b_(false);
  }
  
  private static void f(m paramm1, m paramm2)
  {
    paramm2.a(paramm1.c, paramm1.b, paramm1.f);
    paramm2.a(paramm1.a, paramm1.d, paramm1.e);
  }
  
  private av i(m paramm1, m paramm2, ao paramao)
  {
    paramao = a(paramao, false);
    c();
    paramm1 = this.a.a(paramm1, paramm2, paramao);
    this.a.a();
    return paramm1;
  }
  
  private av j(m paramm1, m paramm2, ao paramao)
  {
    m localm = com.sleepycat.b.c.y.a(this.a.g());
    e locale = a(false);
    try
    {
      locale.d = true;
      Object localObject = new com.sleepycat.b.c.z(this.c.n);
      paramao = locale.a(localm, e, paramao, com.sleepycat.b.c.e.c, (Comparator)localObject);
      localObject = av.a;
      if (paramao != localObject) {
        return paramao;
      }
      com.sleepycat.b.c.y.a(localm, paramm1, paramm2);
      b(locale);
      paramm1 = av.a;
      return paramm1;
    }
    finally
    {
      locale.close();
    }
  }
  
  private av k(m paramm1, m paramm2, ao paramao)
  {
    byte[] arrayOfByte = this.a.g();
    m localm = com.sleepycat.b.c.y.a(arrayOfByte);
    Object localObject1 = a(false);
    try
    {
      ((e)localObject1).d = true;
      a((e)localObject1, arrayOfByte);
      if (((e)localObject1).a(localm, e, paramao, com.sleepycat.b.c.e.c, null) == av.a)
      {
        ((e)localObject1).n = null;
        paramao = ((e)localObject1).b(localm, e, paramao, ak.b);
        localObject2 = av.a;
        if (paramao != localObject2) {
          return paramao;
        }
        com.sleepycat.b.c.y.a(localm, paramm1, paramm2);
        b((e)localObject1);
        paramm1 = av.a;
        return paramm1;
      }
    }
    finally
    {
      ((e)localObject1).close();
    }
    ((e)localObject1).close();
    Object localObject2 = a(true);
    label295:
    for (;;)
    {
      try
      {
        ((e)localObject2).d = true;
        localObject1 = ((e)localObject2).b(localm, e, paramao, ak.b);
        av localav = av.a;
        if (localObject1 != localav)
        {
          paramm1 = (m)localObject1;
          return paramm1;
        }
        if ((!f) && (localm.d != 0)) {
          throw new AssertionError();
        }
      }
      finally
      {
        ((e)localObject2).close();
      }
      if ((!f) && (localm.a.length != localm.e)) {
        throw new AssertionError();
      }
      if (com.sleepycat.b.c.y.a(localm.a, arrayOfByte, this.c.n) == 0) {}
      for (int i1 = 1;; i1 = 0)
      {
        if (i1 != 0) {
          break label295;
        }
        com.sleepycat.b.c.y.a(localm, paramm1, paramm2);
        b((e)localObject2);
        paramm1 = av.a;
        break;
      }
    }
  }
  
  private av l(m paramm1, m paramm2, ao paramao)
  {
    m localm = new m(com.sleepycat.b.c.y.a(paramm1.a, paramm1.e));
    e locale = a(false);
    try
    {
      locale.d = true;
      a(locale, paramm1);
      if (locale.a(localm, e, paramao, com.sleepycat.b.c.e.c, null) != av.a)
      {
        paramm1 = av.d;
        return paramm1;
      }
      com.sleepycat.b.c.y.a(localm, paramm1, paramm2);
      b(locale);
      paramm1 = av.a;
      return paramm1;
    }
    finally
    {
      locale.close();
    }
  }
  
  private av m(m paramm1, m paramm2, ao paramao)
  {
    m localm = new m(com.sleepycat.b.c.y.a(paramm1.a, paramm1.e));
    paramao = a(localm, e, paramao, com.sleepycat.b.c.e.c, null);
    if (paramao != av.a) {
      return paramao;
    }
    com.sleepycat.b.c.y.a(localm, paramm1, paramm2);
    return av.a;
  }
  
  private av n(m paramm1, m paramm2, ao paramao)
  {
    m localm = com.sleepycat.b.c.y.a(paramm1, paramm2);
    e locale = a(false);
    try
    {
      locale.d = true;
      a(locale, paramm1);
      if (locale.a(localm, e, paramao, com.sleepycat.b.c.e.c, null) != av.a)
      {
        paramm1 = av.d;
        return paramm1;
      }
      com.sleepycat.b.c.y.a(localm, paramm1, paramm2);
      b(locale);
      paramm1 = av.a;
      return paramm1;
    }
    finally
    {
      locale.close();
    }
  }
  
  public final av a(com.sleepycat.b.g.av paramav)
  {
    int i2 = 0;
    m localm = null;
    int i1;
    int i3;
    if (this.c.k() != null)
    {
      i1 = 1;
      if ((this.h == null) || (!this.h.g())) {
        break label213;
      }
      i3 = 1;
      label39:
      if (i3 != 0) {
        this.c.c.G.c();
      }
      if ((i3 == 0) && (i1 == 0)) {
        break label225;
      }
    }
    for (;;)
    {
      Object localObject1;
      Collection localCollection;
      label213:
      label225:
      q localq;
      try
      {
        localObject1 = new m();
        ((m)localObject1).a(this.a.g());
        if (((m)localObject1).a != null)
        {
          bool = true;
          aa.a(bool);
          if (i3 == 0) {
            continue;
          }
          localCollection = this.h.h.c();
          localObject2 = this.h.j;
          if (i1 != 0) {
            break label452;
          }
          if (!bi.b(localCollection)) {
            break label455;
          }
          break label452;
          if (i2 == 0) {
            break label458;
          }
          localm = new m();
          break label458;
          if (h((m)localObject1, localm, ao.d) == av.a) {
            continue;
          }
          localObject2 = av.c;
          paramav = (com.sleepycat.b.g.av)localObject2;
          if (i3 != 0)
          {
            localObject1 = this.c.c.G;
            paramav = (com.sleepycat.b.g.av)localObject2;
            ((com.sleepycat.b.f.f)localObject1).d();
          }
          return paramav;
          i1 = 0;
          break;
          i3 = 0;
          break label39;
        }
        boolean bool = false;
        continue;
        localObject1 = null;
        continue;
        i2 = i1;
        localObject2 = null;
        localCollection = null;
        continue;
        localq = this.a.e;
        if (localObject2 != null)
        {
          localObject2 = ((Collection)localObject2).iterator();
          if (((Iterator)localObject2).hasNext())
          {
            ((bi)((Iterator)localObject2).next()).b(localq, (m)localObject1);
            continue;
          }
        }
        if (localCollection == null) {
          break label368;
        }
      }
      catch (Error paramav)
      {
        this.c.c.a(paramav);
        throw paramav;
      }
      finally
      {
        if (i3 != 0) {
          this.c.c.G.d();
        }
      }
      Object localObject2 = localCollection.iterator();
      while (((Iterator)localObject2).hasNext()) {
        ((bi)((Iterator)localObject2).next()).a(localq, null, (m)localObject1, localm, null);
      }
      label368:
      localObject2 = b(paramav);
      paramav = av.a;
      if (localObject2 != paramav)
      {
        paramav = (com.sleepycat.b.g.av)localObject2;
        if (i3 != 0)
        {
          localObject1 = this.c.c.G;
          paramav = (com.sleepycat.b.g.av)localObject2;
        }
      }
      else
      {
        if (i1 != 0) {
          bh.a(localq, this.c, (m)localObject1, localm);
        }
        localObject1 = av.a;
        paramav = (com.sleepycat.b.g.av)localObject1;
        if (i3 != 0)
        {
          localObject2 = this.c.c.G;
          paramav = (com.sleepycat.b.g.av)localObject1;
          localObject1 = localObject2;
          continue;
          label452:
          i2 = 1;
          label455:
          continue;
          label458:
          if (i2 == 0) {
            if (i3 == 0) {}
          }
        }
      }
    }
  }
  
  final av a(i parami, m paramm1, m paramm2, m paramm3, ao paramao)
  {
    boolean bool = a(paramao);
    Object localObject;
    m localm;
    if ((bool) && (paramm3.f))
    {
      if (paramm3.b == 0)
      {
        paramm3.a(ar.a);
        return av.a;
      }
      localObject = new m();
      localm = paramm3;
      paramm3 = (m)localObject;
    }
    for (;;)
    {
      q localq = this.a.e;
      localObject = new e(parami, localq);
      if (bool) {}
      for (;;)
      {
        try
        {
          paramao = ao.b;
          if (((e)localObject).a(paramm2, paramm3, paramao, com.sleepycat.b.c.e.a) != av.a)
          {
            if (bool)
            {
              parami = av.c;
              return parami;
            }
            throw this.h.a(localq, paramm1, paramm2);
          }
        }
        finally
        {
          ((e)localObject).close();
        }
        if ((bool) && (b(paramm1)))
        {
          parami = av.c;
        }
        else
        {
          if (localm != null) {
            com.sleepycat.b.l.y.a(localm, paramm3.a);
          }
          parami = av.a;
        }
      }
      localm = null;
    }
  }
  
  public av a(m paramm)
  {
    b(true);
    com.sleepycat.b.p.i.a(paramm, "data", true);
    a("putCurrent");
    a(Level.FINEST, "Cursor.putCurrent: ", null, paramm, null);
    if (this.p != null) {
      this.p.a(18);
    }
    return a(null, paramm, at.a);
  }
  
  public av a(m paramm1, m paramm2)
  {
    b(false);
    com.sleepycat.b.p.i.a(paramm1, "key", true);
    com.sleepycat.b.p.i.a(paramm2, "data", true);
    com.sleepycat.b.p.i.a(paramm1);
    a("put");
    a(Level.FINEST, "Cursor.put: ", paramm1, paramm2, null);
    if (this.p != null) {
      this.p.a(17);
    }
    return a(paramm1, paramm2, at.d);
  }
  
  public av a(m paramm1, m paramm2, ao paramao)
  {
    b(false);
    e(paramm1, paramm2);
    a(Level.FINEST, "Cursor.getFirst: ", paramao);
    if (this.p != null) {
      this.p.a(9);
    }
    return a(paramm1, paramm2, paramao, true);
  }
  
  final av a(m paramm1, m paramm2, ao paramao, ak paramak)
  {
    if (this.c.h())
    {
      switch (3.b[paramak.ordinal()])
      {
      default: 
        throw aa.c(paramak.toString());
      case 5: 
      case 6: 
        m localm = new m();
        paramao = b(localm, e, paramao, paramak);
        if (paramao != av.a) {
          return paramao;
        }
        com.sleepycat.b.c.y.a(localm, paramm1, paramm2);
        return av.a;
      case 1: 
        return c(paramm1, paramm2, paramao, ak.a);
      case 2: 
        return c(paramm1, paramm2, paramao, ak.b);
      case 3: 
        return j(paramm1, paramm2, paramao);
      }
      return k(paramm1, paramm2, paramao);
    }
    return b(paramm1, paramm2, paramao, paramak);
  }
  
  final av a(m paramm1, m paramm2, ao paramao, com.sleepycat.b.c.e parame)
  {
    m localm;
    synchronized (e())
    {
      f();
      if (this.c.h()) {
        switch (3.a[parame.ordinal()])
        {
        case 3: 
          throw aa.c(parame.toString());
        }
      }
    }
  }
  
  final av a(m paramm1, m paramm2, ao paramao, boolean paramBoolean)
  {
    synchronized (e())
    {
      f();
      if (this.c.h())
      {
        m localm = new m();
        paramao = b(localm, e, paramao, paramBoolean);
        if (paramao != av.a) {}
        for (paramm1 = paramao;; paramm1 = av.a)
        {
          return paramm1;
          com.sleepycat.b.c.y.a(localm, paramm1, paramm2);
        }
      }
      paramm1 = b(paramm1, paramm2, paramao, paramBoolean);
      return paramm1;
    }
  }
  
  final av a(m paramm1, m paramm2, at paramat)
  {
    m localm;
    synchronized (e())
    {
      f();
      if (this.c.h()) {
        switch (3.c[paramat.ordinal()])
        {
        case 1: 
          throw aa.c(paramat.toString());
        }
      }
    }
  }
  
  public final av a(m paramm1, m paramm2, com.sleepycat.b.l.y paramy, at paramat, com.sleepycat.b.g.av paramav)
  {
    synchronized (e())
    {
      f();
      if ((!f) && (paramat == at.a)) {
        throw new AssertionError();
      }
    }
    paramm1 = b(paramm1, paramm2, paramy, paramat, paramav);
    return paramm1;
  }
  
  public e a(boolean paramBoolean)
  {
    try
    {
      b(false);
      e locale = new e(this, paramBoolean);
      return locale;
    }
    catch (Error localError)
    {
      this.c.c.a(localError);
      throw localError;
    }
  }
  
  public i a()
  {
    return this.h;
  }
  
  protected final void a(String paramString)
  {
    if (this.g) {
      throw new UnsupportedOperationException("A transaction was not supplied when opening this cursor: " + paramString);
    }
  }
  
  final void a(Level paramLevel, String paramString, ao paramao)
  {
    if (this.k.isLoggable(paramLevel))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      a(localStringBuilder);
      if (paramao != null) {
        localStringBuilder.append(" lockMode=").append(paramao);
      }
      com.sleepycat.b.p.w.a(this.k, this.c.c, paramLevel, localStringBuilder.toString());
    }
  }
  
  final void a(Level paramLevel, String paramString, m paramm1, m paramm2, ao paramao)
  {
    if (this.k.isLoggable(paramLevel))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      a(localStringBuilder);
      if (paramm1 != null) {
        localStringBuilder.append(" key=").append(paramm1.a());
      }
      if (paramm2 != null) {
        localStringBuilder.append(" data=").append(paramm2.a());
      }
      if (paramao != null) {
        localStringBuilder.append(" lockMode=").append(paramao);
      }
      com.sleepycat.b.p.w.a(this.k, this.c.c, paramLevel, localStringBuilder.toString());
    }
  }
  
  public av b()
  {
    b(true);
    a("delete");
    a(Level.FINEST, "Cursor.delete: ", null);
    if (this.p != null) {
      this.p.a(7);
    }
    return a(this.c.D());
  }
  
  final av b(com.sleepycat.b.g.av paramav)
  {
    synchronized (e())
    {
      f();
      c();
      paramav = this.a.a(paramav);
      this.a.a();
      return paramav;
    }
  }
  
  public av b(m paramm1, m paramm2)
  {
    try
    {
      b(true);
      e(paramm1, paramm2);
      a(Level.FINEST, "Cursor.getCurrent: ", null);
      if (this.p != null) {
        this.p.a(8);
      }
      paramm1 = h(paramm1, paramm2, null);
      return paramm1;
    }
    catch (Error paramm1)
    {
      this.c.c.a(paramm1);
      throw paramm1;
    }
  }
  
  public av b(m paramm1, m paramm2, ao paramao)
  {
    b(false);
    e(paramm1, paramm2);
    a(Level.FINEST, "Cursor.getLast: ", paramao);
    if (this.p != null) {
      this.p.a(10);
    }
    return a(paramm1, paramm2, paramao, false);
  }
  
  public final av b(m paramm1, m paramm2, ao paramao, com.sleepycat.b.c.e parame)
  {
    synchronized (e())
    {
      f();
      paramm1 = a(paramm1, paramm2, paramao, parame, null);
      return paramm1;
    }
  }
  
  final void b(boolean paramBoolean)
  {
    d();
    if (this.h != null) {
      this.h.a("Can't call Cursor method:");
    }
    this.a.c(paramBoolean);
  }
  
  boolean b(m paramm)
  {
    return false;
  }
  
  public av c(m paramm1, m paramm2, ao paramao)
  {
    b(false);
    e(paramm1, paramm2);
    a(Level.FINEST, "Cursor.getNext: ", paramao);
    if (this.p != null) {
      this.p.a(11);
    }
    if (this.a.d()) {
      return a(paramm1, paramm2, paramao, true);
    }
    return a(paramm1, paramm2, paramao, ak.a);
  }
  
  public void close()
  {
    int i1;
    try
    {
      if (this.a.g != 3) {
        break label90;
      }
      i1 = 1;
    }
    catch (Error localError)
    {
      i locali;
      this.c.c.a(localError);
      throw localError;
    }
    d();
    this.a.a(null);
    if (this.h != null)
    {
      locali = this.h;
      if (locali.a != j.d) {
        locali.a("Database was closed while still in use:");
      }
      locali.f.getAndDecrement();
      this.h = null;
      return;
    }
    while (i1 != 0)
    {
      return;
      label90:
      i1 = 0;
    }
  }
  
  public av d(m paramm1, m paramm2, ao paramao)
  {
    b(false);
    e(paramm1, paramm2);
    a(Level.FINEST, "Cursor.getPrev: ", paramao);
    if (this.p != null) {
      this.p.a(14);
    }
    if (this.a.d()) {
      return a(paramm1, paramm2, paramao, false);
    }
    return a(paramm1, paramm2, paramao, ak.b);
  }
  
  public av e(m paramm1, m paramm2, ao paramao)
  {
    b(false);
    com.sleepycat.b.p.i.a(paramm1, "key", true);
    com.sleepycat.b.p.i.a(paramm2, "data", false);
    a(Level.FINEST, "Cursor.getSearchKey: ", paramm1, null, paramao);
    return a(paramm1, paramm2, paramao, com.sleepycat.b.c.e.a);
  }
  
  public av f(m paramm1, m paramm2, ao paramao)
  {
    b(false);
    com.sleepycat.b.p.i.a(paramm1, "key", true);
    com.sleepycat.b.p.i.a(paramm2, "data", false);
    a(Level.FINEST, "Cursor.getSearchKeyRange: ", paramm1, null, paramao);
    return a(paramm1, paramm2, paramao, com.sleepycat.b.c.e.c);
  }
  
  public av g(m paramm1, m paramm2, ao paramao)
  {
    b(false);
    com.sleepycat.b.p.i.a(paramm1, "key", true);
    com.sleepycat.b.p.i.a(paramm2, "data", true);
    a(Level.FINEST, "Cursor.getSearchBoth: ", paramm1, paramm2, paramao);
    return a(paramm1, paramm2, paramao, com.sleepycat.b.c.e.b);
  }
  
  final av h(m paramm1, m paramm2, ao paramao)
  {
    synchronized (e())
    {
      f();
      if (this.c.h())
      {
        m localm = new m();
        paramao = i(localm, e, paramao);
        if (paramao != av.a) {}
        for (paramm1 = paramao;; paramm1 = av.a)
        {
          return paramm1;
          com.sleepycat.b.c.y.a(localm, paramm1, paramm2);
        }
      }
      paramm1 = i(paramm1, paramm2, paramao);
      return paramm1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */