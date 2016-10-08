package com.sleepycat.b;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ak;
import com.sleepycat.b.c.at;
import com.sleepycat.b.c.bh;
import com.sleepycat.b.c.p;
import com.sleepycat.b.f.f;
import com.sleepycat.b.n.q;
import com.sleepycat.b.p.w;
import java.io.Closeable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.logging.Logger;

public class i
  implements Closeable
{
  volatile j a;
  public x b;
  public com.sleepycat.b.c.i c;
  l d;
  boolean e;
  final AtomicInteger f = new AtomicInteger();
  com.sleepycat.b.n.d g;
  be h;
  Collection<bi> i;
  Collection<bi> j;
  final Logger k;
  private au m;
  private com.sleepycat.b.p.d n;
  private com.sleepycat.b.p.d o;
  private com.sleepycat.b.p.d p;
  private com.sleepycat.b.p.d q;
  private com.sleepycat.b.p.d r;
  private com.sleepycat.b.p.d s;
  private com.sleepycat.b.p.d t;
  
  static
  {
    if (!i.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      l = bool;
      return;
    }
  }
  
  i(x paramx)
  {
    this.b = paramx;
    this.g = null;
    this.k = this.b.a.v;
  }
  
  /* Error */
  private av a(bp parambp, m paramm1, m paramm2, at paramat)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: getstatic 87	com/sleepycat/b/av:b	Lcom/sleepycat/b/av;
    //   6: astore 6
    //   8: aload_0
    //   9: getfield 65	com/sleepycat/b/i:b	Lcom/sleepycat/b/x;
    //   12: aload_1
    //   13: aload_0
    //   14: getfield 89	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   17: invokevirtual 94	com/sleepycat/b/c/i:f	()Lcom/sleepycat/b/c/w;
    //   20: invokevirtual 98	com/sleepycat/b/c/w:a	()Z
    //   23: aload_0
    //   24: getfield 89	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   27: getfield 100	com/sleepycat/b/c/i:d	Z
    //   30: aload_0
    //   31: getfield 89	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   34: invokevirtual 102	com/sleepycat/b/c/i:o	()Z
    //   37: invokestatic 107	com/sleepycat/b/n/r:a	(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZZ)Lcom/sleepycat/b/n/q;
    //   40: astore_1
    //   41: new 109	com/sleepycat/b/e
    //   44: dup
    //   45: aload_0
    //   46: aload_1
    //   47: aconst_null
    //   48: invokespecial 112	com/sleepycat/b/e:<init>	(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    //   51: astore 5
    //   53: aload 5
    //   55: iconst_1
    //   56: putfield 113	com/sleepycat/b/e:d	Z
    //   59: aload 5
    //   61: aload_2
    //   62: aload_3
    //   63: aload 4
    //   65: invokevirtual 116	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/c/at;)Lcom/sleepycat/b/av;
    //   68: astore_2
    //   69: aload 5
    //   71: invokevirtual 119	com/sleepycat/b/e:close	()V
    //   74: aload_1
    //   75: ifnull +67 -> 142
    //   78: aload_1
    //   79: aload_2
    //   80: invokevirtual 124	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/av;)V
    //   83: aload_2
    //   84: areturn
    //   85: aload_2
    //   86: ifnull +7 -> 93
    //   89: aload_2
    //   90: invokevirtual 119	com/sleepycat/b/e:close	()V
    //   93: aload_3
    //   94: ifnull +9 -> 103
    //   97: aload_3
    //   98: aload 6
    //   100: invokevirtual 124	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/av;)V
    //   103: aload_1
    //   104: athrow
    //   105: astore_1
    //   106: aload_0
    //   107: getfield 65	com/sleepycat/b/i:b	Lcom/sleepycat/b/x;
    //   110: getfield 72	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   113: aload_1
    //   114: invokevirtual 127	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   117: aload_1
    //   118: athrow
    //   119: astore 4
    //   121: aconst_null
    //   122: astore_2
    //   123: aload_1
    //   124: astore_3
    //   125: aload 4
    //   127: astore_1
    //   128: goto -43 -> 85
    //   131: astore_2
    //   132: aload_1
    //   133: astore_3
    //   134: aload_2
    //   135: astore_1
    //   136: aload 5
    //   138: astore_2
    //   139: goto -54 -> 85
    //   142: aload_2
    //   143: areturn
    //   144: astore_1
    //   145: aconst_null
    //   146: astore_2
    //   147: aload 5
    //   149: astore_3
    //   150: goto -65 -> 85
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	153	0	this	i
    //   0	153	1	parambp	bp
    //   0	153	2	paramm1	m
    //   0	153	3	paramm2	m
    //   0	153	4	paramat	at
    //   1	147	5	locale	e
    //   6	93	6	localav	av
    // Exception table:
    //   from	to	target	type
    //   3	8	105	java/lang/Error
    //   69	74	105	java/lang/Error
    //   78	83	105	java/lang/Error
    //   89	93	105	java/lang/Error
    //   97	103	105	java/lang/Error
    //   103	105	105	java/lang/Error
    //   41	53	119	finally
    //   53	69	131	finally
    //   8	41	144	finally
  }
  
  static void a(bp parambp, ao paramao)
  {
    if ((parambp == null) && (ao.d.equals(paramao))) {
      throw new IllegalArgumentException(paramao + " is meaningless and can not be specified when a null (autocommit) transaction is used. There will never be a follow on operation which will promote the lock to WRITE.");
    }
  }
  
  private void a(x paramx, l paraml)
  {
    if ((!l) && (this.g == null)) {
      throw new AssertionError();
    }
    this.b = paramx;
    this.d = paraml.a();
    if (!this.d.e) {}
    for (boolean bool = true;; bool = false)
    {
      this.e = bool;
      paramx = paramx.a;
      this.n = paramx.a(com.sleepycat.b.c.x.i);
      this.o = paramx.a(com.sleepycat.b.c.x.j);
      this.p = paramx.a(com.sleepycat.b.c.x.k);
      this.q = paramx.a(com.sleepycat.b.c.x.l);
      this.r = paramx.a(com.sleepycat.b.c.x.m);
      this.s = paramx.a(com.sleepycat.b.c.x.n);
      this.t = paramx.a(com.sleepycat.b.c.x.o);
      this.h = a();
      this.a = j.a;
      return;
    }
  }
  
  private static void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2 != paramBoolean1) {
      throw new IllegalArgumentException("You can't open a Database with a " + paramString + " configuration of " + paramBoolean2 + " if the underlying database was created with a " + paramString + " setting of " + paramBoolean1 + '.');
    }
  }
  
  private void a(Level paramLevel, String paramString, bp parambp, Object paramObject)
  {
    if (this.k.isLoggable(paramLevel))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      localStringBuilder.append(" name=" + d());
      if (parambp != null) {
        localStringBuilder.append(" txnId=").append(parambp.c);
      }
      if (paramObject != null) {
        localStringBuilder.append(" config=").append(paramObject);
      }
      w.a(this.k, this.b.a, paramLevel, localStringBuilder.toString());
    }
  }
  
  private void a(boolean paramBoolean1, boolean paramBoolean2, j paramj, au paramau)
  {
    Object localObject2 = null;
    com.sleepycat.b.c.i locali = null;
    Object localObject1 = null;
    ad localad = this.b.a;
    if (localad != null) {
      localad.G.a();
    }
    for (;;)
    {
      try
      {
        localStringBuilder = new StringBuilder();
      }
      finally
      {
        StringBuilder localStringBuilder;
        label349:
        label357:
        if (localad != null) {
          localad.G.d();
        }
      }
      try
      {
        if (this.a != j.a)
        {
          if (localad != null) {
            localad.G.d();
          }
          return;
        }
        f();
        this.a = paramj;
        this.m = paramau;
        if (paramj == j.b)
        {
          if (this.f.get() != 0) {
            localStringBuilder.append(" ").append(this.f.get()).append(" open cursors.");
          }
          if ((this.i != null) && (this.i.size() > 0)) {
            localStringBuilder.append(" ").append(this.i.size()).append(" associated SecondaryDatabases.");
          }
          if ((this.j != null) && (this.j.size() > 0)) {
            localStringBuilder.append(" ").append(this.j.size()).append(" associated foreign key SecondaryDatabases.");
          }
        }
        a(Level.FINEST, "Database.close: ", null, null);
        b();
        if (this.c == null) {
          break label473;
        }
        locali = this.c;
        this.c.g.remove(this);
        this.b.a.q.c(this.c);
        this.c = null;
        if (this.g == null) {
          break label464;
        }
        if (paramj == j.d) {
          this.g.a(paramau);
        }
        if (paramj == j.b)
        {
          paramj = (j)localObject1;
          if (this.e)
          {
            int i1 = locali.v();
            paramj = (j)localObject1;
            if (i1 != 0) {}
          }
        }
      }
      finally {}
    }
    try
    {
      bh.a(this.g, locali);
      paramj = (j)localObject1;
    }
    catch (RuntimeException paramj)
    {
      break label349;
    }
    this.g.a_(true);
    this.g = null;
    paramau = paramj;
    paramj = locali;
    for (;;)
    {
      if (paramj != null) {
        paramj.a(paramBoolean1, paramBoolean2);
      }
      if (localStringBuilder.length() > 0)
      {
        throw new IllegalStateException("Database closed while still referenced by other handles." + localStringBuilder.toString());
        this.g.a_(false);
        paramj = (j)localObject2;
        break label357;
      }
      if (paramau == null) {
        break;
      }
      throw paramau;
      label464:
      paramau = null;
      paramj = locali;
      continue;
      label473:
      paramau = null;
      paramj = locali;
    }
  }
  
  private void b(String paramString)
  {
    if (!this.e) {
      throw new UnsupportedOperationException("Database is Read Only: " + paramString);
    }
  }
  
  /* Error */
  public av a(bp parambp, m paramm)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 275	com/sleepycat/b/i:f	()V
    //   4: aload_2
    //   5: ldc_w 368
    //   8: iconst_1
    //   9: invokestatic 373	com/sleepycat/b/p/i:a	(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V
    //   12: aload_0
    //   13: ldc_w 375
    //   16: invokevirtual 377	com/sleepycat/b/i:a	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: ldc_w 379
    //   23: invokespecial 381	com/sleepycat/b/i:b	(Ljava/lang/String;)V
    //   26: aload_0
    //   27: getstatic 309	java/util/logging/Level:FINEST	Ljava/util/logging/Level;
    //   30: ldc_w 383
    //   33: aload_1
    //   34: aload_2
    //   35: aconst_null
    //   36: aconst_null
    //   37: invokevirtual 386	com/sleepycat/b/i:a	(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V
    //   40: aload_0
    //   41: getfield 182	com/sleepycat/b/i:n	Lcom/sleepycat/b/p/d;
    //   44: invokevirtual 390	com/sleepycat/b/p/d:g	()V
    //   47: getstatic 392	com/sleepycat/b/av:d	Lcom/sleepycat/b/av;
    //   50: astore_3
    //   51: aload_0
    //   52: getfield 65	com/sleepycat/b/i:b	Lcom/sleepycat/b/x;
    //   55: aload_1
    //   56: aload_0
    //   57: getfield 89	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   60: invokevirtual 94	com/sleepycat/b/c/i:f	()Lcom/sleepycat/b/c/w;
    //   63: invokevirtual 98	com/sleepycat/b/c/w:a	()Z
    //   66: aload_0
    //   67: getfield 89	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   70: getfield 100	com/sleepycat/b/c/i:d	Z
    //   73: aload_0
    //   74: getfield 89	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   77: invokevirtual 102	com/sleepycat/b/c/i:o	()Z
    //   80: invokestatic 107	com/sleepycat/b/n/r:a	(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZZ)Lcom/sleepycat/b/n/q;
    //   83: astore_1
    //   84: aload_0
    //   85: aload_1
    //   86: aload_2
    //   87: invokevirtual 395	com/sleepycat/b/i:a	(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    //   90: astore_2
    //   91: aload_1
    //   92: ifnull +39 -> 131
    //   95: aload_1
    //   96: aload_2
    //   97: invokevirtual 124	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/av;)V
    //   100: aload_2
    //   101: areturn
    //   102: aload_1
    //   103: ifnull +8 -> 111
    //   106: aload_1
    //   107: aload_3
    //   108: invokevirtual 124	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/av;)V
    //   111: aload_2
    //   112: athrow
    //   113: astore_1
    //   114: aload_0
    //   115: getfield 65	com/sleepycat/b/i:b	Lcom/sleepycat/b/x;
    //   118: getfield 72	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   121: aload_1
    //   122: invokevirtual 127	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   125: aload_1
    //   126: athrow
    //   127: astore_2
    //   128: goto -26 -> 102
    //   131: aload_2
    //   132: areturn
    //   133: astore_2
    //   134: aconst_null
    //   135: astore_1
    //   136: goto -34 -> 102
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	139	0	this	i
    //   0	139	1	parambp	bp
    //   0	139	2	paramm	m
    //   50	58	3	localav	av
    // Exception table:
    //   from	to	target	type
    //   0	51	113	java/lang/Error
    //   95	100	113	java/lang/Error
    //   106	111	113	java/lang/Error
    //   111	113	113	java/lang/Error
    //   84	91	127	finally
    //   51	84	133	finally
  }
  
  public av a(bp parambp, m paramm1, m paramm2)
  {
    f();
    com.sleepycat.b.p.i.a(paramm1, "key", true);
    com.sleepycat.b.p.i.a(paramm2, "data", true);
    com.sleepycat.b.p.i.a(paramm1);
    a("Can't call Database.put");
    b("put");
    a(Level.FINEST, "Database.put", parambp, paramm1, paramm2, null);
    this.q.g();
    return a(parambp, paramm1, paramm2, at.d);
  }
  
  /* Error */
  public av a(bp parambp, m paramm1, m paramm2, ao paramao)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_0
    //   4: invokevirtual 275	com/sleepycat/b/i:f	()V
    //   7: aload_2
    //   8: ldc_w 368
    //   11: iconst_1
    //   12: invokestatic 373	com/sleepycat/b/p/i:a	(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V
    //   15: aload_3
    //   16: ldc_w 398
    //   19: iconst_0
    //   20: invokestatic 373	com/sleepycat/b/p/i:a	(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V
    //   23: aload_0
    //   24: ldc_w 417
    //   27: invokevirtual 377	com/sleepycat/b/i:a	(Ljava/lang/String;)V
    //   30: aload_0
    //   31: getstatic 309	java/util/logging/Level:FINEST	Ljava/util/logging/Level;
    //   34: ldc_w 419
    //   37: aload_1
    //   38: aload_2
    //   39: aconst_null
    //   40: aload 4
    //   42: invokevirtual 386	com/sleepycat/b/i:a	(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V
    //   45: aload_0
    //   46: getfield 186	com/sleepycat/b/i:o	Lcom/sleepycat/b/p/d;
    //   49: invokevirtual 390	com/sleepycat/b/p/d:g	()V
    //   52: getstatic 424	com/sleepycat/b/g:a	Lcom/sleepycat/b/g;
    //   55: astore 6
    //   57: aload 4
    //   59: astore 5
    //   61: aload 4
    //   63: getstatic 426	com/sleepycat/b/ao:c	Lcom/sleepycat/b/ao;
    //   66: if_acmpne +11 -> 77
    //   69: getstatic 428	com/sleepycat/b/g:c	Lcom/sleepycat/b/g;
    //   72: astore 6
    //   74: aconst_null
    //   75: astore 5
    //   77: aload_1
    //   78: aload 5
    //   80: invokestatic 430	com/sleepycat/b/i:a	(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/ao;)V
    //   83: aload_0
    //   84: getfield 65	com/sleepycat/b/i:b	Lcom/sleepycat/b/x;
    //   87: aload_1
    //   88: aload_0
    //   89: getfield 89	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   92: getfield 100	com/sleepycat/b/c/i:d	Z
    //   95: aload 6
    //   97: getfield 431	com/sleepycat/b/g:e	Z
    //   100: invokestatic 434	com/sleepycat/b/n/r:a	(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZ)Lcom/sleepycat/b/n/q;
    //   103: astore_1
    //   104: new 109	com/sleepycat/b/e
    //   107: dup
    //   108: aload_0
    //   109: aload_1
    //   110: aload 6
    //   112: invokespecial 112	com/sleepycat/b/e:<init>	(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    //   115: astore 4
    //   117: aload 4
    //   119: iconst_1
    //   120: putfield 113	com/sleepycat/b/e:d	Z
    //   123: aload 4
    //   125: aload_2
    //   126: aload_3
    //   127: aload 5
    //   129: getstatic 439	com/sleepycat/b/c/e:a	Lcom/sleepycat/b/c/e;
    //   132: invokevirtual 442	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;
    //   135: astore_2
    //   136: aload 4
    //   138: invokevirtual 119	com/sleepycat/b/e:close	()V
    //   141: aload_1
    //   142: ifnull +66 -> 208
    //   145: aload_1
    //   146: aload_2
    //   147: invokevirtual 124	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/av;)V
    //   150: aload_2
    //   151: areturn
    //   152: aload_2
    //   153: ifnull +7 -> 160
    //   156: aload_2
    //   157: invokevirtual 119	com/sleepycat/b/e:close	()V
    //   160: aload_3
    //   161: ifnull +8 -> 169
    //   164: aload_3
    //   165: aconst_null
    //   166: invokevirtual 124	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/av;)V
    //   169: aload_1
    //   170: athrow
    //   171: astore_1
    //   172: aload_0
    //   173: getfield 65	com/sleepycat/b/i:b	Lcom/sleepycat/b/x;
    //   176: getfield 72	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   179: aload_1
    //   180: invokevirtual 127	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   183: aload_1
    //   184: athrow
    //   185: astore 4
    //   187: aconst_null
    //   188: astore_2
    //   189: aload_1
    //   190: astore_3
    //   191: aload 4
    //   193: astore_1
    //   194: goto -42 -> 152
    //   197: astore_2
    //   198: aload_1
    //   199: astore_3
    //   200: aload_2
    //   201: astore_1
    //   202: aload 4
    //   204: astore_2
    //   205: goto -53 -> 152
    //   208: aload_2
    //   209: areturn
    //   210: astore_1
    //   211: aconst_null
    //   212: astore_2
    //   213: aload 7
    //   215: astore_3
    //   216: goto -64 -> 152
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	219	0	this	i
    //   0	219	1	parambp	bp
    //   0	219	2	paramm1	m
    //   0	219	3	paramm2	m
    //   0	219	4	paramao	ao
    //   59	69	5	localao	ao
    //   55	56	6	localg	g
    //   1	213	7	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	57	171	java/lang/Error
    //   61	74	171	java/lang/Error
    //   77	83	171	java/lang/Error
    //   136	141	171	java/lang/Error
    //   145	150	171	java/lang/Error
    //   156	160	171	java/lang/Error
    //   164	169	171	java/lang/Error
    //   169	171	171	java/lang/Error
    //   104	117	185	finally
    //   117	136	197	finally
    //   83	104	210	finally
  }
  
  final av a(q paramq, m paramm)
  {
    int i1;
    if (this.c.k() != null) {
      i1 = 1;
    }
    boolean bool;
    Collection localCollection2;
    label75:
    e locale;
    m localm;
    int i2;
    Object localObject2;
    for (;;)
    {
      bool = g();
      if (bool) {
        this.c.c.G.c();
      }
      if (bool) {}
      try
      {
        localCollection2 = this.h.c();
        Collection localCollection1 = this.j;
        if (i1 == 0) {
          if (bi.b(localCollection2))
          {
            break label461;
            locale = new e(this, paramq, null);
          }
          else
          {
            try
            {
              locale.d = true;
              localm = new m();
              if (i2 == 0) {
                localm.a(0, 0, true);
              }
              localObject2 = locale.a(paramm, localm, ao.d, com.sleepycat.b.c.e.a);
              localObject1 = localObject2;
              if (localObject2 != av.a)
              {
                paramm = av.d;
                locale.close();
                paramq = paramm;
                if (bool)
                {
                  this.c.c.G.d();
                  paramq = paramm;
                }
                label173:
                return paramq;
                i1 = 0;
                continue;
                i2 = 0;
                break label464;
                i2 = i1;
                localCollection1 = null;
                localCollection2 = null;
                break label75;
                label200:
                if (i1 != 0) {
                  bh.a(paramq, this.c, paramm, (m)localObject1);
                }
                if (!this.c.h()) {
                  break label423;
                }
                localObject1 = locale.a(paramm, localm, ao.d, ak.c);
              }
              label240:
              if (localObject1 != av.a) {
                break label430;
              }
              if (localCollection1 != null)
              {
                localObject1 = localCollection1.iterator();
                while (((Iterator)localObject1).hasNext())
                {
                  ((bi)((Iterator)localObject1).next()).b(paramq, paramm);
                  continue;
                  paramq = finally;
                }
              }
            }
            finally
            {
              locale.close();
            }
            if (i2 == 0) {
              break label467;
            }
          }
        }
      }
      finally
      {
        if (bool) {
          this.c.c.G.d();
        }
      }
    }
    label423:
    label430:
    label461:
    label464:
    label467:
    for (Object localObject1 = localm;; localObject1 = null)
    {
      if (localCollection2 != null)
      {
        localObject2 = localCollection2.iterator();
        while (((Iterator)localObject2).hasNext()) {
          ((bi)((Iterator)localObject2).next()).a(paramq, null, paramm, (m)localObject1, null);
        }
      }
      localObject2 = locale.b(this.c.D());
      av localav = av.a;
      if (localObject2 == localav) {
        break label200;
      }
      locale.close();
      paramq = (q)localObject2;
      if (!bool) {
        break label173;
      }
      this.c.c.G.d();
      return (av)localObject2;
      localObject1 = av.d;
      break label240;
      paramm = av.a;
      locale.close();
      paramq = paramm;
      if (!bool) {
        break label173;
      }
      this.c.c.G.d();
      return paramm;
      i2 = 1;
      break;
    }
  }
  
  be a()
  {
    this.j = new CopyOnWriteArraySet();
    if (this.d.u != null)
    {
      if (this.d.f) {
        throw new IllegalArgumentException("Duplicates not allowed for a primary database");
      }
      this.i = Collections.emptySet();
      return this.d.u;
    }
    this.i = new CopyOnWriteArraySet();
    new be()
    {
      public final boolean a()
      {
        return i.this.i.isEmpty();
      }
      
      public final i b()
      {
        return i.this;
      }
      
      public final Collection<bi> c()
      {
        return i.this.i;
      }
    };
  }
  
  final bj a(q paramq, m paramm1, m paramm2)
  {
    return new bj(paramq, "Secondary refers to a missing key in the primary database", d(), paramm1, paramm2);
  }
  
  com.sleepycat.b.c.i a(x paramx, q paramq, String paramString, l paraml)
  {
    if (paraml.e) {
      throw new IllegalArgumentException("DatabaseConfig.setReadOnly() must be set to false when creating a Database");
    }
    if ((paraml.d) && (paraml.g)) {
      throw new IllegalArgumentException("deferredWrite mode is not supported for transactional databases");
    }
    a(paramx, paraml);
    this.c = this.b.a.q.a(paramq, paramString, paraml, this.g, null, null);
    this.c.a(this);
    return this.c;
  }
  
  public e a(bp parambp, g paramg)
  {
    g localg;
    for (;;)
    {
      try
      {
        f();
        a("Can't open a cursor");
        if (paramg == null)
        {
          localg = g.a;
          if ((!localg.d) || (!localg.e)) {
            break;
          }
          throw new IllegalArgumentException("Only one may be specified: ReadCommitted or ReadUncommitted");
        }
      }
      catch (Error parambp)
      {
        this.b.a.a(parambp);
        throw parambp;
      }
      localg = paramg;
    }
    a(Level.FINEST, "Database.openCursor", parambp, paramg);
    parambp = b(parambp, localg);
    return parambp;
  }
  
  void a(x paramx, q paramq, com.sleepycat.b.c.i parami, String paramString, l paraml)
  {
    boolean bool2 = false;
    if (!paraml.r)
    {
      a("sortedDuplicates", parami.h(), paraml.f);
      a("temporary", parami.e(), paraml.h);
      if (this.b.a.I()) {
        a("replicated", parami.o(), paraml.j);
      }
    }
    if (parami.g.size() > 0)
    {
      bool1 = true;
      if (!bool1) {
        break label371;
      }
      if (!paraml.r)
      {
        a("transactional", parami.d, paraml.d);
        a("deferredWrite", parami.e, paraml.g);
      }
      label127:
      if (!paraml.r)
      {
        bool1 = bool2;
        if (paraml.p) {
          bool1 = parami.b(paraml.l, paraml.n) | false;
        }
        bool2 = bool1;
        if (paraml.q) {
          bool2 = bool1 | parami.a(paraml.m, paraml.o);
        }
        bool1 = bool2 | parami.a(paramq, paramString, paraml.v, paraml.w);
        boolean bool3 = paraml.i;
        if (bool3 != parami.l())
        {
          if (!bool3) {
            break label392;
          }
          parami.m();
        }
      }
    }
    for (boolean bool1 = true;; bool1 = true)
    {
      int i1 = paraml.k;
      bool2 = bool1;
      if (i1 != 0)
      {
        bool2 = bool1;
        if (i1 != parami.s)
        {
          parami.s = i1;
          bool2 = true;
        }
      }
      paramString = this.b.a;
      if ((bool2) && (!paramString.g)) {}
      try
      {
        paramString.q.a(paramq, parami.x(), null);
        paramString.q.b(parami);
        parami.u = paraml.s;
        parami.v = paraml.t;
        a(paramx, paraml);
        this.c = parami;
        parami.a(this);
        return;
      }
      catch (an paramx)
      {
        label371:
        label392:
        throw new IllegalStateException("DatabaseConfig properties may not be updated when the database is already open; first close other open handles for this database.", paramx);
      }
      bool1 = false;
      break;
      parami.d = paraml.d;
      parami.e = paraml.g;
      break label127;
      parami.n();
    }
  }
  
  final void a(String paramString)
  {
    switch (2.a[this.a.ordinal()])
    {
    default: 
      if (!l) {
        throw new AssertionError(this.a);
      }
      break;
    case 2: 
      throw new IllegalStateException(paramString + " Database was closed.");
    case 3: 
      throw new IllegalStateException(paramString + " The Transaction used to open the Database was aborted.");
    case 4: 
      throw this.m.b(paramString);
    }
  }
  
  public final void a(String paramString1, String paramString2)
  {
    try
    {
      paramString1 = this.c.c.a(paramString2, paramString1, this);
      a(false, false, j.d, paramString1);
      return;
    }
    finally
    {
      paramString1 = finally;
      throw paramString1;
    }
  }
  
  final void a(Level paramLevel, String paramString, bp parambp, m paramm1, m paramm2, ao paramao)
  {
    if (this.k.isLoggable(paramLevel))
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(paramString);
      if (parambp != null) {
        localStringBuilder.append(" txnId=").append(parambp.c);
      }
      localStringBuilder.append(" key=").append(paramm1.a());
      if (paramm2 != null) {
        localStringBuilder.append(" data=").append(paramm2.a());
      }
      if (paramao != null) {
        localStringBuilder.append(" lockMode=").append(paramao);
      }
      w.a(this.k, this.b.a, paramLevel, localStringBuilder.toString());
    }
  }
  
  e b(bp parambp, g paramg)
  {
    return new e(this, parambp, paramg);
  }
  
  void b()
  {
    this.b.c.remove(this);
  }
  
  public final void c()
  {
    try
    {
      a(false, false, j.c, null);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void close()
  {
    try
    {
      a(true, true, j.b, null);
      return;
    }
    catch (Error localError)
    {
      this.b.a.a(localError);
      throw localError;
    }
  }
  
  final String d()
  {
    if (this.c != null) {
      return this.c.c();
    }
    return null;
  }
  
  final void e()
  {
    a("Database was closed while still in use:");
    this.f.getAndIncrement();
  }
  
  final void f()
  {
    this.b.e();
    this.b.g();
  }
  
  boolean g()
  {
    return (!this.h.a()) || (!this.j.isEmpty());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */