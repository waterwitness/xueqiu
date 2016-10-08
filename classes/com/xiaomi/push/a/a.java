package com.xiaomi.push.a;

import android.annotation.SuppressLint;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

final class a
{
  static String b = "/MiPushLog";
  @SuppressLint({"SimpleDateFormat"})
  final SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  String c;
  String d;
  int e = 2097152;
  private boolean f;
  private int g;
  private ArrayList<File> h = new ArrayList();
  
  private void a(BufferedReader paramBufferedReader, BufferedWriter paramBufferedWriter, Pattern paramPattern)
  {
    char[] arrayOfChar = new char['က'];
    int j = paramBufferedReader.read(arrayOfChar);
    int i = 0;
    int k;
    int m;
    int n;
    if ((j != -1) && (i != 1))
    {
      String str1 = new String(arrayOfChar, 0, j);
      Matcher localMatcher = paramPattern.matcher(str1);
      k = 0;
      m = 0;
      if ((k >= j) || (!localMatcher.find(k))) {
        break label275;
      }
      k = localMatcher.start();
      String str2 = str1.substring(k, this.c.length() + k);
      if (!this.f)
      {
        n = m;
        if (str2.compareTo(this.c) >= 0)
        {
          this.f = true;
          n = k;
        }
      }
      do
      {
        m = str1.indexOf('\n', k);
        if (m == -1) {
          break label224;
        }
        k += m;
        m = n;
        break;
        n = m;
      } while (str2.compareTo(this.d) <= 0);
      i = 1;
    }
    for (;;)
    {
      if (this.f)
      {
        j = k - m;
        this.g += j;
        if (i != 0) {
          paramBufferedWriter.write(arrayOfChar, m, j);
        }
        label224:
        do
        {
          return;
          k += this.c.length();
          m = n;
          break;
          paramBufferedWriter.write(arrayOfChar, m, j);
        } while (this.g > this.e);
      }
      j = paramBufferedReader.read(arrayOfChar);
      break;
      label275:
      k = j;
    }
  }
  
  final a a(File paramFile)
  {
    if (paramFile.exists()) {
      this.h.add(paramFile);
    }
    return this;
  }
  
  /* Error */
  final void b(File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 4
    //   9: aconst_null
    //   10: astore 7
    //   12: aconst_null
    //   13: astore 8
    //   15: aconst_null
    //   16: astore_3
    //   17: ldc 122
    //   19: invokestatic 126	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   22: astore 9
    //   24: new 101	java/io/BufferedWriter
    //   27: dup
    //   28: new 128	java/io/OutputStreamWriter
    //   31: dup
    //   32: new 130	java/io/FileOutputStream
    //   35: dup
    //   36: aload_1
    //   37: invokespecial 132	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   40: invokespecial 135	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   43: invokespecial 138	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   46: astore_2
    //   47: aload_2
    //   48: astore_3
    //   49: aload 4
    //   51: astore_1
    //   52: aload 7
    //   54: astore 5
    //   56: aload 8
    //   58: astore 6
    //   60: new 140	java/lang/StringBuilder
    //   63: dup
    //   64: invokespecial 141	java/lang/StringBuilder:<init>	()V
    //   67: astore 10
    //   69: aload_2
    //   70: astore_3
    //   71: aload 4
    //   73: astore_1
    //   74: aload 7
    //   76: astore 5
    //   78: aload 8
    //   80: astore 6
    //   82: aload 10
    //   84: ldc -113
    //   86: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: getstatic 152	android/os/Build:MODEL	Ljava/lang/String;
    //   92: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: pop
    //   96: aload_2
    //   97: astore_3
    //   98: aload 4
    //   100: astore_1
    //   101: aload 7
    //   103: astore 5
    //   105: aload 8
    //   107: astore 6
    //   109: aload 10
    //   111: ldc -102
    //   113: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: getstatic 159	android/os/Build$VERSION:INCREMENTAL	Ljava/lang/String;
    //   119: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: pop
    //   123: aload_2
    //   124: astore_3
    //   125: aload 4
    //   127: astore_1
    //   128: aload 7
    //   130: astore 5
    //   132: aload 8
    //   134: astore 6
    //   136: aload 10
    //   138: ldc -95
    //   140: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: invokestatic 166	com/xiaomi/e/e/h:a	()Ljava/lang/String;
    //   146: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: pop
    //   150: aload_2
    //   151: astore_3
    //   152: aload 4
    //   154: astore_1
    //   155: aload 7
    //   157: astore 5
    //   159: aload 8
    //   161: astore 6
    //   163: aload 10
    //   165: ldc -88
    //   167: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   170: invokestatic 174	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   173: invokevirtual 177	java/util/Locale:toString	()Ljava/lang/String;
    //   176: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: pop
    //   180: aload_2
    //   181: astore_3
    //   182: aload 4
    //   184: astore_1
    //   185: aload 7
    //   187: astore 5
    //   189: aload 8
    //   191: astore 6
    //   193: aload 10
    //   195: ldc -77
    //   197: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: pop
    //   201: aload_2
    //   202: astore_3
    //   203: aload 4
    //   205: astore_1
    //   206: aload 7
    //   208: astore 5
    //   210: aload 8
    //   212: astore 6
    //   214: aload 10
    //   216: ldc -75
    //   218: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: pop
    //   222: aload_2
    //   223: astore_3
    //   224: aload 4
    //   226: astore_1
    //   227: aload 7
    //   229: astore 5
    //   231: aload 8
    //   233: astore 6
    //   235: aload_2
    //   236: aload 10
    //   238: invokevirtual 182	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   241: invokevirtual 184	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   244: aload_2
    //   245: astore_3
    //   246: aload 4
    //   248: astore_1
    //   249: aload 7
    //   251: astore 5
    //   253: aload 8
    //   255: astore 6
    //   257: aload_0
    //   258: iconst_0
    //   259: putfield 99	com/xiaomi/push/a/a:g	I
    //   262: aload_2
    //   263: astore_3
    //   264: aload 4
    //   266: astore_1
    //   267: aload 7
    //   269: astore 5
    //   271: aload 8
    //   273: astore 6
    //   275: aload_0
    //   276: getfield 48	com/xiaomi/push/a/a:h	Ljava/util/ArrayList;
    //   279: invokevirtual 188	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   282: astore 7
    //   284: aconst_null
    //   285: astore_1
    //   286: aload 7
    //   288: invokeinterface 193 1 0
    //   293: ifeq +82 -> 375
    //   296: new 51	java/io/BufferedReader
    //   299: dup
    //   300: new 195	java/io/InputStreamReader
    //   303: dup
    //   304: new 197	java/io/FileInputStream
    //   307: dup
    //   308: aload 7
    //   310: invokeinterface 201 1 0
    //   315: checkcast 107	java/io/File
    //   318: invokespecial 202	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   321: invokespecial 205	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   324: invokespecial 208	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   327: astore 4
    //   329: aload_2
    //   330: astore_3
    //   331: aload 4
    //   333: astore_1
    //   334: aload 4
    //   336: astore 5
    //   338: aload 4
    //   340: astore 6
    //   342: aload_0
    //   343: aload 4
    //   345: aload_2
    //   346: aload 9
    //   348: invokespecial 210	com/xiaomi/push/a/a:a	(Ljava/io/BufferedReader;Ljava/io/BufferedWriter;Ljava/util/regex/Pattern;)V
    //   351: aload_2
    //   352: astore_3
    //   353: aload 4
    //   355: astore_1
    //   356: aload 4
    //   358: astore 5
    //   360: aload 4
    //   362: astore 6
    //   364: aload 4
    //   366: invokevirtual 213	java/io/BufferedReader:close	()V
    //   369: aload 4
    //   371: astore_1
    //   372: goto -86 -> 286
    //   375: aload_2
    //   376: invokestatic 217	com/xiaomi/a/a/a/a:a	(Ljava/io/Writer;)V
    //   379: aload_1
    //   380: invokestatic 219	com/xiaomi/a/a/a/a:a	(Ljava/io/Reader;)V
    //   383: return
    //   384: astore 4
    //   386: aconst_null
    //   387: astore 5
    //   389: aload_3
    //   390: astore_2
    //   391: aload 5
    //   393: astore_3
    //   394: aload_2
    //   395: astore_1
    //   396: new 140	java/lang/StringBuilder
    //   399: dup
    //   400: ldc -35
    //   402: invokespecial 222	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   405: aload 4
    //   407: invokevirtual 225	java/io/FileNotFoundException:getMessage	()Ljava/lang/String;
    //   410: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   413: invokevirtual 182	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   416: invokestatic 229	com/xiaomi/a/a/b/c:c	(Ljava/lang/String;)V
    //   419: aload 5
    //   421: invokestatic 217	com/xiaomi/a/a/a/a:a	(Ljava/io/Writer;)V
    //   424: aload_2
    //   425: invokestatic 219	com/xiaomi/a/a/a/a:a	(Ljava/io/Reader;)V
    //   428: return
    //   429: astore 4
    //   431: aconst_null
    //   432: astore 6
    //   434: aload 5
    //   436: astore_2
    //   437: aload 6
    //   439: astore_3
    //   440: aload_2
    //   441: astore_1
    //   442: new 140	java/lang/StringBuilder
    //   445: dup
    //   446: ldc -35
    //   448: invokespecial 222	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   451: aload 4
    //   453: invokevirtual 230	java/io/IOException:getMessage	()Ljava/lang/String;
    //   456: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: invokevirtual 182	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   462: invokestatic 229	com/xiaomi/a/a/b/c:c	(Ljava/lang/String;)V
    //   465: aload 6
    //   467: invokestatic 217	com/xiaomi/a/a/a/a:a	(Ljava/io/Writer;)V
    //   470: aload_2
    //   471: invokestatic 219	com/xiaomi/a/a/a/a:a	(Ljava/io/Reader;)V
    //   474: return
    //   475: astore 4
    //   477: aconst_null
    //   478: astore_2
    //   479: aload 6
    //   481: astore_1
    //   482: aload_2
    //   483: invokestatic 217	com/xiaomi/a/a/a/a:a	(Ljava/io/Writer;)V
    //   486: aload_1
    //   487: invokestatic 219	com/xiaomi/a/a/a/a:a	(Ljava/io/Reader;)V
    //   490: aload 4
    //   492: athrow
    //   493: astore 4
    //   495: aload_3
    //   496: astore_2
    //   497: goto -15 -> 482
    //   500: astore 4
    //   502: goto -20 -> 482
    //   505: astore 4
    //   507: aload_2
    //   508: astore 6
    //   510: aload 5
    //   512: astore_2
    //   513: goto -76 -> 437
    //   516: astore 4
    //   518: aload_2
    //   519: astore 6
    //   521: aload_1
    //   522: astore_2
    //   523: goto -86 -> 437
    //   526: astore 4
    //   528: aload_2
    //   529: astore 5
    //   531: aload 6
    //   533: astore_2
    //   534: goto -143 -> 391
    //   537: astore 4
    //   539: aload_2
    //   540: astore 5
    //   542: aload_1
    //   543: astore_2
    //   544: goto -153 -> 391
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	547	0	this	a
    //   0	547	1	paramFile	File
    //   46	498	2	localObject1	Object
    //   16	480	3	localObject2	Object
    //   7	363	4	localBufferedReader	BufferedReader
    //   384	22	4	localFileNotFoundException1	java.io.FileNotFoundException
    //   429	23	4	localIOException1	java.io.IOException
    //   475	16	4	localObject3	Object
    //   493	1	4	localObject4	Object
    //   500	1	4	localObject5	Object
    //   505	1	4	localIOException2	java.io.IOException
    //   516	1	4	localIOException3	java.io.IOException
    //   526	1	4	localFileNotFoundException2	java.io.FileNotFoundException
    //   537	1	4	localFileNotFoundException3	java.io.FileNotFoundException
    //   1	540	5	localObject6	Object
    //   4	528	6	localObject7	Object
    //   10	299	7	localIterator	java.util.Iterator
    //   13	259	8	localObject8	Object
    //   22	325	9	localPattern	Pattern
    //   67	170	10	localStringBuilder	StringBuilder
    // Exception table:
    //   from	to	target	type
    //   24	47	384	java/io/FileNotFoundException
    //   24	47	429	java/io/IOException
    //   24	47	475	finally
    //   60	69	493	finally
    //   82	96	493	finally
    //   109	123	493	finally
    //   136	150	493	finally
    //   163	180	493	finally
    //   193	201	493	finally
    //   214	222	493	finally
    //   235	244	493	finally
    //   257	262	493	finally
    //   275	284	493	finally
    //   342	351	493	finally
    //   364	369	493	finally
    //   396	419	493	finally
    //   442	465	493	finally
    //   286	329	500	finally
    //   60	69	505	java/io/IOException
    //   82	96	505	java/io/IOException
    //   109	123	505	java/io/IOException
    //   136	150	505	java/io/IOException
    //   163	180	505	java/io/IOException
    //   193	201	505	java/io/IOException
    //   214	222	505	java/io/IOException
    //   235	244	505	java/io/IOException
    //   257	262	505	java/io/IOException
    //   275	284	505	java/io/IOException
    //   342	351	505	java/io/IOException
    //   364	369	505	java/io/IOException
    //   286	329	516	java/io/IOException
    //   60	69	526	java/io/FileNotFoundException
    //   82	96	526	java/io/FileNotFoundException
    //   109	123	526	java/io/FileNotFoundException
    //   136	150	526	java/io/FileNotFoundException
    //   163	180	526	java/io/FileNotFoundException
    //   193	201	526	java/io/FileNotFoundException
    //   214	222	526	java/io/FileNotFoundException
    //   235	244	526	java/io/FileNotFoundException
    //   257	262	526	java/io/FileNotFoundException
    //   275	284	526	java/io/FileNotFoundException
    //   342	351	526	java/io/FileNotFoundException
    //   364	369	526	java/io/FileNotFoundException
    //   286	329	537	java/io/FileNotFoundException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */