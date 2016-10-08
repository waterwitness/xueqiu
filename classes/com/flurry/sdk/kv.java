package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

public class kv
{
  public static final Integer a = Integer.valueOf(50);
  private static final String d = kv.class.getSimpleName();
  String b;
  LinkedHashMap<String, List<String>> c;
  
  public kv(String paramString)
  {
    a(paramString);
  }
  
  private void a(String paramString1, List<String> paramList, String paramString2)
  {
    try
    {
      lt.b();
      kg.a(5, d, "Saving Index File for " + paramString1 + " file name:" + js.a().c().getFileStreamPath(g(paramString1)));
      paramString1 = new jz(js.a().c().getFileStreamPath(g(paramString1)), paramString2, 1, new le()
      {
        public lb<List<kw>> a(int paramAnonymousInt)
        {
          return new la(new kw.a());
        }
      });
      paramString2 = new ArrayList();
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        paramString2.add(new kw((String)paramList.next()));
      }
      paramString1.a(paramString2);
    }
    finally {}
  }
  
  private void a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      lt.b();
      kg.a(5, d, "Saving Block File for " + paramString + " file name:" + js.a().c().getFileStreamPath(ku.a(paramString)));
      new jz(js.a().c().getFileStreamPath(ku.a(paramString)), ".yflurrydatasenderblock.", 1, new le()
      {
        public lb<ku> a(int paramAnonymousInt)
        {
          return new ku.a();
        }
      }).a(new ku(paramArrayOfByte));
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  private void c()
  {
    try
    {
      LinkedList localLinkedList = new LinkedList(this.c.keySet());
      b();
      if (!localLinkedList.isEmpty()) {
        a(this.b, localLinkedList, this.b);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private void e(String paramString)
  {
    this.c = new LinkedHashMap();
    Object localObject1 = new ArrayList();
    Object localObject2;
    if (j(paramString))
    {
      localObject2 = k(paramString);
      if ((localObject2 != null) && (((List)localObject2).size() > 0))
      {
        ((List)localObject1).addAll((Collection)localObject2);
        localObject2 = ((List)localObject1).iterator();
        while (((Iterator)localObject2).hasNext()) {
          f((String)((Iterator)localObject2).next());
        }
      }
      i(paramString);
    }
    for (;;)
    {
      paramString = ((List)localObject1).iterator();
      while (paramString.hasNext())
      {
        localObject1 = (String)paramString.next();
        localObject2 = h((String)localObject1);
        if (localObject2 != null)
        {
          this.c.put(localObject1, localObject2);
          continue;
          paramString = (List)new jz(js.a().c().getFileStreamPath(g(this.b)), paramString, 1, new le()
          {
            public lb<List<kw>> a(int paramAnonymousInt)
            {
              return new la(new kw.a());
            }
          }).a();
          if (paramString != null) {
            break label194;
          }
          kg.c(d, "New main file also not found. returning..");
        }
      }
      return;
      label194:
      paramString = paramString.iterator();
      while (paramString.hasNext()) {
        ((List)localObject1).add(((kw)paramString.next()).a());
      }
    }
  }
  
  private void f(String paramString)
  {
    List localList = k(paramString);
    if (localList == null) {
      kg.c(d, "No old file to replace");
    }
    do
    {
      return;
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        byte[] arrayOfByte = m(str);
        if (arrayOfByte == null)
        {
          kg.a(6, d, "File does not exist");
        }
        else
        {
          a(str, arrayOfByte);
          l(str);
        }
      }
    } while (localList == null);
    a(paramString, localList, ".YFlurrySenderIndex.info.");
    i(paramString);
  }
  
  private String g(String paramString)
  {
    return ".YFlurrySenderIndex.info." + paramString;
  }
  
  private List<String> h(String paramString)
  {
    try
    {
      lt.b();
      kg.a(5, d, "Reading Index File for " + paramString + " file name:" + js.a().c().getFileStreamPath(g(paramString)));
      Object localObject = (List)new jz(js.a().c().getFileStreamPath(g(paramString)), ".YFlurrySenderIndex.info.", 1, new le()
      {
        public lb<List<kw>> a(int paramAnonymousInt)
        {
          return new la(new kw.a());
        }
      }).a();
      paramString = new ArrayList();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        paramString.add(((kw)((Iterator)localObject).next()).a());
      }
    }
    finally {}
    return paramString;
  }
  
  private void i(String paramString)
  {
    lt.b();
    kg.a(5, d, "Deleting Index File for " + paramString + " file name:" + js.a().c().getFileStreamPath(new StringBuilder(".FlurrySenderIndex.info.").append(paramString).toString()));
    File localFile = js.a().c().getFileStreamPath(".FlurrySenderIndex.info." + paramString);
    if (localFile.exists())
    {
      boolean bool = localFile.delete();
      kg.a(5, d, "Found file for " + paramString + ". Deleted - " + bool);
    }
  }
  
  private boolean j(String paramString)
  {
    try
    {
      File localFile = js.a().c().getFileStreamPath(".FlurrySenderIndex.info." + paramString);
      kg.a(5, d, "isOldIndexFilePresent: for " + paramString + localFile.exists());
      boolean bool = localFile.exists();
      return bool;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  /* Error */
  private List<String> k(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: invokestatic 56	com/flurry/sdk/lt:b	()V
    //   7: iconst_5
    //   8: getstatic 36	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   11: new 58	java/lang/StringBuilder
    //   14: dup
    //   15: ldc -26
    //   17: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   24: ldc 68
    //   26: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: invokestatic 73	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   32: invokevirtual 76	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   35: new 58	java/lang/StringBuilder
    //   38: dup
    //   39: ldc -20
    //   41: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   44: aload_1
    //   45: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   51: invokevirtual 86	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   54: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   57: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   60: invokestatic 97	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   63: invokestatic 73	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   66: invokevirtual 76	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   69: new 58	java/lang/StringBuilder
    //   72: dup
    //   73: ldc -20
    //   75: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   78: aload_1
    //   79: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: invokevirtual 86	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   88: astore_2
    //   89: aload_2
    //   90: invokevirtual 241	java/io/File:exists	()Z
    //   93: ifeq +251 -> 344
    //   96: iconst_5
    //   97: getstatic 36	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   100: new 58	java/lang/StringBuilder
    //   103: dup
    //   104: ldc -26
    //   106: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   109: aload_1
    //   110: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   113: ldc_w 257
    //   116: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: invokestatic 97	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   125: new 259	java/io/DataInputStream
    //   128: dup
    //   129: new 261	java/io/FileInputStream
    //   132: dup
    //   133: aload_2
    //   134: invokespecial 264	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   137: invokespecial 267	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   140: astore 4
    //   142: aload 4
    //   144: astore_2
    //   145: aload 4
    //   147: invokevirtual 270	java/io/DataInputStream:readUnsignedShort	()I
    //   150: istore 6
    //   152: iload 6
    //   154: ifne +14 -> 168
    //   157: aload 4
    //   159: invokestatic 273	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   162: aload_3
    //   163: astore_1
    //   164: aload_0
    //   165: monitorexit
    //   166: aload_1
    //   167: areturn
    //   168: aload 4
    //   170: astore_2
    //   171: new 107	java/util/ArrayList
    //   174: dup
    //   175: iload 6
    //   177: invokespecial 276	java/util/ArrayList:<init>	(I)V
    //   180: astore_1
    //   181: iconst_0
    //   182: istore 5
    //   184: iload 5
    //   186: iload 6
    //   188: if_icmpge +96 -> 284
    //   191: aload 4
    //   193: astore_2
    //   194: aload 4
    //   196: invokevirtual 270	java/io/DataInputStream:readUnsignedShort	()I
    //   199: istore 7
    //   201: aload 4
    //   203: astore_2
    //   204: iconst_4
    //   205: getstatic 36	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   208: new 58	java/lang/StringBuilder
    //   211: dup
    //   212: ldc_w 278
    //   215: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   218: iload 5
    //   220: invokevirtual 281	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   223: ldc_w 283
    //   226: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   229: iload 7
    //   231: invokevirtual 281	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   234: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   237: invokestatic 97	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   240: aload 4
    //   242: astore_2
    //   243: iload 7
    //   245: newarray <illegal type>
    //   247: astore_3
    //   248: aload 4
    //   250: astore_2
    //   251: aload 4
    //   253: aload_3
    //   254: invokevirtual 286	java/io/DataInputStream:readFully	([B)V
    //   257: aload 4
    //   259: astore_2
    //   260: aload_1
    //   261: new 128	java/lang/String
    //   264: dup
    //   265: aload_3
    //   266: invokespecial 287	java/lang/String:<init>	([B)V
    //   269: invokeinterface 133 2 0
    //   274: pop
    //   275: iload 5
    //   277: iconst_1
    //   278: iadd
    //   279: istore 5
    //   281: goto -97 -> 184
    //   284: aload 4
    //   286: astore_2
    //   287: aload 4
    //   289: invokevirtual 270	java/io/DataInputStream:readUnsignedShort	()I
    //   292: pop
    //   293: aload 4
    //   295: invokestatic 273	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   298: goto -134 -> 164
    //   301: astore_3
    //   302: aconst_null
    //   303: astore 4
    //   305: aconst_null
    //   306: astore_1
    //   307: aload 4
    //   309: astore_2
    //   310: bipush 6
    //   312: getstatic 36	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   315: ldc_w 289
    //   318: aload_3
    //   319: invokestatic 292	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   322: aload 4
    //   324: invokestatic 273	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   327: goto -29 -> 298
    //   330: astore_1
    //   331: aload_0
    //   332: monitorexit
    //   333: aload_1
    //   334: athrow
    //   335: astore_1
    //   336: aconst_null
    //   337: astore_2
    //   338: aload_2
    //   339: invokestatic 273	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   342: aload_1
    //   343: athrow
    //   344: iconst_5
    //   345: getstatic 36	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   348: ldc_w 294
    //   351: invokestatic 97	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   354: aconst_null
    //   355: astore_1
    //   356: goto -58 -> 298
    //   359: astore_1
    //   360: goto -22 -> 338
    //   363: astore_3
    //   364: aconst_null
    //   365: astore_1
    //   366: goto -59 -> 307
    //   369: astore_3
    //   370: goto -63 -> 307
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	373	0	this	kv
    //   0	373	1	paramString	String
    //   88	251	2	localObject	Object
    //   1	265	3	arrayOfByte	byte[]
    //   301	18	3	localThrowable1	Throwable
    //   363	1	3	localThrowable2	Throwable
    //   369	1	3	localThrowable3	Throwable
    //   140	183	4	localDataInputStream	java.io.DataInputStream
    //   182	98	5	i	int
    //   150	39	6	j	int
    //   199	45	7	k	int
    // Exception table:
    //   from	to	target	type
    //   125	142	301	java/lang/Throwable
    //   4	125	330	finally
    //   157	162	330	finally
    //   293	298	330	finally
    //   322	327	330	finally
    //   338	344	330	finally
    //   344	354	330	finally
    //   125	142	335	finally
    //   145	152	359	finally
    //   171	181	359	finally
    //   194	201	359	finally
    //   204	240	359	finally
    //   243	248	359	finally
    //   251	257	359	finally
    //   260	275	359	finally
    //   287	293	359	finally
    //   310	322	359	finally
    //   145	152	363	java/lang/Throwable
    //   171	181	363	java/lang/Throwable
    //   194	201	369	java/lang/Throwable
    //   204	240	369	java/lang/Throwable
    //   243	248	369	java/lang/Throwable
    //   251	257	369	java/lang/Throwable
    //   260	275	369	java/lang/Throwable
    //   287	293	369	java/lang/Throwable
  }
  
  private void l(String paramString)
  {
    lt.b();
    kg.a(5, d, "Deleting  block File for " + paramString + " file name:" + js.a().c().getFileStreamPath(new StringBuilder(".flurrydatasenderblock.").append(paramString).toString()));
    File localFile = js.a().c().getFileStreamPath(".flurrydatasenderblock." + paramString);
    if (localFile.exists())
    {
      boolean bool = localFile.delete();
      kg.a(5, d, "Found file for " + paramString + ". Deleted - " + bool);
    }
  }
  
  /* Error */
  private byte[] m(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 4
    //   6: invokestatic 56	com/flurry/sdk/lt:b	()V
    //   9: iconst_5
    //   10: getstatic 36	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   13: new 58	java/lang/StringBuilder
    //   16: dup
    //   17: ldc_w 300
    //   20: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   23: aload_1
    //   24: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: ldc 68
    //   29: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokestatic 73	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   35: invokevirtual 76	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   38: new 58	java/lang/StringBuilder
    //   41: dup
    //   42: ldc_w 298
    //   45: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   48: aload_1
    //   49: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   55: invokevirtual 86	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   58: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   61: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   64: invokestatic 97	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   67: invokestatic 73	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   70: invokevirtual 76	com/flurry/sdk/js:c	()Landroid/content/Context;
    //   73: new 58	java/lang/StringBuilder
    //   76: dup
    //   77: ldc_w 298
    //   80: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   83: aload_1
    //   84: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   90: invokevirtual 86	android/content/Context:getFileStreamPath	(Ljava/lang/String;)Ljava/io/File;
    //   93: astore_2
    //   94: aload_2
    //   95: invokevirtual 241	java/io/File:exists	()Z
    //   98: ifeq +146 -> 244
    //   101: iconst_5
    //   102: getstatic 36	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   105: new 58	java/lang/StringBuilder
    //   108: dup
    //   109: ldc -26
    //   111: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   114: aload_1
    //   115: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: ldc_w 257
    //   121: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: invokevirtual 92	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   127: invokestatic 97	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   130: new 259	java/io/DataInputStream
    //   133: dup
    //   134: new 261	java/io/FileInputStream
    //   137: dup
    //   138: aload_2
    //   139: invokespecial 264	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   142: invokespecial 267	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   145: astore_3
    //   146: aload_3
    //   147: astore_1
    //   148: aload 5
    //   150: astore_2
    //   151: aload_3
    //   152: invokevirtual 270	java/io/DataInputStream:readUnsignedShort	()I
    //   155: istore 6
    //   157: iload 6
    //   159: ifne +9 -> 168
    //   162: aload_3
    //   163: invokestatic 273	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   166: aconst_null
    //   167: areturn
    //   168: aload_3
    //   169: astore_1
    //   170: aload 5
    //   172: astore_2
    //   173: iload 6
    //   175: newarray <illegal type>
    //   177: astore 4
    //   179: aload_3
    //   180: astore_1
    //   181: aload 4
    //   183: astore_2
    //   184: aload_3
    //   185: aload 4
    //   187: invokevirtual 286	java/io/DataInputStream:readFully	([B)V
    //   190: aload_3
    //   191: astore_1
    //   192: aload 4
    //   194: astore_2
    //   195: aload_3
    //   196: invokevirtual 270	java/io/DataInputStream:readUnsignedShort	()I
    //   199: pop
    //   200: aload_3
    //   201: invokestatic 273	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   204: aload 4
    //   206: areturn
    //   207: astore 5
    //   209: aconst_null
    //   210: astore_2
    //   211: aload_2
    //   212: astore_1
    //   213: bipush 6
    //   215: getstatic 36	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   218: ldc_w 289
    //   221: aload 5
    //   223: invokestatic 292	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   226: aload_2
    //   227: invokestatic 273	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   230: aload 4
    //   232: areturn
    //   233: astore_1
    //   234: aconst_null
    //   235: astore_3
    //   236: aload_1
    //   237: astore_2
    //   238: aload_3
    //   239: invokestatic 273	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   242: aload_2
    //   243: athrow
    //   244: iconst_4
    //   245: getstatic 36	com/flurry/sdk/kv:d	Ljava/lang/String;
    //   248: ldc_w 294
    //   251: invokestatic 97	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   254: aconst_null
    //   255: areturn
    //   256: astore_2
    //   257: aload_1
    //   258: astore_3
    //   259: goto -21 -> 238
    //   262: astore 5
    //   264: aload_2
    //   265: astore 4
    //   267: aload_3
    //   268: astore_2
    //   269: goto -58 -> 211
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	272	0	this	kv
    //   0	272	1	paramString	String
    //   93	150	2	localObject1	Object
    //   256	9	2	localObject2	Object
    //   268	1	2	localObject3	Object
    //   145	123	3	localObject4	Object
    //   4	262	4	localObject5	Object
    //   1	170	5	localObject6	Object
    //   207	15	5	localThrowable1	Throwable
    //   262	1	5	localThrowable2	Throwable
    //   155	19	6	i	int
    // Exception table:
    //   from	to	target	type
    //   130	146	207	java/lang/Throwable
    //   130	146	233	finally
    //   151	157	256	finally
    //   173	179	256	finally
    //   184	190	256	finally
    //   195	200	256	finally
    //   213	226	256	finally
    //   151	157	262	java/lang/Throwable
    //   173	179	262	java/lang/Throwable
    //   184	190	262	java/lang/Throwable
    //   195	200	262	java/lang/Throwable
  }
  
  public List<String> a()
  {
    return new ArrayList(this.c.keySet());
  }
  
  public void a(ku paramku, String paramString)
  {
    int i = 0;
    for (;;)
    {
      try
      {
        kg.a(4, d, "addBlockInfo" + paramString);
        String str = paramku.a();
        paramku = (List)this.c.get(paramString);
        if (paramku == null)
        {
          kg.a(4, d, "New Data Key");
          paramku = new LinkedList();
          i = 1;
          paramku.add(str);
          if (paramku.size() > a.intValue())
          {
            b((String)paramku.get(0));
            paramku.remove(0);
          }
          this.c.put(paramString, paramku);
          a(paramString, paramku, ".YFlurrySenderIndex.info.");
          if (i != 0) {
            c();
          }
          return;
        }
      }
      finally {}
    }
  }
  
  void a(String paramString)
  {
    this.b = (paramString + "Main");
    e(this.b);
  }
  
  public boolean a(String paramString1, String paramString2)
  {
    List localList = (List)this.c.get(paramString2);
    boolean bool = false;
    if (localList != null)
    {
      b(paramString1);
      bool = localList.remove(paramString1);
    }
    if ((localList != null) && (!localList.isEmpty()))
    {
      this.c.put(paramString2, localList);
      a(paramString2, localList, ".YFlurrySenderIndex.info.");
      return bool;
    }
    d(paramString2);
    return bool;
  }
  
  void b()
  {
    new jz(js.a().c().getFileStreamPath(g(this.b)), ".YFlurrySenderIndex.info.", 1, new le()
    {
      public lb<List<kw>> a(int paramAnonymousInt)
      {
        return new la(new kw.a());
      }
    }).b();
  }
  
  boolean b(String paramString)
  {
    new jz(js.a().c().getFileStreamPath(ku.a(paramString)), ".yflurrydatasenderblock.", 1, new le()
    {
      public lb<ku> a(int paramAnonymousInt)
      {
        return new ku.a();
      }
    }).b();
  }
  
  public List<String> c(String paramString)
  {
    return (List)this.c.get(paramString);
  }
  
  public boolean d(String paramString)
  {
    jz localjz;
    try
    {
      lt.b();
      localjz = new jz(js.a().c().getFileStreamPath(g(paramString)), ".YFlurrySenderIndex.info.", 1, new le()
      {
        public lb<List<kw>> a(int paramAnonymousInt)
        {
          return new la(new kw.a());
        }
      });
      Object localObject = c(paramString);
      if (localObject != null)
      {
        kg.a(4, d, "discardOutdatedBlocksForDataKey: notSentBlocks = " + ((List)localObject).size());
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          b(str);
          kg.a(4, d, "discardOutdatedBlocksForDataKey: removed block = " + str);
        }
      }
      this.c.remove(paramString);
    }
    finally {}
    boolean bool = localjz.b();
    c();
    return bool;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\kv.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */