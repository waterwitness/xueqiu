package com.sleepycat.b;

import com.sleepycat.b.c.at;
import com.sleepycat.b.c.c;
import com.sleepycat.b.n.q;
import com.sleepycat.b.p.d;
import com.sleepycat.b.p.w;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;

public class bi
  extends i
{
  private static final Set<m> p;
  public i m;
  bf n;
  private volatile boolean q;
  private d r;
  private d s;
  
  static
  {
    if (!bi.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      o = bool;
      p = Collections.emptySet();
      return;
    }
  }
  
  /* Error */
  private av a(bp parambp, m paramm1, m paramm2, m paramm3, ao paramao)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 43	com/sleepycat/b/bi:f	()V
    //   4: aload_2
    //   5: ldc 45
    //   7: iconst_1
    //   8: invokestatic 50	com/sleepycat/b/p/i:a	(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V
    //   11: aload_3
    //   12: ldc 52
    //   14: iconst_0
    //   15: invokestatic 50	com/sleepycat/b/p/i:a	(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V
    //   18: aload 4
    //   20: ldc 54
    //   22: iconst_0
    //   23: invokestatic 50	com/sleepycat/b/p/i:a	(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V
    //   26: aload_0
    //   27: ldc 56
    //   29: invokespecial 60	com/sleepycat/b/bi:b	(Ljava/lang/String;)V
    //   32: aload_0
    //   33: getstatic 66	java/util/logging/Level:FINEST	Ljava/util/logging/Level;
    //   36: ldc 68
    //   38: aload_1
    //   39: aload_2
    //   40: aconst_null
    //   41: aload 5
    //   43: invokevirtual 71	com/sleepycat/b/bi:a	(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V
    //   46: aload_0
    //   47: getfield 73	com/sleepycat/b/bi:s	Lcom/sleepycat/b/p/d;
    //   50: ifnull +10 -> 60
    //   53: aload_0
    //   54: getfield 73	com/sleepycat/b/bi:s	Lcom/sleepycat/b/p/d;
    //   57: invokevirtual 78	com/sleepycat/b/p/d:g	()V
    //   60: getstatic 83	com/sleepycat/b/g:a	Lcom/sleepycat/b/g;
    //   63: astore 6
    //   65: aload 5
    //   67: getstatic 89	com/sleepycat/b/ao:c	Lcom/sleepycat/b/ao;
    //   70: if_acmpne +187 -> 257
    //   73: getstatic 91	com/sleepycat/b/g:c	Lcom/sleepycat/b/g;
    //   76: astore 5
    //   78: aconst_null
    //   79: astore 6
    //   81: aload_1
    //   82: aload 6
    //   84: invokestatic 94	com/sleepycat/b/bi:a	(Lcom/sleepycat/b/bp;Lcom/sleepycat/b/ao;)V
    //   87: aconst_null
    //   88: astore 8
    //   90: aconst_null
    //   91: astore 7
    //   93: aload_0
    //   94: getfield 97	com/sleepycat/b/bi:b	Lcom/sleepycat/b/x;
    //   97: aload_1
    //   98: aload_0
    //   99: getfield 100	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   102: getfield 105	com/sleepycat/b/c/i:d	Z
    //   105: aload 5
    //   107: getfield 108	com/sleepycat/b/g:e	Z
    //   110: invokestatic 113	com/sleepycat/b/n/r:a	(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZ)Lcom/sleepycat/b/n/q;
    //   113: astore_1
    //   114: new 115	com/sleepycat/b/bh
    //   117: dup
    //   118: aload_0
    //   119: aload_1
    //   120: aload 5
    //   122: invokespecial 119	com/sleepycat/b/bh:<init>	(Lcom/sleepycat/b/bi;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    //   125: astore 5
    //   127: aload 5
    //   129: aload_2
    //   130: aload_3
    //   131: aload 4
    //   133: aload 6
    //   135: getstatic 124	com/sleepycat/b/c/e:a	Lcom/sleepycat/b/c/e;
    //   138: invokevirtual 127	com/sleepycat/b/bh:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;
    //   141: astore_2
    //   142: aload 5
    //   144: invokevirtual 130	com/sleepycat/b/bh:close	()V
    //   147: aload_1
    //   148: ifnull +8 -> 156
    //   151: aload_1
    //   152: aload_2
    //   153: invokevirtual 135	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/av;)V
    //   156: aload_2
    //   157: areturn
    //   158: astore_3
    //   159: aconst_null
    //   160: astore_1
    //   161: aconst_null
    //   162: astore_2
    //   163: aload_0
    //   164: getfield 97	com/sleepycat/b/bi:b	Lcom/sleepycat/b/x;
    //   167: getfield 140	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   170: aload_3
    //   171: invokevirtual 145	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   174: aload_3
    //   175: athrow
    //   176: astore 4
    //   178: aload_1
    //   179: astore_3
    //   180: aload 4
    //   182: astore_1
    //   183: aload_3
    //   184: ifnull +7 -> 191
    //   187: aload_3
    //   188: invokevirtual 130	com/sleepycat/b/bh:close	()V
    //   191: aload_2
    //   192: ifnull +8 -> 200
    //   195: aload_2
    //   196: aconst_null
    //   197: invokevirtual 135	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/av;)V
    //   200: aload_1
    //   201: athrow
    //   202: astore_1
    //   203: aload 7
    //   205: astore_3
    //   206: aload 8
    //   208: astore_2
    //   209: goto -26 -> 183
    //   212: astore_3
    //   213: aload_1
    //   214: astore_2
    //   215: aload_3
    //   216: astore_1
    //   217: aload 7
    //   219: astore_3
    //   220: goto -37 -> 183
    //   223: astore 4
    //   225: aload 5
    //   227: astore_3
    //   228: aload_1
    //   229: astore_2
    //   230: aload 4
    //   232: astore_1
    //   233: goto -50 -> 183
    //   236: astore_3
    //   237: aconst_null
    //   238: astore 4
    //   240: aload_1
    //   241: astore_2
    //   242: aload 4
    //   244: astore_1
    //   245: goto -82 -> 163
    //   248: astore_3
    //   249: aload_1
    //   250: astore_2
    //   251: aload 5
    //   253: astore_1
    //   254: goto -91 -> 163
    //   257: aload 5
    //   259: astore 7
    //   261: aload 6
    //   263: astore 5
    //   265: aload 7
    //   267: astore 6
    //   269: goto -188 -> 81
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	272	0	this	bi
    //   0	272	1	parambp	bp
    //   0	272	2	paramm1	m
    //   0	272	3	paramm2	m
    //   0	272	4	paramm3	m
    //   0	272	5	paramao	ao
    //   63	205	6	localObject1	Object
    //   91	175	7	localao	ao
    //   88	119	8	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   93	114	158	java/lang/Error
    //   163	176	176	finally
    //   93	114	202	finally
    //   114	127	212	finally
    //   127	142	223	finally
    //   114	127	236	java/lang/Error
    //   127	142	248	java/lang/Error
  }
  
  private void a(e parame, m paramm1, m paramm2)
  {
    if (parame.a(paramm2, paramm1, ao.d, com.sleepycat.b.c.e.b) == av.a) {
      parame.a(this.c.D());
    }
    while (!this.q) {
      return;
    }
    throw new bj(parame.a.e, "Secondary is corrupt: the primary record contains a key that is not present in the secondary", d(), paramm2, paramm1);
  }
  
  private void a(q paramq)
  {
    localObject1 = null;
    Object localObject2 = Level.FINEST;
    if (this.k.isLoggable((Level)localObject2))
    {
      localObject3 = new StringBuilder();
      ((StringBuilder)localObject3).append("SecondaryDatabase open");
      ((StringBuilder)localObject3).append(" name=").append(d());
      ((StringBuilder)localObject3).append(" primary=").append(this.m.d());
      w.a(this.k, this.b.a, (Level)localObject2, ((StringBuilder)localObject3).toString());
    }
    this.n = ((bf)this.d);
    localObject2 = this.n.B;
    if (localObject2 != null) {
      ((i)localObject2).j.add(this);
    }
    if (!this.n.y) {
      return;
    }
    try
    {
      localObject2 = new e(this, paramq, null);
      m localm1;
      m localm2;
      av localav;
      if (localObject2 == null) {
        break label279;
      }
    }
    finally
    {
      for (;;)
      {
        try
        {
          localm1 = new m();
          localm2 = new m();
          localObject3 = ((e)localObject2).a(localm1, localm2, ao.a, true);
          localav = av.d;
          if (localObject3 != localav)
          {
            ((e)localObject2).close();
            return;
          }
          localObject3 = new e(this.m, paramq, null);
        }
        finally
        {
          continue;
        }
        try
        {
          localObject1 = ((e)localObject3).a(localm1, localm2, ao.a, true);
          if (localObject1 == av.a)
          {
            a(paramq, (e)localObject2, localm1, null, localm2);
            localObject1 = ((e)localObject3).a(localm1, localm2, ao.a, com.sleepycat.b.c.ak.a);
          }
          else
          {
            ((e)localObject2).close();
            ((e)localObject3).close();
            return;
          }
        }
        finally
        {
          localObject1 = localObject3;
        }
      }
      paramq = finally;
      localObject2 = null;
    }
    ((e)localObject2).close();
    label279:
    if (localObject1 != null) {
      ((e)localObject1).close();
    }
    throw paramq;
  }
  
  private void a(q paramq, e parame, m paramm1, m paramm2)
  {
    localObject = null;
    i locali = this.n.B;
    if (locali != null) {}
    try
    {
      locale = new e(locali, paramq, null);
      try
      {
        if (locale.a(paramm2, new m(), ao.a, com.sleepycat.b.c.e.a) == av.a) {
          break label120;
        }
        throw new ah(paramq, "Secondary " + d() + " foreign key not allowed: it is not present in the foreign database " + locali.d(), d(), paramm2, paramm1);
      }
      finally {}
    }
    finally
    {
      for (;;)
      {
        e locale;
        parame = (e)localObject;
      }
    }
    if (parame != null) {
      parame.close();
    }
    throw paramq;
    label120:
    locale.close();
    if (this.d.f)
    {
      if ((parame.a(paramm2, paramm1, at.b) != av.a) && (this.q)) {
        throw new bj(paramq, "Secondary/primary record already present", d(), paramm2, paramm1);
      }
    }
    else if ((parame.a(paramm2, paramm1, at.c) != av.a) && (this.q)) {
      throw new bv(paramq, "Unique secondary key is already present", d(), paramm2, paramm1);
    }
  }
  
  static boolean a(Collection<bi> paramCollection)
  {
    if (paramCollection == null) {
      return false;
    }
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (((bi)paramCollection.next()).h()) {
        return true;
      }
    }
    return false;
  }
  
  private void b(String paramString)
  {
    a(paramString);
    if (!this.q) {
      throw new IllegalStateException(paramString + " Incremental population is currently enabled.");
    }
  }
  
  static boolean b(Collection<bi> paramCollection)
  {
    if (paramCollection == null) {
      return false;
    }
    paramCollection = paramCollection.iterator();
    while (paramCollection.hasNext()) {
      if (!((bi)paramCollection.next()).n.F) {
        return true;
      }
    }
    return false;
  }
  
  static UnsupportedOperationException j()
  {
    return new UnsupportedOperationException("Operation not allowed on a secondary");
  }
  
  /* Error */
  public final av a(bp parambp, m paramm)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: invokevirtual 43	com/sleepycat/b/bi:f	()V
    //   7: aload_2
    //   8: ldc 45
    //   10: iconst_1
    //   11: invokestatic 50	com/sleepycat/b/p/i:a	(Lcom/sleepycat/b/m;Ljava/lang/String;Z)V
    //   14: aload_0
    //   15: ldc_w 340
    //   18: invokespecial 60	com/sleepycat/b/bi:b	(Ljava/lang/String;)V
    //   21: aload_0
    //   22: getstatic 66	java/util/logging/Level:FINEST	Ljava/util/logging/Level;
    //   25: ldc_w 342
    //   28: aload_1
    //   29: aload_2
    //   30: aconst_null
    //   31: aconst_null
    //   32: invokevirtual 71	com/sleepycat/b/bi:a	(Ljava/util/logging/Level;Ljava/lang/String;Lcom/sleepycat/b/bp;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)V
    //   35: aload_0
    //   36: getfield 344	com/sleepycat/b/bi:r	Lcom/sleepycat/b/p/d;
    //   39: ifnull +10 -> 49
    //   42: aload_0
    //   43: getfield 344	com/sleepycat/b/bi:r	Lcom/sleepycat/b/p/d;
    //   46: invokevirtual 78	com/sleepycat/b/p/d:g	()V
    //   49: getstatic 259	com/sleepycat/b/av:d	Lcom/sleepycat/b/av;
    //   52: astore_3
    //   53: aload_0
    //   54: getfield 97	com/sleepycat/b/bi:b	Lcom/sleepycat/b/x;
    //   57: aload_1
    //   58: aload_0
    //   59: getfield 100	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   62: invokevirtual 347	com/sleepycat/b/c/i:f	()Lcom/sleepycat/b/c/w;
    //   65: invokevirtual 351	com/sleepycat/b/c/w:a	()Z
    //   68: aload_0
    //   69: getfield 100	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   72: getfield 105	com/sleepycat/b/c/i:d	Z
    //   75: aload_0
    //   76: getfield 100	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   79: invokevirtual 353	com/sleepycat/b/c/i:o	()Z
    //   82: invokestatic 356	com/sleepycat/b/n/r:a	(Lcom/sleepycat/b/x;Lcom/sleepycat/b/bp;ZZZ)Lcom/sleepycat/b/n/q;
    //   85: astore 5
    //   87: new 152	com/sleepycat/b/e
    //   90: dup
    //   91: aload_0
    //   92: aload 5
    //   94: aconst_null
    //   95: invokespecial 249	com/sleepycat/b/e:<init>	(Lcom/sleepycat/b/i;Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/g;)V
    //   98: astore 7
    //   100: aload_3
    //   101: astore_1
    //   102: aload_3
    //   103: astore 4
    //   105: new 251	com/sleepycat/b/m
    //   108: dup
    //   109: invokespecial 252	com/sleepycat/b/m:<init>	()V
    //   112: astore 8
    //   114: aload_3
    //   115: astore_1
    //   116: aload_3
    //   117: astore 4
    //   119: aload 7
    //   121: aload_2
    //   122: aload 8
    //   124: getstatic 148	com/sleepycat/b/ao:d	Lcom/sleepycat/b/ao;
    //   127: getstatic 124	com/sleepycat/b/c/e:a	Lcom/sleepycat/b/c/e;
    //   130: invokevirtual 155	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/e;)Lcom/sleepycat/b/av;
    //   133: astore 6
    //   135: aload_3
    //   136: astore_1
    //   137: aload_3
    //   138: astore 4
    //   140: aload 6
    //   142: getstatic 160	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   145: if_acmpne +168 -> 313
    //   148: aload_3
    //   149: astore_1
    //   150: aload_3
    //   151: astore 4
    //   153: aload_0
    //   154: invokevirtual 360	com/sleepycat/b/bi:i	()Lcom/sleepycat/b/i;
    //   157: astore 6
    //   159: aload 6
    //   161: ifnonnull +45 -> 206
    //   164: aload_3
    //   165: astore_1
    //   166: aload_3
    //   167: astore 4
    //   169: aload 7
    //   171: aload_0
    //   172: getfield 100	com/sleepycat/b/i:c	Lcom/sleepycat/b/c/i;
    //   175: invokevirtual 164	com/sleepycat/b/c/i:D	()Lcom/sleepycat/b/g/av;
    //   178: invokevirtual 362	com/sleepycat/b/e:b	(Lcom/sleepycat/b/g/av;)Lcom/sleepycat/b/av;
    //   181: pop
    //   182: aload_3
    //   183: astore_1
    //   184: aload_3
    //   185: astore 4
    //   187: aload 7
    //   189: aload_2
    //   190: aload 8
    //   192: getstatic 148	com/sleepycat/b/ao:d	Lcom/sleepycat/b/ao;
    //   195: getstatic 364	com/sleepycat/b/c/ak:c	Lcom/sleepycat/b/c/ak;
    //   198: invokevirtual 271	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;Lcom/sleepycat/b/c/ak;)Lcom/sleepycat/b/av;
    //   201: astore 6
    //   203: goto -68 -> 135
    //   206: aload_3
    //   207: astore_1
    //   208: aload_3
    //   209: astore 4
    //   211: aload 6
    //   213: aload 5
    //   215: aload 8
    //   217: invokevirtual 367	com/sleepycat/b/i:a	(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    //   220: astore 6
    //   222: aload 6
    //   224: astore_3
    //   225: aload 6
    //   227: astore_1
    //   228: aload 6
    //   230: astore 4
    //   232: aload 6
    //   234: getstatic 160	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   237: if_acmpeq -55 -> 182
    //   240: aload 6
    //   242: astore_1
    //   243: aload 6
    //   245: astore 4
    //   247: aload_0
    //   248: aload 5
    //   250: aload_2
    //   251: aload 8
    //   253: invokevirtual 370	com/sleepycat/b/bi:a	(Lcom/sleepycat/b/n/q;Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;)Lcom/sleepycat/b/bj;
    //   256: athrow
    //   257: astore 4
    //   259: aload 7
    //   261: astore_3
    //   262: aload 5
    //   264: astore_2
    //   265: aload_0
    //   266: getfield 97	com/sleepycat/b/bi:b	Lcom/sleepycat/b/x;
    //   269: getfield 140	com/sleepycat/b/x:a	Lcom/sleepycat/b/c/ad;
    //   272: aload 4
    //   274: invokevirtual 145	com/sleepycat/b/c/ad:a	(Ljava/lang/Error;)V
    //   277: aload 4
    //   279: athrow
    //   280: astore 4
    //   282: aload_2
    //   283: astore 5
    //   285: aload_3
    //   286: astore_2
    //   287: aload_1
    //   288: astore_3
    //   289: aload 4
    //   291: astore_1
    //   292: aload_2
    //   293: ifnull +7 -> 300
    //   296: aload_2
    //   297: invokevirtual 260	com/sleepycat/b/e:close	()V
    //   300: aload 5
    //   302: ifnull +9 -> 311
    //   305: aload 5
    //   307: aload_3
    //   308: invokevirtual 135	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/av;)V
    //   311: aload_1
    //   312: athrow
    //   313: aload 7
    //   315: invokevirtual 260	com/sleepycat/b/e:close	()V
    //   318: aload 5
    //   320: ifnull +9 -> 329
    //   323: aload 5
    //   325: aload_3
    //   326: invokevirtual 135	com/sleepycat/b/n/q:a	(Lcom/sleepycat/b/av;)V
    //   329: aload_3
    //   330: areturn
    //   331: astore_1
    //   332: aconst_null
    //   333: astore_2
    //   334: aconst_null
    //   335: astore 5
    //   337: goto -45 -> 292
    //   340: astore_1
    //   341: aconst_null
    //   342: astore_2
    //   343: goto -51 -> 292
    //   346: astore_1
    //   347: aload 4
    //   349: astore_3
    //   350: aload 7
    //   352: astore_2
    //   353: goto -61 -> 292
    //   356: astore 4
    //   358: aconst_null
    //   359: astore_2
    //   360: aload_3
    //   361: astore_1
    //   362: aload 6
    //   364: astore_3
    //   365: goto -100 -> 265
    //   368: astore 4
    //   370: aload 5
    //   372: astore_2
    //   373: aload_3
    //   374: astore_1
    //   375: aload 6
    //   377: astore_3
    //   378: goto -113 -> 265
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	381	0	this	bi
    //   0	381	1	parambp	bp
    //   0	381	2	paramm	m
    //   52	326	3	localObject1	Object
    //   103	143	4	localObject2	Object
    //   257	21	4	localError1	Error
    //   280	68	4	localObject3	Object
    //   356	1	4	localError2	Error
    //   368	1	4	localError3	Error
    //   85	286	5	localObject4	Object
    //   1	375	6	localObject5	Object
    //   98	253	7	locale	e
    //   112	140	8	localm	m
    // Exception table:
    //   from	to	target	type
    //   105	114	257	java/lang/Error
    //   119	135	257	java/lang/Error
    //   140	148	257	java/lang/Error
    //   153	159	257	java/lang/Error
    //   169	182	257	java/lang/Error
    //   187	203	257	java/lang/Error
    //   211	222	257	java/lang/Error
    //   232	240	257	java/lang/Error
    //   247	257	257	java/lang/Error
    //   265	280	280	finally
    //   53	87	331	finally
    //   87	100	340	finally
    //   105	114	346	finally
    //   119	135	346	finally
    //   140	148	346	finally
    //   153	159	346	finally
    //   169	182	346	finally
    //   187	203	346	finally
    //   211	222	346	finally
    //   232	240	346	finally
    //   247	257	346	finally
    //   53	87	356	java/lang/Error
    //   87	100	368	java/lang/Error
  }
  
  public final av a(bp parambp, m paramm1, m paramm2)
  {
    throw j();
  }
  
  public final av a(bp parambp, m paramm1, m paramm2, ao paramao)
  {
    return a(parambp, paramm1, new m(), paramm2, paramao);
  }
  
  final be a()
  {
    if (this.m != null)
    {
      this.m.i.add(this);
      return this.m.h;
    }
    return this.d.u;
  }
  
  final com.sleepycat.b.c.i a(x paramx, q paramq, String paramString, l paraml)
  {
    paramx = super.a(paramx, paramq, paramString, paraml);
    a(paramq);
    return paramx;
  }
  
  final void a(q paramq, e parame, m paramm1, m paramm2, m paramm3)
  {
    int i = 1;
    int j = 0;
    Object localObject = this.n.z;
    if (localObject != null)
    {
      if ((!o) && (this.n.A != null)) {
        throw new AssertionError();
      }
      if ((paramm2 == null) && (paramm3 != null)) {
        break label500;
      }
      paramm2 = new m();
      if (((bk)localObject).a()) {
        break label497;
      }
      paramm2 = null;
    }
    for (;;)
    {
      if (paramm3 != null)
      {
        paramm3 = new m();
        if (((bk)localObject).a()) {}
      }
      for (paramm3 = null;; paramm3 = null)
      {
        if (((paramm2 != null) && (!paramm2.equals(paramm3))) || ((paramm3 != null) && (!paramm3.equals(paramm2))))
        {
          if (parame != null) {
            break label194;
          }
          if (i != 0) {
            parame = new e(this, paramq, null);
          }
          if (paramm2 == null) {}
        }
        label194:
        label489:
        for (;;)
        {
          try
          {
            a(parame, paramm1, paramm2);
            if (paramm3 != null) {
              a(paramq, parame, paramm1, paramm3);
            }
            return;
          }
          finally
          {
            if ((i == 0) || (parame == null)) {
              continue;
            }
            parame.close();
          }
          i = 0;
          break;
          if (this.n.A == null) {
            throw new IllegalArgumentException("SecondaryConfig.getKeyCreator()/getMultiKeyCreator() may be null only if the primary database is read-only");
          }
          Set localSet = p;
          localObject = p;
          if (paramm2 == null)
          {
            paramm2 = localSet;
            if (paramm3 != null) {}
          }
          else
          {
            paramm2 = new HashSet();
          }
          if (paramm3 != null) {}
          for (paramm3 = new HashSet();; paramm3 = (m)localObject)
          {
            if (paramm2.equals(paramm3)) {
              break label489;
            }
            i = j;
            if (parame == null) {
              i = 1;
            }
            if (i != 0) {
              parame = new e(this, paramq, null);
            }
            try
            {
              if (paramm2 != p)
              {
                localObject = new HashSet(paramm2);
                paramm2.removeAll(paramm3);
                paramm2 = paramm2.iterator();
                while (paramm2.hasNext()) {
                  a(parame, paramm1, (m)paramm2.next());
                }
                paramm2 = (m)localObject;
              }
            }
            finally
            {
              if ((i != 0) && (parame != null)) {
                parame.close();
              }
            }
            for (;;)
            {
              if (paramm3 != p)
              {
                paramm3.removeAll(paramm2);
                paramm2 = paramm3.iterator();
                while (paramm2.hasNext()) {
                  a(paramq, parame, paramm1, (m)paramm2.next());
                }
              }
              if ((i == 0) || (parame == null)) {
                break;
              }
              parame.close();
              return;
            }
          }
        }
      }
      label497:
      continue;
      label500:
      paramm2 = null;
    }
  }
  
  final void a(x paramx, q paramq, com.sleepycat.b.c.i parami, String paramString, l paraml)
  {
    if (this.m != null)
    {
      i locali = parami.w();
      if ((locali != null) && (locali.c != this.m.c)) {
        throw new IllegalArgumentException("Secondary already associated with different primary: " + locali.d());
      }
    }
    super.a(paramx, paramq, parami, paramString, paraml);
    a(paramq);
  }
  
  final e b(bp parambp, g paramg)
  {
    return new bh(this, parambp, paramg);
  }
  
  final void b()
  {
    super.b();
    if (this.m != null) {
      this.m.i.remove(this);
    }
    if (this.n != null)
    {
      i locali = this.n.B;
      if (locali != null) {
        locali.j.remove(this);
      }
    }
  }
  
  final void b(q paramq, m paramm)
  {
    ai localai = this.n.C;
    if (localai == ai.a) {}
    e locale;
    m localm1;
    for (Object localObject = ao.a;; localObject = ao.d)
    {
      locale = new e(this, paramq, null);
      try
      {
        localm1 = new m();
        localObject = locale.a(paramm, localm1, (ao)localObject, com.sleepycat.b.c.e.a);
        if (localObject != av.a) {
          break label298;
        }
        if (localai != ai.a) {
          break;
        }
        throw new s(paramq, "Secondary refers to a deleted foreign key", d(), paramm, localm1);
      }
      finally
      {
        locale.close();
      }
    }
    m localm2;
    if (localai == ai.b)
    {
      localObject = i();
      if ((localObject != null) && (((i)localObject).a(paramq, localm1) != av.a)) {
        throw a(paramq, paramm, localm1);
      }
    }
    else
    {
      if (localai != ai.c) {
        break label294;
      }
      localObject = i();
      if (localObject != null)
      {
        localObject = new e((i)localObject, paramq, null);
        try
        {
          localm2 = new m();
          if (((e)localObject).a(localm1, localm2, ao.d, com.sleepycat.b.c.e.a) != av.a) {
            throw a(paramq, paramm, localm1);
          }
        }
        finally
        {
          ((e)localObject).close();
        }
        ak localak = this.n.E;
        if (localak == null) {
          break label269;
        }
        if (localak.a()) {
          ((e)localObject).a(localm2);
        }
      }
    }
    for (;;)
    {
      ((e)localObject).close();
      localObject = locale.a(paramm, localm1, ao.a, com.sleepycat.b.c.ak.c);
      break;
      label269:
      if (this.n.D.a()) {
        ((e)localObject).a(localm2);
      }
    }
    label294:
    throw aa.b();
    label298:
    locale.close();
  }
  
  public void close()
  {
    try
    {
      super.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  final boolean g()
  {
    return false;
  }
  
  final boolean h()
  {
    return (!this.n.G) && (!this.n.F);
  }
  
  final i i()
  {
    do
    {
      try
      {
        i locali = this.h.b();
        if (locali == null)
        {
          localObject = null;
          return (i)localObject;
        }
      }
      catch (RuntimeException localRuntimeException)
      {
        throw aa.a("Exception from SecondaryAssociation.getPrimary", localRuntimeException);
      }
      Object localObject = localRuntimeException;
    } while (localRuntimeException.h == this.h);
    throw new IllegalArgumentException("Primary and secondary have different SecondaryAssociation instances. Remember to configure the SecondaryAssociation on the primary database.");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\bi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */