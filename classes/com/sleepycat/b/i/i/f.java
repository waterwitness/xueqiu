package com.sleepycat.b.i.i;

import com.sleepycat.b.aa;
import com.sleepycat.b.ao;
import com.sleepycat.b.av;
import com.sleepycat.b.br;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.al;
import com.sleepycat.b.i.c.an;
import com.sleepycat.b.n.a;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.w;
import com.sleepycat.b.u;
import java.util.SortedMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Logger;

public class f
{
  public static int a;
  public final ad b;
  public i c = null;
  public au d = null;
  public final Object e = new Object();
  public final Logger f;
  public AtomicLong g;
  public p h;
  public final b i;
  public final ai j;
  private final Object l = new Object();
  private com.sleepycat.b.c.i m;
  private final com.sleepycat.b.p.z n;
  private final com.sleepycat.b.p.z o;
  
  static
  {
    if (!f.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      a = 60000;
      return;
    }
  }
  
  public f(ad paramad, String paramString, int paramInt1, int paramInt2, int paramInt3, com.sleepycat.b.h.l paraml)
  {
    this.b = paramad;
    this.f = w.a(getClass());
    this.j = new ai("VLSNIndex", "VLSN Index related stats.");
    this.n = new com.sleepycat.b.p.z(this.j, l.c);
    this.o = new com.sleepycat.b.p.z(this.j, l.d);
    com.sleepycat.b.n.z localz = com.sleepycat.b.n.z.b(this.b, new br());
    com.sleepycat.b.c.p localp;
    try
    {
      localp = this.b.q;
      com.sleepycat.b.c.i locali = localp.a(localz, paramString, null);
      localObject = locali;
      if (locali != null) {
        break label200;
      }
      if (this.b.g) {
        throw aa.c("A replicated environment can't be opened read only.");
      }
    }
    finally
    {
      localz.a_(true);
    }
    Object localObject = new com.sleepycat.b.l();
    ((com.sleepycat.b.l)localObject).j = false;
    localObject = localp.a(localz, paramString, (com.sleepycat.b.l)localObject);
    label200:
    this.m = ((com.sleepycat.b.c.i)localObject);
    localz.a_(true);
    this.h = new p(this.b, this.m, paramInt1, paramInt2, paramInt3, this.j);
    paramString = (o)paraml.o;
    if (paramString == null) {
      a(u.a);
    }
    for (;;)
    {
      this.i = new b(paramad.u.a(an.E), this.j);
      return;
      if (paramString.d.size() == 0) {}
      for (paramInt1 = 1;; paramInt1 = 0)
      {
        if (paramInt1 != 0)
        {
          paraml = paramString.a;
          if (paraml.c()) {
            break;
          }
          paramString.a(paraml, paramString.b, af.D.K);
        }
        localObject = this.h.b().c;
        paraml = paramString.b().b;
        if (((this.b.N()) && (((au)localObject).c()) && (this.b.N())) || (paraml.b(((au)localObject).d()) <= 0)) {
          break label436;
        }
        throw aa.a(this.b, "recoveryTracker should overlap or follow on disk last VLSN of " + localObject + " recoveryFirst= " + paraml);
      }
      label436:
      if (this.h.b().c.d().a(paraml))
      {
        this.h.a(paramString);
        a(u.a);
        continue;
      }
      localObject = new br();
      ((br)localObject).a(u.a);
      localObject = com.sleepycat.b.n.z.a(this.b, (br)localObject);
      try
      {
        paraml = b(paraml, -1L, (com.sleepycat.b.n.z)localObject);
        this.h.a(paraml, paramString);
        a((com.sleepycat.b.n.z)localObject);
        ((com.sleepycat.b.n.z)localObject).m();
      }
      finally
      {
        ((com.sleepycat.b.n.z)localObject).n();
      }
    }
  }
  
  private com.sleepycat.b.e a(com.sleepycat.b.n.q paramq)
  {
    paramq = com.sleepycat.b.q.a(this.m, paramq, com.sleepycat.b.g.a);
    paramq.a.i = false;
    return paramq;
  }
  
  private static c a(au paramau, com.sleepycat.b.e parame)
  {
    com.sleepycat.b.m localm1 = new com.sleepycat.b.m();
    com.sleepycat.b.m localm2 = new com.sleepycat.b.m();
    com.sleepycat.a.a.g.a(paramau.c, localm1);
    if (parame.f(localm1, localm2, ao.a) == av.a)
    {
      c localc = c.a(localm2);
      if (localc.d(paramau)) {}
      do
      {
        do
        {
          return localc;
        } while (!a(parame.d(localm1, localm2, ao.a), localm1));
        parame = c.a(localm2);
      } while (!parame.d(paramau));
      return parame;
    }
    return null;
  }
  
  private void a(com.sleepycat.b.n.z paramz)
  {
    synchronized (this.l)
    {
      this.h.a(this.m, paramz);
      return;
    }
  }
  
  /* Error */
  private void a(au paramau, long paramLong, com.sleepycat.b.n.z paramz)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 9
    //   3: aconst_null
    //   4: astore 5
    //   6: aload_0
    //   7: aload 4
    //   9: invokespecial 352	com/sleepycat/b/i/i/f:a	(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/e;
    //   12: astore 4
    //   14: new 313	com/sleepycat/b/m
    //   17: dup
    //   18: invokespecial 314	com/sleepycat/b/m:<init>	()V
    //   21: astore 5
    //   23: new 313	com/sleepycat/b/m
    //   26: dup
    //   27: invokespecial 314	com/sleepycat/b/m:<init>	()V
    //   30: astore 6
    //   32: aload 4
    //   34: aload_1
    //   35: aload 5
    //   37: aload 6
    //   39: invokestatic 355	com/sleepycat/b/i/i/f:a	(Lcom/sleepycat/b/e;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Z
    //   42: istore 13
    //   44: iload 13
    //   46: ifne +14 -> 60
    //   49: aload 4
    //   51: ifnull +8 -> 59
    //   54: aload 4
    //   56: invokevirtual 358	com/sleepycat/b/e:close	()V
    //   59: return
    //   60: new 313	com/sleepycat/b/m
    //   63: dup
    //   64: invokespecial 314	com/sleepycat/b/m:<init>	()V
    //   67: astore 7
    //   69: aload 7
    //   71: iconst_0
    //   72: iconst_0
    //   73: iconst_1
    //   74: invokevirtual 361	com/sleepycat/b/m:a	(IIZ)V
    //   77: aload 5
    //   79: invokestatic 364	com/sleepycat/a/a/g:a	(Lcom/sleepycat/b/m;)J
    //   82: lstore 11
    //   84: iload 9
    //   86: istore 10
    //   88: lload 11
    //   90: ldc2_w 271
    //   93: lcmp
    //   94: ifeq +106 -> 200
    //   97: aload 4
    //   99: invokevirtual 367	com/sleepycat/b/e:b	()Lcom/sleepycat/b/av;
    //   102: astore 8
    //   104: iload 9
    //   106: iconst_1
    //   107: iadd
    //   108: istore 10
    //   110: aload 8
    //   112: getstatic 334	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   115: if_acmpeq +63 -> 178
    //   118: aload_0
    //   119: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   122: new 238	java/lang/StringBuilder
    //   125: dup
    //   126: ldc_w 369
    //   129: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   132: aload 8
    //   134: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   137: ldc_w 371
    //   140: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: lload 11
    //   145: invokevirtual 374	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   148: ldc_w 376
    //   151: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: aload_1
    //   155: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   158: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokestatic 259	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   164: athrow
    //   165: astore_1
    //   166: aload 4
    //   168: ifnull +8 -> 176
    //   171: aload 4
    //   173: invokevirtual 358	com/sleepycat/b/e:close	()V
    //   176: aload_1
    //   177: athrow
    //   178: iload 10
    //   180: istore 9
    //   182: aload 4
    //   184: aload 5
    //   186: aload 7
    //   188: getstatic 326	com/sleepycat/b/ao:a	Lcom/sleepycat/b/ao;
    //   191: invokevirtual 343	com/sleepycat/b/e:d	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   194: getstatic 334	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   197: if_acmpeq -120 -> 77
    //   200: aload_0
    //   201: getfield 94	com/sleepycat/b/i/i/f:n	Lcom/sleepycat/b/p/z;
    //   204: iload 10
    //   206: i2l
    //   207: invokevirtual 379	com/sleepycat/b/p/z:b	(J)V
    //   210: aload_1
    //   211: invokevirtual 233	com/sleepycat/b/p/au:d	()Lcom/sleepycat/b/p/au;
    //   214: astore_1
    //   215: lconst_1
    //   216: aload 5
    //   218: invokestatic 321	com/sleepycat/a/a/g:a	(JLcom/sleepycat/b/m;)V
    //   221: aload 4
    //   223: aload 5
    //   225: aload 6
    //   227: getstatic 326	com/sleepycat/b/ao:a	Lcom/sleepycat/b/ao;
    //   230: invokevirtual 329	com/sleepycat/b/e:f	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   233: getstatic 334	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   236: if_acmpeq +11 -> 247
    //   239: aload 4
    //   241: ifnull -182 -> 59
    //   244: goto -190 -> 54
    //   247: aload 6
    //   249: invokestatic 339	com/sleepycat/b/i/i/c:a	(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;
    //   252: astore 5
    //   254: aload 5
    //   256: invokevirtual 380	com/sleepycat/b/i/i/c:d	()Lcom/sleepycat/b/p/au;
    //   259: aload_1
    //   260: invokevirtual 262	com/sleepycat/b/p/au:a	(Lcom/sleepycat/b/p/au;)Z
    //   263: ifeq +11 -> 274
    //   266: aload 4
    //   268: ifnull -209 -> 59
    //   271: goto -217 -> 54
    //   274: aload 5
    //   276: invokevirtual 380	com/sleepycat/b/i/i/c:d	()Lcom/sleepycat/b/p/au;
    //   279: aload_1
    //   280: invokevirtual 236	com/sleepycat/b/p/au:b	(Lcom/sleepycat/b/p/au;)I
    //   283: ifge +39 -> 322
    //   286: aload_0
    //   287: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   290: new 238	java/lang/StringBuilder
    //   293: dup
    //   294: ldc_w 382
    //   297: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   300: aload_1
    //   301: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   304: ldc_w 384
    //   307: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: aload 5
    //   312: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   315: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokestatic 259	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   321: athrow
    //   322: aload_0
    //   323: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   326: getfield 388	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   329: lload_2
    //   330: iconst_1
    //   331: invokevirtual 393	com/sleepycat/b/g/m:a	(JZ)Ljava/lang/Long;
    //   334: invokevirtual 398	java/lang/Long:longValue	()J
    //   337: lstore_2
    //   338: aload 5
    //   340: aload 5
    //   342: invokevirtual 380	com/sleepycat/b/i/i/c:d	()Lcom/sleepycat/b/p/au;
    //   345: invokevirtual 401	com/sleepycat/b/i/i/c:c	(Lcom/sleepycat/b/p/au;)J
    //   348: lstore 11
    //   350: new 403	com/sleepycat/b/i/i/a
    //   353: dup
    //   354: aload_1
    //   355: lload_2
    //   356: iconst_0
    //   357: invokestatic 408	com/sleepycat/b/p/j:a	(JI)J
    //   360: lload 11
    //   362: invokespecial 411	com/sleepycat/b/i/i/a:<init>	(Lcom/sleepycat/b/p/au;JJ)V
    //   365: aload_0
    //   366: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   369: aload 4
    //   371: invokevirtual 414	com/sleepycat/b/i/i/c:a	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/e;)V
    //   374: aload 4
    //   376: ifnull -317 -> 59
    //   379: goto -325 -> 54
    //   382: astore_1
    //   383: aload 5
    //   385: astore 4
    //   387: goto -221 -> 166
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	390	0	this	f
    //   0	390	1	paramau	au
    //   0	390	2	paramLong	long
    //   0	390	4	paramz	com.sleepycat.b.n.z
    //   4	380	5	localObject	Object
    //   30	218	6	localm1	com.sleepycat.b.m
    //   67	120	7	localm2	com.sleepycat.b.m
    //   102	31	8	localav	av
    //   1	180	9	i1	int
    //   86	119	10	i2	int
    //   82	279	11	l1	long
    //   42	3	13	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   14	44	165	finally
    //   60	77	165	finally
    //   77	84	165	finally
    //   97	104	165	finally
    //   110	165	165	finally
    //   182	200	165	finally
    //   200	239	165	finally
    //   247	266	165	finally
    //   274	322	165	finally
    //   322	374	165	finally
    //   6	14	382	finally
  }
  
  private static boolean a(av paramav, com.sleepycat.b.m paramm)
  {
    return (paramav == av.a) && (com.sleepycat.a.a.g.a(paramm) != -1L);
  }
  
  private static boolean a(com.sleepycat.b.e parame, au paramau, com.sleepycat.b.m paramm1, com.sleepycat.b.m paramm2)
  {
    com.sleepycat.a.a.g.a(paramau.c, paramm1);
    if (parame.f(paramm1, paramm2, ao.a) == av.a) {
      if (!c.a(paramm2).d(paramau)) {}
    }
    while (a(parame.b(paramm1, paramm2, ao.a), paramm1))
    {
      do
      {
        return true;
      } while (a(parame.d(paramm1, paramm2, ao.a), paramm1));
      return false;
    }
    return false;
  }
  
  /* Error */
  private c b(au paramau, c paramc)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   6: invokestatic 422	com/sleepycat/b/n/a:a	(Lcom/sleepycat/b/c/ad;)Lcom/sleepycat/b/n/a;
    //   9: astore 4
    //   11: aload_0
    //   12: aload 4
    //   14: invokespecial 352	com/sleepycat/b/i/i/f:a	(Lcom/sleepycat/b/n/q;)Lcom/sleepycat/b/e;
    //   17: astore 6
    //   19: aload_1
    //   20: aload 6
    //   22: invokestatic 424	com/sleepycat/b/i/i/f:a	(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/e;)Lcom/sleepycat/b/i/i/c;
    //   25: astore_3
    //   26: aload_3
    //   27: ifnull +30 -> 57
    //   30: aload 6
    //   32: ifnull +8 -> 40
    //   35: aload 6
    //   37: invokevirtual 358	com/sleepycat/b/e:close	()V
    //   40: aload_3
    //   41: astore_1
    //   42: aload 4
    //   44: ifnull +11 -> 55
    //   47: aload_3
    //   48: astore_1
    //   49: aload 4
    //   51: iconst_1
    //   52: invokevirtual 132	com/sleepycat/b/n/q:a_	(Z)V
    //   55: aload_1
    //   56: areturn
    //   57: new 313	com/sleepycat/b/m
    //   60: dup
    //   61: invokespecial 314	com/sleepycat/b/m:<init>	()V
    //   64: astore 7
    //   66: new 313	com/sleepycat/b/m
    //   69: dup
    //   70: invokespecial 314	com/sleepycat/b/m:<init>	()V
    //   73: astore 8
    //   75: aload 6
    //   77: aload 7
    //   79: aload 8
    //   81: getstatic 326	com/sleepycat/b/ao:a	Lcom/sleepycat/b/ao;
    //   84: invokevirtual 416	com/sleepycat/b/e:b	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   87: aload 7
    //   89: invokestatic 346	com/sleepycat/b/i/i/f:a	(Lcom/sleepycat/b/av;Lcom/sleepycat/b/m;)Z
    //   92: ifeq +404 -> 496
    //   95: aload 8
    //   97: invokestatic 339	com/sleepycat/b/i/i/c:a	(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;
    //   100: astore_3
    //   101: aload_3
    //   102: aload_1
    //   103: invokevirtual 341	com/sleepycat/b/i/i/c:d	(Lcom/sleepycat/b/p/au;)Z
    //   106: istore 13
    //   108: iload 13
    //   110: ifeq +25 -> 135
    //   113: aload 6
    //   115: ifnull +8 -> 123
    //   118: aload 6
    //   120: invokevirtual 358	com/sleepycat/b/e:close	()V
    //   123: aload_3
    //   124: astore_1
    //   125: aload 4
    //   127: ifnull -72 -> 55
    //   130: aload_3
    //   131: astore_1
    //   132: goto -83 -> 49
    //   135: aload_3
    //   136: aload_1
    //   137: invokevirtual 426	com/sleepycat/b/i/i/c:e	(Lcom/sleepycat/b/p/au;)Z
    //   140: ifeq +40 -> 180
    //   143: aload_1
    //   144: aload 6
    //   146: invokestatic 424	com/sleepycat/b/i/i/f:a	(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/e;)Lcom/sleepycat/b/i/i/c;
    //   149: astore 5
    //   151: aload 5
    //   153: ifnull +27 -> 180
    //   156: aload 6
    //   158: ifnull +8 -> 166
    //   161: aload 6
    //   163: invokevirtual 358	com/sleepycat/b/e:close	()V
    //   166: aload 4
    //   168: ifnull +9 -> 177
    //   171: aload 4
    //   173: iconst_1
    //   174: invokevirtual 132	com/sleepycat/b/n/q:a_	(Z)V
    //   177: aload 5
    //   179: areturn
    //   180: iconst_0
    //   181: istore 10
    //   183: new 238	java/lang/StringBuilder
    //   186: dup
    //   187: invokespecial 427	java/lang/StringBuilder:<init>	()V
    //   190: astore 9
    //   192: aload 6
    //   194: aload 7
    //   196: aload 8
    //   198: getstatic 326	com/sleepycat/b/ao:a	Lcom/sleepycat/b/ao;
    //   201: invokevirtual 429	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   204: astore 5
    //   206: aload 5
    //   208: getstatic 334	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   211: if_acmpne +174 -> 385
    //   214: aload 7
    //   216: invokestatic 364	com/sleepycat/a/a/g:a	(Lcom/sleepycat/b/m;)J
    //   219: lstore 11
    //   221: aload 9
    //   223: new 238	java/lang/StringBuilder
    //   226: dup
    //   227: ldc_w 431
    //   230: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   233: lload 11
    //   235: invokestatic 435	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   238: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   241: ldc_w 437
    //   244: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   250: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: pop
    //   254: iload 10
    //   256: ifne +63 -> 319
    //   259: aload 8
    //   261: invokestatic 440	com/sleepycat/b/i/i/m:a	(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/m;
    //   264: astore 5
    //   266: aload 9
    //   268: new 238	java/lang/StringBuilder
    //   271: dup
    //   272: ldc_w 442
    //   275: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   278: aload 5
    //   280: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   283: ldc_w 437
    //   286: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   289: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   292: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: pop
    //   296: iload 10
    //   298: iconst_1
    //   299: iadd
    //   300: istore 10
    //   302: aload 6
    //   304: aload 7
    //   306: aload 8
    //   308: getstatic 326	com/sleepycat/b/ao:a	Lcom/sleepycat/b/ao;
    //   311: invokevirtual 444	com/sleepycat/b/e:c	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   314: astore 5
    //   316: goto -110 -> 206
    //   319: aload 8
    //   321: invokestatic 339	com/sleepycat/b/i/i/c:a	(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/i/i/c;
    //   324: astore 5
    //   326: aload 9
    //   328: new 238	java/lang/StringBuilder
    //   331: dup
    //   332: ldc_w 446
    //   335: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   338: aload 5
    //   340: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   343: ldc_w 437
    //   346: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   349: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   352: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: pop
    //   356: goto -60 -> 296
    //   359: astore_1
    //   360: aload 4
    //   362: astore_2
    //   363: aload 6
    //   365: astore_3
    //   366: aload_3
    //   367: ifnull +7 -> 374
    //   370: aload_3
    //   371: invokevirtual 358	com/sleepycat/b/e:close	()V
    //   374: aload_2
    //   375: ifnull +8 -> 383
    //   378: aload_2
    //   379: iconst_1
    //   380: invokevirtual 132	com/sleepycat/b/n/q:a_	(Z)V
    //   383: aload_1
    //   384: athrow
    //   385: aload_0
    //   386: getfield 71	com/sleepycat/b/i/i/f:f	Ljava/util/logging/Logger;
    //   389: aload_0
    //   390: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   393: new 238	java/lang/StringBuilder
    //   396: dup
    //   397: ldc_w 448
    //   400: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   403: aload 9
    //   405: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   408: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   411: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   414: invokestatic 451	com/sleepycat/b/p/w:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   417: aload_0
    //   418: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   421: new 238	java/lang/StringBuilder
    //   424: dup
    //   425: ldc_w 453
    //   428: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   431: aload_1
    //   432: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   435: ldc_w 455
    //   438: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: aload_3
    //   442: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   445: ldc_w 457
    //   448: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   451: aload_2
    //   452: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   455: ldc_w 459
    //   458: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   461: aload_0
    //   462: getfield 149	com/sleepycat/b/i/i/f:h	Lcom/sleepycat/b/i/i/p;
    //   465: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   468: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   471: invokestatic 259	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   474: athrow
    //   475: astore_1
    //   476: aconst_null
    //   477: astore 4
    //   479: aload_3
    //   480: astore_2
    //   481: aload 4
    //   483: astore_3
    //   484: goto -118 -> 366
    //   487: astore_1
    //   488: aconst_null
    //   489: astore_3
    //   490: aload 4
    //   492: astore_2
    //   493: goto -127 -> 366
    //   496: aconst_null
    //   497: astore_3
    //   498: goto -318 -> 180
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	501	0	this	f
    //   0	501	1	paramau	au
    //   0	501	2	paramc	c
    //   1	497	3	localObject1	Object
    //   9	482	4	locala	a
    //   149	190	5	localObject2	Object
    //   17	347	6	locale	com.sleepycat.b.e
    //   64	241	7	localm1	com.sleepycat.b.m
    //   73	247	8	localm2	com.sleepycat.b.m
    //   190	214	9	localStringBuilder	StringBuilder
    //   181	120	10	i1	int
    //   219	15	11	l1	long
    //   106	3	13	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   19	26	359	finally
    //   57	108	359	finally
    //   135	151	359	finally
    //   183	206	359	finally
    //   206	254	359	finally
    //   259	296	359	finally
    //   302	316	359	finally
    //   319	356	359	finally
    //   385	475	359	finally
    //   2	11	475	finally
    //   11	19	487	finally
  }
  
  private au b(au paramau, long paramLong, com.sleepycat.b.n.z paramz)
  {
    int i2 = 1;
    Object localObject1 = paramau.e();
    Object localObject2 = null;
    for (;;)
    {
      com.sleepycat.b.e locale;
      com.sleepycat.b.m localm;
      Object localObject3;
      int i1;
      try
      {
        locale = a(paramz);
        localObject2 = locale;
        localm = new com.sleepycat.b.m();
        localObject2 = locale;
        localObject3 = new com.sleepycat.b.m();
        localObject2 = locale;
        com.sleepycat.a.a.g.a(paramau.c, localm);
        localObject2 = locale;
        if (locale.f(localm, (com.sleepycat.b.m)localObject3, ao.a) != av.a) {
          break label260;
        }
        localObject2 = locale;
        if (c.a((com.sleepycat.b.m)localObject3).d(paramau))
        {
          i1 = i2;
          if (i1 != 0) {
            break label307;
          }
          localObject2 = locale;
          paramz = this.h.c;
          paramau = paramz;
          if (locale != null)
          {
            paramau = paramz;
            locale.close();
          }
          return paramau;
        }
        localObject2 = locale;
        paramz = locale.d(localm, (com.sleepycat.b.m)localObject3, ao.a);
        localObject2 = locale;
        if (!k)
        {
          localObject2 = locale;
          if (paramz != av.a)
          {
            localObject2 = locale;
            throw new AssertionError();
          }
        }
      }
      finally
      {
        if (localObject2 != null) {
          ((com.sleepycat.b.e)localObject2).close();
        }
      }
      localObject2 = locale;
      if (a(paramz, localm))
      {
        i1 = i2;
        localObject2 = locale;
        if (c.a((com.sleepycat.b.m)localObject3).d(paramau)) {}
      }
      else
      {
        localObject2 = locale;
        locale.c(localm, (com.sleepycat.b.m)localObject3, ao.a);
        i1 = i2;
        continue;
        label260:
        localObject2 = locale;
        if (a(locale.b(localm, (com.sleepycat.b.m)localObject3, ao.a), localm))
        {
          i1 = i2;
          localObject2 = locale;
          if (c.a((com.sleepycat.b.m)localObject3).d(paramau)) {
            continue;
          }
          break label602;
          label307:
          localObject2 = locale;
          c localc = c.a((com.sleepycat.b.m)localObject3);
          localObject2 = locale;
          paramz = (com.sleepycat.b.n.z)localObject1;
          if (localc.d().b(paramau) < 0)
          {
            localObject2 = locale;
            localc.b(paramau, paramLong);
            localObject2 = locale;
            localObject1 = localc.e();
            localObject2 = locale;
            new e((byte)0).objectToEntry(localc, (com.sleepycat.b.m)localObject3);
            localObject2 = locale;
            if (locale.a((com.sleepycat.b.m)localObject3) != av.a)
            {
              localObject2 = locale;
              throw aa.a(this.b, "Couldn't update " + localc);
            }
            localObject2 = locale;
            paramz = (com.sleepycat.b.n.z)localObject1;
            if (locale.c(localm, (com.sleepycat.b.m)localObject3, ao.a) != av.a)
            {
              paramau = (au)localObject1;
              if (locale == null) {
                continue;
              }
              paramau = (au)localObject1;
              continue;
            }
          }
          localObject2 = locale;
          localObject1 = new com.sleepycat.b.m();
          localObject2 = locale;
          ((com.sleepycat.b.m)localObject1).a(0, 0, true);
          do
          {
            localObject2 = locale;
            localObject3 = locale.b();
            localObject2 = locale;
            if (localObject3 != av.a)
            {
              localObject2 = locale;
              throw aa.a(this.b, "Couldn't delete after vlsn " + paramau + " status=" + localObject3);
            }
            localObject2 = locale;
          } while (locale.c(localm, (com.sleepycat.b.m)localObject1, ao.a) == av.a);
          localObject2 = locale;
          this.o.b(0L);
          paramau = paramz;
          if (locale == null) {
            continue;
          }
          paramau = paramz;
          continue;
        }
        label602:
        i1 = 0;
      }
    }
  }
  
  private c c(au paramau)
  {
    c localc2 = this.h.b(paramau);
    c localc1 = localc2;
    if (localc2 == null) {
      localc1 = d(paramau);
    }
    return localc1;
  }
  
  private c d(au paramau)
  {
    Object localObject = null;
    com.sleepycat.b.e locale = null;
    com.sleepycat.b.m localm1 = new com.sleepycat.b.m();
    com.sleepycat.b.m localm2 = new com.sleepycat.b.m();
    try
    {
      locala = a.a(this.b);
      localObject = locale;
      try
      {
        locale = a(locala);
        localObject = locale;
        if (a(locale, paramau, localm1, localm2))
        {
          localObject = locale;
          paramau = c.a(localm2);
          if (locale != null) {
            locale.close();
          }
          if (locala != null) {
            locala.a_(true);
          }
          return paramau;
        }
        localObject = locale;
        throw aa.a(this.b, "Couldn't find bucket for LTE VLSN " + paramau + "in database. tracker=" + this.h);
      }
      finally {}
    }
    finally
    {
      a locala = null;
    }
    if (localObject != null) {
      ((com.sleepycat.b.e)localObject).close();
    }
    if (locala != null) {
      locala.a_(true);
    }
    throw paramau;
  }
  
  public final long a(au paramau)
  {
    return c(paramau).b();
  }
  
  public final al a(au paramau, int paramInt)
  {
    if (this.h.b().c.b(paramau) >= 0) {
      ??? = this.i.a(paramau);
    }
    Object localObject2;
    do
    {
      return (al)???;
      try
      {
        if (this.h.b().c.b(paramau) >= 0)
        {
          paramau = this.i.a(paramau);
          return paramau;
        }
      }
      finally {}
      synchronized (this.e)
      {
        if (this.c == null)
        {
          this.d = paramau;
          this.c = new i();
        }
        while (paramau.a(this.d))
        {
          localObject2 = this.c;
          if ((((i)localObject2).await(paramInt, TimeUnit.MILLISECONDS)) && (!((i)localObject2).b)) {
            break;
          }
          throw new k();
        }
        throw aa.a(this.b, "unexpected get for VLSN: " + paramau + "already waiting for VLSN: " + this.d + " current range=" + this.h.b());
      }
      if (this.h.b().c.b(paramau) < 0) {
        throw aa.a(this.b, "Waited for vlsn:" + paramau + " should be greater than last in range:" + this.h.b().c);
      }
      localObject2 = ((i)localObject2).a;
      ??? = localObject2;
    } while (((al)localObject2).g.e.a(paramau));
    return null;
  }
  
  public final c a(au paramau, c paramc)
  {
    c localc2 = this.h.a(paramau);
    c localc1 = localc2;
    if (localc2 == null) {
      localc1 = b(paramau, paramc);
    }
    return localc1;
  }
  
  public final void a()
  {
    Object localObject = this.h.b().c;
    if (((au)localObject).a(au.a))
    {
      if (this.b.m) {}
      for (localObject = new AtomicLong(1L);; localObject = new AtomicLong(0L))
      {
        this.g = ((AtomicLong)localObject);
        return;
      }
    }
    this.g = new AtomicLong(((au)localObject).c);
  }
  
  /* Error */
  public final void a(au paramau, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 71	com/sleepycat/b/i/i/f:f	Ljava/util/logging/Logger;
    //   6: aload_0
    //   7: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   10: new 238	java/lang/StringBuilder
    //   13: dup
    //   14: ldc_w 556
    //   17: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   24: ldc_w 558
    //   27: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: lload_2
    //   31: invokevirtual 374	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   34: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokestatic 560	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   40: aload_0
    //   41: getfield 186	com/sleepycat/b/i/i/f:i	Lcom/sleepycat/b/i/i/b;
    //   44: invokevirtual 562	com/sleepycat/b/i/i/b:a	()V
    //   47: aload_1
    //   48: getstatic 546	com/sleepycat/b/p/au:a	Lcom/sleepycat/b/p/au;
    //   51: invokevirtual 262	com/sleepycat/b/p/au:a	(Lcom/sleepycat/b/p/au;)Z
    //   54: istore 6
    //   56: iload 6
    //   58: ifeq +6 -> 64
    //   61: aload_0
    //   62: monitorexit
    //   63: return
    //   64: aload_0
    //   65: getfield 149	com/sleepycat/b/i/i/f:h	Lcom/sleepycat/b/i/i/p;
    //   68: invokevirtual 220	com/sleepycat/b/i/i/p:b	()Lcom/sleepycat/b/i/i/m;
    //   71: astore 4
    //   73: aload 4
    //   75: getfield 227	com/sleepycat/b/i/i/m:b	Lcom/sleepycat/b/p/au;
    //   78: aload_1
    //   79: invokevirtual 236	com/sleepycat/b/p/au:b	(Lcom/sleepycat/b/p/au;)I
    //   82: ifgt -21 -> 61
    //   85: aload 4
    //   87: getfield 227	com/sleepycat/b/i/i/m:b	Lcom/sleepycat/b/p/au;
    //   90: getstatic 546	com/sleepycat/b/p/au:a	Lcom/sleepycat/b/p/au;
    //   93: invokevirtual 262	com/sleepycat/b/p/au:a	(Lcom/sleepycat/b/p/au;)Z
    //   96: ifeq +33 -> 129
    //   99: aload_0
    //   100: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   103: new 238	java/lang/StringBuilder
    //   106: dup
    //   107: ldc_w 564
    //   110: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: aload_1
    //   114: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   117: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokestatic 259	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   123: athrow
    //   124: astore_1
    //   125: aload_0
    //   126: monitorexit
    //   127: aload_1
    //   128: athrow
    //   129: aload 4
    //   131: getfield 566	com/sleepycat/b/i/i/m:f	Lcom/sleepycat/b/p/au;
    //   134: getstatic 546	com/sleepycat/b/p/au:a	Lcom/sleepycat/b/p/au;
    //   137: invokevirtual 262	com/sleepycat/b/p/au:a	(Lcom/sleepycat/b/p/au;)Z
    //   140: ifne +54 -> 194
    //   143: aload_1
    //   144: aload 4
    //   146: getfield 566	com/sleepycat/b/i/i/m:f	Lcom/sleepycat/b/p/au;
    //   149: invokevirtual 236	com/sleepycat/b/p/au:b	(Lcom/sleepycat/b/p/au;)I
    //   152: ifle +42 -> 194
    //   155: aload_0
    //   156: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   159: new 238	java/lang/StringBuilder
    //   162: dup
    //   163: ldc_w 568
    //   166: invokespecial 243	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   169: aload_1
    //   170: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   173: ldc_w 570
    //   176: invokevirtual 252	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload 4
    //   181: getfield 566	com/sleepycat/b/i/i/m:f	Lcom/sleepycat/b/p/au;
    //   184: invokevirtual 247	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   187: invokevirtual 256	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: invokestatic 259	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   193: athrow
    //   194: aload_0
    //   195: getfield 149	com/sleepycat/b/i/i/f:h	Lcom/sleepycat/b/i/i/p;
    //   198: aload_1
    //   199: lload_2
    //   200: invokevirtual 572	com/sleepycat/b/i/i/p:a	(Lcom/sleepycat/b/p/au;J)V
    //   203: new 100	com/sleepycat/b/br
    //   206: dup
    //   207: invokespecial 101	com/sleepycat/b/br:<init>	()V
    //   210: astore 4
    //   212: aload 4
    //   214: getstatic 574	com/sleepycat/b/u:b	Lcom/sleepycat/b/u;
    //   217: invokevirtual 268	com/sleepycat/b/br:a	(Lcom/sleepycat/b/u;)Lcom/sleepycat/b/br;
    //   220: pop
    //   221: aload_0
    //   222: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   225: aload 4
    //   227: invokestatic 270	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)Lcom/sleepycat/b/n/z;
    //   230: astore 4
    //   232: aload_0
    //   233: getfield 58	com/sleepycat/b/i/i/f:l	Ljava/lang/Object;
    //   236: astore 5
    //   238: aload 5
    //   240: monitorenter
    //   241: aload_0
    //   242: aload_1
    //   243: lload_2
    //   244: aload 4
    //   246: invokespecial 576	com/sleepycat/b/i/i/f:a	(Lcom/sleepycat/b/p/au;JLcom/sleepycat/b/n/z;)V
    //   249: aload_0
    //   250: aload 4
    //   252: invokespecial 281	com/sleepycat/b/i/i/f:a	(Lcom/sleepycat/b/n/z;)V
    //   255: aload 5
    //   257: monitorexit
    //   258: aload 4
    //   260: invokevirtual 284	com/sleepycat/b/n/z:m	()J
    //   263: pop2
    //   264: aload_0
    //   265: getfield 60	com/sleepycat/b/i/i/f:b	Lcom/sleepycat/b/c/ad;
    //   268: getfield 580	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   271: invokevirtual 583	com/sleepycat/b/g/am:a	()V
    //   274: goto -213 -> 61
    //   277: astore_1
    //   278: aload 4
    //   280: invokevirtual 286	com/sleepycat/b/n/z:n	()V
    //   283: aload_1
    //   284: athrow
    //   285: astore_1
    //   286: aload 5
    //   288: monitorexit
    //   289: aload_1
    //   290: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	291	0	this	f
    //   0	291	1	paramau	au
    //   0	291	2	paramLong	long
    //   71	208	4	localObject1	Object
    //   54	3	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	56	124	finally
    //   64	124	124	finally
    //   129	194	124	finally
    //   194	232	124	finally
    //   278	285	124	finally
    //   232	241	277	finally
    //   258	274	277	finally
    //   289	291	277	finally
    //   241	258	285	finally
    //   286	289	285	finally
  }
  
  public final void a(u paramu)
  {
    br localbr = new br();
    localbr.a(paramu);
    paramu = com.sleepycat.b.n.z.a(this.b, localbr);
    try
    {
      a(paramu);
      paramu.m();
      return;
    }
    finally
    {
      paramu.n();
    }
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    try
    {
      a(u.a);
      if (this.c != null)
      {
        this.c.a();
        w.d(this.f, this.b, "Outstanding VLSN put latch cleared at close");
      }
      return;
    }
    finally
    {
      if (this.m != null)
      {
        this.b.q.c(this.m);
        this.m = null;
      }
    }
  }
  
  public final long b(au paramau)
  {
    return a(paramau, null).a(paramau);
  }
  
  public final void b()
  {
    try
    {
      if (this.c != null)
      {
        this.c.a();
        this.c = null;
      }
      this.d = null;
      this.g = null;
      return;
    }
    finally {}
  }
  
  public final void b(au paramau, long paramLong)
  {
    try
    {
      this.i.a();
      boolean bool = this.h.b().c.d().a(paramau);
      if (!bool) {
        break label36;
      }
    }
    finally
    {
      try
      {
        label36:
        b(paramau, paramLong, (com.sleepycat.b.n.z)localObject);
        a((com.sleepycat.b.n.z)localObject);
        ((com.sleepycat.b.n.z)localObject).m();
      }
      finally
      {
        Object localObject;
        ((com.sleepycat.b.n.z)localObject).n();
      }
    }
    return;
    this.h.b(paramau, paramLong);
    localObject = new br();
    ((br)localObject).a(u.a);
    localObject = com.sleepycat.b.n.z.a(this.b, (br)localObject);
  }
  
  public final void c()
  {
    try
    {
      a(false);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\i\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */