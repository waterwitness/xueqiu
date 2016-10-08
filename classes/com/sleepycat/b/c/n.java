package com.sleepycat.b.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.d.b;
import com.sleepycat.b.f.d;
import com.sleepycat.b.z;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class n
{
  private static n b;
  private final Map<String, ad> c = new HashMap();
  private final Set<ad> d = new HashSet();
  
  static
  {
    if (!n.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      b = new n();
      return;
    }
  }
  
  private static ad a(File paramFile, z paramz, ad paramad, aw paramaw)
  {
    try
    {
      paramFile = (ad)Class.forName("com.sleepycat.b.i.c.aj").getConstructor(new Class[] { paramFile.getClass(), paramz.getClass(), Class.forName("com.sleepycat.b.c.ad"), Class.forName("com.sleepycat.b.c.aw") }).newInstance(new Object[] { paramFile, paramz, paramad, paramaw });
      return paramFile;
    }
    catch (InvocationTargetException paramFile)
    {
      if ((paramFile.getCause() instanceof RuntimeException)) {
        throw ((RuntimeException)paramFile.getCause());
      }
      throw aa.a(paramFile);
    }
    catch (Exception paramFile)
    {
      throw aa.a(paramFile);
    }
  }
  
  public static n a()
  {
    return b;
  }
  
  private static String a(File paramFile)
  {
    try
    {
      paramFile = paramFile.getCanonicalPath();
      return paramFile;
    }
    catch (IOException paramFile)
    {
      throw aa.a(paramFile);
    }
  }
  
  private void b(ad paramad)
  {
    String str = a(paramad.c);
    int i;
    if (this.c.remove(str) != null) {
      i = 1;
    }
    for (;;)
    {
      if (this.d.remove(paramad)) {
        if ((!a) && ((i == 0) || (!paramad.i)))
        {
          throw new AssertionError();
          i = 0;
        }
        else
        {
          if ((!a) && (paramad.A.c(paramad))) {
            throw new AssertionError();
          }
          if (this.d.isEmpty()) {
            paramad.A.c();
          }
        }
      }
    }
    while ((a) || (i == 0) || (!paramad.i)) {
      for (;;)
      {
        if (this.c.isEmpty()) {
          d.d();
        }
        return;
        paramad = paramad.n;
        paramad.ac.a(0L - paramad.b());
        c(null);
      }
    }
    throw new AssertionError();
  }
  
  private void c(ad paramad)
  {
    Iterator localIterator = this.d.iterator();
    while (localIterator.hasNext())
    {
      ad localad = (ad)localIterator.next();
      if (localad != paramad) {
        localad.n.a(-1L, false, localad.u);
      }
    }
  }
  
  /* Error */
  public final ad a(File paramFile, z paramz, boolean paramBoolean1, boolean paramBoolean2, aw paramaw)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aload_0
    //   4: monitorenter
    //   5: aload_1
    //   6: invokestatic 99	com/sleepycat/b/c/n:a	(Ljava/io/File;)Ljava/lang/String;
    //   9: astore 8
    //   11: aload_0
    //   12: getfield 36	com/sleepycat/b/c/n:c	Ljava/util/Map;
    //   15: aload 8
    //   17: invokeinterface 181 2 0
    //   22: checkcast 72	com/sleepycat/b/c/ad
    //   25: astore 6
    //   27: aload 6
    //   29: ifnull +171 -> 200
    //   32: aload 6
    //   34: invokevirtual 184	com/sleepycat/b/c/ad:I	()Z
    //   37: ifne +23 -> 60
    //   40: aload 5
    //   42: ifnull +18 -> 60
    //   45: new 186	java/lang/UnsupportedOperationException
    //   48: dup
    //   49: ldc -68
    //   51: invokespecial 191	java/lang/UnsupportedOperationException:<init>	(Ljava/lang/String;)V
    //   54: athrow
    //   55: astore_1
    //   56: aload_0
    //   57: monitorexit
    //   58: aload_1
    //   59: athrow
    //   60: aload 6
    //   62: invokevirtual 184	com/sleepycat/b/c/ad:I	()Z
    //   65: ifeq +25 -> 90
    //   68: aload 5
    //   70: ifnonnull +20 -> 90
    //   73: aload_2
    //   74: invokevirtual 195	com/sleepycat/b/z:a	()Z
    //   77: ifne +13 -> 90
    //   80: new 186	java/lang/UnsupportedOperationException
    //   83: dup
    //   84: ldc -59
    //   86: invokespecial 191	java/lang/UnsupportedOperationException:<init>	(Ljava/lang/String;)V
    //   89: athrow
    //   90: aload 6
    //   92: invokevirtual 199	com/sleepycat/b/c/ad:n	()V
    //   95: iload_3
    //   96: ifeq +20 -> 116
    //   99: aload_2
    //   100: invokevirtual 205	com/sleepycat/b/ac:j	()Ljava/util/Properties;
    //   103: astore_1
    //   104: aload 6
    //   106: getfield 174	com/sleepycat/b/c/ad:u	Lcom/sleepycat/b/c/m;
    //   109: getfield 210	com/sleepycat/b/c/m:b	Lcom/sleepycat/b/z;
    //   112: aload_1
    //   113: invokevirtual 213	com/sleepycat/b/ac:a	(Ljava/util/Properties;)V
    //   116: aload 6
    //   118: invokevirtual 216	com/sleepycat/b/c/ad:r	()V
    //   121: aload 6
    //   123: astore 5
    //   125: aload_0
    //   126: monitorexit
    //   127: aload 5
    //   129: aload_2
    //   130: invokevirtual 219	com/sleepycat/b/c/ad:b	(Lcom/sleepycat/b/z;)Z
    //   133: ifeq +283 -> 416
    //   136: aload_0
    //   137: monitorenter
    //   138: aload 5
    //   140: getfield 113	com/sleepycat/b/c/ad:i	Z
    //   143: ifeq +263 -> 406
    //   146: aload_0
    //   147: getfield 41	com/sleepycat/b/c/n:d	Ljava/util/Set;
    //   150: aload 5
    //   152: invokeinterface 222 2 0
    //   157: ifne +216 -> 373
    //   160: invokestatic 225	com/sleepycat/b/aa:b	()Lcom/sleepycat/b/aa;
    //   163: athrow
    //   164: astore_1
    //   165: aload_0
    //   166: monitorexit
    //   167: aload_1
    //   168: athrow
    //   169: astore_1
    //   170: aload_0
    //   171: monitorenter
    //   172: aload_0
    //   173: getfield 36	com/sleepycat/b/c/n:c	Ljava/util/Map;
    //   176: aload 8
    //   178: invokeinterface 105 2 0
    //   183: pop
    //   184: aload_0
    //   185: getfield 41	com/sleepycat/b/c/n:d	Ljava/util/Set;
    //   188: aload 5
    //   190: invokeinterface 110 2 0
    //   195: pop
    //   196: aload_0
    //   197: monitorexit
    //   198: aload_1
    //   199: athrow
    //   200: iload 4
    //   202: ifne +7 -> 209
    //   205: aload_0
    //   206: monitorexit
    //   207: aconst_null
    //   208: areturn
    //   209: aload 7
    //   211: astore 6
    //   213: aload_2
    //   214: invokevirtual 228	com/sleepycat/b/z:f	()Z
    //   217: ifeq +40 -> 257
    //   220: aload_0
    //   221: getfield 41	com/sleepycat/b/c/n:d	Ljava/util/Set;
    //   224: invokeinterface 159 1 0
    //   229: astore 9
    //   231: aload 7
    //   233: astore 6
    //   235: aload 9
    //   237: invokeinterface 164 1 0
    //   242: ifeq +15 -> 257
    //   245: aload 9
    //   247: invokeinterface 168 1 0
    //   252: checkcast 72	com/sleepycat/b/c/ad
    //   255: astore 6
    //   257: aload 5
    //   259: ifnonnull +40 -> 299
    //   262: new 72	com/sleepycat/b/c/ad
    //   265: dup
    //   266: aload_1
    //   267: aload_2
    //   268: aload 6
    //   270: invokespecial 231	com/sleepycat/b/c/ad:<init>	(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/ad;)V
    //   273: astore_1
    //   274: getstatic 24	com/sleepycat/b/c/n:a	Z
    //   277: ifne +35 -> 312
    //   280: aload_2
    //   281: invokevirtual 228	com/sleepycat/b/z:f	()Z
    //   284: aload_1
    //   285: getfield 113	com/sleepycat/b/c/ad:i	Z
    //   288: if_icmpeq +24 -> 312
    //   291: new 115	java/lang/AssertionError
    //   294: dup
    //   295: invokespecial 116	java/lang/AssertionError:<init>	()V
    //   298: athrow
    //   299: aload_1
    //   300: aload_2
    //   301: aload 6
    //   303: aload 5
    //   305: invokestatic 233	com/sleepycat/b/c/n:a	(Ljava/io/File;Lcom/sleepycat/b/z;Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/aw;)Lcom/sleepycat/b/c/ad;
    //   308: astore_1
    //   309: goto -35 -> 274
    //   312: aload_1
    //   313: invokevirtual 216	com/sleepycat/b/c/ad:r	()V
    //   316: aload_0
    //   317: getfield 36	com/sleepycat/b/c/n:c	Ljava/util/Map;
    //   320: aload 8
    //   322: aload_1
    //   323: invokeinterface 237 3 0
    //   328: pop
    //   329: aload_1
    //   330: astore 5
    //   332: aload_1
    //   333: getfield 113	com/sleepycat/b/c/ad:i	Z
    //   336: ifeq -211 -> 125
    //   339: aload_0
    //   340: getfield 41	com/sleepycat/b/c/n:d	Ljava/util/Set;
    //   343: aload_1
    //   344: invokeinterface 222 2 0
    //   349: ifeq +7 -> 356
    //   352: invokestatic 225	com/sleepycat/b/aa:b	()Lcom/sleepycat/b/aa;
    //   355: athrow
    //   356: aload_0
    //   357: getfield 41	com/sleepycat/b/c/n:d	Ljava/util/Set;
    //   360: aload_1
    //   361: invokeinterface 240 2 0
    //   366: pop
    //   367: aload_1
    //   368: astore 5
    //   370: goto -245 -> 125
    //   373: getstatic 24	com/sleepycat/b/c/n:a	Z
    //   376: ifne +24 -> 400
    //   379: aload 5
    //   381: getfield 120	com/sleepycat/b/c/ad:A	Lcom/sleepycat/b/d/b;
    //   384: aload 5
    //   386: invokevirtual 125	com/sleepycat/b/d/b:c	(Lcom/sleepycat/b/c/ad;)Z
    //   389: ifne +11 -> 400
    //   392: new 115	java/lang/AssertionError
    //   395: dup
    //   396: invokespecial 116	java/lang/AssertionError:<init>	()V
    //   399: athrow
    //   400: aload_0
    //   401: aload 5
    //   403: invokespecial 155	com/sleepycat/b/c/n:c	(Lcom/sleepycat/b/c/ad;)V
    //   406: aload_0
    //   407: monitorexit
    //   408: aload 5
    //   410: areturn
    //   411: astore_1
    //   412: aload_0
    //   413: monitorexit
    //   414: aload_1
    //   415: athrow
    //   416: aload 5
    //   418: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	419	0	this	n
    //   0	419	1	paramFile	File
    //   0	419	2	paramz	z
    //   0	419	3	paramBoolean1	boolean
    //   0	419	4	paramBoolean2	boolean
    //   0	419	5	paramaw	aw
    //   25	277	6	localObject1	Object
    //   1	231	7	localObject2	Object
    //   9	312	8	str	String
    //   229	17	9	localIterator	Iterator
    // Exception table:
    //   from	to	target	type
    //   5	27	55	finally
    //   32	40	55	finally
    //   45	55	55	finally
    //   56	58	55	finally
    //   60	68	55	finally
    //   73	90	55	finally
    //   90	95	55	finally
    //   99	116	55	finally
    //   116	121	55	finally
    //   125	127	55	finally
    //   205	207	55	finally
    //   213	231	55	finally
    //   235	257	55	finally
    //   262	274	55	finally
    //   274	299	55	finally
    //   299	309	55	finally
    //   312	329	55	finally
    //   332	356	55	finally
    //   356	367	55	finally
    //   138	164	164	finally
    //   165	167	164	finally
    //   373	400	164	finally
    //   400	406	164	finally
    //   406	408	164	finally
    //   127	138	169	finally
    //   167	169	169	finally
    //   172	198	411	finally
    //   412	414	411	finally
  }
  
  /* Error */
  public final void a(ad paramad)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: invokevirtual 243	com/sleepycat/b/c/ad:q	()V
    //   6: aload_0
    //   7: aload_1
    //   8: invokespecial 245	com/sleepycat/b/c/n:b	(Lcom/sleepycat/b/c/ad;)V
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: astore_2
    //   15: aload_0
    //   16: aload_1
    //   17: invokespecial 245	com/sleepycat/b/c/n:b	(Lcom/sleepycat/b/c/ad;)V
    //   20: aload_2
    //   21: athrow
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	n
    //   0	27	1	paramad	ad
    //   14	7	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	6	14	finally
    //   6	11	22	finally
    //   15	22	22	finally
  }
  
  /* Error */
  public final void a(ad paramad, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: monitorenter
    //   4: aload_1
    //   5: getfield 249	com/sleepycat/b/c/ad:d	Ljava/util/concurrent/atomic/AtomicInteger;
    //   8: invokevirtual 255	java/util/concurrent/atomic/AtomicInteger:decrementAndGet	()I
    //   11: istore 5
    //   13: iload 5
    //   15: ifgt +27 -> 42
    //   18: iconst_1
    //   19: istore 5
    //   21: iload 5
    //   23: ifeq +14 -> 37
    //   26: aload_1
    //   27: iload_2
    //   28: iload_3
    //   29: invokevirtual 258	com/sleepycat/b/c/ad:a	(ZZ)V
    //   32: aload_0
    //   33: aload_1
    //   34: invokespecial 245	com/sleepycat/b/c/n:b	(Lcom/sleepycat/b/c/ad;)V
    //   37: aload_1
    //   38: monitorexit
    //   39: aload_0
    //   40: monitorexit
    //   41: return
    //   42: iconst_0
    //   43: istore 5
    //   45: goto -24 -> 21
    //   48: astore 4
    //   50: aload_0
    //   51: aload_1
    //   52: invokespecial 245	com/sleepycat/b/c/n:b	(Lcom/sleepycat/b/c/ad;)V
    //   55: aload 4
    //   57: athrow
    //   58: astore 4
    //   60: aload_1
    //   61: monitorexit
    //   62: aload 4
    //   64: athrow
    //   65: astore_1
    //   66: aload_0
    //   67: monitorexit
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	n
    //   0	70	1	paramad	ad
    //   0	70	2	paramBoolean1	boolean
    //   0	70	3	paramBoolean2	boolean
    //   48	8	4	localObject1	Object
    //   58	5	4	localObject2	Object
    //   11	33	5	i	int
    // Exception table:
    //   from	to	target	type
    //   26	32	48	finally
    //   4	13	58	finally
    //   32	37	58	finally
    //   37	39	58	finally
    //   50	58	58	finally
    //   60	62	58	finally
    //   2	4	65	finally
    //   62	65	65	finally
  }
  
  public final int b()
  {
    try
    {
      int i = this.d.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */