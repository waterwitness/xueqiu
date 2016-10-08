package com.f.a.b.a;

import java.io.File;
import java.util.HashMap;

public final class e
{
  private static final Object c = new Object();
  private final Object a = new Object();
  private File b;
  private HashMap<File, f> d = new HashMap();
  
  public e(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
    {
      this.b = new File(paramString);
      return;
    }
    throw new RuntimeException("Directory can not be empty");
  }
  
  private File b()
  {
    synchronized (this.a)
    {
      File localFile = this.b;
      return localFile;
    }
  }
  
  private static File b(File paramFile)
  {
    return new File(paramFile.getPath() + ".bak");
  }
  
  /* Error */
  public final b a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 75	com/f/a/b/a/e:b	()Ljava/io/File;
    //   4: astore_2
    //   5: new 52	java/lang/StringBuilder
    //   8: dup
    //   9: invokespecial 53	java/lang/StringBuilder:<init>	()V
    //   12: aload_1
    //   13: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: ldc 77
    //   18: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   24: astore_1
    //   25: aload_1
    //   26: getstatic 81	java/io/File:separatorChar	C
    //   29: invokevirtual 85	java/lang/String:indexOf	(I)I
    //   32: ifge +48 -> 80
    //   35: new 36	java/io/File
    //   38: dup
    //   39: aload_2
    //   40: aload_1
    //   41: invokespecial 88	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   44: astore 4
    //   46: getstatic 19	com/f/a/b/a/e:c	Ljava/lang/Object;
    //   49: astore_1
    //   50: aload_1
    //   51: monitorenter
    //   52: aload_0
    //   53: getfield 28	com/f/a/b/a/e:d	Ljava/util/HashMap;
    //   56: aload 4
    //   58: invokevirtual 92	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   61: checkcast 94	com/f/a/b/a/f
    //   64: astore_3
    //   65: aload_3
    //   66: ifnull +43 -> 109
    //   69: aload_3
    //   70: invokevirtual 97	com/f/a/b/a/f:d	()Z
    //   73: ifne +36 -> 109
    //   76: aload_1
    //   77: monitorexit
    //   78: aload_3
    //   79: areturn
    //   80: new 99	java/lang/IllegalArgumentException
    //   83: dup
    //   84: new 52	java/lang/StringBuilder
    //   87: dup
    //   88: ldc 101
    //   90: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   93: aload_1
    //   94: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: ldc 104
    //   99: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   105: invokespecial 105	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   108: athrow
    //   109: aload_1
    //   110: monitorexit
    //   111: aload 4
    //   113: invokestatic 48	com/f/a/b/a/e:b	(Ljava/io/File;)Ljava/io/File;
    //   116: astore_1
    //   117: aload_1
    //   118: invokevirtual 108	java/io/File:exists	()Z
    //   121: ifeq +16 -> 137
    //   124: aload 4
    //   126: invokevirtual 111	java/io/File:delete	()Z
    //   129: pop
    //   130: aload_1
    //   131: aload 4
    //   133: invokevirtual 115	java/io/File:renameTo	(Ljava/io/File;)Z
    //   136: pop
    //   137: aload 4
    //   139: invokevirtual 108	java/io/File:exists	()Z
    //   142: ifeq +9 -> 151
    //   145: aload 4
    //   147: invokevirtual 118	java/io/File:canRead	()Z
    //   150: pop
    //   151: aload 4
    //   153: invokevirtual 108	java/io/File:exists	()Z
    //   156: ifeq +230 -> 386
    //   159: aload 4
    //   161: invokevirtual 118	java/io/File:canRead	()Z
    //   164: ifeq +222 -> 386
    //   167: new 120	java/io/FileInputStream
    //   170: dup
    //   171: aload 4
    //   173: invokespecial 123	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   176: astore_2
    //   177: invokestatic 129	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   180: astore_1
    //   181: aload_1
    //   182: aload_2
    //   183: aconst_null
    //   184: invokeinterface 135 3 0
    //   189: aload_1
    //   190: iconst_1
    //   191: anewarray 30	java/lang/String
    //   194: invokestatic 140	com/f/a/b/a/h:a	(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;
    //   197: checkcast 25	java/util/HashMap
    //   200: astore_1
    //   201: aload_2
    //   202: invokevirtual 143	java/io/FileInputStream:close	()V
    //   205: getstatic 19	com/f/a/b/a/e:c	Ljava/lang/Object;
    //   208: astore 5
    //   210: aload 5
    //   212: monitorenter
    //   213: aload_3
    //   214: ifnull +104 -> 318
    //   217: aload_3
    //   218: astore_2
    //   219: aload_1
    //   220: ifnull +14 -> 234
    //   223: aload_3
    //   224: monitorenter
    //   225: aload_3
    //   226: aload_1
    //   227: putfield 146	com/f/a/b/a/f:a	Ljava/util/Map;
    //   230: aload_3
    //   231: monitorexit
    //   232: aload_3
    //   233: astore_2
    //   234: aload 5
    //   236: monitorexit
    //   237: aload_2
    //   238: areturn
    //   239: astore_1
    //   240: aload 5
    //   242: monitorexit
    //   243: aload_1
    //   244: athrow
    //   245: astore_2
    //   246: aload_1
    //   247: monitorexit
    //   248: aload_2
    //   249: athrow
    //   250: astore_1
    //   251: aconst_null
    //   252: astore_1
    //   253: new 120	java/io/FileInputStream
    //   256: dup
    //   257: aload 4
    //   259: invokespecial 123	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   262: astore_2
    //   263: aload_2
    //   264: invokevirtual 149	java/io/FileInputStream:available	()I
    //   267: newarray <illegal type>
    //   269: astore 5
    //   271: aload_2
    //   272: aload 5
    //   274: invokevirtual 153	java/io/FileInputStream:read	([B)I
    //   277: pop
    //   278: new 30	java/lang/String
    //   281: dup
    //   282: aload 5
    //   284: iconst_0
    //   285: aload 5
    //   287: arraylength
    //   288: ldc -101
    //   290: invokespecial 158	java/lang/String:<init>	([BIILjava/lang/String;)V
    //   293: pop
    //   294: goto -89 -> 205
    //   297: astore_2
    //   298: aload_2
    //   299: invokevirtual 161	java/io/FileNotFoundException:printStackTrace	()V
    //   302: goto -97 -> 205
    //   305: astore_2
    //   306: aload_2
    //   307: invokevirtual 162	java/io/IOException:printStackTrace	()V
    //   310: goto -105 -> 205
    //   313: astore_1
    //   314: aload_3
    //   315: monitorexit
    //   316: aload_1
    //   317: athrow
    //   318: aload_0
    //   319: getfield 28	com/f/a/b/a/e:d	Ljava/util/HashMap;
    //   322: aload 4
    //   324: invokevirtual 92	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   327: checkcast 94	com/f/a/b/a/f
    //   330: astore_3
    //   331: aload_3
    //   332: astore_2
    //   333: aload_3
    //   334: ifnonnull -100 -> 234
    //   337: new 94	com/f/a/b/a/f
    //   340: dup
    //   341: aload 4
    //   343: aload_1
    //   344: invokespecial 165	com/f/a/b/a/f:<init>	(Ljava/io/File;Ljava/util/Map;)V
    //   347: astore_2
    //   348: aload_0
    //   349: getfield 28	com/f/a/b/a/e:d	Ljava/util/HashMap;
    //   352: aload 4
    //   354: aload_2
    //   355: invokevirtual 169	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   358: pop
    //   359: goto -125 -> 234
    //   362: astore_1
    //   363: aconst_null
    //   364: astore_1
    //   365: goto -160 -> 205
    //   368: astore_2
    //   369: goto -164 -> 205
    //   372: astore_1
    //   373: aconst_null
    //   374: astore_1
    //   375: goto -170 -> 205
    //   378: astore_2
    //   379: goto -174 -> 205
    //   382: astore_2
    //   383: goto -130 -> 253
    //   386: aconst_null
    //   387: astore_1
    //   388: goto -183 -> 205
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	391	0	this	e
    //   0	391	1	paramString	String
    //   4	234	2	localObject1	Object
    //   245	4	2	localObject2	Object
    //   262	10	2	localFileInputStream	java.io.FileInputStream
    //   297	2	2	localFileNotFoundException1	java.io.FileNotFoundException
    //   305	2	2	localIOException1	java.io.IOException
    //   332	23	2	localObject3	Object
    //   368	1	2	localIOException2	java.io.IOException
    //   378	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   382	1	2	localXmlPullParserException	org.xmlpull.v1.XmlPullParserException
    //   64	270	3	localf	f
    //   44	309	4	localFile	File
    //   208	78	5	localObject4	Object
    // Exception table:
    //   from	to	target	type
    //   223	225	239	finally
    //   234	237	239	finally
    //   240	243	239	finally
    //   316	318	239	finally
    //   318	331	239	finally
    //   337	359	239	finally
    //   52	65	245	finally
    //   69	78	245	finally
    //   109	111	245	finally
    //   246	248	245	finally
    //   167	201	250	org/xmlpull/v1/XmlPullParserException
    //   253	294	297	java/io/FileNotFoundException
    //   253	294	305	java/io/IOException
    //   225	232	313	finally
    //   314	316	313	finally
    //   167	201	362	java/io/IOException
    //   201	205	368	java/io/IOException
    //   167	201	372	java/io/FileNotFoundException
    //   201	205	378	java/io/FileNotFoundException
    //   201	205	382	org/xmlpull/v1/XmlPullParserException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\f\a\b\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */