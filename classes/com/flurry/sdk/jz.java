package com.flurry.sdk;

import java.io.File;

public class jz<T>
{
  private static final String a = jz.class.getSimpleName();
  private final File b;
  private final lb<T> c;
  
  public jz(File paramFile, String paramString, int paramInt, le<T> paramle)
  {
    this.b = paramFile;
    this.c = new kz(new ld(paramString, paramInt, paramle));
  }
  
  /* Error */
  public T a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore_2
    //   5: aload_0
    //   6: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   9: ifnonnull +5 -> 14
    //   12: aload_2
    //   13: areturn
    //   14: aload_0
    //   15: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   18: invokevirtual 52	java/io/File:exists	()Z
    //   21: ifne +34 -> 55
    //   24: iconst_5
    //   25: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   28: new 54	java/lang/StringBuilder
    //   31: dup
    //   32: ldc 56
    //   34: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: aload_0
    //   38: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   41: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   44: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokestatic 74	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   53: aconst_null
    //   54: areturn
    //   55: iconst_0
    //   56: istore 5
    //   58: new 76	java/io/FileInputStream
    //   61: dup
    //   62: aload_0
    //   63: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   66: invokespecial 79	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   69: astore_2
    //   70: aload_2
    //   71: astore_1
    //   72: aload_0
    //   73: getfield 41	com/flurry/sdk/jz:c	Lcom/flurry/sdk/lb;
    //   76: aload_2
    //   77: invokeinterface 84 2 0
    //   82: astore_3
    //   83: aload_3
    //   84: astore_1
    //   85: aload_2
    //   86: invokestatic 89	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   89: aload_1
    //   90: astore_2
    //   91: iload 5
    //   93: ifeq -81 -> 12
    //   96: iconst_3
    //   97: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   100: new 54	java/lang/StringBuilder
    //   103: dup
    //   104: ldc 91
    //   106: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   109: aload_0
    //   110: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   113: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   116: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: invokestatic 74	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   125: aload_0
    //   126: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   129: invokevirtual 94	java/io/File:delete	()Z
    //   132: pop
    //   133: aload_1
    //   134: areturn
    //   135: astore_3
    //   136: aconst_null
    //   137: astore_2
    //   138: aload_2
    //   139: astore_1
    //   140: iconst_3
    //   141: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   144: new 54	java/lang/StringBuilder
    //   147: dup
    //   148: ldc 96
    //   150: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   153: aload_0
    //   154: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   157: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   160: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: aload_3
    //   167: invokestatic 99	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   170: iconst_1
    //   171: istore 5
    //   173: aload_2
    //   174: invokestatic 89	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   177: aload 4
    //   179: astore_1
    //   180: goto -91 -> 89
    //   183: astore_1
    //   184: aconst_null
    //   185: astore_3
    //   186: aload_1
    //   187: astore_2
    //   188: aload_3
    //   189: invokestatic 89	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   192: aload_2
    //   193: athrow
    //   194: astore_2
    //   195: aload_1
    //   196: astore_3
    //   197: goto -9 -> 188
    //   200: astore_3
    //   201: goto -63 -> 138
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	204	0	this	jz
    //   71	109	1	localObject1	Object
    //   183	13	1	localObject2	Object
    //   4	189	2	localObject3	Object
    //   194	1	2	localObject4	Object
    //   82	2	3	localObject5	Object
    //   135	32	3	localException1	Exception
    //   185	12	3	localObject6	Object
    //   200	1	3	localException2	Exception
    //   1	177	4	localObject7	Object
    //   56	116	5	i	int
    // Exception table:
    //   from	to	target	type
    //   58	70	135	java/lang/Exception
    //   58	70	183	finally
    //   72	83	194	finally
    //   140	170	194	finally
    //   72	83	200	java/lang/Exception
  }
  
  /* Error */
  public void a(T paramT)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: aconst_null
    //   4: astore_3
    //   5: aconst_null
    //   6: astore 4
    //   8: aload_1
    //   9: ifnonnull +78 -> 87
    //   12: iconst_3
    //   13: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   16: new 54	java/lang/StringBuilder
    //   19: dup
    //   20: ldc 103
    //   22: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   29: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   32: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   38: invokestatic 74	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   41: iconst_1
    //   42: istore 5
    //   44: iload 5
    //   46: ifeq +40 -> 86
    //   49: iconst_3
    //   50: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   53: new 54	java/lang/StringBuilder
    //   56: dup
    //   57: ldc 91
    //   59: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   62: aload_0
    //   63: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   66: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   69: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: invokestatic 74	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   78: aload_0
    //   79: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   82: invokevirtual 94	java/io/File:delete	()Z
    //   85: pop
    //   86: return
    //   87: aload_3
    //   88: astore_2
    //   89: aload_0
    //   90: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   93: invokestatic 108	com/flurry/sdk/ls:a	(Ljava/io/File;)Z
    //   96: ifne +61 -> 157
    //   99: aload_3
    //   100: astore_2
    //   101: new 110	java/io/IOException
    //   104: dup
    //   105: ldc 112
    //   107: invokespecial 113	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   110: athrow
    //   111: astore_3
    //   112: aload 4
    //   114: astore_1
    //   115: aload_1
    //   116: astore_2
    //   117: iconst_3
    //   118: getstatic 22	com/flurry/sdk/jz:a	Ljava/lang/String;
    //   121: new 54	java/lang/StringBuilder
    //   124: dup
    //   125: ldc 115
    //   127: invokespecial 59	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   130: aload_0
    //   131: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   134: invokevirtual 62	java/io/File:getName	()Ljava/lang/String;
    //   137: invokevirtual 66	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 69	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: aload_3
    //   144: invokestatic 99	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   147: aload_1
    //   148: invokestatic 89	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   151: iconst_1
    //   152: istore 5
    //   154: goto -110 -> 44
    //   157: aload_3
    //   158: astore_2
    //   159: new 117	java/io/FileOutputStream
    //   162: dup
    //   163: aload_0
    //   164: getfield 29	com/flurry/sdk/jz:b	Ljava/io/File;
    //   167: invokespecial 118	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   170: astore_3
    //   171: aload_0
    //   172: getfield 41	com/flurry/sdk/jz:c	Lcom/flurry/sdk/lb;
    //   175: aload_3
    //   176: aload_1
    //   177: invokeinterface 121 3 0
    //   182: aload_3
    //   183: invokestatic 89	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   186: goto -142 -> 44
    //   189: astore_1
    //   190: aload_2
    //   191: invokestatic 89	com/flurry/sdk/lt:a	(Ljava/io/Closeable;)V
    //   194: aload_1
    //   195: athrow
    //   196: astore_1
    //   197: aload_3
    //   198: astore_2
    //   199: goto -9 -> 190
    //   202: astore_2
    //   203: aload_3
    //   204: astore_1
    //   205: aload_2
    //   206: astore_3
    //   207: goto -92 -> 115
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	210	0	this	jz
    //   0	210	1	paramT	T
    //   88	111	2	localObject1	Object
    //   202	4	2	localException1	Exception
    //   4	96	3	localObject2	Object
    //   111	47	3	localException2	Exception
    //   170	37	3	localObject3	Object
    //   6	107	4	localObject4	Object
    //   1	152	5	i	int
    // Exception table:
    //   from	to	target	type
    //   89	99	111	java/lang/Exception
    //   101	111	111	java/lang/Exception
    //   159	171	111	java/lang/Exception
    //   89	99	189	finally
    //   101	111	189	finally
    //   117	147	189	finally
    //   159	171	189	finally
    //   171	182	196	finally
    //   171	182	202	java/lang/Exception
  }
  
  public boolean b()
  {
    if (this.b == null) {
      return false;
    }
    return this.b.delete();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\jz.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */