package com.sleepycat.b.i.f;

import com.sleepycat.b.bo;
import com.sleepycat.b.br;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.d;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.al;
import com.sleepycat.b.g.av;
import com.sleepycat.b.i.a.a;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.c.b.f;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.e;
import com.sleepycat.b.i.e.j;
import com.sleepycat.b.i.g;
import com.sleepycat.b.i.s;
import com.sleepycat.b.n.o;
import com.sleepycat.b.n.q;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.w;
import com.sleepycat.b.v;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.ReadLock;
import java.util.logging.Level;
import java.util.logging.Logger;

public class b
  extends com.sleepycat.b.n.z
{
  private static final c O;
  private static c P;
  private final x N;
  public au a = au.a;
  public int b = -1;
  public final long c = System.currentTimeMillis();
  public int d = 0;
  public int e = 0;
  public boolean f;
  public volatile boolean g;
  
  static
  {
    if (!b.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      c local1 = new c()
      {
        public final b a(ad paramAnonymousad, br paramAnonymousbr, x paramAnonymousx)
        {
          return new b(paramAnonymousad, paramAnonymousbr, paramAnonymousx);
        }
      };
      O = local1;
      P = local1;
      return;
    }
  }
  
  public b(ad paramad, br parambr, x paramx)
  {
    super(paramad, parambr, av.f);
    this.N = paramx;
  }
  
  private boolean B()
  {
    boolean bool = false;
    if (this.f)
    {
      this.f = false;
      bool = true;
    }
    return bool;
  }
  
  public static b a(ad paramad, br parambr, x paramx)
  {
    return P.a(paramad, parambr, paramx);
  }
  
  private void a(com.sleepycat.b.i.u paramu)
  {
    if (paramu.b()) {
      throw new s(this, ((com.sleepycat.b.i.c.aj)this.i).ap.b());
    }
    throw new com.sleepycat.b.i.af("Transaction " + this.k + " cannot execute write operations because this node is no longer a master");
  }
  
  protected final long a(com.sleepycat.b.n.aj paramaj, long paramLong)
  {
    if ((!h) && (paramLong != 0L)) {
      throw new AssertionError();
    }
    return paramaj.h.decrementAndGet();
  }
  
  /* Error */
  public final e a(Logger paramLogger, com.sleepycat.b.i.c.b.ac paramac)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: iconst_1
    //   4: istore 9
    //   6: iconst_1
    //   7: istore 10
    //   9: iconst_1
    //   10: istore 7
    //   12: aload_0
    //   13: getfield 149	com/sleepycat/b/i/f/b:g	Z
    //   16: ifne +35 -> 51
    //   19: aload_0
    //   20: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   23: new 108	java/lang/StringBuilder
    //   26: dup
    //   27: ldc -105
    //   29: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   32: aload_0
    //   33: getfield 118	com/sleepycat/b/n/q:k	J
    //   36: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   39: ldc -103
    //   41: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokestatic 158	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   50: athrow
    //   51: aload_1
    //   52: aload_0
    //   53: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   56: new 108	java/lang/StringBuilder
    //   59: dup
    //   60: ldc -96
    //   62: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   65: aload_0
    //   66: getfield 118	com/sleepycat/b/n/q:k	J
    //   69: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   72: ldc -94
    //   74: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokestatic 167	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   83: aload_0
    //   84: monitorenter
    //   85: aload_0
    //   86: invokevirtual 170	com/sleepycat/b/i/f/b:z	()Z
    //   89: ifeq +72 -> 161
    //   92: aload_1
    //   93: aload_0
    //   94: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   97: new 108	java/lang/StringBuilder
    //   100: dup
    //   101: ldc -105
    //   103: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   106: aload_0
    //   107: getfield 118	com/sleepycat/b/n/q:k	J
    //   110: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   113: ldc -84
    //   115: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   121: invokestatic 167	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   124: aload_0
    //   125: monitorexit
    //   126: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   129: ifne +887 -> 1016
    //   132: aload_0
    //   133: iconst_0
    //   134: putfield 149	com/sleepycat/b/i/f/b:g	Z
    //   137: iload 7
    //   139: istore 8
    //   141: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   144: ifne +9 -> 153
    //   147: iload 7
    //   149: iconst_1
    //   150: iadd
    //   151: istore 8
    //   153: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   156: ifne +3 -> 159
    //   159: aconst_null
    //   160: areturn
    //   161: aload_0
    //   162: invokevirtual 176	com/sleepycat/b/i/f/b:A	()Ljava/util/Set;
    //   165: astore_3
    //   166: aload_3
    //   167: invokeinterface 182 1 0
    //   172: ifne +77 -> 249
    //   175: aload_1
    //   176: aload_0
    //   177: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   180: new 108	java/lang/StringBuilder
    //   183: dup
    //   184: ldc -105
    //   186: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   189: aload_0
    //   190: getfield 118	com/sleepycat/b/n/q:k	J
    //   193: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   196: ldc -72
    //   198: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: invokestatic 167	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   207: aload_0
    //   208: monitorexit
    //   209: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   212: ifne +798 -> 1010
    //   215: iload 8
    //   217: istore 7
    //   219: aload_0
    //   220: iconst_0
    //   221: putfield 149	com/sleepycat/b/i/f/b:g	Z
    //   224: iload 7
    //   226: istore 8
    //   228: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   231: ifne +9 -> 240
    //   234: iload 7
    //   236: iconst_1
    //   237: iadd
    //   238: istore 8
    //   240: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   243: ifne -84 -> 159
    //   246: goto -87 -> 159
    //   249: aload_0
    //   250: new 106	com/sleepycat/b/i/af
    //   253: dup
    //   254: new 108	java/lang/StringBuilder
    //   257: dup
    //   258: invokespecial 185	java/lang/StringBuilder:<init>	()V
    //   261: aload_0
    //   262: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   265: getfield 191	com/sleepycat/b/c/ad:af	Ljava/lang/String;
    //   268: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: ldc -63
    //   273: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   279: invokespecial 132	com/sleepycat/b/i/af:<init>	(Ljava/lang/String;)V
    //   282: invokevirtual 196	com/sleepycat/b/i/f/b:a	(Lcom/sleepycat/b/au;)V
    //   285: aload_2
    //   286: aload_0
    //   287: getfield 118	com/sleepycat/b/n/q:k	J
    //   290: iconst_0
    //   291: invokevirtual 201	com/sleepycat/b/i/c/b/ac:a	(JZ)Lcom/sleepycat/b/i/f/e;
    //   294: astore_2
    //   295: new 203	java/util/ArrayList
    //   298: dup
    //   299: aload_3
    //   300: invokespecial 206	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   303: astore 4
    //   305: aload 4
    //   307: invokestatic 212	java/util/Collections:sort	(Ljava/util/List;)V
    //   310: aload_1
    //   311: aload_0
    //   312: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   315: new 108	java/lang/StringBuilder
    //   318: dup
    //   319: ldc -105
    //   321: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   324: aload_0
    //   325: getfield 118	com/sleepycat/b/n/q:k	J
    //   328: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   331: ldc -42
    //   333: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   336: aload_3
    //   337: invokeinterface 182 1 0
    //   342: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   345: ldc -37
    //   347: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   353: invokestatic 167	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   356: aload 4
    //   358: invokeinterface 225 1 0
    //   363: astore_3
    //   364: aload_3
    //   365: invokeinterface 230 1 0
    //   370: ifeq +387 -> 757
    //   373: aload_3
    //   374: invokeinterface 234 1 0
    //   379: checkcast 236	java/lang/Long
    //   382: astore 4
    //   384: aload_1
    //   385: aload_0
    //   386: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   389: new 108	java/lang/StringBuilder
    //   392: dup
    //   393: ldc -105
    //   395: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   398: aload_0
    //   399: getfield 118	com/sleepycat/b/n/q:k	J
    //   402: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   405: ldc -18
    //   407: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   410: aload 4
    //   412: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   415: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   418: invokestatic 167	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   421: aload_2
    //   422: getfield 247	com/sleepycat/b/i/f/e:j	Lcom/sleepycat/b/n/l;
    //   425: aload 4
    //   427: aload_2
    //   428: getstatic 252	com/sleepycat/b/n/o:b	Lcom/sleepycat/b/n/o;
    //   431: invokevirtual 257	com/sleepycat/b/n/l:a	(Ljava/lang/Long;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/n/o;)Lcom/sleepycat/b/n/f;
    //   434: astore 5
    //   436: aload 5
    //   438: getfield 261	com/sleepycat/b/n/f:a	Z
    //   441: ifne +206 -> 647
    //   444: aload_2
    //   445: getfield 262	com/sleepycat/b/i/f/e:i	Lcom/sleepycat/b/c/ad;
    //   448: new 108	java/lang/StringBuilder
    //   451: dup
    //   452: ldc_w 264
    //   455: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   458: aload_2
    //   459: getfield 118	com/sleepycat/b/n/q:k	J
    //   462: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   465: ldc_w 266
    //   468: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   471: aload 4
    //   473: invokevirtual 269	java/lang/Long:longValue	()J
    //   476: invokestatic 274	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   479: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   482: ldc_w 276
    //   485: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   488: aload 5
    //   490: getfield 279	com/sleepycat/b/n/f:c	Lcom/sleepycat/b/n/h;
    //   493: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   496: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   499: invokestatic 158	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   502: athrow
    //   503: astore_2
    //   504: iconst_1
    //   505: istore 7
    //   507: aload_0
    //   508: monitorexit
    //   509: aload_2
    //   510: athrow
    //   511: astore_2
    //   512: iload 7
    //   514: istore 8
    //   516: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   519: ifne +503 -> 1022
    //   522: iload 9
    //   524: istore 7
    //   526: aload_0
    //   527: iconst_0
    //   528: putfield 149	com/sleepycat/b/i/f/b:g	Z
    //   531: iload 7
    //   533: istore 9
    //   535: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   538: ifne +9 -> 547
    //   541: iload 7
    //   543: iconst_1
    //   544: iadd
    //   545: istore 9
    //   547: iload 8
    //   549: ifeq +90 -> 639
    //   552: aload_1
    //   553: aload_0
    //   554: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   557: new 108	java/lang/StringBuilder
    //   560: dup
    //   561: ldc_w 281
    //   564: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   567: aload_0
    //   568: getfield 118	com/sleepycat/b/n/q:k	J
    //   571: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   574: ldc_w 283
    //   577: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   580: aload_0
    //   581: getfield 287	com/sleepycat/b/n/z:u	Lcom/sleepycat/b/bq;
    //   584: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   587: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   590: invokestatic 167	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   593: aload_0
    //   594: iconst_0
    //   595: invokevirtual 290	com/sleepycat/b/i/f/b:b	(Z)V
    //   598: aload_1
    //   599: aload_0
    //   600: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   603: new 108	java/lang/StringBuilder
    //   606: dup
    //   607: ldc_w 292
    //   610: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   613: aload_0
    //   614: getfield 118	com/sleepycat/b/n/q:k	J
    //   617: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   620: ldc_w 283
    //   623: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   626: aload_0
    //   627: getfield 287	com/sleepycat/b/n/z:u	Lcom/sleepycat/b/bq;
    //   630: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   633: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   636: invokestatic 167	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   639: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   642: ifne +3 -> 645
    //   645: aload_2
    //   646: athrow
    //   647: aload_2
    //   648: aload 4
    //   650: invokevirtual 269	java/lang/Long:longValue	()J
    //   653: invokestatic 296	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   656: getstatic 252	com/sleepycat/b/n/o:b	Lcom/sleepycat/b/n/o;
    //   659: aload 5
    //   661: getfield 279	com/sleepycat/b/n/f:c	Lcom/sleepycat/b/n/h;
    //   664: invokevirtual 299	com/sleepycat/b/i/f/e:a	(Ljava/lang/Long;Lcom/sleepycat/b/n/o;Lcom/sleepycat/b/n/h;)V
    //   667: aload_2
    //   668: aload 4
    //   670: invokevirtual 269	java/lang/Long:longValue	()J
    //   673: invokevirtual 302	com/sleepycat/b/i/f/e:e	(J)V
    //   676: aload_2
    //   677: aload 4
    //   679: invokevirtual 269	java/lang/Long:longValue	()J
    //   682: invokevirtual 305	com/sleepycat/b/i/f/e:f	(J)Lcom/sleepycat/b/n/am;
    //   685: astore 5
    //   687: aload_0
    //   688: aload 4
    //   690: invokevirtual 269	java/lang/Long:longValue	()J
    //   693: invokevirtual 306	com/sleepycat/b/i/f/b:f	(J)Lcom/sleepycat/b/n/am;
    //   696: astore 6
    //   698: aload 5
    //   700: aload 6
    //   702: getfield 310	com/sleepycat/b/n/am:a	J
    //   705: putfield 310	com/sleepycat/b/n/am:a	J
    //   708: aload 5
    //   710: aload 6
    //   712: getfield 312	com/sleepycat/b/n/am:b	Z
    //   715: putfield 312	com/sleepycat/b/n/am:b	Z
    //   718: aload 5
    //   720: aload 6
    //   722: invokevirtual 315	com/sleepycat/b/n/am:a	(Lcom/sleepycat/b/n/am;)V
    //   725: aload 5
    //   727: aload 6
    //   729: getfield 317	com/sleepycat/b/n/am:e	Z
    //   732: putfield 317	com/sleepycat/b/n/am:e	Z
    //   735: aload 5
    //   737: aload 6
    //   739: getfield 318	com/sleepycat/b/n/am:f	Z
    //   742: putfield 318	com/sleepycat/b/n/am:f	Z
    //   745: aload_0
    //   746: aload 4
    //   748: invokevirtual 269	java/lang/Long:longValue	()J
    //   751: invokevirtual 320	com/sleepycat/b/i/f/b:a	(J)V
    //   754: goto -390 -> 364
    //   757: aload_0
    //   758: getfield 324	com/sleepycat/b/n/z:w	Ljava/util/Map;
    //   761: ifnull +34 -> 795
    //   764: aload_2
    //   765: getfield 325	com/sleepycat/b/i/f/e:w	Ljava/util/Map;
    //   768: ifnonnull +14 -> 782
    //   771: aload_2
    //   772: new 327	java/util/HashMap
    //   775: dup
    //   776: invokespecial 328	java/util/HashMap:<init>	()V
    //   779: putfield 325	com/sleepycat/b/i/f/e:w	Ljava/util/Map;
    //   782: aload_2
    //   783: getfield 325	com/sleepycat/b/i/f/e:w	Ljava/util/Map;
    //   786: aload_0
    //   787: getfield 324	com/sleepycat/b/n/z:w	Ljava/util/Map;
    //   790: invokeinterface 334 2 0
    //   795: aload_0
    //   796: getfield 338	com/sleepycat/b/n/z:v	Ljava/util/Set;
    //   799: ifnull +35 -> 834
    //   802: aload_2
    //   803: getfield 339	com/sleepycat/b/i/f/e:v	Ljava/util/Set;
    //   806: ifnonnull +14 -> 820
    //   809: aload_2
    //   810: new 341	java/util/HashSet
    //   813: dup
    //   814: invokespecial 342	java/util/HashSet:<init>	()V
    //   817: putfield 339	com/sleepycat/b/i/f/e:v	Ljava/util/Set;
    //   820: aload_2
    //   821: getfield 339	com/sleepycat/b/i/f/e:v	Ljava/util/Set;
    //   824: aload_0
    //   825: getfield 338	com/sleepycat/b/n/z:v	Ljava/util/Set;
    //   828: invokeinterface 346 2 0
    //   833: pop
    //   834: aload_0
    //   835: aconst_null
    //   836: putfield 347	com/sleepycat/b/i/f/b:v	Ljava/util/Set;
    //   839: aload_0
    //   840: ldc2_w 348
    //   843: putfield 351	com/sleepycat/b/i/f/b:z	J
    //   846: aload_0
    //   847: ldc2_w 348
    //   850: putfield 354	com/sleepycat/b/i/f/b:y	J
    //   853: aload_0
    //   854: invokevirtual 356	com/sleepycat/b/i/f/b:y	()I
    //   857: pop
    //   858: aload_0
    //   859: monitorexit
    //   860: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   863: ifne +141 -> 1004
    //   866: iload 10
    //   868: istore 7
    //   870: aload_0
    //   871: iconst_0
    //   872: putfield 149	com/sleepycat/b/i/f/b:g	Z
    //   875: iload 7
    //   877: istore 8
    //   879: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   882: ifne +9 -> 891
    //   885: iload 7
    //   887: iconst_1
    //   888: iadd
    //   889: istore 8
    //   891: aload_1
    //   892: aload_0
    //   893: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   896: new 108	java/lang/StringBuilder
    //   899: dup
    //   900: ldc_w 281
    //   903: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   906: aload_0
    //   907: getfield 118	com/sleepycat/b/n/q:k	J
    //   910: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   913: ldc_w 283
    //   916: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   919: aload_0
    //   920: getfield 287	com/sleepycat/b/n/z:u	Lcom/sleepycat/b/bq;
    //   923: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   926: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   929: invokestatic 167	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   932: aload_0
    //   933: iconst_0
    //   934: invokevirtual 290	com/sleepycat/b/i/f/b:b	(Z)V
    //   937: aload_1
    //   938: aload_0
    //   939: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   942: new 108	java/lang/StringBuilder
    //   945: dup
    //   946: ldc_w 292
    //   949: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   952: aload_0
    //   953: getfield 118	com/sleepycat/b/n/q:k	J
    //   956: invokevirtual 122	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   959: ldc_w 283
    //   962: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   965: aload_0
    //   966: getfield 287	com/sleepycat/b/n/z:u	Lcom/sleepycat/b/bq;
    //   969: invokevirtual 241	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   972: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   975: invokestatic 167	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   978: getstatic 33	com/sleepycat/b/i/f/b:h	Z
    //   981: ifne +3 -> 984
    //   984: aload_2
    //   985: areturn
    //   986: astore_2
    //   987: iconst_1
    //   988: istore 8
    //   990: goto -474 -> 516
    //   993: astore_2
    //   994: iconst_0
    //   995: istore 7
    //   997: goto -490 -> 507
    //   1000: astore_2
    //   1001: goto -494 -> 507
    //   1004: iconst_0
    //   1005: istore 7
    //   1007: goto -137 -> 870
    //   1010: iconst_0
    //   1011: istore 7
    //   1013: goto -794 -> 219
    //   1016: iconst_0
    //   1017: istore 7
    //   1019: goto -887 -> 132
    //   1022: iconst_0
    //   1023: istore 7
    //   1025: goto -499 -> 526
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1028	0	this	b
    //   0	1028	1	paramLogger	Logger
    //   0	1028	2	paramac	com.sleepycat.b.i.c.b.ac
    //   165	209	3	localObject1	Object
    //   303	444	4	localObject2	Object
    //   434	302	5	localObject3	Object
    //   696	42	6	localam	com.sleepycat.b.n.am
    //   10	1014	7	i	int
    //   1	988	8	j	int
    //   4	542	9	k	int
    //   7	860	10	m	int
    // Exception table:
    //   from	to	target	type
    //   85	124	503	finally
    //   161	207	503	finally
    //   249	364	503	finally
    //   364	503	503	finally
    //   647	754	503	finally
    //   757	782	503	finally
    //   782	795	503	finally
    //   795	820	503	finally
    //   820	834	503	finally
    //   834	860	503	finally
    //   509	511	511	finally
    //   83	85	986	finally
    //   124	126	993	finally
    //   207	209	993	finally
    //   507	509	1000	finally
  }
  
  public final com.sleepycat.b.n.m a(long paramLong, o paramo, boolean paramBoolean1, boolean paramBoolean2, com.sleepycat.b.c.i parami)
  {
    com.sleepycat.b.i.u localu = ((com.sleepycat.b.i.c.aj)this.i).ap.a();
    if (localu.a()) {
      return super.a(paramLong, paramo, paramBoolean1, paramBoolean2, parami);
    }
    a(localu);
    return null;
  }
  
  protected final void a(br parambr)
  {
    Object localObject = (com.sleepycat.b.i.c.aj)this.i;
    try
    {
      ((com.sleepycat.b.i.c.aj)localObject).n();
      parambr = ((com.sleepycat.b.i.c.aj)localObject).am.z;
      int i = ((com.sleepycat.b.i.c.aj)localObject).as;
      localObject = parambr.a.am;
      if (((aa)localObject).g.b())
      {
        v localv = this.C.g;
        int j = parambr.a(localv);
        w.d(parambr.b, parambr.a, "Txn " + this + ": checking that " + j + " feeders exist before starting commit");
        if (j != 0)
        {
          parambr = ((aa)localObject).f;
          long l = i;
          if ((!parambr.c.a(j, l, TimeUnit.MILLISECONDS)) && (((aa)localObject).g.b()) && (!((aa)localObject).A.a())) {
            throw new g(this, localv, j + 1, ((aa)localObject).f.a());
          }
        }
      }
    }
    catch (InterruptedException parambr)
    {
      throw new bo(this.i, parambr);
    }
  }
  
  /* Error */
  public final void a(com.sleepycat.b.c.i parami)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 90	com/sleepycat/b/i/f/b:i	Lcom/sleepycat/b/c/ad;
    //   6: checkcast 92	com/sleepycat/b/i/c/aj
    //   9: getfield 96	com/sleepycat/b/i/c/aj:ap	Lcom/sleepycat/b/i/c/b/z;
    //   12: invokevirtual 360	com/sleepycat/b/i/c/b/z:a	()Lcom/sleepycat/b/i/u;
    //   15: astore_2
    //   16: aload_2
    //   17: invokevirtual 362	com/sleepycat/b/i/u:a	()Z
    //   20: ifeq +11 -> 31
    //   23: aload_0
    //   24: aload_1
    //   25: invokespecial 456	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/c/i;)V
    //   28: aload_0
    //   29: monitorexit
    //   30: return
    //   31: aload_0
    //   32: aload_2
    //   33: invokespecial 366	com/sleepycat/b/i/f/b:a	(Lcom/sleepycat/b/i/u;)V
    //   36: goto -8 -> 28
    //   39: astore_1
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	b
    //   0	44	1	parami	com.sleepycat.b.c.i
    //   15	18	2	localu	com.sleepycat.b.i.u
    // Exception table:
    //   from	to	target	type
    //   2	28	39	finally
    //   31	36	39	finally
  }
  
  protected final void a(al paramal)
  {
    this.a = paramal.g.e;
    try
    {
      paramal = (com.sleepycat.b.i.c.aj)this.i;
      if (B()) {
        paramal.ax.readLock().unlock();
      }
      paramal.n();
      try
      {
        Object localObject2 = paramal.al;
        int i = paramal.ar;
        Object localObject1 = (j)((com.sleepycat.b.i.e.i)localObject2).a.get(Long.valueOf(this.k));
        if (localObject1 != null)
        {
          j.a((j)localObject1, i);
          ((com.sleepycat.b.i.e.i)localObject2).a.remove(Long.valueOf(this.k));
          localObject2 = ((com.sleepycat.b.i.e.i)localObject2).b.am.z;
          int j = ((j)localObject1).a();
          if (j != 0)
          {
            b localb = ((j)localObject1).b;
            int k = ((f)localObject2).a(localb.D.g);
            if (localb.b - k < j)
            {
              Object localObject4 = ((f)localObject2).a;
              Object localObject3 = new StringBuilder().append(((com.sleepycat.b.i.c.aj)localObject4).ao).append("[").append(((com.sleepycat.b.i.c.aj)localObject4).ap.a()).append("]");
              localObject4 = ((com.sleepycat.b.i.c.aj)localObject4).am;
              localObject3 = new StringBuilder("\n").append(((aa)localObject4).f.c()).append("\n").toString();
              if (((f)localObject2).a.am.f.a(localb.a) >= k)
              {
                localObject1 = "txn " + localb.k + " commit vlsn:" + ((j)localObject1).b.a + " acknowledged after explicit feeder check latch count:" + ((j)localObject1).a() + " state:" + (String)localObject3 + " required acks:" + k;
                w.c(((f)localObject2).b, ((f)localObject2).a, (String)localObject1);
                return;
              }
              if (!((f)localObject2).a.am.A.b.a()) {
                throw new e(localb, j, i, (String)localObject3);
              }
            }
          }
        }
      }
      catch (e locale)
      {
        w.c(paramal.v, paramal, locale.getMessage());
        throw locale;
      }
      return;
    }
    catch (InterruptedException paramal)
    {
      throw new bo(this.i, paramal);
    }
  }
  
  protected final void a(boolean paramBoolean)
  {
    if (this.g) {}
    try
    {
      ((com.sleepycat.b.i.c.aj)this.i).a(this);
      return;
    }
    catch (com.sleepycat.b.n localn)
    {
      if (!paramBoolean) {
        break label30;
      }
    }
    g();
    for (;;)
    {
      throw localn;
      label30:
      o_();
    }
  }
  
  protected final boolean a(com.sleepycat.b.n paramn)
  {
    if ((paramn instanceof e)) {
      return true;
    }
    return super.a(paramn);
  }
  
  public final d d()
  {
    if (this.a.c()) {
      return null;
    }
    return new d(((com.sleepycat.b.i.c.aj)this.i).am.b(), this.a.c);
  }
  
  protected final void g()
  {
    com.sleepycat.b.i.c.aj localaj = (com.sleepycat.b.i.c.aj)this.i;
    w.c(localaj.v, localaj, "post log abort hook for txn: " + this.k);
    if (B()) {
      localaj.ax.readLock().unlock();
    }
    localaj.al.a.remove(Long.valueOf(this.k));
  }
  
  public final boolean h_()
  {
    return true;
  }
  
  protected final int i()
  {
    return this.N.b;
  }
  
  protected final void m_()
  {
    Object localObject1 = (com.sleepycat.b.i.c.aj)this.i;
    Object localObject2 = this.D.g;
    this.b = ((com.sleepycat.b.i.c.aj)localObject1).am.z.a((v)localObject2);
    ((com.sleepycat.b.i.c.aj)localObject1).n();
    ((com.sleepycat.b.i.c.aj)localObject1).a(this);
    ((com.sleepycat.b.i.c.aj)localObject1).a(this);
    int i = ((com.sleepycat.b.i.c.aj)localObject1).am.f.c.size();
    localObject2 = this.D.g;
    int j = this.b;
    if (((com.sleepycat.b.i.c.aj)localObject1).v.isLoggable(Level.FINE)) {
      w.d(((com.sleepycat.b.i.c.aj)localObject1).v, (ad)localObject1, "Txn " + this.k + " requires: " + j + " active: " + i + " replica acks. Commit Policy: " + localObject2);
    }
    if (j > i)
    {
      if (((com.sleepycat.b.i.c.aj)localObject1).am.A.a()) {
        this.b = 0;
      }
    }
    else
    {
      localObject1 = ((com.sleepycat.b.i.c.aj)localObject1).al;
      if (this.b == 0) {
        break label266;
      }
      localObject2 = new j((com.sleepycat.b.i.e.i)localObject1, this, (byte)0);
      localObject1 = (j)((com.sleepycat.b.i.e.i)localObject1).a.put(Long.valueOf(this.k), localObject2);
      if ((com.sleepycat.b.i.e.i.d) || (localObject1 == null)) {
        break label266;
      }
      throw new AssertionError();
    }
    localObject2 = new g(this, (v)localObject2, j, ((com.sleepycat.b.i.c.aj)localObject1).am.f.a());
    w.c(((com.sleepycat.b.i.c.aj)localObject1).v, (ad)localObject1, ((g)localObject2).getMessage());
    throw ((Throwable)localObject2);
    label266:
    this.d = ((int)(System.currentTimeMillis() - this.c));
  }
  
  protected final void n_()
  {
    com.sleepycat.b.i.c.aj localaj = (com.sleepycat.b.i.c.aj)this.i;
    localaj.n();
    localaj.a(this);
    localaj.a(this);
  }
  
  protected final void o_()
  {
    com.sleepycat.b.i.c.aj localaj = (com.sleepycat.b.i.c.aj)this.i;
    if (B()) {
      localaj.ax.readLock().unlock();
    }
  }
  
  public final boolean q_()
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\f\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */