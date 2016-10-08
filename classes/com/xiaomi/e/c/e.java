package com.xiaomi.e.c;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import com.xiaomi.e.e.g;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.CopyOnWriteArrayList;

public abstract class e
{
  private static String a;
  private static String b = g.a() + "-";
  private static long c = 0L;
  protected static final String n = Locale.getDefault().getLanguage().toLowerCase();
  public static final DateFormat o;
  private List<a> d = new CopyOnWriteArrayList();
  private final Map<String, Object> e = new HashMap();
  String p = a;
  public String q = null;
  public String r = null;
  public String s = null;
  public String t = null;
  public String u = null;
  public k v = null;
  
  static
  {
    a = null;
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
    o = localSimpleDateFormat;
    localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
  }
  
  public e() {}
  
  public e(Bundle paramBundle)
  {
    this.r = paramBundle.getString("ext_to");
    this.s = paramBundle.getString("ext_from");
    this.t = paramBundle.getString("ext_chid");
    this.q = paramBundle.getString("ext_pkt_id");
    Parcelable[] arrayOfParcelable = paramBundle.getParcelableArray("ext_exts");
    if (arrayOfParcelable != null)
    {
      this.d = new ArrayList(arrayOfParcelable.length);
      int j = arrayOfParcelable.length;
      int i = 0;
      while (i < j)
      {
        a locala = a.a((Bundle)arrayOfParcelable[i]);
        this.d.add(locala);
        i += 1;
      }
    }
    paramBundle = paramBundle.getBundle("ext_ERROR");
    if (paramBundle != null) {
      this.v = new k(paramBundle);
    }
  }
  
  /* Error */
  private Object a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 116	com/xiaomi/e/c/e:e	Ljava/util/Map;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnonnull +9 -> 17
    //   11: aconst_null
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: areturn
    //   17: aload_0
    //   18: getfield 116	com/xiaomi/e/c/e:e	Ljava/util/Map;
    //   21: aload_1
    //   22: invokeinterface 172 2 0
    //   27: astore_1
    //   28: goto -15 -> 13
    //   31: astore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	e
    //   0	36	1	paramString	String
    //   6	2	2	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   2	7	31	finally
    //   17	28	31	finally
  }
  
  public static String c()
  {
    try
    {
      Object localObject1 = new StringBuilder().append(b);
      long l = c;
      c = 1L + l;
      localObject1 = Long.toString(l);
      return (String)localObject1;
    }
    finally
    {
      localObject2 = finally;
      throw ((Throwable)localObject2);
    }
  }
  
  public static String g()
  {
    return n;
  }
  
  /* Error */
  private java.util.Collection<String> h()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 116	com/xiaomi/e/c/e:e	Ljava/util/Map;
    //   6: ifnonnull +11 -> 17
    //   9: invokestatic 186	java/util/Collections:emptySet	()Ljava/util/Set;
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: areturn
    //   17: new 188	java/util/HashSet
    //   20: dup
    //   21: aload_0
    //   22: getfield 116	com/xiaomi/e/c/e:e	Ljava/util/Map;
    //   25: invokeinterface 191 1 0
    //   30: invokespecial 194	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   33: invokestatic 198	java/util/Collections:unmodifiableSet	(Ljava/util/Set;)Ljava/util/Set;
    //   36: astore_1
    //   37: goto -24 -> 13
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	e
    //   12	25	1	localSet	java.util.Set
    //   40	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	13	40	finally
    //   17	37	40	finally
  }
  
  public abstract String a();
  
  public final void a(a parama)
  {
    this.d.add(parama);
  }
  
  public Bundle b()
  {
    Bundle localBundle = new Bundle();
    if (!TextUtils.isEmpty(this.p)) {
      localBundle.putString("ext_ns", this.p);
    }
    if (!TextUtils.isEmpty(this.s)) {
      localBundle.putString("ext_from", this.s);
    }
    if (!TextUtils.isEmpty(this.r)) {
      localBundle.putString("ext_to", this.r);
    }
    if (!TextUtils.isEmpty(this.q)) {
      localBundle.putString("ext_pkt_id", this.q);
    }
    if (!TextUtils.isEmpty(this.t)) {
      localBundle.putString("ext_chid", this.t);
    }
    if (this.v != null) {
      localBundle.putBundle("ext_ERROR", this.v.a());
    }
    if (this.d != null)
    {
      Bundle[] arrayOfBundle = new Bundle[this.d.size()];
      Iterator localIterator = this.d.iterator();
      int i = 0;
      while (localIterator.hasNext())
      {
        arrayOfBundle[i] = ((a)localIterator.next()).c();
        i += 1;
      }
      localBundle.putParcelableArray("ext_exts", arrayOfBundle);
    }
    return localBundle;
  }
  
  public final a b(String paramString)
  {
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if (paramString.equals(locala.a)) {
        return locala;
      }
    }
    return null;
  }
  
  public final String d()
  {
    if ("ID_NOT_AVAILABLE".equals(this.q)) {
      return null;
    }
    if (this.q == null) {
      this.q = c();
    }
    return this.q;
  }
  
  /* Error */
  public final java.util.Collection<a> e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 111	com/xiaomi/e/c/e:d	Ljava/util/List;
    //   6: ifnonnull +11 -> 17
    //   9: invokestatic 258	java/util/Collections:emptyList	()Ljava/util/List;
    //   12: astore_1
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_1
    //   16: areturn
    //   17: new 141	java/util/ArrayList
    //   20: dup
    //   21: aload_0
    //   22: getfield 111	com/xiaomi/e/c/e:d	Ljava/util/List;
    //   25: invokespecial 259	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   28: invokestatic 263	java/util/Collections:unmodifiableList	(Ljava/util/List;)Ljava/util/List;
    //   31: astore_1
    //   32: goto -19 -> 13
    //   35: astore_1
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_1
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	e
    //   12	20	1	localList	List
    //   35	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	13	35	finally
    //   17	32	35	finally
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (e)paramObject;
      if (this.v != null)
      {
        if (this.v.equals(((e)paramObject).v)) {}
      }
      else {
        while (((e)paramObject).v != null) {
          return false;
        }
      }
      if (this.s != null)
      {
        if (this.s.equals(((e)paramObject).s)) {}
      }
      else {
        while (((e)paramObject).s != null) {
          return false;
        }
      }
      if (!this.d.equals(((e)paramObject).d)) {
        return false;
      }
      if (this.q != null)
      {
        if (this.q.equals(((e)paramObject).q)) {}
      }
      else {
        while (((e)paramObject).q != null) {
          return false;
        }
      }
      if (this.t != null)
      {
        if (this.t.equals(((e)paramObject).t)) {}
      }
      else {
        while (((e)paramObject).t != null) {
          return false;
        }
      }
      if (this.e != null)
      {
        if (this.e.equals(((e)paramObject).e)) {}
      }
      else {
        while (((e)paramObject).e != null) {
          return false;
        }
      }
      if (this.r != null)
      {
        if (this.r.equals(((e)paramObject).r)) {}
      }
      else {
        while (((e)paramObject).r != null) {
          return false;
        }
      }
      if (this.p == null) {
        break;
      }
    } while (this.p.equals(((e)paramObject).p));
    while (((e)paramObject).p != null) {
      return false;
    }
    return true;
  }
  
  /* Error */
  protected final String f()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 73	java/lang/StringBuilder
    //   5: dup
    //   6: invokespecial 75	java/lang/StringBuilder:<init>	()V
    //   9: astore 5
    //   11: aload_0
    //   12: invokevirtual 274	com/xiaomi/e/c/e:e	()Ljava/util/Collection;
    //   15: invokeinterface 277 1 0
    //   20: astore_1
    //   21: aload_1
    //   22: invokeinterface 235 1 0
    //   27: ifeq +31 -> 58
    //   30: aload 5
    //   32: aload_1
    //   33: invokeinterface 239 1 0
    //   38: checkcast 146	com/xiaomi/e/c/a
    //   41: invokeinterface 281 1 0
    //   46: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: pop
    //   50: goto -29 -> 21
    //   53: astore_1
    //   54: aload_0
    //   55: monitorexit
    //   56: aload_1
    //   57: athrow
    //   58: aload_0
    //   59: getfield 116	com/xiaomi/e/c/e:e	Ljava/util/Map;
    //   62: ifnull +426 -> 488
    //   65: aload_0
    //   66: getfield 116	com/xiaomi/e/c/e:e	Ljava/util/Map;
    //   69: invokeinterface 283 1 0
    //   74: ifne +414 -> 488
    //   77: aload 5
    //   79: ldc_w 285
    //   82: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   85: pop
    //   86: aload_0
    //   87: invokespecial 287	com/xiaomi/e/c/e:h	()Ljava/util/Collection;
    //   90: invokeinterface 277 1 0
    //   95: astore 6
    //   97: aload 6
    //   99: invokeinterface 235 1 0
    //   104: ifeq +375 -> 479
    //   107: aload 6
    //   109: invokeinterface 239 1 0
    //   114: checkcast 40	java/lang/String
    //   117: astore_2
    //   118: aload_0
    //   119: aload_2
    //   120: invokespecial 289	com/xiaomi/e/c/e:a	(Ljava/lang/String;)Ljava/lang/Object;
    //   123: astore_1
    //   124: aload 5
    //   126: ldc_w 291
    //   129: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: pop
    //   133: aload 5
    //   135: ldc_w 293
    //   138: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload_2
    //   142: invokestatic 295	com/xiaomi/e/e/g:a	(Ljava/lang/String;)Ljava/lang/String;
    //   145: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   148: ldc_w 297
    //   151: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   154: pop
    //   155: aload 5
    //   157: ldc_w 299
    //   160: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: pop
    //   164: aload_1
    //   165: instanceof 301
    //   168: ifeq +34 -> 202
    //   171: aload 5
    //   173: ldc_w 303
    //   176: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload_1
    //   180: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   183: ldc_w 308
    //   186: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: pop
    //   190: aload 5
    //   192: ldc_w 310
    //   195: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: pop
    //   199: goto -102 -> 97
    //   202: aload_1
    //   203: instanceof 174
    //   206: ifeq +25 -> 231
    //   209: aload 5
    //   211: ldc_w 312
    //   214: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: aload_1
    //   218: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   221: ldc_w 308
    //   224: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: pop
    //   228: goto -38 -> 190
    //   231: aload_1
    //   232: instanceof 314
    //   235: ifeq +25 -> 260
    //   238: aload 5
    //   240: ldc_w 316
    //   243: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: aload_1
    //   247: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   250: ldc_w 308
    //   253: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   256: pop
    //   257: goto -67 -> 190
    //   260: aload_1
    //   261: instanceof 318
    //   264: ifeq +25 -> 289
    //   267: aload 5
    //   269: ldc_w 320
    //   272: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: aload_1
    //   276: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   279: ldc_w 308
    //   282: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   285: pop
    //   286: goto -96 -> 190
    //   289: aload_1
    //   290: instanceof 322
    //   293: ifeq +25 -> 318
    //   296: aload 5
    //   298: ldc_w 324
    //   301: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   304: aload_1
    //   305: invokevirtual 306	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   308: ldc_w 308
    //   311: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   314: pop
    //   315: goto -125 -> 190
    //   318: aload_1
    //   319: instanceof 40
    //   322: ifeq +37 -> 359
    //   325: aload 5
    //   327: ldc_w 326
    //   330: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   333: pop
    //   334: aload 5
    //   336: aload_1
    //   337: checkcast 40	java/lang/String
    //   340: invokestatic 295	com/xiaomi/e/e/g:a	(Ljava/lang/String;)Ljava/lang/String;
    //   343: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: pop
    //   347: aload 5
    //   349: ldc_w 308
    //   352: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   355: pop
    //   356: goto -166 -> 190
    //   359: new 328	java/io/ByteArrayOutputStream
    //   362: dup
    //   363: invokespecial 329	java/io/ByteArrayOutputStream:<init>	()V
    //   366: astore_3
    //   367: new 331	java/io/ObjectOutputStream
    //   370: dup
    //   371: aload_3
    //   372: invokespecial 334	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   375: astore_2
    //   376: aload_2
    //   377: aload_1
    //   378: invokevirtual 338	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   381: aload 5
    //   383: ldc_w 340
    //   386: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: pop
    //   390: aload 5
    //   392: aload_3
    //   393: invokevirtual 344	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   396: invokestatic 347	com/xiaomi/e/e/g:a	([B)Ljava/lang/String;
    //   399: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   402: ldc_w 308
    //   405: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   408: pop
    //   409: aload_2
    //   410: invokevirtual 350	java/io/ObjectOutputStream:close	()V
    //   413: aload_3
    //   414: invokevirtual 351	java/io/ByteArrayOutputStream:close	()V
    //   417: goto -227 -> 190
    //   420: astore_1
    //   421: goto -231 -> 190
    //   424: astore_3
    //   425: aconst_null
    //   426: astore_1
    //   427: aconst_null
    //   428: astore_2
    //   429: aload_3
    //   430: invokevirtual 354	java/lang/Exception:printStackTrace	()V
    //   433: aload_1
    //   434: ifnull +7 -> 441
    //   437: aload_1
    //   438: invokevirtual 350	java/io/ObjectOutputStream:close	()V
    //   441: aload_2
    //   442: ifnull -252 -> 190
    //   445: aload_2
    //   446: invokevirtual 351	java/io/ByteArrayOutputStream:close	()V
    //   449: goto -259 -> 190
    //   452: astore_1
    //   453: goto -263 -> 190
    //   456: astore_1
    //   457: aconst_null
    //   458: astore_2
    //   459: aconst_null
    //   460: astore_3
    //   461: aload_2
    //   462: ifnull +7 -> 469
    //   465: aload_2
    //   466: invokevirtual 350	java/io/ObjectOutputStream:close	()V
    //   469: aload_3
    //   470: ifnull +7 -> 477
    //   473: aload_3
    //   474: invokevirtual 351	java/io/ByteArrayOutputStream:close	()V
    //   477: aload_1
    //   478: athrow
    //   479: aload 5
    //   481: ldc_w 356
    //   484: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   487: pop
    //   488: aload 5
    //   490: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   493: astore_1
    //   494: aload_0
    //   495: monitorexit
    //   496: aload_1
    //   497: areturn
    //   498: astore_1
    //   499: goto -86 -> 413
    //   502: astore_1
    //   503: goto -62 -> 441
    //   506: astore_2
    //   507: goto -38 -> 469
    //   510: astore_2
    //   511: goto -34 -> 477
    //   514: astore_1
    //   515: aconst_null
    //   516: astore_2
    //   517: goto -56 -> 461
    //   520: astore_1
    //   521: goto -60 -> 461
    //   524: astore 4
    //   526: aload_2
    //   527: astore_3
    //   528: aload_1
    //   529: astore_2
    //   530: aload 4
    //   532: astore_1
    //   533: goto -72 -> 461
    //   536: astore 4
    //   538: aconst_null
    //   539: astore_1
    //   540: aload_3
    //   541: astore_2
    //   542: aload 4
    //   544: astore_3
    //   545: goto -116 -> 429
    //   548: astore 4
    //   550: aload_2
    //   551: astore_1
    //   552: aload_3
    //   553: astore_2
    //   554: aload 4
    //   556: astore_3
    //   557: goto -128 -> 429
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	560	0	this	e
    //   20	13	1	localIterator1	Iterator
    //   53	4	1	localObject1	Object
    //   123	255	1	localObject2	Object
    //   420	1	1	localException1	Exception
    //   426	12	1	localObject3	Object
    //   452	1	1	localException2	Exception
    //   456	22	1	localObject4	Object
    //   493	4	1	str	String
    //   498	1	1	localException3	Exception
    //   502	1	1	localException4	Exception
    //   514	1	1	localObject5	Object
    //   520	9	1	localObject6	Object
    //   532	20	1	localObject7	Object
    //   117	349	2	localObject8	Object
    //   506	1	2	localException5	Exception
    //   510	1	2	localException6	Exception
    //   516	38	2	localObject9	Object
    //   366	48	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   424	6	3	localException7	Exception
    //   460	97	3	localObject10	Object
    //   524	7	4	localObject11	Object
    //   536	7	4	localException8	Exception
    //   548	7	4	localException9	Exception
    //   9	480	5	localStringBuilder	StringBuilder
    //   95	13	6	localIterator2	Iterator
    // Exception table:
    //   from	to	target	type
    //   2	21	53	finally
    //   21	50	53	finally
    //   58	97	53	finally
    //   97	190	53	finally
    //   190	199	53	finally
    //   202	228	53	finally
    //   231	257	53	finally
    //   260	286	53	finally
    //   289	315	53	finally
    //   318	356	53	finally
    //   409	413	53	finally
    //   413	417	53	finally
    //   437	441	53	finally
    //   445	449	53	finally
    //   465	469	53	finally
    //   473	477	53	finally
    //   477	479	53	finally
    //   479	488	53	finally
    //   488	494	53	finally
    //   413	417	420	java/lang/Exception
    //   359	367	424	java/lang/Exception
    //   445	449	452	java/lang/Exception
    //   359	367	456	finally
    //   409	413	498	java/lang/Exception
    //   437	441	502	java/lang/Exception
    //   465	469	506	java/lang/Exception
    //   473	477	510	java/lang/Exception
    //   367	376	514	finally
    //   376	409	520	finally
    //   429	433	524	finally
    //   367	376	536	java/lang/Exception
    //   376	409	548	java/lang/Exception
  }
  
  public int hashCode()
  {
    int i2 = 0;
    int i;
    int j;
    label33:
    int k;
    label48:
    int m;
    if (this.p != null)
    {
      i = this.p.hashCode();
      if (this.q == null) {
        break label161;
      }
      j = this.q.hashCode();
      if (this.r == null) {
        break label166;
      }
      k = this.r.hashCode();
      if (this.s == null) {
        break label171;
      }
      m = this.s.hashCode();
      label64:
      if (this.t == null) {
        break label177;
      }
    }
    label161:
    label166:
    label171:
    label177:
    for (int i1 = this.t.hashCode();; i1 = 0)
    {
      int i3 = this.d.hashCode();
      int i4 = this.e.hashCode();
      if (this.v != null) {
        i2 = this.v.hashCode();
      }
      return (((i1 + (m + (k + (j + i * 31) * 31) * 31) * 31) * 31 + i3) * 31 + i4) * 31 + i2;
      i = 0;
      break;
      j = 0;
      break label33;
      k = 0;
      break label48;
      m = 0;
      break label64;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */