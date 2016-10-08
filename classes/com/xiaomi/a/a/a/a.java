package com.xiaomi.a.a.a;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;

public final class a
{
  public static final String[] a = { "jpg", "png", "bmp", "gif", "webp" };
  
  /* Error */
  public static void a(java.io.File paramFile1, java.io.File paramFile2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: new 30	java/util/zip/ZipOutputStream
    //   7: dup
    //   8: new 32	java/io/FileOutputStream
    //   11: dup
    //   12: aload_0
    //   13: iconst_0
    //   14: invokespecial 36	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   17: invokespecial 39	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   20: astore_0
    //   21: aload_0
    //   22: aload_1
    //   23: aconst_null
    //   24: aconst_null
    //   25: invokestatic 42	com/xiaomi/a/a/a/a:a	(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Ljava/io/FileFilter;)V
    //   28: aload_0
    //   29: invokestatic 44	com/xiaomi/a/a/a/a:a	(Ljava/io/OutputStream;)V
    //   32: return
    //   33: astore_0
    //   34: aconst_null
    //   35: astore_0
    //   36: aload_0
    //   37: invokestatic 44	com/xiaomi/a/a/a/a:a	(Ljava/io/OutputStream;)V
    //   40: return
    //   41: astore_1
    //   42: aload_3
    //   43: astore_0
    //   44: aload_0
    //   45: astore_2
    //   46: new 46	java/lang/StringBuilder
    //   49: dup
    //   50: ldc 48
    //   52: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   55: aload_1
    //   56: invokevirtual 55	java/io/IOException:getMessage	()Ljava/lang/String;
    //   59: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: invokestatic 66	com/xiaomi/a/a/b/c:a	(Ljava/lang/String;)V
    //   68: aload_0
    //   69: invokestatic 44	com/xiaomi/a/a/a/a:a	(Ljava/io/OutputStream;)V
    //   72: return
    //   73: astore_1
    //   74: aload_2
    //   75: astore_0
    //   76: aload_0
    //   77: invokestatic 44	com/xiaomi/a/a/a/a:a	(Ljava/io/OutputStream;)V
    //   80: aload_1
    //   81: athrow
    //   82: astore_1
    //   83: goto -7 -> 76
    //   86: astore_1
    //   87: goto -43 -> 44
    //   90: astore_1
    //   91: goto -55 -> 36
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	paramFile1	java.io.File
    //   0	94	1	paramFile2	java.io.File
    //   1	74	2	localFile	java.io.File
    //   3	40	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	21	33	java/io/FileNotFoundException
    //   4	21	41	java/io/IOException
    //   4	21	73	finally
    //   46	68	73	finally
    //   21	28	82	finally
    //   21	28	86	java/io/IOException
    //   21	28	90	java/io/FileNotFoundException
  }
  
  public static void a(InputStream paramInputStream)
  {
    if (paramInputStream != null) {}
    try
    {
      paramInputStream.close();
      return;
    }
    catch (IOException paramInputStream) {}
  }
  
  private static void a(OutputStream paramOutputStream)
  {
    if (paramOutputStream != null) {}
    try
    {
      paramOutputStream.flush();
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        try
        {
          paramOutputStream.close();
          return;
        }
        catch (IOException paramOutputStream) {}
        localIOException = localIOException;
      }
    }
  }
  
  public static void a(Reader paramReader)
  {
    if (paramReader != null) {}
    try
    {
      paramReader.close();
      return;
    }
    catch (IOException paramReader) {}
  }
  
  public static void a(Writer paramWriter)
  {
    if (paramWriter != null) {}
    try
    {
      paramWriter.close();
      return;
    }
    catch (IOException paramWriter) {}
  }
  
  /* Error */
  private static void a(java.util.zip.ZipOutputStream paramZipOutputStream, java.io.File paramFile, String paramString, java.io.FileFilter paramFileFilter)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 6
    //   6: iconst_0
    //   7: istore 9
    //   9: aload_2
    //   10: astore 4
    //   12: aload_2
    //   13: ifnonnull +7 -> 20
    //   16: ldc 88
    //   18: astore 4
    //   20: aload 7
    //   22: astore_2
    //   23: aload_1
    //   24: invokevirtual 94	java/io/File:isDirectory	()Z
    //   27: ifeq +268 -> 295
    //   30: aload_3
    //   31: ifnull +125 -> 156
    //   34: aload 7
    //   36: astore_2
    //   37: aload_1
    //   38: aload_3
    //   39: invokevirtual 98	java/io/File:listFiles	(Ljava/io/FileFilter;)[Ljava/io/File;
    //   42: astore 5
    //   44: aload 7
    //   46: astore_2
    //   47: aload_0
    //   48: new 100	java/util/zip/ZipEntry
    //   51: dup
    //   52: new 46	java/lang/StringBuilder
    //   55: dup
    //   56: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   59: aload 4
    //   61: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: getstatic 106	java/io/File:separator	Ljava/lang/String;
    //   67: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   73: invokespecial 107	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   76: invokevirtual 111	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   79: aload 7
    //   81: astore_2
    //   82: aload 4
    //   84: invokestatic 117	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   87: ifeq +81 -> 168
    //   90: ldc 88
    //   92: astore 4
    //   94: goto +379 -> 473
    //   97: aload 7
    //   99: astore_2
    //   100: iload 8
    //   102: aload 5
    //   104: arraylength
    //   105: if_icmpge +92 -> 197
    //   108: aload 7
    //   110: astore_2
    //   111: aload_0
    //   112: aload 5
    //   114: iload 8
    //   116: aaload
    //   117: new 46	java/lang/StringBuilder
    //   120: dup
    //   121: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   124: aload 4
    //   126: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: aload 5
    //   131: iload 8
    //   133: aaload
    //   134: invokevirtual 120	java/io/File:getName	()Ljava/lang/String;
    //   137: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   140: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   143: aconst_null
    //   144: invokestatic 42	com/xiaomi/a/a/a/a:a	(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Ljava/io/FileFilter;)V
    //   147: iload 8
    //   149: iconst_1
    //   150: iadd
    //   151: istore 8
    //   153: goto -56 -> 97
    //   156: aload 7
    //   158: astore_2
    //   159: aload_1
    //   160: invokevirtual 123	java/io/File:listFiles	()[Ljava/io/File;
    //   163: astore 5
    //   165: goto -121 -> 44
    //   168: aload 7
    //   170: astore_2
    //   171: new 46	java/lang/StringBuilder
    //   174: dup
    //   175: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   178: aload 4
    //   180: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: getstatic 106	java/io/File:separator	Ljava/lang/String;
    //   186: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   192: astore 4
    //   194: goto +279 -> 473
    //   197: aload 7
    //   199: astore_2
    //   200: aload_1
    //   201: new 125	com/xiaomi/a/a/a/b
    //   204: dup
    //   205: invokespecial 126	com/xiaomi/a/a/a/b:<init>	()V
    //   208: invokevirtual 98	java/io/File:listFiles	(Ljava/io/FileFilter;)[Ljava/io/File;
    //   211: astore_1
    //   212: aload_1
    //   213: ifnull +75 -> 288
    //   216: aload 7
    //   218: astore_2
    //   219: aload_1
    //   220: arraylength
    //   221: istore 10
    //   223: iload 9
    //   225: istore 8
    //   227: iload 8
    //   229: iload 10
    //   231: if_icmpge +57 -> 288
    //   234: aload_1
    //   235: iload 8
    //   237: aaload
    //   238: astore 5
    //   240: aload 7
    //   242: astore_2
    //   243: aload_0
    //   244: aload 5
    //   246: new 46	java/lang/StringBuilder
    //   249: dup
    //   250: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   253: aload 4
    //   255: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: getstatic 106	java/io/File:separator	Ljava/lang/String;
    //   261: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: aload 5
    //   266: invokevirtual 120	java/io/File:getName	()Ljava/lang/String;
    //   269: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   275: aload_3
    //   276: invokestatic 42	com/xiaomi/a/a/a/a:a	(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Ljava/io/FileFilter;)V
    //   279: iload 8
    //   281: iconst_1
    //   282: iadd
    //   283: istore 8
    //   285: goto -58 -> 227
    //   288: aconst_null
    //   289: astore_2
    //   290: aload_2
    //   291: invokestatic 128	com/xiaomi/a/a/a/a:a	(Ljava/io/InputStream;)V
    //   294: return
    //   295: aload 7
    //   297: astore_2
    //   298: aload 4
    //   300: invokestatic 117	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   303: ifne +97 -> 400
    //   306: aload 7
    //   308: astore_2
    //   309: aload_0
    //   310: new 100	java/util/zip/ZipEntry
    //   313: dup
    //   314: aload 4
    //   316: invokespecial 107	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   319: invokevirtual 111	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   322: aload 7
    //   324: astore_2
    //   325: new 130	java/io/FileInputStream
    //   328: dup
    //   329: aload_1
    //   330: invokespecial 133	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   333: astore_1
    //   334: sipush 1024
    //   337: newarray <illegal type>
    //   339: astore_3
    //   340: aload_1
    //   341: aload_3
    //   342: invokevirtual 137	java/io/FileInputStream:read	([B)I
    //   345: istore 8
    //   347: aload_1
    //   348: astore_2
    //   349: iload 8
    //   351: iconst_m1
    //   352: if_icmpeq -62 -> 290
    //   355: aload_0
    //   356: aload_3
    //   357: iconst_0
    //   358: iload 8
    //   360: invokevirtual 141	java/util/zip/ZipOutputStream:write	([BII)V
    //   363: goto -23 -> 340
    //   366: astore_2
    //   367: aload_1
    //   368: astore_0
    //   369: aload_2
    //   370: astore_1
    //   371: aload_0
    //   372: astore_2
    //   373: new 46	java/lang/StringBuilder
    //   376: dup
    //   377: ldc -113
    //   379: invokespecial 51	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   382: aload_1
    //   383: invokevirtual 144	java/io/IOException:toString	()Ljava/lang/String;
    //   386: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   389: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   392: invokestatic 147	com/xiaomi/a/a/b/c:d	(Ljava/lang/String;)V
    //   395: aload_0
    //   396: invokestatic 128	com/xiaomi/a/a/a/a:a	(Ljava/io/InputStream;)V
    //   399: return
    //   400: aload 7
    //   402: astore_2
    //   403: new 149	java/util/Date
    //   406: dup
    //   407: invokespecial 150	java/util/Date:<init>	()V
    //   410: astore_3
    //   411: aload 7
    //   413: astore_2
    //   414: aload_0
    //   415: new 100	java/util/zip/ZipEntry
    //   418: dup
    //   419: new 46	java/lang/StringBuilder
    //   422: dup
    //   423: invokespecial 102	java/lang/StringBuilder:<init>	()V
    //   426: aload_3
    //   427: invokevirtual 154	java/util/Date:getTime	()J
    //   430: invokestatic 158	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   433: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: ldc -96
    //   438: invokevirtual 59	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   441: invokevirtual 62	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   444: invokespecial 107	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   447: invokevirtual 111	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   450: goto -128 -> 322
    //   453: astore_1
    //   454: aload 6
    //   456: astore_0
    //   457: goto -86 -> 371
    //   460: astore_0
    //   461: aload_2
    //   462: astore_1
    //   463: aload_1
    //   464: invokestatic 128	com/xiaomi/a/a/a/a:a	(Ljava/io/InputStream;)V
    //   467: aload_0
    //   468: athrow
    //   469: astore_0
    //   470: goto -7 -> 463
    //   473: iconst_0
    //   474: istore 8
    //   476: goto -379 -> 97
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	479	0	paramZipOutputStream	java.util.zip.ZipOutputStream
    //   0	479	1	paramFile	java.io.File
    //   0	479	2	paramString	String
    //   0	479	3	paramFileFilter	java.io.FileFilter
    //   10	305	4	str	String
    //   42	223	5	arrayOfFile	java.io.File[]
    //   4	451	6	localObject1	Object
    //   1	411	7	localObject2	Object
    //   100	375	8	i	int
    //   7	217	9	j	int
    //   221	11	10	k	int
    // Exception table:
    //   from	to	target	type
    //   334	340	366	java/io/IOException
    //   340	347	366	java/io/IOException
    //   355	363	366	java/io/IOException
    //   23	30	453	java/io/IOException
    //   37	44	453	java/io/IOException
    //   47	79	453	java/io/IOException
    //   82	90	453	java/io/IOException
    //   100	108	453	java/io/IOException
    //   111	147	453	java/io/IOException
    //   159	165	453	java/io/IOException
    //   171	194	453	java/io/IOException
    //   200	212	453	java/io/IOException
    //   219	223	453	java/io/IOException
    //   243	279	453	java/io/IOException
    //   298	306	453	java/io/IOException
    //   309	322	453	java/io/IOException
    //   325	334	453	java/io/IOException
    //   403	411	453	java/io/IOException
    //   414	450	453	java/io/IOException
    //   23	30	460	finally
    //   37	44	460	finally
    //   47	79	460	finally
    //   82	90	460	finally
    //   100	108	460	finally
    //   111	147	460	finally
    //   159	165	460	finally
    //   171	194	460	finally
    //   200	212	460	finally
    //   219	223	460	finally
    //   243	279	460	finally
    //   298	306	460	finally
    //   309	322	460	finally
    //   325	334	460	finally
    //   373	395	460	finally
    //   403	411	460	finally
    //   414	450	460	finally
    //   334	340	469	finally
    //   340	347	469	finally
    //   355	363	469	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\a\a\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */