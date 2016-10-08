package com.xiaomi.e.d;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class c
{
  private static c b;
  public Map<String, Object> a = new ConcurrentHashMap();
  private Map<String, Object> c = new ConcurrentHashMap();
  
  private c()
  {
    b();
  }
  
  public static c a()
  {
    try
    {
      if (b == null) {
        b = new c();
      }
      c localc = b;
      return localc;
    }
    finally {}
  }
  
  public static String a(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<").append(paramString1).append("/>");
    if (paramString1 != null) {
      localStringBuilder.append("<").append(paramString2).append("/>");
    }
    return localStringBuilder.toString();
  }
  
  /* Error */
  private void b()
  {
    // Byte code:
    //   0: ldc 2
    //   2: invokevirtual 54	java/lang/Class:getClassLoader	()Ljava/lang/ClassLoader;
    //   5: astore_1
    //   6: invokestatic 60	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   9: invokevirtual 63	java/lang/Thread:getContextClassLoader	()Ljava/lang/ClassLoader;
    //   12: astore_2
    //   13: new 65	java/util/ArrayList
    //   16: dup
    //   17: invokespecial 66	java/util/ArrayList:<init>	()V
    //   20: astore_3
    //   21: iconst_0
    //   22: istore 8
    //   24: iload 8
    //   26: iconst_2
    //   27: if_icmpge +37 -> 64
    //   30: iconst_2
    //   31: anewarray 68	java/lang/ClassLoader
    //   34: dup
    //   35: iconst_0
    //   36: aload_1
    //   37: aastore
    //   38: dup
    //   39: iconst_1
    //   40: aload_2
    //   41: aastore
    //   42: iload 8
    //   44: aaload
    //   45: astore 4
    //   47: aload 4
    //   49: ifnull +566 -> 615
    //   52: aload_3
    //   53: aload 4
    //   55: invokeinterface 74 2 0
    //   60: pop
    //   61: goto +554 -> 615
    //   64: aload_3
    //   65: aload_3
    //   66: invokeinterface 78 1 0
    //   71: anewarray 68	java/lang/ClassLoader
    //   74: invokeinterface 82 2 0
    //   79: checkcast 84	[Ljava/lang/ClassLoader;
    //   82: astore_1
    //   83: aload_1
    //   84: arraylength
    //   85: istore 11
    //   87: iconst_0
    //   88: istore 8
    //   90: iload 8
    //   92: iload 11
    //   94: if_icmpge +310 -> 404
    //   97: aload_1
    //   98: iload 8
    //   100: aaload
    //   101: ldc 86
    //   103: invokevirtual 90	java/lang/ClassLoader:getResources	(Ljava/lang/String;)Ljava/util/Enumeration;
    //   106: astore_3
    //   107: aload_3
    //   108: invokeinterface 96 1 0
    //   113: ifeq +483 -> 596
    //   116: aload_3
    //   117: invokeinterface 100 1 0
    //   122: checkcast 102	java/net/URL
    //   125: astore_2
    //   126: aload_2
    //   127: invokevirtual 106	java/net/URL:openStream	()Ljava/io/InputStream;
    //   130: astore_2
    //   131: invokestatic 112	org/xmlpull/v1/XmlPullParserFactory:newInstance	()Lorg/xmlpull/v1/XmlPullParserFactory;
    //   134: invokevirtual 116	org/xmlpull/v1/XmlPullParserFactory:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   137: astore 4
    //   139: aload 4
    //   141: ldc 118
    //   143: iconst_1
    //   144: invokeinterface 124 3 0
    //   149: aload 4
    //   151: aload_2
    //   152: ldc 126
    //   154: invokeinterface 130 3 0
    //   159: aload 4
    //   161: invokeinterface 133 1 0
    //   166: istore 9
    //   168: iload 9
    //   170: iconst_2
    //   171: if_icmpne +154 -> 325
    //   174: aload 4
    //   176: invokeinterface 136 1 0
    //   181: ldc -118
    //   183: invokevirtual 143	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   186: ifeq +219 -> 405
    //   189: aload 4
    //   191: invokeinterface 146 1 0
    //   196: pop
    //   197: aload 4
    //   199: invokeinterface 146 1 0
    //   204: pop
    //   205: aload 4
    //   207: invokeinterface 149 1 0
    //   212: astore 6
    //   214: aload 4
    //   216: invokeinterface 146 1 0
    //   221: pop
    //   222: aload 4
    //   224: invokeinterface 146 1 0
    //   229: pop
    //   230: aload 4
    //   232: invokeinterface 149 1 0
    //   237: astore 7
    //   239: aload 4
    //   241: invokeinterface 146 1 0
    //   246: pop
    //   247: aload 4
    //   249: invokeinterface 146 1 0
    //   254: pop
    //   255: aload 4
    //   257: invokeinterface 149 1 0
    //   262: astore 5
    //   264: aload 6
    //   266: aload 7
    //   268: invokestatic 151	com/xiaomi/e/d/c:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   271: astore 6
    //   273: aload_0
    //   274: getfield 21	com/xiaomi/e/d/c:c	Ljava/util/Map;
    //   277: aload 6
    //   279: invokeinterface 156 2 0
    //   284: istore 12
    //   286: iload 12
    //   288: ifne +37 -> 325
    //   291: aload 5
    //   293: invokestatic 160	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   296: astore 5
    //   298: ldc -94
    //   300: aload 5
    //   302: invokevirtual 166	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   305: ifeq +50 -> 355
    //   308: aload_0
    //   309: getfield 21	com/xiaomi/e/d/c:c	Ljava/util/Map;
    //   312: aload 6
    //   314: aload 5
    //   316: invokevirtual 168	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   319: invokeinterface 172 3 0
    //   324: pop
    //   325: aload 4
    //   327: invokeinterface 146 1 0
    //   332: istore 10
    //   334: iload 10
    //   336: istore 9
    //   338: iload 10
    //   340: iconst_1
    //   341: if_icmpne -173 -> 168
    //   344: aload_2
    //   345: invokevirtual 177	java/io/InputStream:close	()V
    //   348: goto -241 -> 107
    //   351: astore_2
    //   352: goto -245 -> 107
    //   355: ldc -77
    //   357: aload 5
    //   359: invokevirtual 166	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   362: ifeq -37 -> 325
    //   365: aload_0
    //   366: getfield 21	com/xiaomi/e/d/c:c	Ljava/util/Map;
    //   369: aload 6
    //   371: aload 5
    //   373: invokeinterface 172 3 0
    //   378: pop
    //   379: goto -54 -> 325
    //   382: astore 5
    //   384: aload 5
    //   386: invokevirtual 182	java/lang/ClassNotFoundException:printStackTrace	()V
    //   389: goto -64 -> 325
    //   392: astore_1
    //   393: aload_2
    //   394: invokevirtual 177	java/io/InputStream:close	()V
    //   397: aload_1
    //   398: athrow
    //   399: astore_1
    //   400: aload_1
    //   401: invokevirtual 183	java/lang/Exception:printStackTrace	()V
    //   404: return
    //   405: aload 4
    //   407: invokeinterface 136 1 0
    //   412: ldc -71
    //   414: invokevirtual 143	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   417: ifeq -92 -> 325
    //   420: aload 4
    //   422: invokeinterface 146 1 0
    //   427: pop
    //   428: aload 4
    //   430: invokeinterface 146 1 0
    //   435: pop
    //   436: aload 4
    //   438: invokeinterface 149 1 0
    //   443: astore 6
    //   445: aload 4
    //   447: invokeinterface 146 1 0
    //   452: pop
    //   453: aload 4
    //   455: invokeinterface 146 1 0
    //   460: pop
    //   461: aload 4
    //   463: invokeinterface 149 1 0
    //   468: astore 7
    //   470: aload 4
    //   472: invokeinterface 146 1 0
    //   477: pop
    //   478: aload 4
    //   480: invokeinterface 146 1 0
    //   485: pop
    //   486: aload 4
    //   488: invokeinterface 149 1 0
    //   493: astore 5
    //   495: aload 6
    //   497: aload 7
    //   499: invokestatic 151	com/xiaomi/e/d/c:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   502: astore 6
    //   504: aload_0
    //   505: getfield 19	com/xiaomi/e/d/c:a	Ljava/util/Map;
    //   508: aload 6
    //   510: invokeinterface 156 2 0
    //   515: istore 12
    //   517: iload 12
    //   519: ifne -194 -> 325
    //   522: aload 5
    //   524: invokestatic 160	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   527: astore 5
    //   529: ldc -69
    //   531: aload 5
    //   533: invokevirtual 166	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   536: ifeq +33 -> 569
    //   539: aload_0
    //   540: getfield 19	com/xiaomi/e/d/c:a	Ljava/util/Map;
    //   543: aload 6
    //   545: aload 5
    //   547: invokevirtual 168	java/lang/Class:newInstance	()Ljava/lang/Object;
    //   550: invokeinterface 172 3 0
    //   555: pop
    //   556: goto -231 -> 325
    //   559: astore 5
    //   561: aload 5
    //   563: invokevirtual 182	java/lang/ClassNotFoundException:printStackTrace	()V
    //   566: goto -241 -> 325
    //   569: ldc -67
    //   571: aload 5
    //   573: invokevirtual 166	java/lang/Class:isAssignableFrom	(Ljava/lang/Class;)Z
    //   576: ifeq -251 -> 325
    //   579: aload_0
    //   580: getfield 19	com/xiaomi/e/d/c:a	Ljava/util/Map;
    //   583: aload 6
    //   585: aload 5
    //   587: invokeinterface 172 3 0
    //   592: pop
    //   593: goto -268 -> 325
    //   596: iload 8
    //   598: iconst_1
    //   599: iadd
    //   600: istore 8
    //   602: goto -512 -> 90
    //   605: astore_2
    //   606: goto -209 -> 397
    //   609: astore_1
    //   610: aconst_null
    //   611: astore_2
    //   612: goto -219 -> 393
    //   615: iload 8
    //   617: iconst_1
    //   618: iadd
    //   619: istore 8
    //   621: goto -597 -> 24
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	624	0	this	c
    //   5	93	1	localObject1	Object
    //   392	6	1	localObject2	Object
    //   399	2	1	localException1	Exception
    //   609	1	1	localObject3	Object
    //   12	333	2	localObject4	Object
    //   351	43	2	localException2	Exception
    //   605	1	2	localException3	Exception
    //   611	1	2	localObject5	Object
    //   20	97	3	localObject6	Object
    //   45	442	4	localObject7	Object
    //   262	110	5	localObject8	Object
    //   382	3	5	localClassNotFoundException1	ClassNotFoundException
    //   493	53	5	localObject9	Object
    //   559	27	5	localClassNotFoundException2	ClassNotFoundException
    //   212	372	6	str1	String
    //   237	261	7	str2	String
    //   22	598	8	i	int
    //   166	171	9	j	int
    //   332	10	10	k	int
    //   85	10	11	m	int
    //   284	234	12	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   344	348	351	java/lang/Exception
    //   291	325	382	java/lang/ClassNotFoundException
    //   355	379	382	java/lang/ClassNotFoundException
    //   131	168	392	finally
    //   174	286	392	finally
    //   291	325	392	finally
    //   325	334	392	finally
    //   355	379	392	finally
    //   384	389	392	finally
    //   405	517	392	finally
    //   522	556	392	finally
    //   561	566	392	finally
    //   569	593	392	finally
    //   0	21	399	java/lang/Exception
    //   30	47	399	java/lang/Exception
    //   52	61	399	java/lang/Exception
    //   64	87	399	java/lang/Exception
    //   97	107	399	java/lang/Exception
    //   107	126	399	java/lang/Exception
    //   397	399	399	java/lang/Exception
    //   522	556	559	java/lang/ClassNotFoundException
    //   569	593	559	java/lang/ClassNotFoundException
    //   393	397	605	java/lang/Exception
    //   126	131	609	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\e\d\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */