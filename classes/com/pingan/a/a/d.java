package com.pingan.a.a;

import android.os.Environment;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public final class d
{
  public static final String a;
  public static List<File> b = new ArrayList();
  private static SimpleDateFormat c = new SimpleDateFormat("yyyy-MM-dd-hh-mm-ssss");
  private static String d;
  
  static
  {
    a = Environment.getExternalStorageDirectory().getPath() + File.separator + "PinganSDK" + File.separator;
    d = "FileZipUtil";
  }
  
  /* Error */
  public static boolean a(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: getstatic 63	com/pingan/a/a/d:d	Ljava/lang/String;
    //   3: new 26	java/lang/StringBuilder
    //   6: dup
    //   7: ldc 75
    //   9: invokespecial 45	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   12: aload_0
    //   13: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   16: ldc 77
    //   18: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   21: aload_1
    //   22: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   28: invokestatic 82	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   31: pop
    //   32: aconst_null
    //   33: astore_2
    //   34: new 34	java/io/File
    //   37: dup
    //   38: aload_1
    //   39: invokespecial 83	java/io/File:<init>	(Ljava/lang/String;)V
    //   42: astore_1
    //   43: new 34	java/io/File
    //   46: dup
    //   47: aload_0
    //   48: invokespecial 83	java/io/File:<init>	(Ljava/lang/String;)V
    //   51: astore_3
    //   52: new 85	java/util/zip/ZipOutputStream
    //   55: dup
    //   56: new 87	java/io/FileOutputStream
    //   59: dup
    //   60: aload_1
    //   61: invokespecial 90	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   64: invokespecial 93	java/util/zip/ZipOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   67: astore_1
    //   68: aload_1
    //   69: astore_0
    //   70: aload_1
    //   71: aload_3
    //   72: ldc 95
    //   74: invokestatic 98	com/pingan/a/a/d:a	(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z
    //   77: istore 4
    //   79: aload_1
    //   80: invokevirtual 101	java/util/zip/ZipOutputStream:close	()V
    //   83: iload 4
    //   85: ireturn
    //   86: astore_2
    //   87: aconst_null
    //   88: astore_1
    //   89: aload_1
    //   90: astore_0
    //   91: aload_2
    //   92: invokevirtual 104	java/io/IOException:printStackTrace	()V
    //   95: iconst_0
    //   96: istore 4
    //   98: aload_1
    //   99: ifnull -16 -> 83
    //   102: aload_1
    //   103: invokevirtual 101	java/util/zip/ZipOutputStream:close	()V
    //   106: iconst_0
    //   107: ireturn
    //   108: astore_0
    //   109: aload_0
    //   110: invokevirtual 104	java/io/IOException:printStackTrace	()V
    //   113: iconst_0
    //   114: ireturn
    //   115: astore_0
    //   116: aload_2
    //   117: astore_1
    //   118: aload_1
    //   119: ifnull +7 -> 126
    //   122: aload_1
    //   123: invokevirtual 101	java/util/zip/ZipOutputStream:close	()V
    //   126: aload_0
    //   127: athrow
    //   128: astore_1
    //   129: aload_1
    //   130: invokevirtual 104	java/io/IOException:printStackTrace	()V
    //   133: goto -7 -> 126
    //   136: astore_0
    //   137: aload_0
    //   138: invokevirtual 104	java/io/IOException:printStackTrace	()V
    //   141: iload 4
    //   143: ireturn
    //   144: astore_2
    //   145: aload_0
    //   146: astore_1
    //   147: aload_2
    //   148: astore_0
    //   149: goto -31 -> 118
    //   152: astore_2
    //   153: goto -64 -> 89
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	156	0	paramString1	String
    //   0	156	1	paramString2	String
    //   33	1	2	localObject1	Object
    //   86	31	2	localIOException1	java.io.IOException
    //   144	4	2	localObject2	Object
    //   152	1	2	localIOException2	java.io.IOException
    //   51	21	3	localFile	File
    //   77	65	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   34	68	86	java/io/IOException
    //   102	106	108	java/io/IOException
    //   34	68	115	finally
    //   122	126	128	java/io/IOException
    //   79	83	136	java/io/IOException
    //   70	79	144	finally
    //   91	95	144	finally
    //   70	79	152	java/io/IOException
  }
  
  /* Error */
  private static boolean a(java.util.zip.ZipOutputStream paramZipOutputStream, File paramFile, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aconst_null
    //   4: astore 5
    //   6: aload 4
    //   8: astore_3
    //   9: aload_1
    //   10: invokevirtual 108	java/io/File:isDirectory	()Z
    //   13: ifne +143 -> 156
    //   16: aload 4
    //   18: astore_3
    //   19: sipush 4096
    //   22: newarray <illegal type>
    //   24: astore 6
    //   26: aload 4
    //   28: astore_3
    //   29: new 110	java/io/FileInputStream
    //   32: dup
    //   33: aload_1
    //   34: invokespecial 111	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   37: astore 4
    //   39: aload_0
    //   40: new 113	java/util/zip/ZipEntry
    //   43: dup
    //   44: new 26	java/lang/StringBuilder
    //   47: dup
    //   48: aload_2
    //   49: invokestatic 44	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   52: invokespecial 45	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   55: aload_1
    //   56: invokevirtual 116	java/io/File:getName	()Ljava/lang/String;
    //   59: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: invokespecial 117	java/util/zip/ZipEntry:<init>	(Ljava/lang/String;)V
    //   68: invokevirtual 121	java/util/zip/ZipOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   71: aload 4
    //   73: aload 6
    //   75: invokevirtual 125	java/io/FileInputStream:read	([B)I
    //   78: istore 7
    //   80: iload 7
    //   82: iconst_m1
    //   83: if_icmpne +19 -> 102
    //   86: aload_0
    //   87: invokevirtual 128	java/util/zip/ZipOutputStream:closeEntry	()V
    //   90: aload 4
    //   92: ifnull +172 -> 264
    //   95: aload 4
    //   97: invokevirtual 129	java/io/FileInputStream:close	()V
    //   100: iconst_1
    //   101: ireturn
    //   102: aload_0
    //   103: aload 6
    //   105: iconst_0
    //   106: iload 7
    //   108: invokevirtual 133	java/util/zip/ZipOutputStream:write	([BII)V
    //   111: goto -40 -> 71
    //   114: astore_1
    //   115: aload 4
    //   117: astore_0
    //   118: aload_0
    //   119: astore_3
    //   120: aload_1
    //   121: invokevirtual 104	java/io/IOException:printStackTrace	()V
    //   124: aload_0
    //   125: astore_3
    //   126: getstatic 63	com/pingan/a/a/d:d	Ljava/lang/String;
    //   129: ldc -121
    //   131: invokestatic 140	com/pingan/a/a/e:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   134: aload_0
    //   135: astore_3
    //   136: getstatic 63	com/pingan/a/a/d:d	Ljava/lang/String;
    //   139: aload_1
    //   140: invokevirtual 143	java/io/IOException:getMessage	()Ljava/lang/String;
    //   143: invokestatic 140	com/pingan/a/a/e:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   146: aload_0
    //   147: ifnull +133 -> 280
    //   150: aload_0
    //   151: invokevirtual 129	java/io/FileInputStream:close	()V
    //   154: iconst_0
    //   155: ireturn
    //   156: aload 4
    //   158: astore_3
    //   159: aload_1
    //   160: invokevirtual 147	java/io/File:listFiles	()[Ljava/io/File;
    //   163: astore 6
    //   165: iconst_0
    //   166: istore 7
    //   168: aload 4
    //   170: astore_3
    //   171: iload 7
    //   173: aload 6
    //   175: arraylength
    //   176: if_icmplt +9 -> 185
    //   179: aconst_null
    //   180: astore 4
    //   182: goto -92 -> 90
    //   185: aload 4
    //   187: astore_3
    //   188: aload_0
    //   189: aload 6
    //   191: iload 7
    //   193: aaload
    //   194: new 26	java/lang/StringBuilder
    //   197: dup
    //   198: aload_2
    //   199: invokestatic 44	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   202: invokespecial 45	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   205: aload_1
    //   206: invokevirtual 116	java/io/File:getName	()Ljava/lang/String;
    //   209: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: ldc -107
    //   214: invokevirtual 52	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   217: invokevirtual 57	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   220: invokestatic 98	com/pingan/a/a/d:a	(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;)Z
    //   223: pop
    //   224: iload 7
    //   226: iconst_1
    //   227: iadd
    //   228: istore 7
    //   230: goto -62 -> 168
    //   233: astore_0
    //   234: aload_0
    //   235: invokevirtual 104	java/io/IOException:printStackTrace	()V
    //   238: iconst_0
    //   239: ireturn
    //   240: astore_0
    //   241: aload_3
    //   242: ifnull +7 -> 249
    //   245: aload_3
    //   246: invokevirtual 129	java/io/FileInputStream:close	()V
    //   249: aload_0
    //   250: athrow
    //   251: astore_1
    //   252: aload_1
    //   253: invokevirtual 104	java/io/IOException:printStackTrace	()V
    //   256: goto -7 -> 249
    //   259: astore_0
    //   260: aload_0
    //   261: invokevirtual 104	java/io/IOException:printStackTrace	()V
    //   264: iconst_1
    //   265: ireturn
    //   266: astore_0
    //   267: aload 4
    //   269: astore_3
    //   270: goto -29 -> 241
    //   273: astore_1
    //   274: aload 5
    //   276: astore_0
    //   277: goto -159 -> 118
    //   280: iconst_0
    //   281: ireturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	282	0	paramZipOutputStream	java.util.zip.ZipOutputStream
    //   0	282	1	paramFile	File
    //   0	282	2	paramString	String
    //   8	262	3	localObject1	Object
    //   1	267	4	localFileInputStream	java.io.FileInputStream
    //   4	271	5	localObject2	Object
    //   24	166	6	localObject3	Object
    //   78	151	7	i	int
    // Exception table:
    //   from	to	target	type
    //   39	71	114	java/io/IOException
    //   71	80	114	java/io/IOException
    //   86	90	114	java/io/IOException
    //   102	111	114	java/io/IOException
    //   150	154	233	java/io/IOException
    //   9	16	240	finally
    //   19	26	240	finally
    //   29	39	240	finally
    //   120	124	240	finally
    //   126	134	240	finally
    //   136	146	240	finally
    //   159	165	240	finally
    //   171	179	240	finally
    //   188	224	240	finally
    //   245	249	251	java/io/IOException
    //   95	100	259	java/io/IOException
    //   39	71	266	finally
    //   71	80	266	finally
    //   86	90	266	finally
    //   102	111	266	finally
    //   9	16	273	java/io/IOException
    //   19	26	273	java/io/IOException
    //   29	39	273	java/io/IOException
    //   159	165	273	java/io/IOException
    //   171	179	273	java/io/IOException
    //   188	224	273	java/io/IOException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\a\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */