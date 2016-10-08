package com.sleepycat.b.a;

import com.sleepycat.b.b.d;
import com.sleepycat.b.c.ab;
import com.sleepycat.b.c.i;
import com.sleepycat.b.c.m;
import com.sleepycat.b.g.av;
import com.sleepycat.b.l.ac;
import com.sleepycat.b.l.y;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.o;
import com.sleepycat.b.p.w;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;

public class c
  implements ab
{
  static final com.sleepycat.b.a a;
  com.sleepycat.b.p.z A;
  public com.sleepycat.b.p.z B;
  public com.sleepycat.b.p.l C;
  public o D;
  long E;
  int F;
  int G;
  long H;
  boolean I;
  public boolean J;
  public boolean K;
  int L;
  long M;
  public boolean N;
  public boolean O;
  boolean P;
  int Q;
  public boolean R;
  public boolean S;
  public final boolean T;
  int U;
  int V;
  int W;
  public Set<Long> X = Collections.emptySet();
  public Set<Long> Y = Collections.emptySet();
  public final com.sleepycat.b.c.ad Z;
  public final ad aa;
  public final ae ab;
  public final aa ac;
  public final k ad;
  public h[] ae;
  final AtomicLong af;
  com.sleepycat.b.p.ao ag;
  private final LinkedList<Integer> ai = new LinkedList();
  private final String aj;
  private final List<Long> ak;
  private final Logger al;
  private final AtomicBoolean am = new AtomicBoolean(false);
  public ai b;
  com.sleepycat.b.p.z c;
  com.sleepycat.b.p.z d;
  com.sleepycat.b.p.z e;
  com.sleepycat.b.p.z f;
  com.sleepycat.b.p.z g;
  com.sleepycat.b.p.z h;
  com.sleepycat.b.p.z i;
  com.sleepycat.b.p.z j;
  com.sleepycat.b.p.z k;
  com.sleepycat.b.p.z l;
  com.sleepycat.b.p.z m;
  com.sleepycat.b.p.z n;
  com.sleepycat.b.p.z o;
  com.sleepycat.b.p.z p;
  com.sleepycat.b.p.z q;
  com.sleepycat.b.p.z r;
  com.sleepycat.b.p.z s;
  com.sleepycat.b.p.z t;
  com.sleepycat.b.p.z u;
  public com.sleepycat.b.p.z v;
  public com.sleepycat.b.p.z w;
  public com.sleepycat.b.p.z x;
  com.sleepycat.b.p.z y;
  com.sleepycat.b.p.z z;
  
  static
  {
    if (!c.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      ah = bool;
      a = com.sleepycat.b.a.c;
      return;
    }
  }
  
  public c(com.sleepycat.b.c.ad paramad, String paramString)
  {
    this.Z = paramad;
    this.aj = paramString;
    this.b = new ai("Cleaning", "Frequency and extent of log file cleaning activity.");
    this.c = new com.sleepycat.b.p.z(this.b, e.c);
    this.d = new com.sleepycat.b.p.z(this.b, e.d);
    this.e = new com.sleepycat.b.p.z(this.b, e.e);
    this.f = new com.sleepycat.b.p.z(this.b, e.g);
    this.g = new com.sleepycat.b.p.z(this.b, e.h);
    this.h = new com.sleepycat.b.p.z(this.b, e.i);
    this.i = new com.sleepycat.b.p.z(this.b, e.j);
    this.j = new com.sleepycat.b.p.z(this.b, e.k);
    this.k = new com.sleepycat.b.p.z(this.b, e.l);
    this.l = new com.sleepycat.b.p.z(this.b, e.m);
    this.m = new com.sleepycat.b.p.z(this.b, e.n);
    this.n = new com.sleepycat.b.p.z(this.b, e.o);
    this.o = new com.sleepycat.b.p.z(this.b, e.p);
    this.p = new com.sleepycat.b.p.z(this.b, e.q);
    this.q = new com.sleepycat.b.p.z(this.b, e.r);
    this.r = new com.sleepycat.b.p.z(this.b, e.s);
    this.s = new com.sleepycat.b.p.z(this.b, e.t);
    this.t = new com.sleepycat.b.p.z(this.b, e.u);
    this.u = new com.sleepycat.b.p.z(this.b, e.v);
    this.v = new com.sleepycat.b.p.z(this.b, e.w);
    this.w = new com.sleepycat.b.p.z(this.b, e.x);
    this.x = new com.sleepycat.b.p.z(this.b, e.y);
    this.y = new com.sleepycat.b.p.z(this.b, e.z);
    this.z = new com.sleepycat.b.p.z(this.b, e.A);
    this.A = new com.sleepycat.b.p.z(this.b, e.B);
    this.B = new com.sleepycat.b.p.z(this.b, e.C);
    this.C = new com.sleepycat.b.p.l(this.b, e.D);
    this.D = new o(this.b, e.E);
    this.ab = new ae(paramad, this);
    this.aa = new ad(paramad, this.ab);
    this.ac = new aa(paramad, this);
    this.ad = new k();
    this.ae = new h[0];
    this.ak = new LinkedList();
    this.al = w.a(getClass());
    this.af = new AtomicLong(0L);
    this.N = paramad.u.a(d.aV);
    this.T = paramad.u.a(d.aX);
    a(paramad.u);
    paramad.a(this);
  }
  
  private static float a(Collection<Integer> paramCollection)
  {
    Iterator localIterator = paramCollection.iterator();
    for (float f1 = 0.0F; localIterator.hasNext(); f1 = ((Integer)localIterator.next()).intValue() + f1) {}
    return f1 / paramCollection.size();
  }
  
  static av a(y paramy)
  {
    long l1 = paramy.m();
    if (l1 <= 0L) {
      return av.g;
    }
    return new av(new au(l1), (byte)0);
  }
  
  private void a(m paramm)
  {
    this.E = paramm.a(d.aF);
    this.F = paramm.a(d.aT);
    if (this.F <= 0) {
      this.F = paramm.a(d.L);
    }
    this.G = paramm.a(d.bb);
    this.R = paramm.a(d.bc);
    this.S = paramm.a(d.bd);
    this.H = paramm.a(d.aE);
    this.I = paramm.a(d.aG);
    this.J = paramm.a(d.aQ);
    this.K = paramm.a(d.aR);
    this.L = paramm.a(d.aS);
    this.Q = paramm.a(d.bf);
    if ((this.J) && (this.K)) {
      throw new IllegalArgumentException("Both " + d.aQ + " and " + d.aR + " may not be set to true.");
    }
    int i2 = paramm.a(d.ba);
    if ((!ah) && (i2 <= 0)) {
      throw new AssertionError();
    }
    if (i2 != this.ae.length)
    {
      int i1 = i2;
      while (i1 < this.ae.length)
      {
        if (this.ae[i1] != null)
        {
          this.ae[i1].e();
          this.ae[i1] = null;
        }
        i1 += 1;
      }
      h[] arrayOfh = new h[i2];
      i1 = 0;
      while ((i1 < i2) && (i1 < this.ae.length))
      {
        arrayOfh[i1] = this.ae[i1];
        i1 += 1;
      }
      this.ae = arrayOfh;
      i1 = 0;
      while (i1 < i2)
      {
        if (this.ae[i1] == null) {
          this.ae[i1] = new h(this.aj + '-' + (i1 + 1), this.Z, this, this.aa, this.ac, this.ad);
        }
        i1 += 1;
      }
    }
    this.M = paramm.a(d.aB);
    if (this.M == 0L) {
      this.M = (paramm.a(d.N) / 4L);
    }
    this.O = paramm.a(d.aC);
    if ((paramm.a(d.be)) && (!paramm.a(d.ay))) {}
    for (boolean bool = true;; bool = false)
    {
      this.P = bool;
      this.W = paramm.a(d.aK);
      this.U = paramm.a(d.az);
      this.V = paramm.a(d.aA);
      return;
    }
  }
  
  public final void a()
  {
    h[] arrayOfh = this.ae;
    int i2 = arrayOfh.length;
    int i1 = 0;
    while (i1 < i2)
    {
      h localh = arrayOfh[i1];
      if (localh != null) {
        localh.f();
      }
      i1 += 1;
    }
  }
  
  public final void a(long paramLong)
  {
    synchronized (this.ak)
    {
      this.ak.add(Long.valueOf(paramLong));
      return;
    }
  }
  
  final void a(i parami)
  {
    if ((parami != null) && (parami.z()) && (!parami.A()))
    {
      parami = parami.a;
      if (this.ad.a(parami)) {
        w.a(this.al, this.Z, Level.FINE, "CleanAddPendingDB " + parami);
      }
    }
  }
  
  /* Error */
  public final void a(i parami, long paramLong1, com.sleepycat.b.l.a parama, int paramInt, boolean paramBoolean1, boolean paramBoolean2, long paramLong2, boolean paramBoolean3, String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 20
    //   3: aconst_null
    //   4: astore 15
    //   6: lload_2
    //   7: ldc2_w 589
    //   10: lcmp
    //   11: ifne +49 -> 60
    //   14: iload 7
    //   16: ifeq +690 -> 706
    //   19: aload_0
    //   20: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   23: lload 8
    //   25: invokevirtual 592	com/sleepycat/b/a/k:a	(J)V
    //   28: aload 4
    //   30: iload 5
    //   32: iconst_0
    //   33: invokevirtual 597	com/sleepycat/b/l/a:b	(IZ)V
    //   36: iconst_0
    //   37: ifeq +11 -> 48
    //   40: new 599	java/lang/NullPointerException
    //   43: dup
    //   44: invokespecial 600	java/lang/NullPointerException:<init>	()V
    //   47: athrow
    //   48: aload_0
    //   49: aload 11
    //   51: aconst_null
    //   52: lload_2
    //   53: iconst_1
    //   54: iconst_0
    //   55: iconst_0
    //   56: invokevirtual 603	com/sleepycat/b/a/c:a	(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    //   59: return
    //   60: aload 4
    //   62: iload 5
    //   64: invokevirtual 606	com/sleepycat/b/l/a:o	(I)Z
    //   67: ifne +1057 -> 1124
    //   70: aload 4
    //   72: iload 5
    //   74: invokevirtual 609	com/sleepycat/b/l/a:j	(I)Lcom/sleepycat/b/l/ac;
    //   77: checkcast 386	com/sleepycat/b/l/y
    //   80: astore 12
    //   82: aload 12
    //   84: ifnonnull +1034 -> 1118
    //   87: aload 4
    //   89: iload 5
    //   91: invokevirtual 611	com/sleepycat/b/l/a:g	(I)Lcom/sleepycat/b/l/ac;
    //   94: checkcast 386	com/sleepycat/b/l/y
    //   97: astore 13
    //   99: aload 13
    //   101: astore 12
    //   103: aload_1
    //   104: getfield 573	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   107: getstatic 614	com/sleepycat/b/c/p:a	Lcom/sleepycat/b/c/h;
    //   110: invokevirtual 619	com/sleepycat/b/c/h:equals	(Ljava/lang/Object;)Z
    //   113: istore 21
    //   115: iload 21
    //   117: ifne +86 -> 203
    //   120: iconst_1
    //   121: istore 16
    //   123: aload 13
    //   125: astore 12
    //   127: aload 12
    //   129: ifnonnull +80 -> 209
    //   132: iload 6
    //   134: ifeq +10 -> 144
    //   137: aload_0
    //   138: getfield 217	com/sleepycat/b/a/c:p	Lcom/sleepycat/b/p/z;
    //   141: invokevirtual 620	com/sleepycat/b/p/z:f	()V
    //   144: iload 7
    //   146: ifeq +703 -> 849
    //   149: aload_0
    //   150: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   153: lload 8
    //   155: invokevirtual 592	com/sleepycat/b/a/k:a	(J)V
    //   158: aload 4
    //   160: iload 5
    //   162: iconst_0
    //   163: invokevirtual 597	com/sleepycat/b/l/a:b	(IZ)V
    //   166: iload 16
    //   168: ifeq +10 -> 178
    //   171: aload 4
    //   173: iload 5
    //   175: invokevirtual 623	com/sleepycat/b/l/a:e	(I)V
    //   178: iconst_0
    //   179: ifeq +11 -> 190
    //   182: new 599	java/lang/NullPointerException
    //   185: dup
    //   186: invokespecial 600	java/lang/NullPointerException:<init>	()V
    //   189: athrow
    //   190: aload_0
    //   191: aload 11
    //   193: aload 12
    //   195: lload_2
    //   196: iconst_1
    //   197: iconst_1
    //   198: iconst_0
    //   199: invokevirtual 603	com/sleepycat/b/a/c:a	(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    //   202: return
    //   203: iconst_0
    //   204: istore 16
    //   206: goto -83 -> 123
    //   209: lload 8
    //   211: lload_2
    //   212: lcmp
    //   213: ifeq +899 -> 1112
    //   216: aload_0
    //   217: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   220: iconst_0
    //   221: invokestatic 628	com/sleepycat/b/n/a:a	(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;
    //   224: astore 13
    //   226: aload 13
    //   228: iconst_0
    //   229: putfield 632	com/sleepycat/b/n/q:r	Z
    //   232: aload 13
    //   234: lload_2
    //   235: getstatic 637	com/sleepycat/b/n/o:a	Lcom/sleepycat/b/n/o;
    //   238: iconst_0
    //   239: aload_1
    //   240: invokevirtual 640	com/sleepycat/b/n/a:b	(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;
    //   243: getfield 645	com/sleepycat/b/n/m:a	Lcom/sleepycat/b/n/h;
    //   246: getstatic 649	com/sleepycat/b/n/h:f	Lcom/sleepycat/b/n/h;
    //   249: if_acmpne +77 -> 326
    //   252: iload 6
    //   254: ifeq +10 -> 264
    //   257: aload_0
    //   258: getfield 221	com/sleepycat/b/a/c:q	Lcom/sleepycat/b/p/z;
    //   261: invokevirtual 620	com/sleepycat/b/p/z:f	()V
    //   264: iload 7
    //   266: ifeq +596 -> 862
    //   269: iload 16
    //   271: istore 17
    //   273: aload 4
    //   275: iload 5
    //   277: iconst_0
    //   278: invokevirtual 597	com/sleepycat/b/l/a:b	(IZ)V
    //   281: iload 17
    //   283: ifeq +10 -> 293
    //   286: aload 4
    //   288: iload 5
    //   290: invokevirtual 623	com/sleepycat/b/l/a:e	(I)V
    //   293: iload 20
    //   295: istore 6
    //   297: aload 13
    //   299: ifnull +13 -> 312
    //   302: aload 13
    //   304: iconst_1
    //   305: invokevirtual 652	com/sleepycat/b/n/q:a_	(Z)V
    //   308: iload 20
    //   310: istore 6
    //   312: aload_0
    //   313: aload 11
    //   315: aload 12
    //   317: lload_2
    //   318: iconst_1
    //   319: iconst_0
    //   320: iload 6
    //   322: invokevirtual 603	com/sleepycat/b/a/c:a	(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    //   325: return
    //   326: aload 12
    //   328: invokevirtual 654	com/sleepycat/b/l/y:i	()Z
    //   331: ifeq +70 -> 401
    //   334: aload 4
    //   336: iload 5
    //   338: invokevirtual 656	com/sleepycat/b/l/a:b	(I)V
    //   341: iload 6
    //   343: ifeq +10 -> 353
    //   346: aload_0
    //   347: getfield 217	com/sleepycat/b/a/c:p	Lcom/sleepycat/b/p/z;
    //   350: invokevirtual 620	com/sleepycat/b/p/z:f	()V
    //   353: iload 7
    //   355: ifeq +628 -> 983
    //   358: aload_0
    //   359: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   362: lload 8
    //   364: invokevirtual 592	com/sleepycat/b/a/k:a	(J)V
    //   367: aload 4
    //   369: iload 5
    //   371: iconst_0
    //   372: invokevirtual 597	com/sleepycat/b/l/a:b	(IZ)V
    //   375: iload 16
    //   377: ifeq +10 -> 387
    //   380: aload 4
    //   382: iload 5
    //   384: invokevirtual 623	com/sleepycat/b/l/a:e	(I)V
    //   387: aload 13
    //   389: ifnull -199 -> 190
    //   392: aload 13
    //   394: iconst_1
    //   395: invokevirtual 652	com/sleepycat/b/n/q:a_	(Z)V
    //   398: goto -208 -> 190
    //   401: aload 4
    //   403: iload 5
    //   405: invokevirtual 658	com/sleepycat/b/l/a:i	(I)Z
    //   408: ifeq +94 -> 502
    //   411: lload_2
    //   412: invokestatic 663	com/sleepycat/b/p/j:d	(J)J
    //   415: lstore 18
    //   417: aload_0
    //   418: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   421: lload 18
    //   423: invokestatic 557	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   426: invokevirtual 666	com/sleepycat/b/a/k:a	(Ljava/lang/Long;)Z
    //   429: istore 20
    //   431: iload 20
    //   433: ifne +69 -> 502
    //   436: iconst_1
    //   437: istore 10
    //   439: iconst_1
    //   440: istore 20
    //   442: iload 6
    //   444: ifeq +10 -> 454
    //   447: aload_0
    //   448: getfield 217	com/sleepycat/b/a/c:p	Lcom/sleepycat/b/p/z;
    //   451: invokevirtual 620	com/sleepycat/b/p/z:f	()V
    //   454: iload 7
    //   456: ifeq +540 -> 996
    //   459: aload_0
    //   460: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   463: lload 8
    //   465: invokevirtual 592	com/sleepycat/b/a/k:a	(J)V
    //   468: aload 4
    //   470: iload 5
    //   472: iconst_0
    //   473: invokevirtual 597	com/sleepycat/b/l/a:b	(IZ)V
    //   476: iload 16
    //   478: ifeq +10 -> 488
    //   481: aload 4
    //   483: iload 5
    //   485: invokevirtual 623	com/sleepycat/b/l/a:e	(I)V
    //   488: aload 13
    //   490: ifnull -300 -> 190
    //   493: aload 13
    //   495: iconst_1
    //   496: invokevirtual 652	com/sleepycat/b/n/q:a_	(Z)V
    //   499: goto -309 -> 190
    //   502: aload 12
    //   504: aload_0
    //   505: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   508: aload_1
    //   509: aload 4
    //   511: iload 5
    //   513: invokevirtual 669	com/sleepycat/b/l/a:h	(I)[B
    //   516: lload_2
    //   517: iload 10
    //   519: aload 12
    //   521: invokestatic 671	com/sleepycat/b/a/c:a	(Lcom/sleepycat/b/l/y;)Lcom/sleepycat/b/g/av;
    //   524: invokevirtual 674	com/sleepycat/b/l/y:a	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/i;[BJZLcom/sleepycat/b/g/av;)J
    //   527: lstore 18
    //   529: aload 4
    //   531: iload 5
    //   533: lload 18
    //   535: invokevirtual 677	com/sleepycat/b/l/a:c	(IJ)V
    //   538: aload_0
    //   539: getfield 225	com/sleepycat/b/a/c:r	Lcom/sleepycat/b/p/z;
    //   542: invokevirtual 620	com/sleepycat/b/p/z:f	()V
    //   545: aload_1
    //   546: lload_2
    //   547: lload 18
    //   549: aload 13
    //   551: invokestatic 682	com/sleepycat/b/c/c:a	(Lcom/sleepycat/b/c/i;JJLcom/sleepycat/b/n/q;)V
    //   554: iconst_1
    //   555: istore 10
    //   557: iload 7
    //   559: ifeq +450 -> 1009
    //   562: aload_0
    //   563: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   566: lload 8
    //   568: invokevirtual 592	com/sleepycat/b/a/k:a	(J)V
    //   571: aload 4
    //   573: iload 5
    //   575: iconst_0
    //   576: invokevirtual 597	com/sleepycat/b/l/a:b	(IZ)V
    //   579: iload 16
    //   581: ifeq +10 -> 591
    //   584: aload 4
    //   586: iload 5
    //   588: invokevirtual 623	com/sleepycat/b/l/a:e	(I)V
    //   591: iload 10
    //   593: istore 6
    //   595: aload 13
    //   597: ifnull -285 -> 312
    //   600: aload 13
    //   602: iconst_1
    //   603: invokevirtual 652	com/sleepycat/b/n/q:a_	(Z)V
    //   606: iload 10
    //   608: istore 6
    //   610: goto -298 -> 312
    //   613: astore 13
    //   615: aconst_null
    //   616: astore 14
    //   618: iconst_0
    //   619: istore 6
    //   621: iconst_0
    //   622: istore 10
    //   624: iconst_0
    //   625: istore 16
    //   627: aload 15
    //   629: astore 12
    //   631: iload 7
    //   633: ifeq +86 -> 719
    //   636: iload 16
    //   638: istore 17
    //   640: iload 6
    //   642: ifeq +16 -> 658
    //   645: aload_0
    //   646: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   649: lload 8
    //   651: invokevirtual 592	com/sleepycat/b/a/k:a	(J)V
    //   654: iload 16
    //   656: istore 17
    //   658: aload 4
    //   660: iload 5
    //   662: iconst_0
    //   663: invokevirtual 597	com/sleepycat/b/l/a:b	(IZ)V
    //   666: iload 17
    //   668: ifeq +10 -> 678
    //   671: aload 4
    //   673: iload 5
    //   675: invokevirtual 623	com/sleepycat/b/l/a:e	(I)V
    //   678: aload 14
    //   680: ifnull +9 -> 689
    //   683: aload 14
    //   685: iconst_1
    //   686: invokevirtual 652	com/sleepycat/b/n/q:a_	(Z)V
    //   689: aload_0
    //   690: aload 11
    //   692: aload 12
    //   694: lload_2
    //   695: iload 6
    //   697: iload 10
    //   699: iconst_0
    //   700: invokevirtual 603	com/sleepycat/b/a/c:a	(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    //   703: aload 13
    //   705: athrow
    //   706: aload 4
    //   708: iload 5
    //   710: invokevirtual 658	com/sleepycat/b/l/a:i	(I)Z
    //   713: ifeq -685 -> 28
    //   716: goto -688 -> 28
    //   719: iload 16
    //   721: istore 17
    //   723: aload 4
    //   725: iload 5
    //   727: invokevirtual 658	com/sleepycat/b/l/a:i	(I)Z
    //   730: ifeq -72 -> 658
    //   733: iload 16
    //   735: istore 17
    //   737: iload 6
    //   739: ifne -81 -> 658
    //   742: iload 16
    //   744: istore 17
    //   746: aload 12
    //   748: ifnull -90 -> 658
    //   751: aload_0
    //   752: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   755: lload_2
    //   756: aload 12
    //   758: aload_1
    //   759: getfield 573	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   762: aload 4
    //   764: iload 5
    //   766: invokevirtual 669	com/sleepycat/b/l/a:h	(I)[B
    //   769: invokevirtual 685	com/sleepycat/b/a/k:a	(JLcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[B)Z
    //   772: pop
    //   773: aload_0
    //   774: getfield 307	com/sleepycat/b/a/c:ae	[Lcom/sleepycat/b/a/h;
    //   777: astore_1
    //   778: aload_1
    //   779: arraylength
    //   780: istore 17
    //   782: iconst_0
    //   783: istore 16
    //   785: iload 16
    //   787: iload 17
    //   789: if_icmpge +45 -> 834
    //   792: aload_1
    //   793: iload 16
    //   795: aaload
    //   796: astore 15
    //   798: aload 15
    //   800: ifnull +40 -> 840
    //   803: aload 15
    //   805: getfield 689	com/sleepycat/b/p/h:p	Z
    //   808: istore 7
    //   810: iload 7
    //   812: ifne +16 -> 828
    //   815: aload_0
    //   816: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   819: getfield 692	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   822: getfield 286	com/sleepycat/b/a/c:ab	Lcom/sleepycat/b/a/ae;
    //   825: invokevirtual 694	com/sleepycat/b/a/ae:b	()V
    //   828: iconst_0
    //   829: istore 17
    //   831: goto -173 -> 658
    //   834: iconst_0
    //   835: istore 7
    //   837: goto -27 -> 810
    //   840: iload 16
    //   842: iconst_1
    //   843: iadd
    //   844: istore 16
    //   846: goto -61 -> 785
    //   849: aload 4
    //   851: iload 5
    //   853: invokevirtual 658	com/sleepycat/b/l/a:i	(I)Z
    //   856: ifeq -698 -> 158
    //   859: goto -701 -> 158
    //   862: iload 16
    //   864: istore 17
    //   866: aload 4
    //   868: iload 5
    //   870: invokevirtual 658	com/sleepycat/b/l/a:i	(I)Z
    //   873: ifeq -600 -> 273
    //   876: iload 16
    //   878: istore 17
    //   880: aload 12
    //   882: ifnull -609 -> 273
    //   885: aload_0
    //   886: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   889: lload_2
    //   890: aload 12
    //   892: aload_1
    //   893: getfield 573	com/sleepycat/b/c/i:a	Lcom/sleepycat/b/c/h;
    //   896: aload 4
    //   898: iload 5
    //   900: invokevirtual 669	com/sleepycat/b/l/a:h	(I)[B
    //   903: invokevirtual 685	com/sleepycat/b/a/k:a	(JLcom/sleepycat/b/l/y;Lcom/sleepycat/b/c/h;[B)Z
    //   906: pop
    //   907: aload_0
    //   908: getfield 307	com/sleepycat/b/a/c:ae	[Lcom/sleepycat/b/a/h;
    //   911: astore 14
    //   913: aload 14
    //   915: arraylength
    //   916: istore 17
    //   918: iconst_0
    //   919: istore 16
    //   921: iload 16
    //   923: iload 17
    //   925: if_icmpge +43 -> 968
    //   928: aload 14
    //   930: iload 16
    //   932: aaload
    //   933: astore_1
    //   934: aload_1
    //   935: ifnull +39 -> 974
    //   938: aload_1
    //   939: getfield 689	com/sleepycat/b/p/h:p	Z
    //   942: istore 6
    //   944: iload 6
    //   946: ifne +16 -> 962
    //   949: aload_0
    //   950: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   953: getfield 692	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   956: getfield 286	com/sleepycat/b/a/c:ab	Lcom/sleepycat/b/a/ae;
    //   959: invokevirtual 694	com/sleepycat/b/a/ae:b	()V
    //   962: iconst_0
    //   963: istore 17
    //   965: goto -692 -> 273
    //   968: iconst_0
    //   969: istore 6
    //   971: goto -27 -> 944
    //   974: iload 16
    //   976: iconst_1
    //   977: iadd
    //   978: istore 16
    //   980: goto -59 -> 921
    //   983: aload 4
    //   985: iload 5
    //   987: invokevirtual 658	com/sleepycat/b/l/a:i	(I)Z
    //   990: ifeq -623 -> 367
    //   993: goto -626 -> 367
    //   996: aload 4
    //   998: iload 5
    //   1000: invokevirtual 658	com/sleepycat/b/l/a:i	(I)Z
    //   1003: ifeq -535 -> 468
    //   1006: goto -538 -> 468
    //   1009: aload 4
    //   1011: iload 5
    //   1013: invokevirtual 658	com/sleepycat/b/l/a:i	(I)Z
    //   1016: ifeq -445 -> 571
    //   1019: goto -448 -> 571
    //   1022: astore 13
    //   1024: aconst_null
    //   1025: astore 14
    //   1027: iconst_0
    //   1028: istore 6
    //   1030: iconst_0
    //   1031: istore 10
    //   1033: iconst_0
    //   1034: istore 16
    //   1036: goto -405 -> 631
    //   1039: astore 13
    //   1041: iconst_0
    //   1042: istore 6
    //   1044: iconst_0
    //   1045: istore 10
    //   1047: aconst_null
    //   1048: astore 14
    //   1050: goto -419 -> 631
    //   1053: astore 14
    //   1055: iconst_0
    //   1056: istore 6
    //   1058: iconst_0
    //   1059: istore 10
    //   1061: aload 13
    //   1063: astore 15
    //   1065: aload 14
    //   1067: astore 13
    //   1069: aload 15
    //   1071: astore 14
    //   1073: goto -442 -> 631
    //   1076: astore 15
    //   1078: iconst_0
    //   1079: istore 6
    //   1081: iconst_0
    //   1082: istore 10
    //   1084: aload 13
    //   1086: astore 14
    //   1088: aload 15
    //   1090: astore 13
    //   1092: goto -461 -> 631
    //   1095: astore 15
    //   1097: aload 13
    //   1099: astore 14
    //   1101: aload 15
    //   1103: astore 13
    //   1105: iload 20
    //   1107: istore 6
    //   1109: goto -478 -> 631
    //   1112: aconst_null
    //   1113: astore 13
    //   1115: goto -789 -> 326
    //   1118: iconst_0
    //   1119: istore 16
    //   1121: goto -994 -> 127
    //   1124: aconst_null
    //   1125: astore 12
    //   1127: iconst_0
    //   1128: istore 16
    //   1130: goto -1003 -> 127
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1133	0	this	c
    //   0	1133	1	parami	i
    //   0	1133	2	paramLong1	long
    //   0	1133	4	parama	com.sleepycat.b.l.a
    //   0	1133	5	paramInt	int
    //   0	1133	6	paramBoolean1	boolean
    //   0	1133	7	paramBoolean2	boolean
    //   0	1133	8	paramLong2	long
    //   0	1133	10	paramBoolean3	boolean
    //   0	1133	11	paramString	String
    //   80	1046	12	localObject1	Object
    //   97	504	13	localObject2	Object
    //   613	91	13	localObject3	Object
    //   1022	1	13	localObject4	Object
    //   1039	23	13	localObject5	Object
    //   1067	47	13	localObject6	Object
    //   616	433	14	arrayOfh	h[]
    //   1053	13	14	localObject7	Object
    //   1071	29	14	localObject8	Object
    //   4	1066	15	localObject9	Object
    //   1076	13	15	localObject10	Object
    //   1095	7	15	localObject11	Object
    //   121	1008	16	i1	int
    //   271	693	17	i2	int
    //   415	133	18	l1	long
    //   1	1105	20	bool1	boolean
    //   113	3	21	bool2	boolean
    // Exception table:
    //   from	to	target	type
    //   60	82	613	finally
    //   87	99	1022	finally
    //   103	115	1022	finally
    //   137	144	1039	finally
    //   216	226	1039	finally
    //   226	252	1053	finally
    //   257	264	1053	finally
    //   326	341	1076	finally
    //   346	353	1076	finally
    //   401	431	1076	finally
    //   502	554	1076	finally
    //   447	454	1095	finally
  }
  
  final void a(String paramString, ac paramac, long paramLong, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    if (this.al.isLoggable(Level.FINE))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      if ((paramac instanceof com.sleepycat.b.l.j))
      {
        localStringBuilder.append(" node=");
        localStringBuilder.append(((com.sleepycat.b.l.j)paramac).c);
      }
      localStringBuilder.append(" logLsn=");
      localStringBuilder.append(com.sleepycat.b.p.j.h(paramLong));
      localStringBuilder.append(" complete=").append(paramBoolean1);
      localStringBuilder.append(" obsolete=").append(paramBoolean2);
      localStringBuilder.append(" dirtiedOrMigrated=").append(paramBoolean3);
      w.a(this.al, this.Z, Level.FINE, localStringBuilder.toString());
    }
  }
  
  public final boolean a(com.sleepycat.b.l.a parama, int paramInt, boolean paramBoolean)
  {
    if (parama.G())
    {
      if (parama.i(paramInt)) {}
      do
      {
        return false;
        if (!paramBoolean) {
          return true;
        }
        long l1 = parama.k(paramInt);
        if (l1 == -1L) {
          return true;
        }
        parama = Long.valueOf(com.sleepycat.b.p.j.d(l1));
      } while (((this.R) && (this.X.contains(parama))) || (((this.K) || (this.J)) && (this.Y.contains(parama))));
    }
    return true;
  }
  
  /* Error */
  public final void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   6: invokevirtual 738	com/sleepycat/b/c/ad:n	()V
    //   9: aload_0
    //   10: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   13: invokevirtual 740	com/sleepycat/b/c/ad:m	()Z
    //   16: istore 12
    //   18: iload 12
    //   20: ifeq +6 -> 26
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: aload_0
    //   27: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   30: invokevirtual 743	com/sleepycat/b/a/k:e	()Ljava/util/SortedSet;
    //   33: astore 4
    //   35: aload 4
    //   37: ifnull -14 -> 23
    //   40: aload_0
    //   41: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   44: aload 4
    //   46: invokevirtual 746	com/sleepycat/b/c/ad:a	(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    //   49: astore_2
    //   50: aload_2
    //   51: ifnull -28 -> 23
    //   54: aload_2
    //   55: invokeinterface 751 1 0
    //   60: ifeq +54 -> 114
    //   63: aload_0
    //   64: getfield 320	com/sleepycat/b/a/c:al	Ljava/util/logging/Logger;
    //   67: aload_0
    //   68: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   71: getstatic 754	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   74: new 469	java/lang/StringBuilder
    //   77: dup
    //   78: ldc_w 756
    //   81: invokespecial 474	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   84: aload 4
    //   86: invokeinterface 757 1 0
    //   91: invokevirtual 505	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   94: ldc_w 759
    //   97: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 489	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: invokestatic 761	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   106: goto -83 -> 23
    //   109: astore_1
    //   110: aload_0
    //   111: monitorexit
    //   112: aload_1
    //   113: athrow
    //   114: aload_2
    //   115: iconst_0
    //   116: anewarray 553	java/lang/Long
    //   119: invokeinterface 765 2 0
    //   124: checkcast 767	[Ljava/lang/Long;
    //   127: astore_1
    //   128: aload_1
    //   129: arraylength
    //   130: iconst_1
    //   131: isub
    //   132: istore 11
    //   134: iload 11
    //   136: iflt +44 -> 180
    //   139: aload_1
    //   140: iload 11
    //   142: aaload
    //   143: astore_3
    //   144: aload_0
    //   145: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   148: aload_3
    //   149: invokevirtual 770	com/sleepycat/b/a/k:c	(Ljava/lang/Long;)Lcom/sleepycat/b/p/au;
    //   152: astore 5
    //   154: aload 5
    //   156: ifnull +87 -> 243
    //   159: aload 5
    //   161: invokevirtual 772	com/sleepycat/b/p/au:c	()Z
    //   164: ifne +79 -> 243
    //   167: aload_0
    //   168: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   171: aload 5
    //   173: aload_3
    //   174: invokevirtual 775	java/lang/Long:longValue	()J
    //   177: invokevirtual 778	com/sleepycat/b/c/ad:a	(Lcom/sleepycat/b/p/au;J)V
    //   180: aload_0
    //   181: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   184: getfield 781	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   187: astore_3
    //   188: aload_3
    //   189: iconst_0
    //   190: iconst_1
    //   191: invokevirtual 786	com/sleepycat/b/g/m:a	(ZZ)Z
    //   194: ifne +58 -> 252
    //   197: aload_0
    //   198: getfield 320	com/sleepycat/b/a/c:al	Ljava/util/logging/Logger;
    //   201: aload_0
    //   202: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   205: getstatic 754	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   208: new 469	java/lang/StringBuilder
    //   211: dup
    //   212: ldc_w 756
    //   215: invokespecial 474	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   218: aload 4
    //   220: invokeinterface 757 1 0
    //   225: invokevirtual 505	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   228: ldc_w 788
    //   231: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: invokevirtual 489	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   237: invokestatic 761	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   240: goto -217 -> 23
    //   243: iload 11
    //   245: iconst_1
    //   246: isub
    //   247: istore 11
    //   249: goto -115 -> 134
    //   252: aload_0
    //   253: getfield 309	com/sleepycat/b/a/c:ak	Ljava/util/List;
    //   256: astore 5
    //   258: aload 5
    //   260: monitorenter
    //   261: aload_2
    //   262: astore_1
    //   263: aload_0
    //   264: getfield 309	com/sleepycat/b/a/c:ak	Ljava/util/List;
    //   267: invokeinterface 789 1 0
    //   272: ifne +79 -> 351
    //   275: aload_0
    //   276: getfield 309	com/sleepycat/b/a/c:ak	Ljava/util/List;
    //   279: invokestatic 793	java/util/Collections:min	(Ljava/util/Collection;)Ljava/lang/Object;
    //   282: checkcast 553	java/lang/Long
    //   285: astore_1
    //   286: aload_1
    //   287: invokevirtual 775	java/lang/Long:longValue	()J
    //   290: aload_2
    //   291: invokeinterface 796 1 0
    //   296: checkcast 553	java/lang/Long
    //   299: invokevirtual 775	java/lang/Long:longValue	()J
    //   302: lcmp
    //   303: ifgt +40 -> 343
    //   306: aload 5
    //   308: monitorexit
    //   309: aload_3
    //   310: getfield 799	com/sleepycat/b/g/m:n	Ljava/nio/channels/FileLock;
    //   313: ifnull -290 -> 23
    //   316: aload_3
    //   317: getfield 799	com/sleepycat/b/g/m:n	Ljava/nio/channels/FileLock;
    //   320: invokevirtual 804	java/nio/channels/FileLock:release	()V
    //   323: goto -300 -> 23
    //   326: astore_1
    //   327: new 806	com/sleepycat/b/aa
    //   330: dup
    //   331: aload_3
    //   332: getfield 808	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   335: getstatic 813	com/sleepycat/b/c/ac:m	Lcom/sleepycat/b/c/ac;
    //   338: aload_1
    //   339: invokespecial 816	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V
    //   342: athrow
    //   343: aload_2
    //   344: aload_1
    //   345: invokeinterface 820 2 0
    //   350: astore_1
    //   351: aload_1
    //   352: invokeinterface 821 1 0
    //   357: astore 6
    //   359: aload 6
    //   361: invokeinterface 368 1 0
    //   366: ifeq +347 -> 713
    //   369: aload 6
    //   371: invokeinterface 372 1 0
    //   376: checkcast 553	java/lang/Long
    //   379: astore_2
    //   380: aload_0
    //   381: getfield 445	com/sleepycat/b/a/c:I	Z
    //   384: ifeq +81 -> 465
    //   387: aload_3
    //   388: aload_2
    //   389: invokevirtual 775	java/lang/Long:longValue	()J
    //   392: invokevirtual 824	com/sleepycat/b/g/m:d	(J)Z
    //   395: istore 12
    //   397: iload 12
    //   399: ifeq +116 -> 515
    //   402: aload_0
    //   403: getfield 320	com/sleepycat/b/a/c:al	Ljava/util/logging/Logger;
    //   406: aload_0
    //   407: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   410: getstatic 582	java/util/logging/Level:FINE	Ljava/util/logging/Level;
    //   413: new 469	java/lang/StringBuilder
    //   416: dup
    //   417: ldc_w 826
    //   420: invokespecial 474	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   423: aload_2
    //   424: invokevirtual 775	java/lang/Long:longValue	()J
    //   427: invokestatic 829	java/lang/Long:toHexString	(J)Ljava/lang/String;
    //   430: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: invokevirtual 489	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   436: invokestatic 761	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   439: goto -80 -> 359
    //   442: astore_1
    //   443: aload 5
    //   445: monitorexit
    //   446: aload_1
    //   447: athrow
    //   448: astore_1
    //   449: aload_3
    //   450: getfield 799	com/sleepycat/b/g/m:n	Ljava/nio/channels/FileLock;
    //   453: ifnull +10 -> 463
    //   456: aload_3
    //   457: getfield 799	com/sleepycat/b/g/m:n	Ljava/nio/channels/FileLock;
    //   460: invokevirtual 804	java/nio/channels/FileLock:release	()V
    //   463: aload_1
    //   464: athrow
    //   465: aload_3
    //   466: aload_2
    //   467: invokevirtual 775	java/lang/Long:longValue	()J
    //   470: ldc_w 831
    //   473: invokevirtual 834	com/sleepycat/b/g/m:b	(JLjava/lang/String;)Z
    //   476: istore 12
    //   478: goto -81 -> 397
    //   481: astore_1
    //   482: new 806	com/sleepycat/b/aa
    //   485: dup
    //   486: aload_0
    //   487: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   490: getstatic 836	com/sleepycat/b/c/ac:p	Lcom/sleepycat/b/c/ac;
    //   493: new 469	java/lang/StringBuilder
    //   496: dup
    //   497: ldc_w 838
    //   500: invokespecial 474	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   503: aload_2
    //   504: invokevirtual 478	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   507: invokevirtual 489	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   510: aload_1
    //   511: invokespecial 841	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   514: athrow
    //   515: aload_3
    //   516: aload_2
    //   517: invokevirtual 775	java/lang/Long:longValue	()J
    //   520: invokevirtual 843	com/sleepycat/b/g/m:a	(J)Z
    //   523: ifne +93 -> 616
    //   526: aload_0
    //   527: getfield 320	com/sleepycat/b/a/c:al	Ljava/util/logging/Logger;
    //   530: astore 7
    //   532: aload_0
    //   533: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   536: astore 8
    //   538: getstatic 846	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   541: astore 9
    //   543: new 469	java/lang/StringBuilder
    //   546: dup
    //   547: ldc_w 848
    //   550: invokespecial 474	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   553: aload_2
    //   554: invokevirtual 775	java/lang/Long:longValue	()J
    //   557: invokestatic 829	java/lang/Long:toHexString	(J)Ljava/lang/String;
    //   560: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   563: ldc_w 850
    //   566: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   569: astore 10
    //   571: aload_0
    //   572: getfield 445	com/sleepycat/b/a/c:I	Z
    //   575: ifeq +351 -> 926
    //   578: ldc_w 852
    //   581: astore_2
    //   582: aload 7
    //   584: aload 8
    //   586: aload 9
    //   588: aload 10
    //   590: aload_2
    //   591: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   594: ldc_w 854
    //   597: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   600: aload_0
    //   601: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   604: invokevirtual 478	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   607: invokevirtual 489	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   610: invokestatic 761	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   613: goto -254 -> 359
    //   616: aload 6
    //   618: invokeinterface 857 1 0
    //   623: aload_0
    //   624: getfield 320	com/sleepycat/b/a/c:al	Ljava/util/logging/Logger;
    //   627: astore 7
    //   629: aload_0
    //   630: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   633: astore 8
    //   635: getstatic 754	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   638: astore 9
    //   640: new 469	java/lang/StringBuilder
    //   643: dup
    //   644: ldc_w 848
    //   647: invokespecial 474	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   650: aload_2
    //   651: invokevirtual 775	java/lang/Long:longValue	()J
    //   654: invokestatic 829	java/lang/Long:toHexString	(J)Ljava/lang/String;
    //   657: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   660: ldc_w 859
    //   663: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   666: astore 10
    //   668: aload_0
    //   669: getfield 445	com/sleepycat/b/a/c:I	Z
    //   672: ifeq +261 -> 933
    //   675: ldc_w 852
    //   678: astore_2
    //   679: aload 7
    //   681: aload 8
    //   683: aload 9
    //   685: aload 10
    //   687: aload_2
    //   688: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   691: ldc_w 861
    //   694: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   697: aload_0
    //   698: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   701: invokevirtual 478	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   704: invokevirtual 489	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   707: invokestatic 761	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   710: goto -351 -> 359
    //   713: aload 5
    //   715: monitorexit
    //   716: aload_3
    //   717: getfield 799	com/sleepycat/b/g/m:n	Ljava/nio/channels/FileLock;
    //   720: ifnull +10 -> 730
    //   723: aload_3
    //   724: getfield 799	com/sleepycat/b/g/m:n	Ljava/nio/channels/FileLock;
    //   727: invokevirtual 804	java/nio/channels/FileLock:release	()V
    //   730: aload_0
    //   731: getfield 293	com/sleepycat/b/a/c:aa	Lcom/sleepycat/b/a/ad;
    //   734: aload_1
    //   735: aload_0
    //   736: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   739: aload_1
    //   740: invokevirtual 864	com/sleepycat/b/a/k:a	(Ljava/util/Collection;)Ljava/util/Set;
    //   743: invokevirtual 867	com/sleepycat/b/a/ad:a	(Ljava/util/Collection;Ljava/util/Set;)V
    //   746: aload_1
    //   747: invokeinterface 821 1 0
    //   752: astore_3
    //   753: aload_3
    //   754: invokeinterface 368 1 0
    //   759: ifeq +64 -> 823
    //   762: aload_3
    //   763: invokeinterface 372 1 0
    //   768: checkcast 553	java/lang/Long
    //   771: astore_2
    //   772: aload_0
    //   773: getfield 293	com/sleepycat/b/a/c:aa	Lcom/sleepycat/b/a/ad;
    //   776: aload_2
    //   777: invokevirtual 870	com/sleepycat/b/a/ad:a	(Ljava/lang/Long;)V
    //   780: aload_0
    //   781: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   784: aload_2
    //   785: aload_0
    //   786: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   789: getfield 873	com/sleepycat/b/c/ad:n	Lcom/sleepycat/b/c/ao;
    //   792: invokevirtual 876	com/sleepycat/b/a/k:b	(Ljava/lang/Long;Lcom/sleepycat/b/c/ao;)V
    //   795: aload_0
    //   796: getfield 173	com/sleepycat/b/a/c:e	Lcom/sleepycat/b/p/z;
    //   799: invokevirtual 620	com/sleepycat/b/p/z:f	()V
    //   802: goto -49 -> 753
    //   805: astore_1
    //   806: aload_0
    //   807: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   810: aload_2
    //   811: aload_0
    //   812: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   815: getfield 873	com/sleepycat/b/c/ad:n	Lcom/sleepycat/b/c/ao;
    //   818: invokevirtual 876	com/sleepycat/b/a/k:b	(Ljava/lang/Long;Lcom/sleepycat/b/c/ao;)V
    //   821: aload_1
    //   822: athrow
    //   823: aload 4
    //   825: invokeinterface 757 1 0
    //   830: aload_1
    //   831: invokeinterface 757 1 0
    //   836: if_icmple -813 -> 23
    //   839: aload_0
    //   840: getfield 320	com/sleepycat/b/a/c:al	Ljava/util/logging/Logger;
    //   843: aload_0
    //   844: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   847: getstatic 754	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   850: new 469	java/lang/StringBuilder
    //   853: dup
    //   854: ldc_w 756
    //   857: invokespecial 474	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   860: aload 4
    //   862: invokeinterface 757 1 0
    //   867: aload_1
    //   868: invokeinterface 757 1 0
    //   873: isub
    //   874: invokevirtual 505	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   877: ldc_w 878
    //   880: invokevirtual 483	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   883: invokevirtual 489	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   886: invokestatic 761	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   889: goto -866 -> 23
    //   892: astore_1
    //   893: new 806	com/sleepycat/b/aa
    //   896: dup
    //   897: aload_3
    //   898: getfield 808	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   901: getstatic 813	com/sleepycat/b/c/ac:m	Lcom/sleepycat/b/c/ac;
    //   904: aload_1
    //   905: invokespecial 816	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V
    //   908: athrow
    //   909: astore_1
    //   910: new 806	com/sleepycat/b/aa
    //   913: dup
    //   914: aload_3
    //   915: getfield 808	com/sleepycat/b/g/m:k	Lcom/sleepycat/b/c/ad;
    //   918: getstatic 813	com/sleepycat/b/c/ac:m	Lcom/sleepycat/b/c/ac;
    //   921: aload_1
    //   922: invokespecial 816	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V
    //   925: athrow
    //   926: ldc_w 880
    //   929: astore_2
    //   930: goto -348 -> 582
    //   933: ldc_w 880
    //   936: astore_2
    //   937: goto -258 -> 679
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	940	0	this	c
    //   109	4	1	localObject1	Object
    //   127	160	1	localObject2	Object
    //   326	19	1	localIOException1	java.io.IOException
    //   350	2	1	localSortedSet1	java.util.SortedSet
    //   442	5	1	localObject3	Object
    //   448	16	1	localObject4	Object
    //   481	266	1	localIOException2	java.io.IOException
    //   805	63	1	localObject5	Object
    //   892	13	1	localIOException3	java.io.IOException
    //   909	13	1	localIOException4	java.io.IOException
    //   49	888	2	localObject6	Object
    //   143	772	3	localObject7	Object
    //   33	828	4	localSortedSet2	java.util.SortedSet
    //   152	562	5	localObject8	Object
    //   357	260	6	localIterator	Iterator
    //   530	150	7	localLogger	Logger
    //   536	146	8	localad	com.sleepycat.b.c.ad
    //   541	143	9	localLevel	Level
    //   569	117	10	localStringBuilder	StringBuilder
    //   132	116	11	i1	int
    //   16	461	12	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	18	109	finally
    //   26	35	109	finally
    //   40	50	109	finally
    //   54	106	109	finally
    //   114	134	109	finally
    //   144	154	109	finally
    //   159	180	109	finally
    //   180	240	109	finally
    //   309	323	109	finally
    //   327	343	109	finally
    //   449	463	109	finally
    //   463	465	109	finally
    //   716	730	109	finally
    //   730	753	109	finally
    //   753	772	109	finally
    //   780	802	109	finally
    //   806	823	109	finally
    //   823	889	109	finally
    //   893	909	109	finally
    //   910	926	109	finally
    //   309	323	326	java/io/IOException
    //   263	309	442	finally
    //   343	351	442	finally
    //   351	359	442	finally
    //   359	380	442	finally
    //   380	397	442	finally
    //   402	439	442	finally
    //   443	446	442	finally
    //   465	478	442	finally
    //   482	515	442	finally
    //   515	578	442	finally
    //   582	613	442	finally
    //   616	675	442	finally
    //   679	710	442	finally
    //   713	716	442	finally
    //   252	261	448	finally
    //   446	448	448	finally
    //   380	397	481	java/io/IOException
    //   465	478	481	java/io/IOException
    //   772	780	805	finally
    //   449	463	892	java/io/IOException
    //   716	730	909	java/io/IOException
  }
  
  public final void b(long paramLong)
  {
    synchronized (this.ak)
    {
      if (!this.ak.remove(Long.valueOf(paramLong))) {
        throw com.sleepycat.b.aa.c("File range starting with 0x" + Long.toHexString(paramLong) + " is not currently protected");
      }
    }
  }
  
  public final l c()
  {
    e();
    return this.ad.b();
  }
  
  final void d()
  {
    this.Y = this.ad.a;
    ??? = this.X;
    Set localSet = this.ad.a();
    this.X = localSet;
    int i2 = ((Set)???).size();
    int i3 = localSet.size();
    int i1;
    float f1;
    for (;;)
    {
      synchronized (this.ai)
      {
        if (this.ai.size() >= 5)
        {
          i1 = 1;
          f1 = a(this.ai);
          this.ai.addLast(Integer.valueOf(i3));
          if (this.ai.size() <= 5) {
            break;
          }
          this.ai.removeFirst();
        }
      }
      i1 = 0;
    }
    float f2 = a(this.ai);
    if ((i3 < 5) || (i3 <= i2) || (i1 == 0) || (f2 <= f1)) {
      return;
    }
    ??? = String.format("Average cleaner backlog has grown from %.1f to %.1f. If the cleaner continues to be unable to make progress, the JE cache size and/or number of cleaner threads are probably too small. If this is not corrected, eventually all available disk space will be used.", new Object[] { Float.valueOf(f1), Float.valueOf(f2) });
    w.a(this.al, this.Z, Level.SEVERE, (String)???);
  }
  
  /* Error */
  final void e()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 138	com/sleepycat/b/a/c:am	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   4: iconst_0
    //   5: iconst_1
    //   6: invokevirtual 929	java/util/concurrent/atomic/AtomicBoolean:compareAndSet	(ZZ)Z
    //   9: ifne +4 -> 13
    //   12: return
    //   13: aload_0
    //   14: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   17: getfield 932	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   20: astore 6
    //   22: aload_0
    //   23: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   26: invokevirtual 935	com/sleepycat/b/a/k:c	()Ljava/util/Map;
    //   29: astore_1
    //   30: aload_1
    //   31: ifnull +617 -> 648
    //   34: new 937	com/sleepycat/b/l/al
    //   37: dup
    //   38: invokespecial 938	com/sleepycat/b/l/al:<init>	()V
    //   41: astore 9
    //   43: aload_1
    //   44: invokeinterface 943 1 0
    //   49: invokeinterface 944 1 0
    //   54: astore 10
    //   56: aload 10
    //   58: invokeinterface 368 1 0
    //   63: ifeq +585 -> 648
    //   66: aload 10
    //   68: invokeinterface 372 1 0
    //   73: checkcast 946	java/util/Map$Entry
    //   76: astore_1
    //   77: aload_1
    //   78: invokeinterface 949 1 0
    //   83: checkcast 553	java/lang/Long
    //   86: invokevirtual 775	java/lang/Long:longValue	()J
    //   89: lstore 15
    //   91: aload_1
    //   92: invokeinterface 952 1 0
    //   97: checkcast 954	com/sleepycat/b/a/r
    //   100: astore_1
    //   101: aload 6
    //   103: aload_1
    //   104: getfield 956	com/sleepycat/b/a/r:b	Lcom/sleepycat/b/c/h;
    //   107: aload_0
    //   108: getfield 409	com/sleepycat/b/a/c:E	J
    //   111: aconst_null
    //   112: invokevirtual 959	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/c/h;JLjava/lang/String;)Lcom/sleepycat/b/c/i;
    //   115: astore 7
    //   117: aload_1
    //   118: getfield 962	com/sleepycat/b/a/r:c	[B
    //   121: astore 11
    //   123: aload_1
    //   124: getfield 965	com/sleepycat/b/a/r:a	Lcom/sleepycat/b/l/y;
    //   127: astore 8
    //   129: aload_0
    //   130: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   133: iconst_1
    //   134: invokevirtual 967	com/sleepycat/b/c/ad:b	(Z)V
    //   137: iconst_1
    //   138: istore 13
    //   140: aconst_null
    //   141: astore 4
    //   143: aconst_null
    //   144: astore_1
    //   145: aconst_null
    //   146: astore 5
    //   148: aload_1
    //   149: astore_2
    //   150: aload 4
    //   152: astore_3
    //   153: aload_0
    //   154: getfield 237	com/sleepycat/b/a/c:u	Lcom/sleepycat/b/p/z;
    //   157: invokevirtual 620	com/sleepycat/b/p/z:f	()V
    //   160: aload 7
    //   162: ifnull +16 -> 178
    //   165: aload_1
    //   166: astore_2
    //   167: aload 4
    //   169: astore_3
    //   170: aload 7
    //   172: invokevirtual 568	com/sleepycat/b/c/i:z	()Z
    //   175: ifeq +102 -> 277
    //   178: aload_1
    //   179: astore_2
    //   180: aload 4
    //   182: astore_3
    //   183: aload_0
    //   184: aload 7
    //   186: invokevirtual 969	com/sleepycat/b/a/c:a	(Lcom/sleepycat/b/c/i;)V
    //   189: aload_1
    //   190: astore_2
    //   191: aload 4
    //   193: astore_3
    //   194: aload_0
    //   195: getfield 217	com/sleepycat/b/a/c:p	Lcom/sleepycat/b/p/z;
    //   198: invokevirtual 620	com/sleepycat/b/p/z:f	()V
    //   201: iconst_0
    //   202: ifeq +11 -> 213
    //   205: new 599	java/lang/NullPointerException
    //   208: dup
    //   209: invokespecial 600	java/lang/NullPointerException:<init>	()V
    //   212: athrow
    //   213: iconst_0
    //   214: ifeq +11 -> 225
    //   217: new 599	java/lang/NullPointerException
    //   220: dup
    //   221: invokespecial 600	java/lang/NullPointerException:<init>	()V
    //   224: athrow
    //   225: aload_0
    //   226: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   229: lload 15
    //   231: invokevirtual 592	com/sleepycat/b/a/k:a	(J)V
    //   234: aload_0
    //   235: ldc_w 971
    //   238: aload 8
    //   240: ldc2_w 589
    //   243: iconst_1
    //   244: iconst_1
    //   245: iconst_0
    //   246: invokevirtual 603	com/sleepycat/b/a/c:a	(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    //   249: aload 6
    //   251: aload 7
    //   253: invokevirtual 973	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   256: aload_0
    //   257: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   260: invokevirtual 975	com/sleepycat/b/c/ad:g	()V
    //   263: goto -207 -> 56
    //   266: astore_1
    //   267: aload_0
    //   268: getfield 138	com/sleepycat/b/a/c:am	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   271: iconst_0
    //   272: invokevirtual 978	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   275: aload_1
    //   276: athrow
    //   277: aload_1
    //   278: astore_2
    //   279: aload 4
    //   281: astore_3
    //   282: aload 7
    //   284: getfield 981	com/sleepycat/b/c/i:b	Lcom/sleepycat/b/l/ah;
    //   287: astore 12
    //   289: aload_1
    //   290: astore_2
    //   291: aload 4
    //   293: astore_3
    //   294: getstatic 105	com/sleepycat/b/a/c:ah	Z
    //   297: ifne +110 -> 407
    //   300: aload 12
    //   302: ifnonnull +105 -> 407
    //   305: aload_1
    //   306: astore_2
    //   307: aload 4
    //   309: astore_3
    //   310: new 495	java/lang/AssertionError
    //   313: dup
    //   314: invokespecial 496	java/lang/AssertionError:<init>	()V
    //   317: athrow
    //   318: astore_3
    //   319: aconst_null
    //   320: astore 4
    //   322: iconst_1
    //   323: istore 13
    //   325: aload_3
    //   326: invokevirtual 984	com/sleepycat/b/n:printStackTrace	()V
    //   329: aload_0
    //   330: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   333: ldc_w 986
    //   336: ldc_w 988
    //   339: ldc_w 990
    //   342: aload_3
    //   343: invokestatic 993	com/sleepycat/b/p/w:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   346: aload_3
    //   347: athrow
    //   348: astore 5
    //   350: aload 4
    //   352: astore_1
    //   353: aload_2
    //   354: astore_3
    //   355: aload 5
    //   357: astore_2
    //   358: aload_1
    //   359: ifnull +7 -> 366
    //   362: aload_1
    //   363: invokevirtual 995	com/sleepycat/b/l/a:C	()V
    //   366: aload_3
    //   367: ifnull +8 -> 375
    //   370: aload_3
    //   371: iconst_1
    //   372: invokevirtual 652	com/sleepycat/b/n/q:a_	(Z)V
    //   375: iload 13
    //   377: ifeq +18 -> 395
    //   380: aload_0
    //   381: ldc_w 971
    //   384: aload 8
    //   386: ldc2_w 589
    //   389: iconst_0
    //   390: iconst_0
    //   391: iconst_0
    //   392: invokevirtual 603	com/sleepycat/b/a/c:a	(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    //   395: aload_2
    //   396: athrow
    //   397: astore_1
    //   398: aload 6
    //   400: aload 7
    //   402: invokevirtual 973	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   405: aload_1
    //   406: athrow
    //   407: aload_1
    //   408: astore_2
    //   409: aload 4
    //   411: astore_3
    //   412: aload_0
    //   413: getfield 140	com/sleepycat/b/a/c:Z	Lcom/sleepycat/b/c/ad;
    //   416: iconst_0
    //   417: invokestatic 628	com/sleepycat/b/n/a:a	(Lcom/sleepycat/b/c/ad;Z)Lcom/sleepycat/b/n/a;
    //   420: astore_1
    //   421: aload_1
    //   422: astore_2
    //   423: aload_1
    //   424: astore_3
    //   425: aload_1
    //   426: iconst_0
    //   427: putfield 632	com/sleepycat/b/n/q:r	Z
    //   430: aload_1
    //   431: astore_2
    //   432: aload_1
    //   433: astore_3
    //   434: aload_1
    //   435: lload 15
    //   437: getstatic 637	com/sleepycat/b/n/o:a	Lcom/sleepycat/b/n/o;
    //   440: iconst_0
    //   441: aload 7
    //   443: invokevirtual 640	com/sleepycat/b/n/a:b	(JLcom/sleepycat/b/n/o;ZLcom/sleepycat/b/c/i;)Lcom/sleepycat/b/n/m;
    //   446: getfield 645	com/sleepycat/b/n/m:a	Lcom/sleepycat/b/n/h;
    //   449: getstatic 649	com/sleepycat/b/n/h:f	Lcom/sleepycat/b/n/h;
    //   452: if_acmpne +53 -> 505
    //   455: aload_1
    //   456: astore_2
    //   457: aload_1
    //   458: astore_3
    //   459: aload_0
    //   460: getfield 253	com/sleepycat/b/a/c:y	Lcom/sleepycat/b/p/z;
    //   463: invokevirtual 620	com/sleepycat/b/p/z:f	()V
    //   466: iconst_0
    //   467: ifeq +11 -> 478
    //   470: new 599	java/lang/NullPointerException
    //   473: dup
    //   474: invokespecial 600	java/lang/NullPointerException:<init>	()V
    //   477: athrow
    //   478: aload_1
    //   479: ifnull +8 -> 487
    //   482: aload_1
    //   483: iconst_1
    //   484: invokevirtual 652	com/sleepycat/b/n/q:a_	(Z)V
    //   487: aload_0
    //   488: ldc_w 971
    //   491: aload 8
    //   493: ldc2_w 589
    //   496: iconst_1
    //   497: iconst_0
    //   498: iconst_0
    //   499: invokevirtual 603	com/sleepycat/b/a/c:a	(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    //   502: goto -253 -> 249
    //   505: aload_1
    //   506: astore_2
    //   507: aload_1
    //   508: astore_3
    //   509: aload 12
    //   511: aload 9
    //   513: aload 11
    //   515: iconst_0
    //   516: iconst_1
    //   517: getstatic 111	com/sleepycat/b/a/c:a	Lcom/sleepycat/b/a;
    //   520: invokevirtual 1000	com/sleepycat/b/l/ah:a	(Lcom/sleepycat/b/l/al;[BZZLcom/sleepycat/b/a;)Z
    //   523: istore 17
    //   525: aload_1
    //   526: astore_2
    //   527: aload_1
    //   528: astore_3
    //   529: aload 9
    //   531: getfield 1003	com/sleepycat/b/l/al:a	Lcom/sleepycat/b/l/a;
    //   534: astore 4
    //   536: aload 9
    //   538: getfield 1005	com/sleepycat/b/l/al:b	I
    //   541: istore 14
    //   543: iload 17
    //   545: ifne +56 -> 601
    //   548: aload_0
    //   549: getfield 217	com/sleepycat/b/a/c:p	Lcom/sleepycat/b/p/z;
    //   552: invokevirtual 620	com/sleepycat/b/p/z:f	()V
    //   555: aload 4
    //   557: ifnull +8 -> 565
    //   560: aload 4
    //   562: invokevirtual 995	com/sleepycat/b/l/a:C	()V
    //   565: aload_1
    //   566: ifnull +8 -> 574
    //   569: aload_1
    //   570: iconst_1
    //   571: invokevirtual 652	com/sleepycat/b/n/q:a_	(Z)V
    //   574: aload_0
    //   575: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   578: lload 15
    //   580: invokevirtual 592	com/sleepycat/b/a/k:a	(J)V
    //   583: aload_0
    //   584: ldc_w 971
    //   587: aload 8
    //   589: ldc2_w 589
    //   592: iconst_1
    //   593: iconst_1
    //   594: iconst_0
    //   595: invokevirtual 603	com/sleepycat/b/a/c:a	(Ljava/lang/String;Lcom/sleepycat/b/l/ac;JZZZ)V
    //   598: goto -349 -> 249
    //   601: aload_0
    //   602: aload 7
    //   604: aload 4
    //   606: iload 14
    //   608: invokevirtual 729	com/sleepycat/b/l/a:k	(I)J
    //   611: aload 4
    //   613: iload 14
    //   615: iconst_1
    //   616: iconst_1
    //   617: lload 15
    //   619: iconst_1
    //   620: ldc_w 971
    //   623: invokevirtual 1007	com/sleepycat/b/a/c:a	(Lcom/sleepycat/b/c/i;JLcom/sleepycat/b/l/a;IZZJZLjava/lang/String;)V
    //   626: aload 4
    //   628: ifnull +8 -> 636
    //   631: aload 4
    //   633: invokevirtual 995	com/sleepycat/b/l/a:C	()V
    //   636: aload_1
    //   637: ifnull -388 -> 249
    //   640: aload_1
    //   641: iconst_1
    //   642: invokevirtual 652	com/sleepycat/b/n/q:a_	(Z)V
    //   645: goto -396 -> 249
    //   648: aload_0
    //   649: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   652: invokevirtual 1010	com/sleepycat/b/a/k:d	()[Lcom/sleepycat/b/c/h;
    //   655: astore_3
    //   656: aload_3
    //   657: ifnull +77 -> 734
    //   660: aload_3
    //   661: arraylength
    //   662: istore 14
    //   664: iconst_0
    //   665: istore 13
    //   667: iload 13
    //   669: iload 14
    //   671: if_icmpge +63 -> 734
    //   674: aload_3
    //   675: iload 13
    //   677: aaload
    //   678: astore_2
    //   679: aload 6
    //   681: aload_2
    //   682: aload_0
    //   683: getfield 409	com/sleepycat/b/a/c:E	J
    //   686: aconst_null
    //   687: invokevirtual 959	com/sleepycat/b/c/p:a	(Lcom/sleepycat/b/c/h;JLjava/lang/String;)Lcom/sleepycat/b/c/i;
    //   690: astore_1
    //   691: aload_1
    //   692: ifnull +10 -> 702
    //   695: aload_1
    //   696: invokevirtual 570	com/sleepycat/b/c/i:A	()Z
    //   699: ifeq +11 -> 710
    //   702: aload_0
    //   703: getfield 303	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   706: aload_2
    //   707: invokevirtual 1013	com/sleepycat/b/a/k:b	(Lcom/sleepycat/b/c/h;)V
    //   710: aload 6
    //   712: aload_1
    //   713: invokevirtual 973	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   716: iload 13
    //   718: iconst_1
    //   719: iadd
    //   720: istore 13
    //   722: goto -55 -> 667
    //   725: astore_2
    //   726: aload 6
    //   728: aload_1
    //   729: invokevirtual 973	com/sleepycat/b/c/p:c	(Lcom/sleepycat/b/c/i;)V
    //   732: aload_2
    //   733: athrow
    //   734: aload_0
    //   735: getfield 138	com/sleepycat/b/a/c:am	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   738: iconst_0
    //   739: invokevirtual 978	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   742: return
    //   743: astore_2
    //   744: aload 5
    //   746: astore_1
    //   747: goto -389 -> 358
    //   750: astore_2
    //   751: aload_1
    //   752: astore_3
    //   753: aload 4
    //   755: astore_1
    //   756: goto -398 -> 358
    //   759: astore_2
    //   760: iconst_0
    //   761: istore 13
    //   763: aload_1
    //   764: astore_3
    //   765: aload 4
    //   767: astore_1
    //   768: goto -410 -> 358
    //   771: astore_3
    //   772: iconst_1
    //   773: istore 13
    //   775: aload_1
    //   776: astore_2
    //   777: goto -452 -> 325
    //   780: astore_3
    //   781: iconst_0
    //   782: istore 13
    //   784: aload_1
    //   785: astore_2
    //   786: goto -461 -> 325
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	789	0	this	c
    //   29	161	1	localObject1	Object
    //   266	40	1	localObject2	Object
    //   352	11	1	localObject3	Object
    //   397	11	1	localObject4	Object
    //   420	365	1	localObject5	Object
    //   149	558	2	localObject6	Object
    //   725	8	2	localObject7	Object
    //   743	1	2	localObject8	Object
    //   750	1	2	localObject9	Object
    //   759	1	2	localObject10	Object
    //   776	10	2	localObject11	Object
    //   152	158	3	locala1	com.sleepycat.b.l.a
    //   318	29	3	localn1	com.sleepycat.b.n
    //   354	411	3	localObject12	Object
    //   771	1	3	localn2	com.sleepycat.b.n
    //   780	1	3	localn3	com.sleepycat.b.n
    //   141	625	4	locala2	com.sleepycat.b.l.a
    //   146	1	5	localObject13	Object
    //   348	397	5	localObject14	Object
    //   20	707	6	localp	com.sleepycat.b.c.p
    //   115	488	7	locali	i
    //   127	461	8	localy	y
    //   41	496	9	localal	com.sleepycat.b.l.al
    //   54	13	10	localIterator	Iterator
    //   121	393	11	arrayOfByte	byte[]
    //   287	223	12	localah	com.sleepycat.b.l.ah
    //   138	645	13	i1	int
    //   541	131	14	i2	int
    //   89	529	15	l1	long
    //   523	21	17	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   13	30	266	finally
    //   34	56	266	finally
    //   56	117	266	finally
    //   249	263	266	finally
    //   398	407	266	finally
    //   648	656	266	finally
    //   660	664	266	finally
    //   679	691	266	finally
    //   710	716	266	finally
    //   726	734	266	finally
    //   153	160	318	com/sleepycat/b/n
    //   170	178	318	com/sleepycat/b/n
    //   183	189	318	com/sleepycat/b/n
    //   194	201	318	com/sleepycat/b/n
    //   282	289	318	com/sleepycat/b/n
    //   294	300	318	com/sleepycat/b/n
    //   310	318	318	com/sleepycat/b/n
    //   412	421	318	com/sleepycat/b/n
    //   425	430	318	com/sleepycat/b/n
    //   434	455	318	com/sleepycat/b/n
    //   459	466	318	com/sleepycat/b/n
    //   509	525	318	com/sleepycat/b/n
    //   529	536	318	com/sleepycat/b/n
    //   325	348	348	finally
    //   117	137	397	finally
    //   205	213	397	finally
    //   217	225	397	finally
    //   225	249	397	finally
    //   362	366	397	finally
    //   370	375	397	finally
    //   380	395	397	finally
    //   395	397	397	finally
    //   470	478	397	finally
    //   482	487	397	finally
    //   487	502	397	finally
    //   560	565	397	finally
    //   569	574	397	finally
    //   574	598	397	finally
    //   631	636	397	finally
    //   640	645	397	finally
    //   695	702	725	finally
    //   702	710	725	finally
    //   153	160	743	finally
    //   170	178	743	finally
    //   183	189	743	finally
    //   194	201	743	finally
    //   282	289	743	finally
    //   294	300	743	finally
    //   310	318	743	finally
    //   412	421	743	finally
    //   425	430	743	finally
    //   434	455	743	finally
    //   459	466	743	finally
    //   509	525	743	finally
    //   529	536	743	finally
    //   536	543	750	finally
    //   548	555	750	finally
    //   601	626	759	finally
    //   536	543	771	com/sleepycat/b/n
    //   548	555	771	com/sleepycat/b/n
    //   601	626	780	com/sleepycat/b/n
  }
  
  public final void f()
  {
    Object localObject = this.aa;
    ((ad)localObject).c();
    if (((ad)localObject).a != null) {
      ((ad)localObject).a.l.a();
    }
    localObject = this.ab.f.values().iterator();
    while (((Iterator)localObject).hasNext())
    {
      z localz = (z)((Iterator)localObject).next();
      localz.l.b.n.e(0 - localz.o);
      localz.o = 0;
    }
    this.ad.a(this.Z.n);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */