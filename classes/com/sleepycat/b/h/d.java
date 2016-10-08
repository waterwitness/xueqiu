package com.sleepycat.b.h;

import com.sleepycat.b.a;
import com.sleepycat.b.b.b;
import com.sleepycat.b.bn;
import com.sleepycat.b.c.ab;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.g.am;
import com.sleepycat.b.g.au;
import com.sleepycat.b.g.av;
import com.sleepycat.b.l.ae;
import com.sleepycat.b.l.ah;
import com.sleepycat.b.l.aq;
import com.sleepycat.b.l.j;
import com.sleepycat.b.l.q;
import com.sleepycat.b.n;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.ao;
import com.sleepycat.b.p.t;
import com.sleepycat.b.p.w;
import com.sleepycat.b.p.z;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.logging.Level;

public class d
  extends com.sleepycat.b.p.h
  implements ab
{
  public static ao a;
  public static ao b;
  public static ao<j> c;
  public ad d;
  public final long e;
  public final long f;
  long g;
  public long h;
  long i;
  public final h j;
  private long t;
  private final long u;
  private boolean v;
  private long w;
  private final f x;
  
  static
  {
    if (!d.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      a = null;
      b = null;
      c = null;
      return;
    }
  }
  
  public d(ad paramad, long paramLong, String paramString)
  {
    super(paramLong, paramString, paramad);
    this.d = paramad;
    this.e = paramad.u.a(com.sleepycat.b.b.d.av);
    this.f = paramad.u.a(com.sleepycat.b.b.d.N);
    this.u = paramLong;
    this.g = 0L;
    this.w = 0L;
    this.x = new f();
    this.j = new h(paramad);
    this.v = paramad.u.a(com.sleepycat.b.b.d.ay);
    paramad.a(this);
  }
  
  public static long a(m paramm)
  {
    long l1 = paramm.a(com.sleepycat.b.b.d.aw);
    long l2 = paramm.a(com.sleepycat.b.b.d.av);
    if ((l1 == 0L) && (l2 == 0L)) {
      throw new IllegalArgumentException(com.sleepycat.b.b.d.av.a + " and " + com.sleepycat.b.b.d.aw.a + " cannot both be 0. ");
    }
    if (l2 == 0L) {
      return l1;
    }
    return 0L;
  }
  
  private static void a(ad paramad, com.sleepycat.b.c.i parami, am paramam, e parame, h paramh, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2, f paramf, boolean paramBoolean3)
  {
    int i1 = paramInt1;
    e locale = parame;
    parame = parami.b;
    int i5 = 0;
    Object localObject;
    if (locale.c)
    {
      localObject = new g(parami, paramam, locale.b);
      parame.a((aq)localObject);
      boolean bool2 = ((g)localObject).a;
      boolean bool1 = ((g)localObject).b;
      i5 = bool1;
      if (bool2)
      {
        paramad.q.b(parami);
        paramf.d += 1L;
        paramf.a += 1L;
        i5 = bool1;
      }
    }
    ae localae;
    j localj1;
    int i4;
    label167:
    label178:
    label191:
    int i2;
    if (i5 == 0)
    {
      localae = parame.a(locale.b, locale.d, false, a.c, -1, null, false);
      if (localae.d != null)
      {
        localj1 = localae.d;
        i4 = localj1.j;
        if ((0xFFFF & i4) == 2)
        {
          paramInt1 = 1;
          if (i1 < paramInt2) {
            break label370;
          }
          parame = au.a;
          if ((paramInt1 == 0) || (!paramBoolean3)) {
            break label389;
          }
          paramInt1 = 1;
          if ((paramInt1 == 0) || (!paramBoolean2) || (parami.e)) {
            break label395;
          }
          i2 = 1;
        }
      }
    }
    for (;;)
    {
      int n;
      int m;
      label370:
      label389:
      label395:
      long l;
      try
      {
        if (localae.a)
        {
          int i3;
          if ((j)localj1.j(localae.e) == null)
          {
            n = 0;
            i3 = 1;
            m = paramInt1;
            paramInt1 = i3;
            if (m == 0) {
              break label902;
            }
            localObject = new TreeMap();
            i3 = 0;
            if (i3 >= localj1.f) {
              continue;
            }
            j localj2 = (j)localj1.j(i3);
            if (localj2 != null)
            {
              Long localLong = Long.valueOf(localj2.c);
              if (((n != 0) && (locale.b == localLong.longValue())) || (paramh.a(Integer.valueOf(localj2.j), localLong))) {
                ((SortedMap)localObject).put(localLong, Integer.valueOf(i3));
              }
            }
            i3 += 1;
            continue;
            paramInt1 = 0;
            break label167;
            if (paramInt1 != 0)
            {
              parame = au.b;
              break label178;
            }
            parame = au.c;
            break label178;
            paramInt1 = 0;
            break label191;
            i2 = 0;
            continue;
          }
          if (i2 != 0)
          {
            n = 1;
            i3 = 0;
            m = paramInt1;
            paramInt1 = i3;
            continue;
          }
          paramBoolean3 = a(paramad, paramh, localj1, Collections.singleton(Integer.valueOf(localae.e)), paramBoolean1, parame, paramf);
          n = 0;
          m = paramInt1;
          paramInt1 = paramBoolean3 | false;
          continue;
        }
        if ((!localae.c) || (i4 <= i1)) {
          break label907;
        }
        n = 0;
        m = 0;
        paramInt1 = 1;
        continue;
        if (i2 == 0) {
          break label896;
        }
        paramInt1 |= a(paramad, paramh, localj1, ((SortedMap)localObject).values(), paramBoolean1, parame, paramf);
        parame = null;
        if (paramInt1 == 0) {
          break label695;
        }
        if (k) {
          break label686;
        }
        if ((localae.c) && (!localae.a))
        {
          paramInt1 = 1;
          if (paramInt1 != 0) {
            break label686;
          }
          l = locale.b;
          paramad = new StringBuilder();
          paramad.append(" result=").append(localae);
          paramad.append(" parent node=").append(localj1.c);
          paramad.append(" level=").append(localj1.j);
          paramad.append(" child node=").append(l);
          paramad.append(" level=").append(i1);
          throw new AssertionError(paramad.toString());
        }
      }
      finally
      {
        localj1.C();
      }
      if (localae.d.j == i1 + 1)
      {
        paramInt1 = 1;
        continue;
        label686:
        paramh.a(localj1, true);
        label695:
        localj1.C();
        if (parame != null)
        {
          if ((!k) && (m == 0)) {
            throw new AssertionError();
          }
          if ((!k) && (i2 != 0)) {
            throw new AssertionError();
          }
          parame = parame.keySet().iterator();
          while (parame.hasNext())
          {
            l = ((Long)parame.next()).longValue();
            if ((!k) && (locale.b == l)) {
              throw new AssertionError();
            }
            localObject = paramh.b(Integer.valueOf(i1), Long.valueOf(l));
            if (localObject != null) {
              a(paramad, parami, paramam, (e)localObject, paramh, i1, paramInt2, paramBoolean1, paramBoolean2, paramf, false);
            }
          }
        }
        if ((m != 0) && (i4 <= paramInt2))
        {
          locale = paramh.b(Integer.valueOf(i4), Long.valueOf(localj1.c));
          if (locale != null)
          {
            paramBoolean3 = false;
            i1 = i4;
            break;
          }
        }
        return;
        label896:
        parame = (e)localObject;
        continue;
        label902:
        parame = null;
        continue;
        label907:
        n = 0;
        m = 0;
        paramInt1 = 0;
        continue;
      }
      paramInt1 = 0;
    }
  }
  
  public static void a(ad paramad, com.sleepycat.b.c.i parami, boolean paramBoolean)
  {
    if (paramad.g) {
      return;
    }
    h localh = new h(paramad);
    f localf1 = new f();
    try
    {
      if ((!h.d) && (localh.c != i.a)) {
        throw new AssertionError();
      }
    }
    catch (n localn)
    {
      w.a(paramad, "Checkpointer", "syncDatabase", "of " + parami.c(), localn);
      throw localn;
    }
    finally
    {
      localh.a();
    }
    Object localObject2 = parami.a;
    Iterator localIterator = localh.a.t.iterator();
    Object localObject1;
    for (;;)
    {
      if (localIterator.hasNext())
      {
        localObject1 = (j)localIterator.next();
        if (((j)localObject1).i.a.equals(localObject2)) {
          ((j)localObject1).a(a.c);
        }
      }
      else
      {
        try
        {
          if (((j)localObject1).G()) {
            localh.a((j)localObject1, false);
          }
          ((j)localObject1).C();
        }
        finally
        {
          ((j)localObject1).C();
        }
      }
    }
    localObject2 = localh.a.q;
    ((Map)localObject1).put(parami, Integer.valueOf(com.sleepycat.b.c.p.d(parami)));
    localh.c();
    if (localh.e() > 0)
    {
      a(paramad, localh, false, -1L, false, localf2);
      if (paramBoolean) {
        paramad.w.a();
      }
    }
    localh.a();
  }
  
  private static void a(ad paramad, h paramh, boolean paramBoolean1, long paramLong, boolean paramBoolean2, f paramf)
  {
    am localam = paramad.w;
    com.sleepycat.b.c.p localp = paramad.q;
    HashMap localHashMap = new HashMap();
    Integer localInteger;
    for (;;)
    {
      try
      {
        if (paramh.b() <= 0) {
          break;
        }
        localInteger = paramh.d();
        int m = localInteger.intValue();
        if (m == 131072) {
          paramh.a(paramLong);
        }
        e locale = paramh.b(localInteger);
        if (locale != null)
        {
          com.sleepycat.b.c.i locali = localp.a(locale.a, -1L, localHashMap);
          if ((locali != null) && (!locali.z()))
          {
            int n = paramh.a(locali);
            if (m <= n)
            {
              paramad.b(true);
              a(paramad, locali, localam, locale, paramh, m, n, paramBoolean1, paramBoolean2, paramf, true);
              paramad.g();
            }
          }
          paramad.n();
        }
      }
      finally
      {
        localp.a(localHashMap);
      }
    }
    localp.a(localHashMap);
  }
  
  private void a(ad paramad, String paramString, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Checkpoint ").append(this.t);
    localStringBuilder.append(": source=").append(paramString);
    localStringBuilder.append(" success=").append(paramBoolean);
    localStringBuilder.append(" nFullINFlushThisRun=");
    localStringBuilder.append(this.x.d);
    localStringBuilder.append(" nDeltaINFlushThisRun=");
    localStringBuilder.append(this.x.f);
    w.a(this.r, paramad, Level.CONFIG, localStringBuilder.toString());
  }
  
  private static boolean a(ad paramad, h paramh, j paramj, Collection<Integer> paramCollection, boolean paramBoolean, au paramau, f paramf)
  {
    am localam = paramad.w;
    com.sleepycat.b.l.p localp = new com.sleepycat.b.l.p();
    localp.a = paramj.i;
    localp.e = true;
    localp.l = paramBoolean;
    localp.m = true;
    paramBoolean = false;
    paramad = new ArrayList();
    for (;;)
    {
      j localj;
      try
      {
        paramCollection = paramCollection.iterator();
        if (!paramCollection.hasNext()) {
          break;
        }
        int m = ((Integer)paramCollection.next()).intValue();
        localj = (j)paramj.j(m);
        paramh.b(Integer.valueOf(localj.j), Long.valueOf(localj.c));
        localj.a(a.c);
        q localq = new q();
        localq.k = m;
        paramad.add(localq);
        if (!localj.G()) {
          break label248;
        }
        if (localj.i.e) {
          localj.x();
        }
        localq.e = paramau;
        localq.f = av.g;
        localq.j = paramj;
        localj.a(localq, localp);
        continue;
        ((j)paramj.j(((q)paramad.next()).k)).C();
      }
      finally
      {
        paramad = paramad.iterator();
        if (!paramad.hasNext()) {
          break label474;
        }
      }
      continue;
      label248:
      paramad.remove(paramad.size() - 1);
      localj.C();
      paramBoolean = true;
    }
    localam.a((com.sleepycat.b.g.al[])paramad.toArray(new com.sleepycat.b.g.al[paramad.size()]), localp);
    paramh = paramad.iterator();
    for (;;)
    {
      if (paramh.hasNext())
      {
        paramCollection = (q)paramh.next();
        paramau = (j)paramj.j(paramCollection.k);
        paramau.a(paramCollection);
        if ((!k) && (paramCollection.d == -1L)) {
          throw new AssertionError();
        }
        paramj.c(paramCollection.k, paramCollection.d);
        if (paramCollection.l)
        {
          paramf.f += 1L;
          paramf.c += 1L;
        }
        else
        {
          paramf.d += 1L;
          paramf.a += 1L;
          if (paramau.f())
          {
            paramf.b += 1L;
            paramf.e += 1L;
            break label520;
            label474:
            throw paramh;
          }
        }
      }
      else
      {
        for (;;)
        {
          return paramBoolean;
          paramad = paramad.iterator();
          while (paramad.hasNext()) {
            ((j)paramj.j(((q)paramad.next()).k)).C();
          }
        }
      }
      label520:
      paramBoolean = true;
    }
  }
  
  /* Error */
  private boolean a(com.sleepycat.b.c paramc)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 7
    //   3: lconst_0
    //   4: lstore 5
    //   6: ldc2_w 386
    //   9: lstore 11
    //   11: aload_1
    //   12: getfield 549	com/sleepycat/b/c:b	Z
    //   15: istore 13
    //   17: iload 13
    //   19: ifeq +137 -> 156
    //   22: new 119	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   29: astore_2
    //   30: aload_2
    //   31: ldc_w 551
    //   34: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: lconst_0
    //   38: invokevirtual 273	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   41: pop
    //   42: ldc2_w 386
    //   45: ldc2_w 386
    //   48: lcmp
    //   49: ifeq +20 -> 69
    //   52: aload_2
    //   53: ldc_w 553
    //   56: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: ldc2_w 386
    //   62: invokestatic 558	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   65: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: pop
    //   69: aload_0
    //   70: getfield 560	com/sleepycat/b/h/d:i	J
    //   73: ldc2_w 386
    //   76: lcmp
    //   77: ifeq +23 -> 100
    //   80: aload_2
    //   81: ldc_w 562
    //   84: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: pop
    //   88: aload_2
    //   89: aload_0
    //   90: getfield 560	com/sleepycat/b/h/d:i	J
    //   93: invokestatic 558	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   96: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: pop
    //   100: aload_2
    //   101: ldc_w 564
    //   104: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: lconst_0
    //   108: invokevirtual 273	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   111: pop
    //   112: aload_2
    //   113: ldc_w 566
    //   116: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: aload_1
    //   120: getfield 549	com/sleepycat/b/c:b	Z
    //   123: invokevirtual 449	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   126: pop
    //   127: aload_2
    //   128: ldc_w 568
    //   131: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   134: iconst_1
    //   135: invokevirtual 449	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   138: pop
    //   139: aload_0
    //   140: getfield 458	com/sleepycat/b/h/d:r	Ljava/util/logging/Logger;
    //   143: aload_0
    //   144: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   147: aload_2
    //   148: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: invokestatic 571	com/sleepycat/b/p/w:e	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   154: iconst_1
    //   155: ireturn
    //   156: aload_1
    //   157: getfield 572	com/sleepycat/b/c:c	I
    //   160: ifeq +201 -> 361
    //   163: aload_1
    //   164: getfield 572	com/sleepycat/b/c:c	I
    //   167: istore 4
    //   169: iload 4
    //   171: bipush 10
    //   173: ishl
    //   174: i2l
    //   175: lstore 7
    //   177: lconst_0
    //   178: lstore 5
    //   180: lload 7
    //   182: lconst_0
    //   183: lcmp
    //   184: ifeq +249 -> 433
    //   187: aload_0
    //   188: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   191: getfield 575	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   194: getfield 580	com/sleepycat/b/g/m:p	J
    //   197: lstore 9
    //   199: lload 9
    //   201: aload_0
    //   202: getfield 582	com/sleepycat/b/h/d:h	J
    //   205: aload_0
    //   206: getfield 76	com/sleepycat/b/h/d:f	J
    //   209: invokestatic 585	com/sleepycat/b/p/j:a	(JJJ)J
    //   212: lstore 11
    //   214: lload 11
    //   216: lload 7
    //   218: lcmp
    //   219: iflt +430 -> 649
    //   222: iconst_1
    //   223: istore 13
    //   225: new 119	java/lang/StringBuilder
    //   228: dup
    //   229: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   232: astore_2
    //   233: aload_2
    //   234: ldc_w 551
    //   237: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: lload 7
    //   242: invokevirtual 273	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   245: pop
    //   246: lload 9
    //   248: ldc2_w 386
    //   251: lcmp
    //   252: ifeq +19 -> 271
    //   255: aload_2
    //   256: ldc_w 553
    //   259: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: lload 9
    //   264: invokestatic 558	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   267: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   270: pop
    //   271: aload_0
    //   272: getfield 560	com/sleepycat/b/h/d:i	J
    //   275: ldc2_w 386
    //   278: lcmp
    //   279: ifeq +23 -> 302
    //   282: aload_2
    //   283: ldc_w 562
    //   286: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   289: pop
    //   290: aload_2
    //   291: aload_0
    //   292: getfield 560	com/sleepycat/b/h/d:i	J
    //   295: invokestatic 558	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   298: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: pop
    //   302: aload_2
    //   303: ldc_w 564
    //   306: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   309: lload 5
    //   311: invokevirtual 273	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   314: pop
    //   315: aload_2
    //   316: ldc_w 566
    //   319: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   322: aload_1
    //   323: getfield 549	com/sleepycat/b/c:b	Z
    //   326: invokevirtual 449	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   329: pop
    //   330: aload_2
    //   331: ldc_w 568
    //   334: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   337: iload 13
    //   339: invokevirtual 449	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   342: pop
    //   343: aload_0
    //   344: getfield 458	com/sleepycat/b/h/d:r	Ljava/util/logging/Logger;
    //   347: aload_0
    //   348: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   351: aload_2
    //   352: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   355: invokestatic 571	com/sleepycat/b/p/w:e	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   358: iload 13
    //   360: ireturn
    //   361: aload_1
    //   362: getfield 587	com/sleepycat/b/c:d	I
    //   365: ifeq +27 -> 392
    //   368: aload_1
    //   369: getfield 587	com/sleepycat/b/c:d	I
    //   372: bipush 60
    //   374: imul
    //   375: sipush 1000
    //   378: imul
    //   379: i2l
    //   380: lstore 9
    //   382: lconst_0
    //   383: lstore 7
    //   385: lload 9
    //   387: lstore 5
    //   389: goto -209 -> 180
    //   392: aload_0
    //   393: getfield 71	com/sleepycat/b/h/d:e	J
    //   396: lconst_0
    //   397: lcmp
    //   398: ifeq +19 -> 417
    //   401: aload_0
    //   402: getfield 71	com/sleepycat/b/h/d:e	J
    //   405: lstore 9
    //   407: lconst_0
    //   408: lstore 5
    //   410: lload 9
    //   412: lstore 7
    //   414: goto -234 -> 180
    //   417: aload_0
    //   418: getfield 78	com/sleepycat/b/h/d:u	J
    //   421: lstore 9
    //   423: lconst_0
    //   424: lstore 7
    //   426: lload 9
    //   428: lstore 5
    //   430: goto -250 -> 180
    //   433: lload 5
    //   435: lconst_0
    //   436: lcmp
    //   437: ifeq +202 -> 639
    //   440: aload_0
    //   441: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   444: getfield 575	com/sleepycat/b/c/ad:x	Lcom/sleepycat/b/g/m;
    //   447: getfield 589	com/sleepycat/b/g/m:q	J
    //   450: lstore 9
    //   452: invokestatic 594	java/lang/System:currentTimeMillis	()J
    //   455: aload_0
    //   456: getfield 80	com/sleepycat/b/h/d:g	J
    //   459: lsub
    //   460: lload 5
    //   462: lcmp
    //   463: iflt +176 -> 639
    //   466: lload 9
    //   468: aload_0
    //   469: getfield 560	com/sleepycat/b/h/d:i	J
    //   472: invokestatic 597	com/sleepycat/b/p/j:b	(JJ)I
    //   475: istore 4
    //   477: iload 4
    //   479: ifeq +160 -> 639
    //   482: iconst_1
    //   483: istore 13
    //   485: lload 11
    //   487: lstore 9
    //   489: goto -264 -> 225
    //   492: astore_2
    //   493: new 119	java/lang/StringBuilder
    //   496: dup
    //   497: invokespecial 120	java/lang/StringBuilder:<init>	()V
    //   500: astore_3
    //   501: aload_3
    //   502: ldc_w 551
    //   505: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   508: lload 7
    //   510: invokevirtual 273	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   513: pop
    //   514: lload 11
    //   516: ldc2_w 386
    //   519: lcmp
    //   520: ifeq +19 -> 539
    //   523: aload_3
    //   524: ldc_w 553
    //   527: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   530: lload 11
    //   532: invokestatic 558	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   535: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   538: pop
    //   539: aload_0
    //   540: getfield 560	com/sleepycat/b/h/d:i	J
    //   543: ldc2_w 386
    //   546: lcmp
    //   547: ifeq +23 -> 570
    //   550: aload_3
    //   551: ldc_w 562
    //   554: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   557: pop
    //   558: aload_3
    //   559: aload_0
    //   560: getfield 560	com/sleepycat/b/h/d:i	J
    //   563: invokestatic 558	com/sleepycat/b/p/j:h	(J)Ljava/lang/String;
    //   566: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   569: pop
    //   570: aload_3
    //   571: ldc_w 564
    //   574: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   577: lload 5
    //   579: invokevirtual 273	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   582: pop
    //   583: aload_3
    //   584: ldc_w 566
    //   587: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   590: aload_1
    //   591: getfield 549	com/sleepycat/b/c:b	Z
    //   594: invokevirtual 449	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   597: pop
    //   598: aload_3
    //   599: ldc_w 568
    //   602: invokevirtual 129	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   605: iconst_0
    //   606: invokevirtual 449	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   609: pop
    //   610: aload_0
    //   611: getfield 458	com/sleepycat/b/h/d:r	Ljava/util/logging/Logger;
    //   614: aload_0
    //   615: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   618: aload_3
    //   619: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   622: invokestatic 571	com/sleepycat/b/p/w:e	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   625: aload_2
    //   626: athrow
    //   627: astore_2
    //   628: goto -135 -> 493
    //   631: astore_2
    //   632: lload 9
    //   634: lstore 11
    //   636: goto -143 -> 493
    //   639: iconst_0
    //   640: istore 13
    //   642: lload 11
    //   644: lstore 9
    //   646: goto -421 -> 225
    //   649: iconst_0
    //   650: istore 13
    //   652: goto -427 -> 225
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	655	0	this	d
    //   0	655	1	paramc	com.sleepycat.b.c
    //   29	323	2	localStringBuilder1	StringBuilder
    //   492	134	2	localObject1	Object
    //   627	1	2	localObject2	Object
    //   631	1	2	localObject3	Object
    //   500	119	3	localStringBuilder2	StringBuilder
    //   167	311	4	m	int
    //   4	574	5	l1	long
    //   1	508	7	l2	long
    //   197	448	9	l3	long
    //   9	634	11	l4	long
    //   15	636	13	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   11	17	492	finally
    //   156	169	492	finally
    //   361	382	492	finally
    //   392	407	492	finally
    //   417	423	492	finally
    //   187	199	627	finally
    //   440	477	627	finally
    //   199	214	631	finally
  }
  
  protected final long a()
  {
    return this.d.u.a(com.sleepycat.b.b.d.ax);
  }
  
  public final ai a(bn parambn)
  {
    ai localai = new ai("Checkpoints", "Frequency and extent of checkpointing activity.");
    new z(localai, c.b, this.t);
    new z(localai, c.a, this.w);
    new t(localai, c.f, this.h);
    new t(localai, c.g, this.i);
    new z(localai, c.c, this.x.a);
    new z(localai, c.d, this.x.b);
    new z(localai, c.e, this.x.c);
    if (parambn.c)
    {
      this.w = 0L;
      this.x.a = 0L;
      this.x.b = 0L;
      this.x.c = 0L;
    }
    return localai;
  }
  
  public final void a(long paramLong)
  {
    try
    {
      this.t = paramLong;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final void a(com.sleepycat.b.c paramc, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   6: getfield 321	com/sleepycat/b/c/ad:g	Z
    //   9: istore 18
    //   11: iload 18
    //   13: ifeq +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: aload_0
    //   20: aload_1
    //   21: invokespecial 645	com/sleepycat/b/h/d:a	(Lcom/sleepycat/b/c;)Z
    //   24: ifeq -8 -> 16
    //   27: aload_1
    //   28: getfield 646	com/sleepycat/b/c:e	Z
    //   31: istore 20
    //   33: iconst_0
    //   34: istore 18
    //   36: aload_0
    //   37: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   40: getfield 650	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   43: astore_1
    //   44: aload_1
    //   45: invokevirtual 655	com/sleepycat/b/a/c:c	()Lcom/sleepycat/b/a/l;
    //   48: astore_3
    //   49: aload_3
    //   50: invokevirtual 659	com/sleepycat/b/a/l:a	()Z
    //   53: ifne +6 -> 59
    //   56: iconst_1
    //   57: istore 18
    //   59: aload_0
    //   60: invokestatic 594	java/lang/System:currentTimeMillis	()J
    //   63: putfield 80	com/sleepycat/b/h/d:g	J
    //   66: aload_0
    //   67: getfield 88	com/sleepycat/b/h/d:x	Lcom/sleepycat/b/h/f;
    //   70: astore 4
    //   72: aload 4
    //   74: lconst_0
    //   75: putfield 177	com/sleepycat/b/h/f:d	J
    //   78: aload 4
    //   80: lconst_0
    //   81: putfield 543	com/sleepycat/b/h/f:e	J
    //   84: aload 4
    //   86: lconst_0
    //   87: putfield 454	com/sleepycat/b/h/f:f	J
    //   90: aload_0
    //   91: aload_0
    //   92: getfield 442	com/sleepycat/b/h/d:t	J
    //   95: lconst_1
    //   96: ladd
    //   97: putfield 442	com/sleepycat/b/h/d:t	J
    //   100: aload_0
    //   101: aload_0
    //   102: getfield 82	com/sleepycat/b/h/d:w	J
    //   105: lconst_1
    //   106: ladd
    //   107: putfield 82	com/sleepycat/b/h/d:w	J
    //   110: iconst_0
    //   111: istore 19
    //   113: iconst_0
    //   114: istore 9
    //   116: aload_0
    //   117: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   120: getfield 393	com/sleepycat/b/c/ad:w	Lcom/sleepycat/b/g/am;
    //   123: astore 4
    //   125: aload_0
    //   126: getfield 95	com/sleepycat/b/h/d:j	Lcom/sleepycat/b/h/h;
    //   129: iload 20
    //   131: iload 18
    //   133: invokevirtual 662	com/sleepycat/b/h/h:a	(ZZ)V
    //   136: aload 4
    //   138: getstatic 668	com/sleepycat/b/g/af:s	Lcom/sleepycat/b/g/af;
    //   141: new 670	com/sleepycat/b/h/b
    //   144: dup
    //   145: aload_0
    //   146: getfield 442	com/sleepycat/b/h/d:t	J
    //   149: aload_2
    //   150: invokespecial 673	com/sleepycat/b/h/b:<init>	(JLjava/lang/String;)V
    //   153: invokestatic 678	com/sleepycat/b/g/a/q:a	(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)Lcom/sleepycat/b/g/a/q;
    //   156: getstatic 504	com/sleepycat/b/g/av:g	Lcom/sleepycat/b/g/av;
    //   159: invokevirtual 681	com/sleepycat/b/g/am:b	(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J
    //   162: lstore 14
    //   164: aload_0
    //   165: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   168: getfield 685	com/sleepycat/b/c/ad:y	Lcom/sleepycat/b/n/aj;
    //   171: invokevirtual 689	com/sleepycat/b/n/aj:a	()J
    //   174: lstore 16
    //   176: lload 16
    //   178: lstore 12
    //   180: lload 16
    //   182: ldc2_w 386
    //   185: lcmp
    //   186: ifne +7 -> 193
    //   189: lload 14
    //   191: lstore 12
    //   193: aload_0
    //   194: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   197: invokevirtual 692	com/sleepycat/b/c/ad:U	()V
    //   200: aload_0
    //   201: getfield 95	com/sleepycat/b/h/d:j	Lcom/sleepycat/b/h/h;
    //   204: astore 5
    //   206: getstatic 323	com/sleepycat/b/h/h:d	Z
    //   209: ifne +112 -> 321
    //   212: aload 5
    //   214: getfield 325	com/sleepycat/b/h/h:c	I
    //   217: getstatic 694	com/sleepycat/b/h/i:b	I
    //   220: if_icmpeq +101 -> 321
    //   223: new 282	java/lang/AssertionError
    //   226: dup
    //   227: invokespecial 292	java/lang/AssertionError:<init>	()V
    //   230: athrow
    //   231: astore_1
    //   232: iconst_0
    //   233: istore 10
    //   235: iconst_0
    //   236: istore 18
    //   238: iload 10
    //   240: istore 9
    //   242: iload 18
    //   244: istore 19
    //   246: aload_0
    //   247: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   250: ldc_w 331
    //   253: ldc_w 696
    //   256: new 119	java/lang/StringBuilder
    //   259: dup
    //   260: ldc_w 698
    //   263: invokespecial 336	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   266: aload_0
    //   267: getfield 442	com/sleepycat/b/h/d:t	J
    //   270: invokevirtual 273	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   273: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   276: aload_1
    //   277: invokestatic 343	com/sleepycat/b/p/w:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   280: iload 10
    //   282: istore 9
    //   284: iload 18
    //   286: istore 19
    //   288: aload_1
    //   289: athrow
    //   290: astore_1
    //   291: aload_0
    //   292: getfield 95	com/sleepycat/b/h/d:j	Lcom/sleepycat/b/h/h;
    //   295: invokevirtual 345	com/sleepycat/b/h/h:a	()V
    //   298: iload 9
    //   300: ifne +14 -> 314
    //   303: aload_0
    //   304: aload_0
    //   305: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   308: aload_2
    //   309: iload 19
    //   311: invokespecial 700	com/sleepycat/b/h/d:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Z)V
    //   314: aload_1
    //   315: athrow
    //   316: astore_1
    //   317: aload_0
    //   318: monitorexit
    //   319: aload_1
    //   320: athrow
    //   321: aload 5
    //   323: getfield 350	com/sleepycat/b/h/h:a	Lcom/sleepycat/b/c/ad;
    //   326: getfield 353	com/sleepycat/b/c/ad:t	Lcom/sleepycat/b/c/al;
    //   329: astore 6
    //   331: aload 6
    //   333: getfield 703	com/sleepycat/b/c/al:f	Ljava/util/concurrent/atomic/AtomicLong;
    //   336: lconst_0
    //   337: invokevirtual 708	java/util/concurrent/atomic/AtomicLong:set	(J)V
    //   340: aload 6
    //   342: iconst_1
    //   343: putfield 709	com/sleepycat/b/c/al:c	Z
    //   346: aload 6
    //   348: getfield 710	com/sleepycat/b/c/al:d	Z
    //   351: ifne +107 -> 458
    //   354: iconst_1
    //   355: istore 18
    //   357: aload 6
    //   359: iload 18
    //   361: putfield 710	com/sleepycat/b/c/al:d	Z
    //   364: aload 6
    //   366: invokevirtual 356	com/sleepycat/b/c/al:iterator	()Ljava/util/Iterator;
    //   369: astore 8
    //   371: aload 8
    //   373: invokeinterface 307 1 0
    //   378: ifeq +171 -> 549
    //   381: aload 8
    //   383: invokeinterface 311 1 0
    //   388: checkcast 197	com/sleepycat/b/l/j
    //   391: astore 7
    //   393: aload 7
    //   395: getstatic 187	com/sleepycat/b/a:c	Lcom/sleepycat/b/a;
    //   398: invokevirtual 712	com/sleepycat/b/l/j:b	(Lcom/sleepycat/b/a;)V
    //   401: getstatic 714	com/sleepycat/b/c/al:j	Z
    //   404: ifne +60 -> 464
    //   407: aload 6
    //   409: getfield 709	com/sleepycat/b/c/al:c	Z
    //   412: ifne +52 -> 464
    //   415: new 282	java/lang/AssertionError
    //   418: dup
    //   419: invokespecial 292	java/lang/AssertionError:<init>	()V
    //   422: athrow
    //   423: astore_1
    //   424: aload 7
    //   426: invokevirtual 288	com/sleepycat/b/l/j:C	()V
    //   429: aload_1
    //   430: athrow
    //   431: astore_1
    //   432: getstatic 714	com/sleepycat/b/c/al:j	Z
    //   435: ifne +136 -> 571
    //   438: aload 6
    //   440: getfield 709	com/sleepycat/b/c/al:c	Z
    //   443: ifne +128 -> 571
    //   446: new 282	java/lang/AssertionError
    //   449: dup
    //   450: invokespecial 292	java/lang/AssertionError:<init>	()V
    //   453: athrow
    //   454: astore_1
    //   455: goto -164 -> 291
    //   458: iconst_0
    //   459: istore 18
    //   461: goto -104 -> 357
    //   464: aload 6
    //   466: getfield 715	com/sleepycat/b/c/al:e	Z
    //   469: ifeq +40 -> 509
    //   472: aload 6
    //   474: getfield 710	com/sleepycat/b/c/al:d	Z
    //   477: aload 7
    //   479: invokevirtual 718	com/sleepycat/b/l/j:H	()Z
    //   482: if_icmpeq +27 -> 509
    //   485: aload 7
    //   487: iconst_0
    //   488: putfield 720	com/sleepycat/b/l/j:n	I
    //   491: aload 7
    //   493: getfield 722	com/sleepycat/b/l/j:k	J
    //   496: lstore 16
    //   498: aload 6
    //   500: getfield 703	com/sleepycat/b/c/al:f	Ljava/util/concurrent/atomic/AtomicLong;
    //   503: lload 16
    //   505: invokevirtual 726	java/util/concurrent/atomic/AtomicLong:addAndGet	(J)J
    //   508: pop2
    //   509: aload 7
    //   511: aload 6
    //   513: getfield 710	com/sleepycat/b/c/al:d	Z
    //   516: invokevirtual 727	com/sleepycat/b/l/j:b	(Z)V
    //   519: aload 7
    //   521: invokevirtual 371	com/sleepycat/b/l/j:G	()Z
    //   524: ifeq +10 -> 534
    //   527: aload 5
    //   529: aload 7
    //   531: invokevirtual 730	com/sleepycat/b/h/h:a	(Lcom/sleepycat/b/l/j;)V
    //   534: aload 5
    //   536: aload 7
    //   538: invokevirtual 732	com/sleepycat/b/h/h:b	(Lcom/sleepycat/b/l/j;)V
    //   541: aload 7
    //   543: invokevirtual 288	com/sleepycat/b/l/j:C	()V
    //   546: goto -175 -> 371
    //   549: getstatic 714	com/sleepycat/b/c/al:j	Z
    //   552: ifne +33 -> 585
    //   555: aload 6
    //   557: getfield 709	com/sleepycat/b/c/al:c	Z
    //   560: ifne +25 -> 585
    //   563: new 282	java/lang/AssertionError
    //   566: dup
    //   567: invokespecial 292	java/lang/AssertionError:<init>	()V
    //   570: athrow
    //   571: aload 6
    //   573: iconst_0
    //   574: putfield 709	com/sleepycat/b/c/al:c	Z
    //   577: aload 6
    //   579: iconst_0
    //   580: putfield 715	com/sleepycat/b/c/al:e	Z
    //   583: aload_1
    //   584: athrow
    //   585: aload 6
    //   587: getfield 715	com/sleepycat/b/c/al:e	Z
    //   590: ifeq +22 -> 612
    //   593: aload 6
    //   595: getfield 733	com/sleepycat/b/c/al:a	Lcom/sleepycat/b/c/ad;
    //   598: getfield 736	com/sleepycat/b/c/ad:n	Lcom/sleepycat/b/c/ao;
    //   601: aload 6
    //   603: getfield 703	com/sleepycat/b/c/al:f	Ljava/util/concurrent/atomic/AtomicLong;
    //   606: invokevirtual 739	java/util/concurrent/atomic/AtomicLong:get	()J
    //   609: invokevirtual 743	com/sleepycat/b/c/ao:b	(J)V
    //   612: aload 6
    //   614: iconst_0
    //   615: putfield 709	com/sleepycat/b/c/al:c	Z
    //   618: aload 6
    //   620: iconst_1
    //   621: putfield 715	com/sleepycat/b/c/al:e	Z
    //   624: new 398	java/util/HashMap
    //   627: dup
    //   628: invokespecial 399	java/util/HashMap:<init>	()V
    //   631: astore 6
    //   633: aload 5
    //   635: monitorenter
    //   636: aload 5
    //   638: getfield 374	com/sleepycat/b/h/h:b	Ljava/util/Map;
    //   641: invokeinterface 744 1 0
    //   646: invokeinterface 302 1 0
    //   651: astore 7
    //   653: aload 7
    //   655: invokeinterface 307 1 0
    //   660: ifeq +50 -> 710
    //   663: aload 7
    //   665: invokeinterface 311 1 0
    //   670: checkcast 143	com/sleepycat/b/c/i
    //   673: astore 8
    //   675: aload 5
    //   677: getfield 374	com/sleepycat/b/h/h:b	Ljava/util/Map;
    //   680: aload 8
    //   682: invokeinterface 747 2 0
    //   687: ifnonnull -34 -> 653
    //   690: aload 6
    //   692: aload 8
    //   694: aconst_null
    //   695: invokeinterface 380 3 0
    //   700: pop
    //   701: goto -48 -> 653
    //   704: astore_1
    //   705: aload 5
    //   707: monitorexit
    //   708: aload_1
    //   709: athrow
    //   710: aload 5
    //   712: monitorexit
    //   713: aload 5
    //   715: getfield 350	com/sleepycat/b/h/h:a	Lcom/sleepycat/b/c/ad;
    //   718: getfield 170	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   721: astore 7
    //   723: aload 6
    //   725: invokeinterface 750 1 0
    //   730: invokeinterface 302 1 0
    //   735: astore 7
    //   737: aload 7
    //   739: invokeinterface 307 1 0
    //   744: ifeq +42 -> 786
    //   747: aload 7
    //   749: invokeinterface 311 1 0
    //   754: checkcast 752	java/util/Map$Entry
    //   757: astore 8
    //   759: aload 8
    //   761: aload 8
    //   763: invokeinterface 755 1 0
    //   768: checkcast 143	com/sleepycat/b/c/i
    //   771: invokestatic 377	com/sleepycat/b/c/p:d	(Lcom/sleepycat/b/c/i;)I
    //   774: invokestatic 236	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   777: invokeinterface 758 2 0
    //   782: pop
    //   783: goto -46 -> 737
    //   786: aload 5
    //   788: monitorenter
    //   789: aload 6
    //   791: invokeinterface 750 1 0
    //   796: invokeinterface 302 1 0
    //   801: astore 6
    //   803: aload 6
    //   805: invokeinterface 307 1 0
    //   810: ifeq +49 -> 859
    //   813: aload 6
    //   815: invokeinterface 311 1 0
    //   820: checkcast 752	java/util/Map$Entry
    //   823: astore 7
    //   825: aload 5
    //   827: getfield 374	com/sleepycat/b/h/h:b	Ljava/util/Map;
    //   830: aload 7
    //   832: invokeinterface 755 1 0
    //   837: aload 7
    //   839: invokeinterface 761 1 0
    //   844: invokeinterface 380 3 0
    //   849: pop
    //   850: goto -47 -> 803
    //   853: astore_1
    //   854: aload 5
    //   856: monitorexit
    //   857: aload_1
    //   858: athrow
    //   859: aload 5
    //   861: monitorexit
    //   862: aload 5
    //   864: monitorenter
    //   865: aload 5
    //   867: invokevirtual 382	com/sleepycat/b/h/h:c	()V
    //   870: aload 5
    //   872: getstatic 762	com/sleepycat/b/h/i:c	I
    //   875: putfield 325	com/sleepycat/b/h/h:c	I
    //   878: aload 5
    //   880: monitorexit
    //   881: aload_0
    //   882: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   885: aload_0
    //   886: getfield 95	com/sleepycat/b/h/d:j	Lcom/sleepycat/b/h/h;
    //   889: iconst_1
    //   890: lload 14
    //   892: aload_0
    //   893: getfield 104	com/sleepycat/b/h/d:v	Z
    //   896: aload_0
    //   897: getfield 88	com/sleepycat/b/h/d:x	Lcom/sleepycat/b/h/f;
    //   900: invokestatic 390	com/sleepycat/b/h/d:a	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/h/h;ZJZLcom/sleepycat/b/h/f;)V
    //   903: aload_0
    //   904: getfield 95	com/sleepycat/b/h/d:j	Lcom/sleepycat/b/h/h;
    //   907: lload 14
    //   909: invokevirtual 411	com/sleepycat/b/h/h:a	(J)V
    //   912: aload_0
    //   913: getfield 95	com/sleepycat/b/h/d:j	Lcom/sleepycat/b/h/h;
    //   916: astore 5
    //   918: aload 5
    //   920: getfield 350	com/sleepycat/b/h/h:a	Lcom/sleepycat/b/c/ad;
    //   923: getfield 170	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   926: astore 6
    //   928: aload 6
    //   930: getstatic 763	com/sleepycat/b/c/p:a	Lcom/sleepycat/b/c/h;
    //   933: invokevirtual 766	com/sleepycat/b/c/p:b	(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    //   936: invokevirtual 768	com/sleepycat/b/c/i:y	()Z
    //   939: ifne +17 -> 956
    //   942: aload 6
    //   944: getstatic 770	com/sleepycat/b/c/p:b	Lcom/sleepycat/b/c/h;
    //   947: invokevirtual 766	com/sleepycat/b/c/p:b	(Lcom/sleepycat/b/c/h;)Lcom/sleepycat/b/c/i;
    //   950: invokevirtual 768	com/sleepycat/b/c/i:y	()Z
    //   953: ifeq +13 -> 966
    //   956: aload 5
    //   958: getfield 350	com/sleepycat/b/h/h:a	Lcom/sleepycat/b/c/ad;
    //   961: lload 14
    //   963: invokevirtual 771	com/sleepycat/b/c/ad:a	(J)V
    //   966: aload_0
    //   967: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   970: invokevirtual 774	com/sleepycat/b/c/ad:S	()V
    //   973: aload_0
    //   974: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   977: getfield 650	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   980: getfield 778	com/sleepycat/b/a/c:aa	Lcom/sleepycat/b/a/ad;
    //   983: aload_0
    //   984: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   987: getfield 650	com/sleepycat/b/c/ad:D	Lcom/sleepycat/b/a/c;
    //   990: getfield 782	com/sleepycat/b/a/c:ab	Lcom/sleepycat/b/a/ae;
    //   993: invokevirtual 786	com/sleepycat/b/a/ae:a	()Ljava/util/Collection;
    //   996: invokevirtual 791	com/sleepycat/b/a/ad:a	(Ljava/util/Collection;)V
    //   999: aload_0
    //   1000: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   1003: getfield 170	com/sleepycat/b/c/ad:q	Lcom/sleepycat/b/c/p;
    //   1006: astore 5
    //   1008: aload_3
    //   1009: invokevirtual 659	com/sleepycat/b/a/l:a	()Z
    //   1012: ifne +204 -> 1216
    //   1015: iconst_1
    //   1016: istore 18
    //   1018: new 793	com/sleepycat/b/h/a
    //   1021: dup
    //   1022: aload_2
    //   1023: lload 14
    //   1025: aload_0
    //   1026: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   1029: getfield 795	com/sleepycat/b/c/ad:r	J
    //   1032: lload 12
    //   1034: aload_0
    //   1035: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   1038: getfield 799	com/sleepycat/b/c/ad:ac	Lcom/sleepycat/b/c/as;
    //   1041: getfield 803	com/sleepycat/b/c/as:a	Ljava/util/concurrent/atomic/AtomicLong;
    //   1044: invokevirtual 739	java/util/concurrent/atomic/AtomicLong:get	()J
    //   1047: aload_0
    //   1048: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   1051: getfield 799	com/sleepycat/b/c/ad:ac	Lcom/sleepycat/b/c/as;
    //   1054: getfield 805	com/sleepycat/b/c/as:b	Ljava/util/concurrent/atomic/AtomicLong;
    //   1057: invokevirtual 739	java/util/concurrent/atomic/AtomicLong:get	()J
    //   1060: aload 5
    //   1062: getfield 807	com/sleepycat/b/c/p:c	Ljava/util/concurrent/atomic/AtomicLong;
    //   1065: invokevirtual 739	java/util/concurrent/atomic/AtomicLong:get	()J
    //   1068: aload 5
    //   1070: getfield 809	com/sleepycat/b/c/p:d	Ljava/util/concurrent/atomic/AtomicLong;
    //   1073: invokevirtual 739	java/util/concurrent/atomic/AtomicLong:get	()J
    //   1076: aload_0
    //   1077: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   1080: getfield 685	com/sleepycat/b/c/ad:y	Lcom/sleepycat/b/n/aj;
    //   1083: getfield 811	com/sleepycat/b/n/aj:g	Ljava/util/concurrent/atomic/AtomicLong;
    //   1086: invokevirtual 739	java/util/concurrent/atomic/AtomicLong:get	()J
    //   1089: aload_0
    //   1090: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   1093: getfield 685	com/sleepycat/b/c/ad:y	Lcom/sleepycat/b/n/aj;
    //   1096: getfield 813	com/sleepycat/b/n/aj:h	Ljava/util/concurrent/atomic/AtomicLong;
    //   1099: invokevirtual 739	java/util/concurrent/atomic/AtomicLong:get	()J
    //   1102: aload_0
    //   1103: getfield 442	com/sleepycat/b/h/d:t	J
    //   1106: iload 18
    //   1108: aload_1
    //   1109: getfield 816	com/sleepycat/b/a/c:ac	Lcom/sleepycat/b/a/aa;
    //   1112: invokevirtual 821	com/sleepycat/b/a/aa:a	()Lcom/sleepycat/b/a/d;
    //   1115: invokespecial 824	com/sleepycat/b/h/a:<init>	(Ljava/lang/String;JJJJJJJJJJZLcom/sleepycat/b/a/d;)V
    //   1118: astore 5
    //   1120: getstatic 826	com/sleepycat/b/g/af:t	Lcom/sleepycat/b/g/af;
    //   1123: aload 5
    //   1125: invokestatic 678	com/sleepycat/b/g/a/q:a	(Lcom/sleepycat/b/g/af;Lcom/sleepycat/b/g/at;)Lcom/sleepycat/b/g/a/q;
    //   1128: astore 5
    //   1130: aload_0
    //   1131: aload_0
    //   1132: getfield 53	com/sleepycat/b/h/d:d	Lcom/sleepycat/b/c/ad;
    //   1135: aload_2
    //   1136: iconst_1
    //   1137: invokespecial 700	com/sleepycat/b/h/d:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Z)V
    //   1140: iconst_1
    //   1141: istore 11
    //   1143: iconst_1
    //   1144: istore 10
    //   1146: aload_0
    //   1147: aload 4
    //   1149: aload 5
    //   1151: getstatic 504	com/sleepycat/b/g/av:g	Lcom/sleepycat/b/g/av;
    //   1154: invokevirtual 828	com/sleepycat/b/g/am:a	(Lcom/sleepycat/b/g/a/m;Lcom/sleepycat/b/g/av;)J
    //   1157: putfield 560	com/sleepycat/b/h/d:i	J
    //   1160: aload_0
    //   1161: lload 14
    //   1163: putfield 582	com/sleepycat/b/h/d:h	J
    //   1166: iconst_1
    //   1167: istore 20
    //   1169: iconst_1
    //   1170: istore 18
    //   1172: iload 11
    //   1174: istore 9
    //   1176: iload 20
    //   1178: istore 19
    //   1180: aload_1
    //   1181: getfield 832	com/sleepycat/b/a/c:ad	Lcom/sleepycat/b/a/k;
    //   1184: aload_3
    //   1185: invokevirtual 837	com/sleepycat/b/a/k:a	(Lcom/sleepycat/b/a/l;)V
    //   1188: iload 11
    //   1190: istore 9
    //   1192: iload 20
    //   1194: istore 19
    //   1196: aload_1
    //   1197: invokevirtual 839	com/sleepycat/b/a/c:b	()V
    //   1200: aload_0
    //   1201: getfield 95	com/sleepycat/b/h/d:j	Lcom/sleepycat/b/h/h;
    //   1204: invokevirtual 345	com/sleepycat/b/h/h:a	()V
    //   1207: goto -1191 -> 16
    //   1210: astore_1
    //   1211: aload 5
    //   1213: monitorexit
    //   1214: aload_1
    //   1215: athrow
    //   1216: iconst_0
    //   1217: istore 18
    //   1219: goto -201 -> 1018
    //   1222: astore_1
    //   1223: iconst_1
    //   1224: istore 9
    //   1226: goto -935 -> 291
    //   1229: astore_1
    //   1230: iconst_0
    //   1231: istore 18
    //   1233: goto -995 -> 238
    //   1236: astore_1
    //   1237: goto -999 -> 238
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1240	0	this	d
    //   0	1240	1	paramc	com.sleepycat.b.c
    //   0	1240	2	paramString	String
    //   48	1137	3	locall	com.sleepycat.b.a.l
    //   70	1078	4	localObject1	Object
    //   204	1008	5	localObject2	Object
    //   329	614	6	localObject3	Object
    //   391	447	7	localObject4	Object
    //   369	393	8	localObject5	Object
    //   114	1111	9	m	int
    //   233	912	10	n	int
    //   1141	48	11	i1	int
    //   178	855	12	l1	long
    //   162	1000	14	l2	long
    //   174	330	16	l3	long
    //   9	1223	18	bool1	boolean
    //   111	1084	19	bool2	boolean
    //   31	1162	20	bool3	boolean
    // Exception table:
    //   from	to	target	type
    //   136	176	231	com/sleepycat/b/n
    //   193	231	231	com/sleepycat/b/n
    //   321	354	231	com/sleepycat/b/n
    //   357	364	231	com/sleepycat/b/n
    //   432	454	231	com/sleepycat/b/n
    //   549	571	231	com/sleepycat/b/n
    //   571	585	231	com/sleepycat/b/n
    //   585	612	231	com/sleepycat/b/n
    //   612	636	231	com/sleepycat/b/n
    //   708	710	231	com/sleepycat/b/n
    //   713	737	231	com/sleepycat/b/n
    //   737	783	231	com/sleepycat/b/n
    //   786	789	231	com/sleepycat/b/n
    //   857	859	231	com/sleepycat/b/n
    //   862	865	231	com/sleepycat/b/n
    //   881	956	231	com/sleepycat/b/n
    //   956	966	231	com/sleepycat/b/n
    //   966	1015	231	com/sleepycat/b/n
    //   1018	1140	231	com/sleepycat/b/n
    //   1214	1216	231	com/sleepycat/b/n
    //   246	280	290	finally
    //   288	290	290	finally
    //   1180	1188	290	finally
    //   1196	1200	290	finally
    //   2	11	316	finally
    //   19	33	316	finally
    //   36	49	316	finally
    //   49	56	316	finally
    //   59	110	316	finally
    //   116	136	316	finally
    //   291	298	316	finally
    //   303	314	316	finally
    //   314	316	316	finally
    //   1200	1207	316	finally
    //   401	423	423	finally
    //   464	509	423	finally
    //   509	534	423	finally
    //   534	541	423	finally
    //   364	371	431	finally
    //   371	401	431	finally
    //   424	431	431	finally
    //   541	546	431	finally
    //   136	176	454	finally
    //   193	231	454	finally
    //   321	354	454	finally
    //   357	364	454	finally
    //   432	454	454	finally
    //   549	571	454	finally
    //   571	585	454	finally
    //   585	612	454	finally
    //   612	636	454	finally
    //   708	710	454	finally
    //   713	737	454	finally
    //   737	783	454	finally
    //   786	789	454	finally
    //   857	859	454	finally
    //   862	865	454	finally
    //   881	956	454	finally
    //   956	966	454	finally
    //   966	1015	454	finally
    //   1018	1140	454	finally
    //   1214	1216	454	finally
    //   636	653	704	finally
    //   653	701	704	finally
    //   705	708	704	finally
    //   710	713	704	finally
    //   789	803	853	finally
    //   803	850	853	finally
    //   854	857	853	finally
    //   859	862	853	finally
    //   865	881	1210	finally
    //   1211	1214	1210	finally
    //   1146	1166	1222	finally
    //   1146	1166	1229	com/sleepycat/b/n
    //   1180	1188	1236	com/sleepycat/b/n
    //   1196	1200	1236	com/sleepycat/b/n
  }
  
  protected final void b()
  {
    if (this.d.l()) {
      return;
    }
    a(com.sleepycat.b.c.a, "daemon");
  }
  
  public final void c()
  {
    try
    {
      this.d = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */