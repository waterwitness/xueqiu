package com.sleepycat.b.i.e;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.b.h;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.i.f;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;
import com.sleepycat.b.p.w;
import java.util.logging.Logger;

public class d
{
  private final h b;
  private final com.sleepycat.b.i.c.b.aa c;
  private final com.sleepycat.b.i.h.o d;
  private final t e;
  private final f f;
  private final Logger g;
  private g h;
  
  static
  {
    if (!d.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public d(h paramh, com.sleepycat.b.i.h.o paramo, t paramt)
  {
    this.b = paramh;
    this.c = paramh.a;
    this.g = w.a(getClass());
    this.d = paramo;
    this.e = paramt;
    this.f = this.c.i.aj;
  }
  
  private g a(au paramau)
  {
    aj localaj = this.c.i;
    int i = localaj.u.a(com.sleepycat.b.b.d.L);
    long l1 = localaj.x.q;
    long l2 = j.a(this.c.m(), 0);
    f localf = this.f;
    x localx = this.c.a;
    return new g(localaj, localf, l1, i, paramau, l2);
  }
  
  private com.sleepycat.b.i.h.d a(com.sleepycat.b.i.i.m paramm, aa paramaa, boolean paramBoolean)
  {
    au localau1 = paramaa.c();
    au localau2 = this.c.r.a;
    if (localau2.c())
    {
      if (paramm.b.b(localau1) > 0)
      {
        paramm = this.e;
        paramm.getClass();
        return new z(paramm);
      }
    }
    else if (localau2.b(localau1) > 0)
    {
      paramm = this.e;
      paramm.getClass();
      return new z(paramm);
    }
    if ((!localau2.c()) && (paramm.b.b(localau2) > 0)) {
      throw com.sleepycat.b.aa.c("Range " + paramm + " precedes globalCBVLSN " + localau2);
    }
    if (paramm.c.b(localau1) < 0)
    {
      if ((!a) && (this.h != null)) {
        throw new AssertionError("Replica request for vlsn > feeder range should only happen on the first exchange.");
      }
      if (paramm.f.a(au.a))
      {
        paramm = this.e;
        paramm.getClass();
        return new z(paramm);
      }
      if (paramBoolean)
      {
        this.h = a(paramm.f);
        paramaa = this.h.a(paramm.f);
        if ((!a) && (paramaa == null)) {
          throw new AssertionError("Look for alternative, range=" + paramm);
        }
        paramm = this.e;
        paramm.getClass();
        return new v(paramm, paramaa);
      }
      throw com.sleepycat.b.aa.a(this.c.i, "RequestMatchpoint=" + localau1 + " range=" + paramm + "should only happen on first response");
    }
    if (this.h == null) {
      this.h = a(localau1);
    }
    paramaa = this.h.a(localau1);
    if (paramaa == null) {
      throw com.sleepycat.b.aa.a(this.c.i, "Couldn't find matchpoint " + localau1 + " in log. VLSN range=" + paramm + " globalCBVLSN=" + localau2);
    }
    paramm = this.e;
    paramm.getClass();
    return new y(paramm, paramaa);
  }
  
  /* Error */
  public final au a(com.sleepycat.b.i.c.b.r paramr)
  {
    // Byte code:
    //   0: invokestatic 227	java/lang/System:currentTimeMillis	()J
    //   3: lstore 6
    //   5: aload_0
    //   6: getfield 43	com/sleepycat/b/i/e/d:c	Lcom/sleepycat/b/i/c/b/aa;
    //   9: getfield 64	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   12: astore_2
    //   13: aload_0
    //   14: getfield 54	com/sleepycat/b/i/e/d:g	Ljava/util/logging/Logger;
    //   17: aload_2
    //   18: new 149	java/lang/StringBuilder
    //   21: dup
    //   22: ldc -27
    //   24: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   27: aload_0
    //   28: getfield 37	com/sleepycat/b/i/e/d:b	Lcom/sleepycat/b/i/c/b/h;
    //   31: getfield 231	com/sleepycat/b/i/c/b/h:i	Lcom/sleepycat/b/i/c/b/x;
    //   34: getfield 236	com/sleepycat/b/i/c/b/x:a	Ljava/lang/String;
    //   37: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: ldc -18
    //   42: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   45: aload_0
    //   46: getfield 43	com/sleepycat/b/i/e/d:c	Lcom/sleepycat/b/i/c/b/aa;
    //   49: getfield 64	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   52: getfield 69	com/sleepycat/b/i/c/aj:aj	Lcom/sleepycat/b/i/i/f;
    //   55: getfield 243	com/sleepycat/b/i/i/f:h	Lcom/sleepycat/b/i/i/p;
    //   58: invokevirtual 248	com/sleepycat/b/i/i/p:b	()Lcom/sleepycat/b/i/i/m;
    //   61: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: invokestatic 251	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   70: aload_0
    //   71: getfield 43	com/sleepycat/b/i/e/d:c	Lcom/sleepycat/b/i/c/b/aa;
    //   74: getfield 126	com/sleepycat/b/i/c/b/aa:r	Lcom/sleepycat/b/i/c/b/o;
    //   77: invokevirtual 253	com/sleepycat/b/i/c/b/o:a	()V
    //   80: aload_0
    //   81: getfield 71	com/sleepycat/b/i/e/d:f	Lcom/sleepycat/b/i/i/f;
    //   84: getfield 243	com/sleepycat/b/i/i/f:h	Lcom/sleepycat/b/i/i/p;
    //   87: invokevirtual 248	com/sleepycat/b/i/i/p:b	()Lcom/sleepycat/b/i/i/m;
    //   90: astore_3
    //   91: aload_0
    //   92: aload_3
    //   93: aload_0
    //   94: getfield 58	com/sleepycat/b/i/e/d:e	Lcom/sleepycat/b/i/e/t;
    //   97: aload_0
    //   98: getfield 56	com/sleepycat/b/i/e/d:d	Lcom/sleepycat/b/i/h/o;
    //   101: invokevirtual 258	com/sleepycat/b/i/e/t:a	(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;
    //   104: checkcast 119	com/sleepycat/b/i/e/aa
    //   107: iconst_1
    //   108: invokespecial 260	com/sleepycat/b/i/e/d:a	(Lcom/sleepycat/b/i/i/m;Lcom/sleepycat/b/i/e/aa;Z)Lcom/sleepycat/b/i/h/d;
    //   111: astore 4
    //   113: aload_0
    //   114: getfield 58	com/sleepycat/b/i/e/d:e	Lcom/sleepycat/b/i/e/t;
    //   117: aload 4
    //   119: aload_0
    //   120: getfield 56	com/sleepycat/b/i/e/d:d	Lcom/sleepycat/b/i/h/o;
    //   123: invokevirtual 263	com/sleepycat/b/i/e/t:a	(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V
    //   126: aload_0
    //   127: getfield 58	com/sleepycat/b/i/e/d:e	Lcom/sleepycat/b/i/e/t;
    //   130: aload_0
    //   131: getfield 56	com/sleepycat/b/i/e/d:d	Lcom/sleepycat/b/i/h/o;
    //   134: invokevirtual 258	com/sleepycat/b/i/e/t:a	(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/b/i/h/d;
    //   137: astore 4
    //   139: aload_0
    //   140: getfield 54	com/sleepycat/b/i/e/d:g	Ljava/util/logging/Logger;
    //   143: getstatic 269	java/util/logging/Level:FINEST	Ljava/util/logging/Level;
    //   146: invokevirtual 275	java/util/logging/Logger:isLoggable	(Ljava/util/logging/Level;)Z
    //   149: ifeq +48 -> 197
    //   152: aload_0
    //   153: getfield 54	com/sleepycat/b/i/e/d:g	Ljava/util/logging/Logger;
    //   156: aload_2
    //   157: new 149	java/lang/StringBuilder
    //   160: dup
    //   161: ldc_w 277
    //   164: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   167: aload_0
    //   168: getfield 37	com/sleepycat/b/i/e/d:b	Lcom/sleepycat/b/i/c/b/h;
    //   171: getfield 231	com/sleepycat/b/i/c/b/h:i	Lcom/sleepycat/b/i/c/b/x;
    //   174: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   177: ldc_w 279
    //   180: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: aload 4
    //   185: invokevirtual 284	com/sleepycat/b/i/h/d:a	()Lcom/sleepycat/b/i/h/e;
    //   188: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   191: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   194: invokestatic 286	com/sleepycat/b/p/w:e	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   197: aload 4
    //   199: instanceof 288
    //   202: ifeq +125 -> 327
    //   205: aload 4
    //   207: checkcast 288	com/sleepycat/b/i/e/au
    //   210: invokevirtual 289	com/sleepycat/b/i/e/au:c	()Lcom/sleepycat/b/p/au;
    //   213: astore_3
    //   214: aload_0
    //   215: getfield 54	com/sleepycat/b/i/e/d:g	Ljava/util/logging/Logger;
    //   218: aload_2
    //   219: new 149	java/lang/StringBuilder
    //   222: dup
    //   223: ldc -27
    //   225: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   228: aload_0
    //   229: getfield 37	com/sleepycat/b/i/e/d:b	Lcom/sleepycat/b/i/c/b/h;
    //   232: getfield 231	com/sleepycat/b/i/c/b/h:i	Lcom/sleepycat/b/i/c/b/x;
    //   235: getfield 236	com/sleepycat/b/i/c/b/x:a	Ljava/lang/String;
    //   238: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: ldc_w 291
    //   244: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: aload_3
    //   248: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   251: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   254: invokestatic 251	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   257: aload_0
    //   258: getfield 43	com/sleepycat/b/i/e/d:c	Lcom/sleepycat/b/i/c/b/aa;
    //   261: getfield 126	com/sleepycat/b/i/c/b/aa:r	Lcom/sleepycat/b/i/c/b/o;
    //   264: invokevirtual 293	com/sleepycat/b/i/c/b/o:b	()V
    //   267: aload_0
    //   268: getfield 54	com/sleepycat/b/i/e/d:g	Ljava/util/logging/Logger;
    //   271: aload_2
    //   272: new 149	java/lang/StringBuilder
    //   275: dup
    //   276: ldc -27
    //   278: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   281: aload_0
    //   282: getfield 37	com/sleepycat/b/i/e/d:b	Lcom/sleepycat/b/i/c/b/h;
    //   285: getfield 231	com/sleepycat/b/i/c/b/h:i	Lcom/sleepycat/b/i/c/b/x;
    //   288: getfield 236	com/sleepycat/b/i/c/b/x:a	Ljava/lang/String;
    //   291: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   294: ldc_w 295
    //   297: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   303: iconst_1
    //   304: anewarray 4	java/lang/Object
    //   307: dup
    //   308: iconst_0
    //   309: invokestatic 227	java/lang/System:currentTimeMillis	()J
    //   312: lload 6
    //   314: lsub
    //   315: invokestatic 301	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   318: aastore
    //   319: invokestatic 307	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   322: invokestatic 251	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   325: aload_3
    //   326: areturn
    //   327: aload 4
    //   329: instanceof 119
    //   332: ifeq +123 -> 455
    //   335: aload_0
    //   336: aload_3
    //   337: aload 4
    //   339: checkcast 119	com/sleepycat/b/i/e/aa
    //   342: iconst_0
    //   343: invokespecial 260	com/sleepycat/b/i/e/d:a	(Lcom/sleepycat/b/i/i/m;Lcom/sleepycat/b/i/e/aa;Z)Lcom/sleepycat/b/i/h/d;
    //   346: astore 4
    //   348: aload_0
    //   349: getfield 58	com/sleepycat/b/i/e/d:e	Lcom/sleepycat/b/i/e/t;
    //   352: aload 4
    //   354: aload_0
    //   355: getfield 56	com/sleepycat/b/i/e/d:d	Lcom/sleepycat/b/i/h/o;
    //   358: invokevirtual 263	com/sleepycat/b/i/e/t:a	(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V
    //   361: goto -235 -> 126
    //   364: astore_3
    //   365: aload_1
    //   366: aload_0
    //   367: getfield 43	com/sleepycat/b/i/e/d:c	Lcom/sleepycat/b/i/c/b/aa;
    //   370: getfield 126	com/sleepycat/b/i/c/b/aa:r	Lcom/sleepycat/b/i/c/b/o;
    //   373: getfield 131	com/sleepycat/b/i/c/b/o:a	Lcom/sleepycat/b/p/au;
    //   376: ldc_w 309
    //   379: invokevirtual 314	com/sleepycat/b/i/c/b/r:a	(Lcom/sleepycat/b/p/au;Ljava/lang/String;)V
    //   382: aload_3
    //   383: athrow
    //   384: astore_1
    //   385: aload_0
    //   386: getfield 43	com/sleepycat/b/i/e/d:c	Lcom/sleepycat/b/i/c/b/aa;
    //   389: getfield 126	com/sleepycat/b/i/c/b/aa:r	Lcom/sleepycat/b/i/c/b/o;
    //   392: invokevirtual 293	com/sleepycat/b/i/c/b/o:b	()V
    //   395: aload_0
    //   396: getfield 54	com/sleepycat/b/i/e/d:g	Ljava/util/logging/Logger;
    //   399: aload_2
    //   400: new 149	java/lang/StringBuilder
    //   403: dup
    //   404: ldc -27
    //   406: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   409: aload_0
    //   410: getfield 37	com/sleepycat/b/i/e/d:b	Lcom/sleepycat/b/i/c/b/h;
    //   413: getfield 231	com/sleepycat/b/i/c/b/h:i	Lcom/sleepycat/b/i/c/b/x;
    //   416: getfield 236	com/sleepycat/b/i/c/b/x:a	Ljava/lang/String;
    //   419: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   422: ldc_w 295
    //   425: invokevirtual 163	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   428: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   431: iconst_1
    //   432: anewarray 4	java/lang/Object
    //   435: dup
    //   436: iconst_0
    //   437: invokestatic 227	java/lang/System:currentTimeMillis	()J
    //   440: lload 6
    //   442: lsub
    //   443: invokestatic 301	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   446: aastore
    //   447: invokestatic 307	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   450: invokestatic 251	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   453: aload_1
    //   454: athrow
    //   455: aload 4
    //   457: instanceof 316
    //   460: ifeq +91 -> 551
    //   463: aload 4
    //   465: checkcast 316	com/sleepycat/b/i/e/ao
    //   468: invokevirtual 317	com/sleepycat/b/i/e/ao:c	()Lcom/sleepycat/b/p/au;
    //   471: astore 4
    //   473: aload_0
    //   474: getfield 58	com/sleepycat/b/i/e/d:e	Lcom/sleepycat/b/i/e/t;
    //   477: astore 5
    //   479: aload 5
    //   481: invokevirtual 47	java/lang/Object:getClass	()Ljava/lang/Class;
    //   484: pop
    //   485: new 319	com/sleepycat/b/i/e/ap
    //   488: dup
    //   489: aload 5
    //   491: aload_0
    //   492: getfield 43	com/sleepycat/b/i/e/d:c	Lcom/sleepycat/b/i/c/b/aa;
    //   495: getfield 126	com/sleepycat/b/i/c/b/aa:r	Lcom/sleepycat/b/i/c/b/o;
    //   498: getfield 131	com/sleepycat/b/i/c/b/o:a	Lcom/sleepycat/b/p/au;
    //   501: aload_0
    //   502: getfield 43	com/sleepycat/b/i/e/d:c	Lcom/sleepycat/b/i/c/b/aa;
    //   505: invokevirtual 322	com/sleepycat/b/i/c/b/aa:e	()[Lcom/sleepycat/b/i/c/am;
    //   508: invokespecial 325	com/sleepycat/b/i/e/ap:<init>	(Lcom/sleepycat/b/i/e/t;Lcom/sleepycat/b/p/au;[Lcom/sleepycat/b/i/c/am;)V
    //   511: astore 5
    //   513: aload_0
    //   514: getfield 58	com/sleepycat/b/i/e/d:e	Lcom/sleepycat/b/i/e/t;
    //   517: aload 5
    //   519: aload_0
    //   520: getfield 56	com/sleepycat/b/i/e/d:d	Lcom/sleepycat/b/i/h/o;
    //   523: invokevirtual 263	com/sleepycat/b/i/e/t:a	(Lcom/sleepycat/b/i/h/d;Lcom/sleepycat/b/i/h/o;)V
    //   526: new 222	com/sleepycat/b/i/e/e
    //   529: dup
    //   530: aload 4
    //   532: aload_3
    //   533: getfield 139	com/sleepycat/b/i/i/m:b	Lcom/sleepycat/b/p/au;
    //   536: aload_3
    //   537: getfield 174	com/sleepycat/b/i/i/m:c	Lcom/sleepycat/b/p/au;
    //   540: aload_0
    //   541: getfield 37	com/sleepycat/b/i/e/d:b	Lcom/sleepycat/b/i/c/b/h;
    //   544: getfield 231	com/sleepycat/b/i/c/b/h:i	Lcom/sleepycat/b/i/c/b/x;
    //   547: invokespecial 328	com/sleepycat/b/i/e/e:<init>	(Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/p/au;Lcom/sleepycat/b/i/c/b/x;)V
    //   550: athrow
    //   551: aload_2
    //   552: new 149	java/lang/StringBuilder
    //   555: dup
    //   556: ldc_w 330
    //   559: invokespecial 154	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   562: aload 4
    //   564: invokevirtual 158	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   567: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   570: invokestatic 210	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   573: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	574	0	this	d
    //   0	574	1	paramr	com.sleepycat.b.i.c.b.r
    //   12	540	2	localaj	aj
    //   90	247	3	localObject1	Object
    //   364	173	3	locale	e
    //   111	452	4	localObject2	Object
    //   477	41	5	localObject3	Object
    //   3	438	6	l	long
    // Exception table:
    //   from	to	target	type
    //   80	126	364	com/sleepycat/b/i/e/e
    //   126	197	364	com/sleepycat/b/i/e/e
    //   197	257	364	com/sleepycat/b/i/e/e
    //   327	361	364	com/sleepycat/b/i/e/e
    //   455	551	364	com/sleepycat/b/i/e/e
    //   551	574	364	com/sleepycat/b/i/e/e
    //   80	126	384	finally
    //   126	197	384	finally
    //   197	257	384	finally
    //   327	361	384	finally
    //   365	384	384	finally
    //   455	551	384	finally
    //   551	574	384	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\e\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */