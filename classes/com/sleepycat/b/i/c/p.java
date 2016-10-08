package com.sleepycat.b.i.c;

import com.sleepycat.b.ao;
import com.sleepycat.b.av;
import com.sleepycat.b.bc;
import com.sleepycat.b.br;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.e;
import com.sleepycat.b.g;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.i.f.d;
import com.sleepycat.b.i.n;
import com.sleepycat.b.n.z;
import com.sleepycat.b.p.au;
import java.net.InetSocketAddress;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.logging.Logger;

public final class p
{
  public static final com.sleepycat.b.m c = new com.sleepycat.b.m();
  public static final br d;
  static final br e;
  private static final com.sleepycat.b.u g;
  private static final br h;
  private static final com.sleepycat.b.u i;
  private static final com.sleepycat.b.u j;
  private static final br k;
  public final aj a;
  public final t b;
  private final Logger f;
  
  static
  {
    com.sleepycat.a.a.i.a("$$GROUP_KEY$$", c);
    g = new com.sleepycat.b.u(com.sleepycat.b.w.a, com.sleepycat.b.w.a, com.sleepycat.b.v.c);
    h = new br();
    br localbr = new br();
    d = localbr;
    e = localbr;
    i = new com.sleepycat.b.u(com.sleepycat.b.w.a, com.sleepycat.b.w.a, com.sleepycat.b.v.b);
    j = new com.sleepycat.b.u(com.sleepycat.b.w.b, com.sleepycat.b.w.b, com.sleepycat.b.v.b);
    k = new br();
    h.a(g);
    d.a(i);
    k.a(j);
  }
  
  public p(aj paramaj)
  {
    this.a = paramaj;
    this.b = new t(paramaj.u.a(an.a));
    this.f = com.sleepycat.b.p.w.a(getClass());
  }
  
  public static e a(com.sleepycat.b.c.i parami, z paramz, g paramg)
  {
    parami = com.sleepycat.b.q.a(parami, paramz, paramg);
    parami.a.i = false;
    return parami;
  }
  
  public static t a(aj paramaj, String paramString, bc parambc)
  {
    int m = -1;
    Object localObject;
    int i1;
    for (;;)
    {
      try
      {
        localObject = paramaj.a(parambc, false);
        localbr = new br();
        localbr.a(e.e);
        localbr.f = parambc;
        localbr.h = true;
      }
      catch (com.sleepycat.b.p paramaj)
      {
        br localbr;
        int n;
        return new t(paramString, true);
      }
      try
      {
        paramaj = new d(paramaj, localbr);
      }
      finally
      {
        paramString = null;
        if (paramString != null) {
          paramString.n();
        }
      }
      try
      {
        localObject = b(paramString, (com.sleepycat.b.c.i)localObject, paramaj);
        if (((t)localObject).f.size() == 0) {
          break label180;
        }
        paramString = ((t)localObject).f.values().iterator();
        i1 = -1;
        if (!paramString.hasNext()) {
          break;
        }
        parambc = (am)paramString.next();
        n = i1;
        if (i1 < parambc.a.b) {
          n = parambc.a.b;
        }
        if (m >= parambc.h) {
          break label220;
        }
        m = parambc.h;
      }
      finally
      {
        paramString = paramaj;
        paramaj = parambc;
        break label202;
        continue;
      }
      i1 = n;
    }
    ((t)localObject).e = i1;
    ((t)localObject).d = m;
    label180:
    paramaj.m();
    if (0 != 0) {
      throw new NullPointerException();
    }
    return (t)localObject;
  }
  
  private static t b(z paramz, com.sleepycat.b.c.i parami)
  {
    q localq = new q();
    com.sleepycat.b.m localm = new com.sleepycat.b.m();
    z localz = null;
    try
    {
      paramz = a(parami, paramz, g.a);
      localz = paramz;
      if (paramz.e(c, localm, ao.d) != av.a)
      {
        localz = paramz;
        throw com.sleepycat.b.aa.c("Group entry key: $$GROUP_KEY$$ missing from group database");
      }
    }
    finally
    {
      if (localz != null) {
        localz.close();
      }
    }
    if (paramz != null) {
      paramz.close();
    }
    return (t)localq.entryToObject(localm);
  }
  
  private static t b(String paramString, com.sleepycat.b.c.i parami, z paramz)
  {
    localObject1 = null;
    Object localObject2 = null;
    com.sleepycat.b.m localm1 = new com.sleepycat.b.m();
    com.sleepycat.b.m localm2 = new com.sleepycat.b.m();
    r localr = new r();
    q localq = new q();
    HashMap localHashMap = new HashMap();
    g localg = new g();
    localg.e = true;
    for (;;)
    {
      try
      {
        paramz = a(parami, paramz, localg);
        parami = (com.sleepycat.b.c.i)localObject2;
      }
      finally
      {
        parami = (com.sleepycat.b.c.i)localObject1;
        continue;
        continue;
      }
      try
      {
        if (paramz.c(localm1, localm2, ao.a) != av.a) {
          continue;
        }
        if ("$$GROUP_KEY$$".equals(com.sleepycat.a.a.i.a(localm1)))
        {
          localObject1 = (t)localq.entryToObject(localm2);
          parami = (com.sleepycat.b.c.i)localObject1;
          if (((t)localObject1).a.equals(paramString)) {
            continue;
          }
          throw com.sleepycat.b.aa.c("The argument: " + paramString + " does not match the expected group name: " + ((t)localObject1).a);
        }
      }
      finally
      {
        parami = paramz;
        if (parami != null) {
          parami.close();
        }
      }
    }
    localObject1 = (am)localr.entryToObject(localm2);
    localHashMap.put(Integer.valueOf(((am)localObject1).a.b), localObject1);
    break label243;
    if (parami == null) {
      throw com.sleepycat.b.aa.c("Group key: $$GROUP_KEY$$ is missing");
    }
    parami.a(localHashMap);
    if (paramz != null) {
      paramz.close();
    }
    return parami;
  }
  
  /* Error */
  public final void a(am paramam)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: iconst_0
    //   3: istore 9
    //   5: aload_0
    //   6: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   9: getstatic 335	com/sleepycat/b/i/n:a	Lcom/sleepycat/b/i/n;
    //   12: iconst_0
    //   13: invokevirtual 143	com/sleepycat/b/i/c/aj:a	(Lcom/sleepycat/b/bc;Z)Lcom/sleepycat/b/c/i;
    //   16: astore 4
    //   18: new 27	com/sleepycat/b/m
    //   21: dup
    //   22: invokespecial 30	com/sleepycat/b/m:<init>	()V
    //   25: astore 6
    //   27: aload_1
    //   28: getfield 192	com/sleepycat/b/i/c/am:a	Lcom/sleepycat/b/i/c/b/x;
    //   31: getfield 225	com/sleepycat/b/i/c/b/x:a	Ljava/lang/String;
    //   34: aload 6
    //   36: invokestatic 39	com/sleepycat/a/a/i:a	(Ljava/lang/String;Lcom/sleepycat/b/m;)V
    //   39: new 27	com/sleepycat/b/m
    //   42: dup
    //   43: invokespecial 30	com/sleepycat/b/m:<init>	()V
    //   46: astore 5
    //   48: new 227	com/sleepycat/b/i/c/r
    //   51: dup
    //   52: invokespecial 228	com/sleepycat/b/i/c/r:<init>	()V
    //   55: astore 7
    //   57: new 152	com/sleepycat/b/i/f/d
    //   60: dup
    //   61: aload_0
    //   62: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   65: getstatic 63	com/sleepycat/b/i/c/p:d	Lcom/sleepycat/b/br;
    //   68: invokespecial 155	com/sleepycat/b/i/f/d:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;)V
    //   71: astore_2
    //   72: new 234	com/sleepycat/b/g
    //   75: dup
    //   76: invokespecial 280	com/sleepycat/b/g:<init>	()V
    //   79: astore_3
    //   80: aload_3
    //   81: iconst_1
    //   82: putfield 282	com/sleepycat/b/g:e	Z
    //   85: aload 4
    //   87: aload_2
    //   88: aload_3
    //   89: invokestatic 239	com/sleepycat/b/i/c/p:a	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    //   92: astore 4
    //   94: aload 4
    //   96: aload 6
    //   98: aload 5
    //   100: aconst_null
    //   101: invokevirtual 270	com/sleepycat/b/e:e	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   104: getstatic 247	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   107: if_acmpne +214 -> 321
    //   110: aload 7
    //   112: aload 5
    //   114: invokevirtual 312	com/sleepycat/b/i/c/r:entryToObject	(Lcom/sleepycat/b/m;)Ljava/lang/Object;
    //   117: checkcast 189	com/sleepycat/b/i/c/am
    //   120: astore_3
    //   121: aload_3
    //   122: aload_1
    //   123: if_acmpeq +545 -> 668
    //   126: aload_3
    //   127: getfield 337	com/sleepycat/b/i/c/am:f	I
    //   130: aload_1
    //   131: getfield 337	com/sleepycat/b/i/c/am:f	I
    //   134: if_icmpeq +48 -> 182
    //   137: iload 9
    //   139: istore 8
    //   141: iload 8
    //   143: ifeq +412 -> 555
    //   146: aload_3
    //   147: getfield 339	com/sleepycat/b/i/c/am:c	Z
    //   150: istore 10
    //   152: iload 10
    //   154: ifeq +109 -> 263
    //   157: aload 4
    //   159: ifnull +8 -> 167
    //   162: aload 4
    //   164: invokevirtual 257	com/sleepycat/b/e:close	()V
    //   167: aload_2
    //   168: ifnull +7 -> 175
    //   171: aload_2
    //   172: invokevirtual 218	com/sleepycat/b/n/z:n	()V
    //   175: return
    //   176: astore_1
    //   177: aload_1
    //   178: invokestatic 342	com/sleepycat/b/aa:a	(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   181: athrow
    //   182: aload_3
    //   183: getfield 344	com/sleepycat/b/i/c/am:e	Ljava/lang/String;
    //   186: ifnonnull +56 -> 242
    //   189: iload 9
    //   191: istore 8
    //   193: aload_1
    //   194: getfield 344	com/sleepycat/b/i/c/am:e	Ljava/lang/String;
    //   197: ifnonnull -56 -> 141
    //   200: iload 9
    //   202: istore 8
    //   204: aload_3
    //   205: getfield 192	com/sleepycat/b/i/c/am:a	Lcom/sleepycat/b/i/c/b/x;
    //   208: getfield 225	com/sleepycat/b/i/c/b/x:a	Ljava/lang/String;
    //   211: aload_1
    //   212: getfield 192	com/sleepycat/b/i/c/am:a	Lcom/sleepycat/b/i/c/b/x;
    //   215: getfield 225	com/sleepycat/b/i/c/b/x:a	Ljava/lang/String;
    //   218: invokevirtual 295	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   221: ifeq -80 -> 141
    //   224: iload 9
    //   226: istore 8
    //   228: aload_3
    //   229: getfield 347	com/sleepycat/b/i/c/am:b	Lcom/sleepycat/b/i/o;
    //   232: aload_1
    //   233: getfield 347	com/sleepycat/b/i/c/am:b	Lcom/sleepycat/b/i/o;
    //   236: if_acmpne -95 -> 141
    //   239: goto +429 -> 668
    //   242: aload_3
    //   243: getfield 344	com/sleepycat/b/i/c/am:e	Ljava/lang/String;
    //   246: aload_1
    //   247: getfield 344	com/sleepycat/b/i/c/am:e	Ljava/lang/String;
    //   250: invokevirtual 295	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   253: ifne -53 -> 200
    //   256: iload 9
    //   258: istore 8
    //   260: goto -119 -> 141
    //   263: aload_1
    //   264: getfield 192	com/sleepycat/b/i/c/am:a	Lcom/sleepycat/b/i/c/b/x;
    //   267: aload_3
    //   268: getfield 192	com/sleepycat/b/i/c/am:a	Lcom/sleepycat/b/i/c/b/x;
    //   271: invokevirtual 350	com/sleepycat/b/i/c/b/x:a	(Lcom/sleepycat/b/i/c/b/x;)V
    //   274: aload_0
    //   275: getfield 117	com/sleepycat/b/i/c/p:f	Ljava/util/logging/Logger;
    //   278: aload_0
    //   279: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   282: new 298	java/lang/StringBuilder
    //   285: dup
    //   286: ldc_w 352
    //   289: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   292: aload_1
    //   293: getfield 192	com/sleepycat/b/i/c/am:a	Lcom/sleepycat/b/i/c/b/x;
    //   296: getfield 197	com/sleepycat/b/i/c/b/x:b	I
    //   299: invokevirtual 355	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   302: ldc_w 357
    //   305: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   308: aload_3
    //   309: getfield 339	com/sleepycat/b/i/c/am:c	Z
    //   312: invokevirtual 360	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   315: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokestatic 363	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   321: aload 4
    //   323: invokevirtual 257	com/sleepycat/b/e:close	()V
    //   326: aload_2
    //   327: invokevirtual 212	com/sleepycat/b/n/z:m	()J
    //   330: pop2
    //   331: iconst_0
    //   332: ifeq +11 -> 343
    //   335: new 214	java/lang/NullPointerException
    //   338: dup
    //   339: invokespecial 215	java/lang/NullPointerException:<init>	()V
    //   342: athrow
    //   343: iconst_0
    //   344: ifeq +11 -> 355
    //   347: new 214	java/lang/NullPointerException
    //   350: dup
    //   351: invokespecial 215	java/lang/NullPointerException:<init>	()V
    //   354: athrow
    //   355: aload_0
    //   356: getfield 117	com/sleepycat/b/i/c/p:f	Ljava/util/logging/Logger;
    //   359: aload_0
    //   360: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   363: new 298	java/lang/StringBuilder
    //   366: dup
    //   367: ldc_w 365
    //   370: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   373: aload_1
    //   374: getfield 192	com/sleepycat/b/i/c/am:a	Lcom/sleepycat/b/i/c/b/x;
    //   377: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   380: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   383: invokestatic 370	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   386: new 6	com/sleepycat/b/i/c/p$1
    //   389: dup
    //   390: aload_0
    //   391: aload_1
    //   392: invokespecial 373	com/sleepycat/b/i/c/p$1:<init>	(Lcom/sleepycat/b/i/c/p;Lcom/sleepycat/b/i/c/am;)V
    //   395: astore_2
    //   396: aload_2
    //   397: invokevirtual 377	com/sleepycat/b/i/c/s:d	()V
    //   400: aload_2
    //   401: invokevirtual 379	com/sleepycat/b/i/c/s:e	()V
    //   404: aload_0
    //   405: getfield 117	com/sleepycat/b/i/c/p:f	Ljava/util/logging/Logger;
    //   408: aload_0
    //   409: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   412: new 298	java/lang/StringBuilder
    //   415: dup
    //   416: ldc_w 381
    //   419: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   422: aload_1
    //   423: getfield 192	com/sleepycat/b/i/c/am:a	Lcom/sleepycat/b/i/c/b/x;
    //   426: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   429: ldc_w 383
    //   432: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   435: aload_1
    //   436: getfield 344	com/sleepycat/b/i/c/am:e	Ljava/lang/String;
    //   439: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   442: ldc_w 385
    //   445: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   448: aload_1
    //   449: getfield 337	com/sleepycat/b/i/c/am:f	I
    //   452: invokevirtual 355	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   455: ldc_w 387
    //   458: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   461: aload_1
    //   462: getfield 347	com/sleepycat/b/i/c/am:b	Lcom/sleepycat/b/i/o;
    //   465: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   468: ldc_w 389
    //   471: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   474: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   477: invokestatic 363	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   480: aload_1
    //   481: getfield 192	com/sleepycat/b/i/c/am:a	Lcom/sleepycat/b/i/c/b/x;
    //   484: getfield 225	com/sleepycat/b/i/c/b/x:a	Ljava/lang/String;
    //   487: astore_3
    //   488: getstatic 394	com/sleepycat/b/i/d/b:a	Lcom/sleepycat/b/i/d/b;
    //   491: astore 5
    //   493: aload_0
    //   494: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   497: getfield 398	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   500: invokevirtual 403	com/sleepycat/b/i/c/b/aa:h	()Lcom/sleepycat/b/i/c/t;
    //   503: pop
    //   504: aload_0
    //   505: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   508: getfield 398	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   511: getfield 407	com/sleepycat/b/i/c/b/aa:t	Lcom/sleepycat/b/i/c/b/w;
    //   514: astore_1
    //   515: aload_1
    //   516: getfield 411	com/sleepycat/b/i/c/b/w:b	Lcom/sleepycat/b/i/c/b/aa;
    //   519: getfield 413	com/sleepycat/b/i/c/b/aa:m	Lcom/sleepycat/b/i/c/t;
    //   522: astore_2
    //   523: aload_2
    //   524: invokestatic 416	com/sleepycat/b/i/c/b/w:a	(Lcom/sleepycat/b/i/c/t;)Lcom/sleepycat/b/i/d/g;
    //   527: astore 4
    //   529: aload 4
    //   531: invokevirtual 110	java/lang/Object:getClass	()Ljava/lang/Class;
    //   534: pop
    //   535: aload_1
    //   536: aload_2
    //   537: new 418	com/sleepycat/b/i/d/i
    //   540: dup
    //   541: aload 4
    //   543: aload_2
    //   544: aload_3
    //   545: aload 5
    //   547: invokespecial 421	com/sleepycat/b/i/d/i:<init>	(Lcom/sleepycat/b/i/d/g;Lcom/sleepycat/b/i/c/t;Ljava/lang/String;Lcom/sleepycat/b/i/d/b;)V
    //   550: invokevirtual 424	com/sleepycat/b/i/c/b/w:a	(Lcom/sleepycat/b/i/c/t;Lcom/sleepycat/b/i/c/ay;)Ljava/util/List;
    //   553: pop
    //   554: return
    //   555: aload_0
    //   556: getfield 117	com/sleepycat/b/i/c/p:f	Ljava/util/logging/Logger;
    //   559: aload_0
    //   560: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   563: new 298	java/lang/StringBuilder
    //   566: dup
    //   567: ldc_w 426
    //   570: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   573: aload_3
    //   574: invokevirtual 427	com/sleepycat/b/i/c/am:toString	()Ljava/lang/String;
    //   577: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   580: ldc_w 429
    //   583: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   586: aload_1
    //   587: invokevirtual 427	com/sleepycat/b/i/c/am:toString	()Ljava/lang/String;
    //   590: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   593: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   596: invokestatic 431	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   599: new 298	java/lang/StringBuilder
    //   602: dup
    //   603: ldc_w 433
    //   606: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   609: aload_1
    //   610: getfield 192	com/sleepycat/b/i/c/am:a	Lcom/sleepycat/b/i/c/b/x;
    //   613: getfield 197	com/sleepycat/b/i/c/b/x:b	I
    //   616: invokevirtual 355	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   619: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   622: invokestatic 254	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   625: athrow
    //   626: astore_1
    //   627: aload_2
    //   628: astore_3
    //   629: aload 4
    //   631: astore_2
    //   632: aload_2
    //   633: ifnull +7 -> 640
    //   636: aload_2
    //   637: invokevirtual 257	com/sleepycat/b/e:close	()V
    //   640: aload_3
    //   641: ifnull +7 -> 648
    //   644: aload_3
    //   645: invokevirtual 218	com/sleepycat/b/n/z:n	()V
    //   648: aload_1
    //   649: athrow
    //   650: astore_1
    //   651: aconst_null
    //   652: astore_2
    //   653: goto -21 -> 632
    //   656: astore_1
    //   657: aconst_null
    //   658: astore 4
    //   660: aload_2
    //   661: astore_3
    //   662: aload 4
    //   664: astore_2
    //   665: goto -33 -> 632
    //   668: iconst_1
    //   669: istore 8
    //   671: goto -530 -> 141
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	674	0	this	p
    //   0	674	1	paramam	am
    //   71	594	2	localObject1	Object
    //   1	661	3	localObject2	Object
    //   16	647	4	localObject3	Object
    //   46	500	5	localObject4	Object
    //   25	72	6	localm	com.sleepycat.b.m
    //   55	56	7	localr	r
    //   139	531	8	m	int
    //   3	254	9	n	int
    //   150	3	10	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   5	18	176	com/sleepycat/b/p
    //   94	121	626	finally
    //   126	137	626	finally
    //   146	152	626	finally
    //   182	189	626	finally
    //   193	200	626	finally
    //   204	224	626	finally
    //   228	239	626	finally
    //   242	256	626	finally
    //   263	321	626	finally
    //   321	326	626	finally
    //   555	626	626	finally
    //   57	72	650	finally
    //   72	94	656	finally
    //   326	331	656	finally
  }
  
  public final void a(au paramau)
  {
    Object localObject1 = this.a.u;
    String str = ((com.sleepycat.b.c.m)localObject1).a(an.a);
    Object localObject3 = ((com.sleepycat.b.c.m)localObject1).a(an.p);
    Object localObject2 = ((com.sleepycat.b.c.m)localObject1).a(an.o);
    int m = ((String)localObject2).indexOf(":");
    label71:
    Object localObject5;
    Object localObject6;
    Object localObject7;
    Object localObject4;
    int n;
    int i1;
    if (m < 0)
    {
      localObject1 = localObject2;
      m = ((String)localObject2).indexOf(":");
      if (m >= 0) {
        break label407;
      }
      localObject2 = an.n.b;
      m = Integer.parseInt((String)localObject2);
      localObject5 = this.a.a(n.a, false);
      localObject6 = new br();
      ((br)localObject6).a(d.e);
      ((br)localObject6).f = n.a;
      localObject7 = this.a.am.a;
      ((x)localObject7).b = -1;
      localObject2 = new com.sleepycat.b.i.f.b(this.a, (br)localObject6, (x)localObject7);
      localObject4 = b((z)localObject2, (com.sleepycat.b.c.i)localObject5);
      ((z)localObject2).m();
      n = ((t)localObject4).e;
      localObject2 = new com.sleepycat.b.m();
      localObject4 = new com.sleepycat.b.m();
      i1 = n + 1;
      ((x)localObject7).a(i1);
      localObject1 = new am((String)localObject3, (String)localObject1, m);
      ((am)localObject1).g = new u(paramau, System.currentTimeMillis());
      paramau = new com.sleepycat.b.i.f.b(this.a, (br)localObject6, (x)localObject7);
      localObject3 = new g();
      ((g)localObject3).e = true;
      localObject3 = a((com.sleepycat.b.c.i)localObject5, paramau, (g)localObject3);
    }
    for (;;)
    {
      if (((e)localObject3).c((com.sleepycat.b.m)localObject2, (com.sleepycat.b.m)localObject4, ao.a) != av.a) {
        break label457;
      }
      localObject5 = com.sleepycat.a.a.i.a((com.sleepycat.b.m)localObject2);
      if ("$$GROUP_KEY$$".equals(localObject5))
      {
        localObject5 = new q();
        localObject6 = new t(str);
        ((t)localObject6).e = n;
        localObject7 = new com.sleepycat.b.m();
        ((q)localObject5).objectToEntry(localObject6, (com.sleepycat.b.m)localObject7);
        localObject5 = ((e)localObject3).a((com.sleepycat.b.m)localObject7);
        if (av.a.equals(localObject5)) {
          continue;
        }
        throw new IllegalStateException("Unexpected state:" + localObject5);
        localObject1 = ((String)localObject2).substring(0, m);
        break;
        label407:
        localObject2 = ((String)localObject2).substring(m + 1);
        break label71;
      }
      com.sleepycat.b.p.w.c(this.f, this.a, "Removing node: " + (String)localObject5);
      ((e)localObject3).b();
    }
    label457:
    ((e)localObject3).close();
    paramau.m();
    a((am)localObject1);
    if (i1 != ((am)localObject1).a.b) {
      throw new IllegalStateException("Expected nodeid:" + i1 + " but found:" + ((am)localObject1).a.b);
    }
  }
  
  /* Error */
  public final boolean a(x paramx, au paramau)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   7: invokevirtual 515	com/sleepycat/b/i/c/aj:ag	()Lcom/sleepycat/b/c/i;
    //   10: astore 9
    //   12: aload 9
    //   14: ifnonnull +5 -> 19
    //   17: iconst_0
    //   18: ireturn
    //   19: new 27	com/sleepycat/b/m
    //   22: dup
    //   23: invokespecial 30	com/sleepycat/b/m:<init>	()V
    //   26: astore 8
    //   28: aload_1
    //   29: getfield 225	com/sleepycat/b/i/c/b/x:a	Ljava/lang/String;
    //   32: aload 8
    //   34: invokestatic 39	com/sleepycat/a/a/i:a	(Ljava/lang/String;Lcom/sleepycat/b/m;)V
    //   37: new 27	com/sleepycat/b/m
    //   40: dup
    //   41: invokespecial 30	com/sleepycat/b/m:<init>	()V
    //   44: astore 6
    //   46: new 227	com/sleepycat/b/i/c/r
    //   49: dup
    //   50: invokespecial 228	com/sleepycat/b/i/c/r:<init>	()V
    //   53: astore 7
    //   55: new 470	com/sleepycat/b/i/c/u
    //   58: dup
    //   59: aload_2
    //   60: invokestatic 475	java/lang/System:currentTimeMillis	()J
    //   63: invokespecial 478	com/sleepycat/b/i/c/u:<init>	(Lcom/sleepycat/b/p/au;J)V
    //   66: astore 5
    //   68: new 459	com/sleepycat/b/i/f/b
    //   71: dup
    //   72: aload_0
    //   73: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   76: getstatic 75	com/sleepycat/b/i/c/p:k	Lcom/sleepycat/b/br;
    //   79: aload_0
    //   80: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   83: getfield 518	com/sleepycat/b/i/c/aj:ao	Lcom/sleepycat/b/i/c/b/x;
    //   86: invokespecial 462	com/sleepycat/b/i/f/b:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/br;Lcom/sleepycat/b/i/c/b/x;)V
    //   89: astore_3
    //   90: aload 9
    //   92: aload_3
    //   93: getstatic 237	com/sleepycat/b/g:a	Lcom/sleepycat/b/g;
    //   96: invokestatic 239	com/sleepycat/b/i/c/p:a	(Lcom/sleepycat/b/c/i;Lcom/sleepycat/b/n/z;Lcom/sleepycat/b/g;)Lcom/sleepycat/b/e;
    //   99: astore 4
    //   101: aload 4
    //   103: aload 8
    //   105: aload 6
    //   107: getstatic 267	com/sleepycat/b/ao:d	Lcom/sleepycat/b/ao;
    //   110: invokevirtual 270	com/sleepycat/b/e:e	(Lcom/sleepycat/b/m;Lcom/sleepycat/b/m;Lcom/sleepycat/b/ao;)Lcom/sleepycat/b/av;
    //   113: getstatic 247	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   116: if_acmpeq +52 -> 168
    //   119: new 298	java/lang/StringBuilder
    //   122: dup
    //   123: ldc_w 520
    //   126: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   129: aload_1
    //   130: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   133: ldc_w 522
    //   136: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   142: invokestatic 254	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   145: athrow
    //   146: astore_1
    //   147: aload 4
    //   149: astore_2
    //   150: aload_2
    //   151: ifnull +7 -> 158
    //   154: aload_2
    //   155: invokevirtual 257	com/sleepycat/b/e:close	()V
    //   158: aload_3
    //   159: ifnull +7 -> 166
    //   162: aload_3
    //   163: invokevirtual 218	com/sleepycat/b/n/z:n	()V
    //   166: aload_1
    //   167: athrow
    //   168: aload 7
    //   170: aload 6
    //   172: invokevirtual 312	com/sleepycat/b/i/c/r:entryToObject	(Lcom/sleepycat/b/m;)Ljava/lang/Object;
    //   175: checkcast 189	com/sleepycat/b/i/c/am
    //   178: astore 8
    //   180: aload 8
    //   182: getfield 481	com/sleepycat/b/i/c/am:g	Lcom/sleepycat/b/i/c/u;
    //   185: getfield 525	com/sleepycat/b/i/c/u:a	Lcom/sleepycat/b/p/au;
    //   188: aload_2
    //   189: invokevirtual 530	com/sleepycat/b/p/au:a	(Lcom/sleepycat/b/p/au;)Z
    //   192: istore 10
    //   194: iload 10
    //   196: ifeq +127 -> 323
    //   199: aload 4
    //   201: ifnull +8 -> 209
    //   204: aload 4
    //   206: invokevirtual 257	com/sleepycat/b/e:close	()V
    //   209: aload_3
    //   210: ifnull +11 -> 221
    //   213: aload_3
    //   214: getstatic 73	com/sleepycat/b/i/c/p:j	Lcom/sleepycat/b/u;
    //   217: invokevirtual 533	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/u;)J
    //   220: pop2
    //   221: aload_0
    //   222: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   225: getfield 398	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   228: astore_2
    //   229: aload_2
    //   230: ifnull +91 -> 321
    //   233: aload_2
    //   234: getfield 413	com/sleepycat/b/i/c/b/aa:m	Lcom/sleepycat/b/i/c/t;
    //   237: aload_1
    //   238: getfield 225	com/sleepycat/b/i/c/b/x:a	Ljava/lang/String;
    //   241: invokevirtual 536	com/sleepycat/b/i/c/t:a	(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;
    //   244: astore_3
    //   245: aload_3
    //   246: ifnull +75 -> 321
    //   249: aload_2
    //   250: getfield 539	com/sleepycat/b/i/c/b/aa:x	Ljava/util/logging/Logger;
    //   253: aload_2
    //   254: getfield 541	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   257: new 298	java/lang/StringBuilder
    //   260: dup
    //   261: ldc_w 543
    //   264: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   267: aload_1
    //   268: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   271: ldc_w 545
    //   274: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: aload 5
    //   279: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   282: ldc_w 547
    //   285: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: aload_3
    //   289: getfield 481	com/sleepycat/b/i/c/am:g	Lcom/sleepycat/b/i/c/u;
    //   292: getfield 525	com/sleepycat/b/i/c/u:a	Lcom/sleepycat/b/p/au;
    //   295: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   298: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   301: invokestatic 370	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   304: aload_3
    //   305: aload 5
    //   307: putfield 481	com/sleepycat/b/i/c/am:g	Lcom/sleepycat/b/i/c/u;
    //   310: aload_2
    //   311: getfield 551	com/sleepycat/b/i/c/b/aa:r	Lcom/sleepycat/b/i/c/b/o;
    //   314: aload_2
    //   315: getfield 413	com/sleepycat/b/i/c/b/aa:m	Lcom/sleepycat/b/i/c/t;
    //   318: invokevirtual 556	com/sleepycat/b/i/c/b/o:a	(Lcom/sleepycat/b/i/c/t;)V
    //   321: iconst_1
    //   322: ireturn
    //   323: aload 8
    //   325: aload 5
    //   327: putfield 481	com/sleepycat/b/i/c/am:g	Lcom/sleepycat/b/i/c/u;
    //   330: aload 7
    //   332: aload 8
    //   334: aload 6
    //   336: invokevirtual 232	com/sleepycat/b/i/c/r:objectToEntry	(Ljava/lang/Object;Lcom/sleepycat/b/m;)V
    //   339: aload 4
    //   341: aload 6
    //   343: invokevirtual 484	com/sleepycat/b/e:a	(Lcom/sleepycat/b/m;)Lcom/sleepycat/b/av;
    //   346: astore 6
    //   348: aload 6
    //   350: getstatic 247	com/sleepycat/b/av:a	Lcom/sleepycat/b/av;
    //   353: if_acmpeq +35 -> 388
    //   356: new 298	java/lang/StringBuilder
    //   359: dup
    //   360: ldc_w 520
    //   363: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   366: aload_1
    //   367: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   370: ldc_w 558
    //   373: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: aload 6
    //   378: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   381: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   384: invokestatic 254	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   387: athrow
    //   388: aload_0
    //   389: getfield 117	com/sleepycat/b/i/c/p:f	Ljava/util/logging/Logger;
    //   392: aload_0
    //   393: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   396: new 298	java/lang/StringBuilder
    //   399: dup
    //   400: ldc_w 560
    //   403: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   406: aload_2
    //   407: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   410: ldc_w 562
    //   413: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: aload_1
    //   417: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   420: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   423: invokestatic 370	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   426: aload 4
    //   428: ifnull +8 -> 436
    //   431: aload 4
    //   433: invokevirtual 257	com/sleepycat/b/e:close	()V
    //   436: aload_3
    //   437: ifnull +11 -> 448
    //   440: aload_3
    //   441: getstatic 73	com/sleepycat/b/i/c/p:j	Lcom/sleepycat/b/u;
    //   444: invokevirtual 533	com/sleepycat/b/n/z:a	(Lcom/sleepycat/b/u;)J
    //   447: pop2
    //   448: aload_0
    //   449: getfield 83	com/sleepycat/b/i/c/p:a	Lcom/sleepycat/b/i/c/aj;
    //   452: getfield 398	com/sleepycat/b/i/c/aj:am	Lcom/sleepycat/b/i/c/b/aa;
    //   455: astore_2
    //   456: aload_2
    //   457: ifnull +91 -> 548
    //   460: aload_2
    //   461: getfield 413	com/sleepycat/b/i/c/b/aa:m	Lcom/sleepycat/b/i/c/t;
    //   464: aload_1
    //   465: getfield 225	com/sleepycat/b/i/c/b/x:a	Ljava/lang/String;
    //   468: invokevirtual 536	com/sleepycat/b/i/c/t:a	(Ljava/lang/String;)Lcom/sleepycat/b/i/c/am;
    //   471: astore_3
    //   472: aload_3
    //   473: ifnull +75 -> 548
    //   476: aload_2
    //   477: getfield 539	com/sleepycat/b/i/c/b/aa:x	Ljava/util/logging/Logger;
    //   480: aload_2
    //   481: getfield 541	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   484: new 298	java/lang/StringBuilder
    //   487: dup
    //   488: ldc_w 543
    //   491: invokespecial 301	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   494: aload_1
    //   495: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   498: ldc_w 545
    //   501: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   504: aload 5
    //   506: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   509: ldc_w 547
    //   512: invokevirtual 305	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   515: aload_3
    //   516: getfield 481	com/sleepycat/b/i/c/am:g	Lcom/sleepycat/b/i/c/u;
    //   519: getfield 525	com/sleepycat/b/i/c/u:a	Lcom/sleepycat/b/p/au;
    //   522: invokevirtual 368	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   525: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   528: invokestatic 370	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   531: aload_3
    //   532: aload 5
    //   534: putfield 481	com/sleepycat/b/i/c/am:g	Lcom/sleepycat/b/i/c/u;
    //   537: aload_2
    //   538: getfield 551	com/sleepycat/b/i/c/b/aa:r	Lcom/sleepycat/b/i/c/b/o;
    //   541: aload_2
    //   542: getfield 413	com/sleepycat/b/i/c/b/aa:m	Lcom/sleepycat/b/i/c/t;
    //   545: invokevirtual 556	com/sleepycat/b/i/c/b/o:a	(Lcom/sleepycat/b/i/c/t;)V
    //   548: iconst_1
    //   549: ireturn
    //   550: astore_1
    //   551: aconst_null
    //   552: astore_2
    //   553: aload 4
    //   555: astore_3
    //   556: goto -406 -> 150
    //   559: astore_1
    //   560: aconst_null
    //   561: astore_2
    //   562: goto -412 -> 150
    //   565: astore_1
    //   566: iconst_0
    //   567: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	568	0	this	p
    //   0	568	1	paramx	x
    //   0	568	2	paramau	au
    //   89	467	3	localObject1	Object
    //   1	553	4	locale	e
    //   66	467	5	localu	u
    //   44	333	6	localObject2	Object
    //   53	278	7	localr	r
    //   26	307	8	localObject3	Object
    //   10	81	9	locali	com.sleepycat.b.c.i
    //   192	3	10	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   101	146	146	finally
    //   168	194	146	finally
    //   323	388	146	finally
    //   388	426	146	finally
    //   68	90	550	finally
    //   90	101	559	finally
    //   3	12	565	com/sleepycat/b/n
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */