package com.alipay.sdk.e;

public final class c
{
  static a a;
  
  /* Error */
  public static String a(org.apache.http.HttpResponse paramHttpResponse)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokeinterface 15 1 0
    //   6: astore_1
    //   7: aload_1
    //   8: invokeinterface 21 1 0
    //   13: istore 6
    //   15: aload_0
    //   16: invokeinterface 25 1 0
    //   21: astore_3
    //   22: aconst_null
    //   23: astore_0
    //   24: aload_3
    //   25: invokeinterface 31 1 0
    //   30: astore_2
    //   31: aload_2
    //   32: astore_0
    //   33: aload_1
    //   34: invokeinterface 21 1 0
    //   39: sipush 200
    //   42: if_icmpne +7 -> 49
    //   45: aload_2
    //   46: ifnonnull +62 -> 108
    //   49: aload_2
    //   50: astore_0
    //   51: new 33	com/alipay/sdk/d/a
    //   54: dup
    //   55: new 35	java/lang/StringBuilder
    //   58: dup
    //   59: invokespecial 39	java/lang/StringBuilder:<init>	()V
    //   62: iload 6
    //   64: invokevirtual 43	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   67: ldc 45
    //   69: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: aload_1
    //   73: invokeinterface 52 1 0
    //   78: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: invokespecial 58	com/alipay/sdk/d/a:<init>	(Ljava/lang/String;)V
    //   87: athrow
    //   88: astore_1
    //   89: aload_0
    //   90: astore_2
    //   91: new 33	com/alipay/sdk/d/a
    //   94: dup
    //   95: invokespecial 59	com/alipay/sdk/d/a:<init>	()V
    //   98: athrow
    //   99: astore_0
    //   100: aload_2
    //   101: astore_1
    //   102: aload_1
    //   103: invokevirtual 64	java/io/InputStream:close	()V
    //   106: aload_0
    //   107: athrow
    //   108: aload_2
    //   109: astore_0
    //   110: aload_3
    //   111: invokeinterface 68 1 0
    //   116: astore 4
    //   118: aload_2
    //   119: astore_1
    //   120: aload 4
    //   122: ifnull +33 -> 155
    //   125: aload_2
    //   126: astore_0
    //   127: aload_2
    //   128: astore_1
    //   129: aload 4
    //   131: invokeinterface 73 1 0
    //   136: ldc 75
    //   138: invokevirtual 81	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   141: ifeq +14 -> 155
    //   144: aload_2
    //   145: astore_0
    //   146: new 83	java/util/zip/GZIPInputStream
    //   149: dup
    //   150: aload_2
    //   151: invokespecial 86	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   154: astore_1
    //   155: aload_1
    //   156: astore_0
    //   157: aload_1
    //   158: astore_2
    //   159: aload_3
    //   160: invokeinterface 90 1 0
    //   165: l2i
    //   166: istore 6
    //   168: iload 6
    //   170: ifge +139 -> 309
    //   173: sipush 4096
    //   176: istore 6
    //   178: aload_1
    //   179: astore_0
    //   180: aload_1
    //   181: astore_2
    //   182: aload_3
    //   183: invokestatic 96	org/apache/http/util/EntityUtils:getContentCharSet	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   186: astore 4
    //   188: aload 4
    //   190: astore_3
    //   191: aload 4
    //   193: ifnonnull +6 -> 199
    //   196: ldc 98
    //   198: astore_3
    //   199: aload_1
    //   200: astore_0
    //   201: aload_1
    //   202: astore_2
    //   203: new 100	java/io/InputStreamReader
    //   206: dup
    //   207: aload_1
    //   208: aload_3
    //   209: invokespecial 103	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   212: astore_3
    //   213: aload_1
    //   214: astore_0
    //   215: aload_1
    //   216: astore_2
    //   217: new 105	org/apache/http/util/CharArrayBuffer
    //   220: dup
    //   221: iload 6
    //   223: invokespecial 108	org/apache/http/util/CharArrayBuffer:<init>	(I)V
    //   226: astore 4
    //   228: aload_1
    //   229: astore_0
    //   230: aload_1
    //   231: astore_2
    //   232: sipush 1024
    //   235: newarray <illegal type>
    //   237: astore 5
    //   239: aload_1
    //   240: astore_0
    //   241: aload_1
    //   242: astore_2
    //   243: aload_3
    //   244: aload 5
    //   246: invokevirtual 114	java/io/Reader:read	([C)I
    //   249: istore 6
    //   251: iload 6
    //   253: iconst_m1
    //   254: if_icmpeq +20 -> 274
    //   257: aload_1
    //   258: astore_0
    //   259: aload_1
    //   260: astore_2
    //   261: aload 4
    //   263: aload 5
    //   265: iconst_0
    //   266: iload 6
    //   268: invokevirtual 117	org/apache/http/util/CharArrayBuffer:append	([CII)V
    //   271: goto -32 -> 239
    //   274: aload_1
    //   275: astore_0
    //   276: aload_1
    //   277: astore_2
    //   278: aload 4
    //   280: invokevirtual 118	org/apache/http/util/CharArrayBuffer:toString	()Ljava/lang/String;
    //   283: astore_3
    //   284: aload_1
    //   285: invokevirtual 64	java/io/InputStream:close	()V
    //   288: aload_3
    //   289: areturn
    //   290: astore_0
    //   291: aload_3
    //   292: areturn
    //   293: astore_1
    //   294: goto -188 -> 106
    //   297: astore_0
    //   298: aconst_null
    //   299: astore_1
    //   300: goto -198 -> 102
    //   303: astore_0
    //   304: aload_2
    //   305: astore_1
    //   306: goto -204 -> 102
    //   309: goto -131 -> 178
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	312	0	paramHttpResponse	org.apache.http.HttpResponse
    //   6	67	1	localStatusLine	org.apache.http.StatusLine
    //   88	1	1	localException1	Exception
    //   101	184	1	localObject1	Object
    //   293	1	1	localException2	Exception
    //   299	7	1	localObject2	Object
    //   30	275	2	localObject3	Object
    //   21	271	3	localObject4	Object
    //   116	163	4	localObject5	Object
    //   237	27	5	arrayOfChar	char[]
    //   13	254	6	i	int
    // Exception table:
    //   from	to	target	type
    //   24	31	88	java/lang/Exception
    //   33	45	88	java/lang/Exception
    //   51	88	88	java/lang/Exception
    //   110	118	88	java/lang/Exception
    //   129	144	88	java/lang/Exception
    //   146	155	88	java/lang/Exception
    //   159	168	88	java/lang/Exception
    //   182	188	88	java/lang/Exception
    //   203	213	88	java/lang/Exception
    //   217	228	88	java/lang/Exception
    //   232	239	88	java/lang/Exception
    //   243	251	88	java/lang/Exception
    //   261	271	88	java/lang/Exception
    //   278	284	88	java/lang/Exception
    //   91	99	99	finally
    //   159	168	99	finally
    //   182	188	99	finally
    //   203	213	99	finally
    //   217	228	99	finally
    //   232	239	99	finally
    //   243	251	99	finally
    //   261	271	99	finally
    //   278	284	99	finally
    //   284	288	290	java/lang/Exception
    //   102	106	293	java/lang/Exception
    //   24	31	297	finally
    //   33	45	303	finally
    //   51	88	303	finally
    //   110	118	303	finally
    //   129	144	303	finally
    //   146	155	303	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\sdk\e\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */