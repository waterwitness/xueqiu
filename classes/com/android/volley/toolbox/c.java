package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.b;
import com.android.volley.z;
import java.io.EOFException;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class c
  implements b
{
  private final Map<String, d> a = new LinkedHashMap(16, 0.75F, true);
  private long b = 0L;
  private final File c;
  private final int d;
  
  private c(File paramFile)
  {
    this.c = paramFile;
    this.d = 5242880;
  }
  
  public c(File paramFile, byte paramByte)
  {
    this(paramFile);
  }
  
  static int a(InputStream paramInputStream)
  {
    return e(paramInputStream) << 0 | 0x0 | e(paramInputStream) << 8 | e(paramInputStream) << 16 | e(paramInputStream) << 24;
  }
  
  static void a(OutputStream paramOutputStream, int paramInt)
  {
    paramOutputStream.write(paramInt >> 0 & 0xFF);
    paramOutputStream.write(paramInt >> 8 & 0xFF);
    paramOutputStream.write(paramInt >> 16 & 0xFF);
    paramOutputStream.write(paramInt >> 24 & 0xFF);
  }
  
  static void a(OutputStream paramOutputStream, long paramLong)
  {
    paramOutputStream.write((byte)(int)(paramLong >>> 0));
    paramOutputStream.write((byte)(int)(paramLong >>> 8));
    paramOutputStream.write((byte)(int)(paramLong >>> 16));
    paramOutputStream.write((byte)(int)(paramLong >>> 24));
    paramOutputStream.write((byte)(int)(paramLong >>> 32));
    paramOutputStream.write((byte)(int)(paramLong >>> 40));
    paramOutputStream.write((byte)(int)(paramLong >>> 48));
    paramOutputStream.write((byte)(int)(paramLong >>> 56));
  }
  
  static void a(OutputStream paramOutputStream, String paramString)
  {
    paramString = paramString.getBytes("UTF-8");
    a(paramOutputStream, paramString.length);
    paramOutputStream.write(paramString, 0, paramString.length);
  }
  
  private void a(String paramString, d paramd)
  {
    if (!this.a.containsKey(paramString)) {}
    d locald;
    long l;
    for (this.b += paramd.a;; this.b = (paramd.a - locald.a + l))
    {
      this.a.put(paramString, paramd);
      return;
      locald = (d)this.a.get(paramString);
      l = this.b;
    }
  }
  
  private static byte[] a(InputStream paramInputStream, int paramInt)
  {
    byte[] arrayOfByte = new byte[paramInt];
    int i = 0;
    while (i < paramInt)
    {
      int j = paramInputStream.read(arrayOfByte, i, paramInt - i);
      if (j == -1) {
        break;
      }
      i += j;
    }
    if (i != paramInt) {
      throw new IOException("Expected " + paramInt + " bytes, read " + i + " bytes");
    }
    return arrayOfByte;
  }
  
  static long b(InputStream paramInputStream)
  {
    return 0L | (e(paramInputStream) & 0xFF) << 0 | (e(paramInputStream) & 0xFF) << 8 | (e(paramInputStream) & 0xFF) << 16 | (e(paramInputStream) & 0xFF) << 24 | (e(paramInputStream) & 0xFF) << 32 | (e(paramInputStream) & 0xFF) << 40 | (e(paramInputStream) & 0xFF) << 48 | (e(paramInputStream) & 0xFF) << 56;
  }
  
  private void b(String paramString)
  {
    try
    {
      boolean bool = d(paramString).delete();
      d locald = (d)this.a.get(paramString);
      if (locald != null)
      {
        this.b -= locald.a;
        this.a.remove(paramString);
      }
      if (!bool) {
        z.b("Could not delete cache entry for key=%s, filename=%s", new Object[] { paramString, c(paramString) });
      }
      return;
    }
    finally {}
  }
  
  static String c(InputStream paramInputStream)
  {
    return new String(a(paramInputStream, (int)b(paramInputStream)), "UTF-8");
  }
  
  private static String c(String paramString)
  {
    int i = paramString.length() / 2;
    int j = paramString.substring(0, i).hashCode();
    return String.valueOf(j) + String.valueOf(paramString.substring(i).hashCode());
  }
  
  private File d(String paramString)
  {
    return new File(this.c, c(paramString));
  }
  
  static Map<String, String> d(InputStream paramInputStream)
  {
    int j = a(paramInputStream);
    if (j == 0) {}
    for (Object localObject = Collections.emptyMap();; localObject = new HashMap(j))
    {
      int i = 0;
      while (i < j)
      {
        ((Map)localObject).put(c(paramInputStream).intern(), c(paramInputStream).intern());
        i += 1;
      }
    }
    return (Map<String, String>)localObject;
  }
  
  private static int e(InputStream paramInputStream)
  {
    int i = paramInputStream.read();
    if (i == -1) {
      throw new EOFException();
    }
    return i;
  }
  
  /* Error */
  public final com.android.volley.c a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 28	com/android/volley/toolbox/c:a	Ljava/util/Map;
    //   6: aload_1
    //   7: invokeinterface 84 2 0
    //   12: checkcast 74	com/android/volley/toolbox/d
    //   15: astore 5
    //   17: aload 5
    //   19: ifnonnull +9 -> 28
    //   22: aconst_null
    //   23: astore_1
    //   24: aload_0
    //   25: monitorexit
    //   26: aload_1
    //   27: areturn
    //   28: aload_0
    //   29: aload_1
    //   30: invokespecial 122	com/android/volley/toolbox/c:d	(Ljava/lang/String;)Ljava/io/File;
    //   33: astore 4
    //   35: new 198	com/android/volley/toolbox/e
    //   38: dup
    //   39: new 200	java/io/FileInputStream
    //   42: dup
    //   43: aload 4
    //   45: invokespecial 201	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   48: iconst_0
    //   49: invokespecial 204	com/android/volley/toolbox/e:<init>	(Ljava/io/InputStream;B)V
    //   52: astore_2
    //   53: aload_2
    //   54: invokestatic 207	com/android/volley/toolbox/d:a	(Ljava/io/InputStream;)Lcom/android/volley/toolbox/d;
    //   57: pop
    //   58: aload_2
    //   59: aload 4
    //   61: invokevirtual 210	java/io/File:length	()J
    //   64: aload_2
    //   65: invokestatic 213	com/android/volley/toolbox/e:a	(Lcom/android/volley/toolbox/e;)I
    //   68: i2l
    //   69: lsub
    //   70: l2i
    //   71: invokestatic 146	com/android/volley/toolbox/c:a	(Ljava/io/InputStream;I)[B
    //   74: astore 6
    //   76: new 215	com/android/volley/c
    //   79: dup
    //   80: invokespecial 216	com/android/volley/c:<init>	()V
    //   83: astore_3
    //   84: aload_3
    //   85: aload 6
    //   87: putfield 219	com/android/volley/c:a	[B
    //   90: aload_3
    //   91: aload 5
    //   93: getfield 222	com/android/volley/toolbox/d:c	Ljava/lang/String;
    //   96: putfield 224	com/android/volley/c:b	Ljava/lang/String;
    //   99: aload_3
    //   100: aload 5
    //   102: getfield 226	com/android/volley/toolbox/d:d	J
    //   105: putfield 228	com/android/volley/c:c	J
    //   108: aload_3
    //   109: aload 5
    //   111: getfield 230	com/android/volley/toolbox/d:e	J
    //   114: putfield 231	com/android/volley/c:d	J
    //   117: aload_3
    //   118: aload 5
    //   120: getfield 234	com/android/volley/toolbox/d:f	J
    //   123: putfield 235	com/android/volley/c:e	J
    //   126: aload_3
    //   127: aload 5
    //   129: getfield 238	com/android/volley/toolbox/d:g	Ljava/util/Map;
    //   132: putfield 240	com/android/volley/c:f	Ljava/util/Map;
    //   135: aload_2
    //   136: invokevirtual 243	com/android/volley/toolbox/e:close	()V
    //   139: aload_3
    //   140: astore_1
    //   141: goto -117 -> 24
    //   144: astore_1
    //   145: aconst_null
    //   146: astore_1
    //   147: goto -123 -> 24
    //   150: astore_3
    //   151: aconst_null
    //   152: astore_2
    //   153: ldc -11
    //   155: iconst_2
    //   156: anewarray 4	java/lang/Object
    //   159: dup
    //   160: iconst_0
    //   161: aload 4
    //   163: invokevirtual 248	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   166: aastore
    //   167: dup
    //   168: iconst_1
    //   169: aload_3
    //   170: invokevirtual 249	java/io/IOException:toString	()Ljava/lang/String;
    //   173: aastore
    //   174: invokestatic 141	com/android/volley/z:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   177: aload_0
    //   178: aload_1
    //   179: invokespecial 251	com/android/volley/toolbox/c:b	(Ljava/lang/String;)V
    //   182: aload_2
    //   183: ifnull +7 -> 190
    //   186: aload_2
    //   187: invokevirtual 243	com/android/volley/toolbox/e:close	()V
    //   190: aconst_null
    //   191: astore_1
    //   192: goto -168 -> 24
    //   195: astore_1
    //   196: aconst_null
    //   197: astore_1
    //   198: goto -174 -> 24
    //   201: astore_1
    //   202: aconst_null
    //   203: astore_2
    //   204: aload_2
    //   205: ifnull +7 -> 212
    //   208: aload_2
    //   209: invokevirtual 243	com/android/volley/toolbox/e:close	()V
    //   212: aload_1
    //   213: athrow
    //   214: astore_1
    //   215: aload_0
    //   216: monitorexit
    //   217: aload_1
    //   218: athrow
    //   219: astore_1
    //   220: aconst_null
    //   221: astore_1
    //   222: goto -198 -> 24
    //   225: astore_1
    //   226: goto -22 -> 204
    //   229: astore_1
    //   230: goto -26 -> 204
    //   233: astore_3
    //   234: goto -81 -> 153
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	237	0	this	c
    //   0	237	1	paramString	String
    //   52	157	2	locale	e
    //   83	57	3	localc	com.android.volley.c
    //   150	20	3	localIOException1	IOException
    //   233	1	3	localIOException2	IOException
    //   33	129	4	localFile	File
    //   15	113	5	locald	d
    //   74	12	6	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   135	139	144	java/io/IOException
    //   35	53	150	java/io/IOException
    //   186	190	195	java/io/IOException
    //   35	53	201	finally
    //   2	17	214	finally
    //   28	35	214	finally
    //   135	139	214	finally
    //   186	190	214	finally
    //   208	212	214	finally
    //   212	214	214	finally
    //   208	212	219	java/io/IOException
    //   53	135	225	finally
    //   153	182	229	finally
    //   53	135	233	java/io/IOException
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 32	com/android/volley/toolbox/c:c	Ljava/io/File;
    //   6: invokevirtual 254	java/io/File:exists	()Z
    //   9: ifne +36 -> 45
    //   12: aload_0
    //   13: getfield 32	com/android/volley/toolbox/c:c	Ljava/io/File;
    //   16: invokevirtual 257	java/io/File:mkdirs	()Z
    //   19: ifne +23 -> 42
    //   22: ldc_w 259
    //   25: iconst_1
    //   26: anewarray 4	java/lang/Object
    //   29: dup
    //   30: iconst_0
    //   31: aload_0
    //   32: getfield 32	com/android/volley/toolbox/c:c	Ljava/io/File;
    //   35: invokevirtual 248	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   38: aastore
    //   39: invokestatic 261	com/android/volley/z:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: aload_0
    //   46: getfield 32	com/android/volley/toolbox/c:c	Ljava/io/File;
    //   49: invokevirtual 265	java/io/File:listFiles	()[Ljava/io/File;
    //   52: astore_3
    //   53: aload_3
    //   54: ifnull -12 -> 42
    //   57: aload_3
    //   58: arraylength
    //   59: istore 7
    //   61: iconst_0
    //   62: istore 6
    //   64: iload 6
    //   66: iload 7
    //   68: if_icmpge -26 -> 42
    //   71: aload_3
    //   72: iload 6
    //   74: aaload
    //   75: astore 4
    //   77: aconst_null
    //   78: astore_1
    //   79: new 200	java/io/FileInputStream
    //   82: dup
    //   83: aload 4
    //   85: invokespecial 201	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   88: astore_2
    //   89: aload_2
    //   90: astore_1
    //   91: aload_2
    //   92: invokestatic 207	com/android/volley/toolbox/d:a	(Ljava/io/InputStream;)Lcom/android/volley/toolbox/d;
    //   95: astore 5
    //   97: aload_2
    //   98: astore_1
    //   99: aload 5
    //   101: aload 4
    //   103: invokevirtual 210	java/io/File:length	()J
    //   106: putfield 76	com/android/volley/toolbox/d:a	J
    //   109: aload_2
    //   110: astore_1
    //   111: aload_0
    //   112: aload 5
    //   114: getfield 266	com/android/volley/toolbox/d:b	Ljava/lang/String;
    //   117: aload 5
    //   119: invokespecial 268	com/android/volley/toolbox/c:a	(Ljava/lang/String;Lcom/android/volley/toolbox/d;)V
    //   122: aload_2
    //   123: invokevirtual 269	java/io/FileInputStream:close	()V
    //   126: iload 6
    //   128: iconst_1
    //   129: iadd
    //   130: istore 6
    //   132: goto -68 -> 64
    //   135: astore_1
    //   136: aconst_null
    //   137: astore_2
    //   138: aload 4
    //   140: ifnull +11 -> 151
    //   143: aload_2
    //   144: astore_1
    //   145: aload 4
    //   147: invokevirtual 128	java/io/File:delete	()Z
    //   150: pop
    //   151: aload_2
    //   152: ifnull -26 -> 126
    //   155: aload_2
    //   156: invokevirtual 269	java/io/FileInputStream:close	()V
    //   159: goto -33 -> 126
    //   162: astore_1
    //   163: goto -37 -> 126
    //   166: astore_3
    //   167: aload_1
    //   168: astore_2
    //   169: aload_3
    //   170: astore_1
    //   171: aload_2
    //   172: ifnull +7 -> 179
    //   175: aload_2
    //   176: invokevirtual 269	java/io/FileInputStream:close	()V
    //   179: aload_1
    //   180: athrow
    //   181: astore_1
    //   182: aload_0
    //   183: monitorexit
    //   184: aload_1
    //   185: athrow
    //   186: astore_1
    //   187: goto -61 -> 126
    //   190: astore_2
    //   191: goto -12 -> 179
    //   194: astore_3
    //   195: aload_1
    //   196: astore_2
    //   197: aload_3
    //   198: astore_1
    //   199: goto -28 -> 171
    //   202: astore_1
    //   203: goto -65 -> 138
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	206	0	this	c
    //   78	33	1	localObject1	Object
    //   135	1	1	localIOException1	IOException
    //   144	1	1	localObject2	Object
    //   162	6	1	localIOException2	IOException
    //   170	10	1	localObject3	Object
    //   181	4	1	localObject4	Object
    //   186	10	1	localIOException3	IOException
    //   198	1	1	localObject5	Object
    //   202	1	1	localIOException4	IOException
    //   88	88	2	localObject6	Object
    //   190	1	2	localIOException5	IOException
    //   196	1	2	localIOException6	IOException
    //   52	20	3	arrayOfFile	File[]
    //   166	4	3	localObject7	Object
    //   194	4	3	localObject8	Object
    //   75	71	4	localFile	File
    //   95	23	5	locald	d
    //   62	69	6	i	int
    //   59	10	7	j	int
    // Exception table:
    //   from	to	target	type
    //   79	89	135	java/io/IOException
    //   155	159	162	java/io/IOException
    //   79	89	166	finally
    //   2	42	181	finally
    //   45	53	181	finally
    //   57	61	181	finally
    //   122	126	181	finally
    //   155	159	181	finally
    //   175	179	181	finally
    //   179	181	181	finally
    //   122	126	186	java/io/IOException
    //   175	179	190	java/io/IOException
    //   91	97	194	finally
    //   99	109	194	finally
    //   111	122	194	finally
    //   145	151	194	finally
    //   91	97	202	java/io/IOException
    //   99	109	202	java/io/IOException
    //   111	122	202	java/io/IOException
  }
  
  public final void a(String paramString, com.android.volley.c paramc)
  {
    int i = 0;
    label342:
    label366:
    label369:
    for (;;)
    {
      Object localObject2;
      d locald;
      try
      {
        int j = paramc.a.length;
        if (this.b + j >= this.d)
        {
          if (z.b) {
            z.a("Pruning old cache entries.", new Object[0]);
          }
          long l1 = this.b;
          long l2 = SystemClock.elapsedRealtime();
          localObject1 = this.a.entrySet().iterator();
          if (!((Iterator)localObject1).hasNext()) {
            break label369;
          }
          localObject2 = (d)((Map.Entry)((Iterator)localObject1).next()).getValue();
          if (!d(((d)localObject2).b).delete()) {
            continue;
          }
          this.b -= ((d)localObject2).a;
          ((Iterator)localObject1).remove();
          i += 1;
          if ((float)(this.b + j) >= this.d * 0.9F) {
            break label366;
          }
          if (z.b) {
            z.a("pruned %d files, %d bytes, %d ms", new Object[] { Integer.valueOf(i), Long.valueOf(this.b - l1), Long.valueOf(SystemClock.elapsedRealtime() - l2) });
          }
        }
        Object localObject1 = d(paramString);
        try
        {
          localObject2 = new FileOutputStream((File)localObject1);
          locald = new d(paramString, paramc);
          if (locald.a((OutputStream)localObject2)) {
            break label342;
          }
          ((FileOutputStream)localObject2).close();
          z.b("Failed to write header for %s", new Object[] { ((File)localObject1).getAbsolutePath() });
          throw new IOException();
        }
        catch (IOException paramString)
        {
          if (!((File)localObject1).delete()) {
            z.b("Could not clean up file %s", new Object[] { ((File)localObject1).getAbsolutePath() });
          }
        }
        return;
        z.b("Could not delete cache entry for key=%s, filename=%s", new Object[] { ((d)localObject2).b, c(((d)localObject2).b) });
        continue;
        ((FileOutputStream)localObject2).write(paramc.a);
      }
      finally {}
      ((FileOutputStream)localObject2).close();
      a(paramString, locald);
      continue;
    }
  }
  
  public final void b()
  {
    int i = 0;
    try
    {
      File[] arrayOfFile = this.c.listFiles();
      if (arrayOfFile != null)
      {
        int j = arrayOfFile.length;
        while (i < j)
        {
          arrayOfFile[i].delete();
          i += 1;
        }
      }
      this.a.clear();
      this.b = 0L;
      z.b("Cache cleared.", new Object[0]);
      return;
    }
    finally {}
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\toolbox\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */