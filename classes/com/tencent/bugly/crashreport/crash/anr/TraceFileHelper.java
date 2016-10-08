package com.tencent.bugly.crashreport.crash.anr;

import com.tencent.bugly.proguard.w;
import java.io.BufferedReader;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TraceFileHelper
{
  private static String a(BufferedReader paramBufferedReader)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    int i = 0;
    while (i < 3)
    {
      String str = paramBufferedReader.readLine();
      if (str == null) {
        return null;
      }
      localStringBuffer.append(str + "\n");
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  private static Object[] a(BufferedReader paramBufferedReader, Pattern... paramVarArgs)
  {
    if ((paramBufferedReader == null) || (paramVarArgs == null)) {
      return null;
    }
    for (;;)
    {
      String str = paramBufferedReader.readLine();
      if (str == null) {
        break;
      }
      int j = paramVarArgs.length;
      int i = 0;
      while (i < j)
      {
        Pattern localPattern = paramVarArgs[i];
        if (localPattern.matcher(str).matches()) {
          return new Object[] { localPattern, str };
        }
        i += 1;
      }
    }
  }
  
  private static String b(BufferedReader paramBufferedReader)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (;;)
    {
      String str = paramBufferedReader.readLine();
      if ((str == null) || (str.trim().length() <= 0)) {
        break;
      }
      localStringBuffer.append(str + "\n");
    }
    return localStringBuffer.toString();
  }
  
  public static TraceFileHelper.a readFirstDumpInfo(String paramString, final boolean paramBoolean)
  {
    if (paramString == null)
    {
      w.e("path:%s", new Object[] { paramString });
      return null;
    }
    TraceFileHelper.a locala = new TraceFileHelper.a();
    readTraceFile(paramString, new TraceFileHelper.b()
    {
      public final boolean a(long paramAnonymousLong)
      {
        w.c("process end %d", new Object[] { Long.valueOf(paramAnonymousLong) });
        return false;
      }
      
      public final boolean a(long paramAnonymousLong1, long paramAnonymousLong2, String paramAnonymousString)
      {
        w.c("new process %s", new Object[] { paramAnonymousString });
        TraceFileHelper.this.a = paramAnonymousLong1;
        TraceFileHelper.this.b = paramAnonymousString;
        TraceFileHelper.this.c = paramAnonymousLong2;
        return paramBoolean;
      }
      
      public final boolean a(String paramAnonymousString1, int paramAnonymousInt, String paramAnonymousString2, String paramAnonymousString3)
      {
        w.c("new thread %s", new Object[] { paramAnonymousString1 });
        if (TraceFileHelper.this.d == null) {
          TraceFileHelper.this.d = new HashMap();
        }
        TraceFileHelper.this.d.put(paramAnonymousString1, new String[] { paramAnonymousString2, paramAnonymousString3, String.valueOf(paramAnonymousInt) });
        return true;
      }
    });
    if ((locala.a > 0L) && (locala.c > 0L) && (locala.b != null)) {
      return locala;
    }
    w.e("first dump error %s", new Object[] { locala.a + " " + locala.c + " " + locala.b });
    return null;
  }
  
  public static TraceFileHelper.a readTargetDumpInfo(String paramString1, String paramString2, final boolean paramBoolean)
  {
    if ((paramString1 == null) || (paramString2 == null)) {
      paramString1 = null;
    }
    TraceFileHelper.a locala;
    do
    {
      return paramString1;
      locala = new TraceFileHelper.a();
      readTraceFile(paramString2, new TraceFileHelper.b()
      {
        public final boolean a(long paramAnonymousLong)
        {
          boolean bool = false;
          w.c("process end %d", new Object[] { Long.valueOf(paramAnonymousLong) });
          if ((TraceFileHelper.this.a <= 0L) || (TraceFileHelper.this.c <= 0L) || (TraceFileHelper.this.b == null)) {
            bool = true;
          }
          return bool;
        }
        
        public final boolean a(long paramAnonymousLong1, long paramAnonymousLong2, String paramAnonymousString)
        {
          w.c("new process %s", new Object[] { paramAnonymousString });
          if (!paramAnonymousString.equals(paramAnonymousString)) {}
          do
          {
            return true;
            TraceFileHelper.this.a = paramAnonymousLong1;
            TraceFileHelper.this.b = paramAnonymousString;
            TraceFileHelper.this.c = paramAnonymousLong2;
          } while (paramBoolean);
          return false;
        }
        
        public final boolean a(String paramAnonymousString1, int paramAnonymousInt, String paramAnonymousString2, String paramAnonymousString3)
        {
          w.c("new thread %s", new Object[] { paramAnonymousString1 });
          if ((TraceFileHelper.this.a <= 0L) || (TraceFileHelper.this.c <= 0L) || (TraceFileHelper.this.b == null)) {
            return true;
          }
          if (TraceFileHelper.this.d == null) {
            TraceFileHelper.this.d = new HashMap();
          }
          TraceFileHelper.this.d.put(paramAnonymousString1, new String[] { paramAnonymousString2, paramAnonymousString3, String.valueOf(paramAnonymousInt) });
          return true;
        }
      });
      if ((locala.a <= 0L) || (locala.c <= 0L)) {
        break;
      }
      paramString1 = locala;
    } while (locala.b != null);
    return null;
  }
  
  /* Error */
  public static void readTraceFile(String paramString, TraceFileHelper.b paramb)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +7 -> 8
    //   4: aload_1
    //   5: ifnonnull +4 -> 9
    //   8: return
    //   9: new 108	java/io/File
    //   12: dup
    //   13: aload_0
    //   14: invokespecial 111	java/io/File:<init>	(Ljava/lang/String;)V
    //   17: astore_2
    //   18: aload_2
    //   19: invokevirtual 114	java/io/File:exists	()Z
    //   22: ifeq -14 -> 8
    //   25: aload_2
    //   26: invokevirtual 118	java/io/File:lastModified	()J
    //   29: pop2
    //   30: aload_2
    //   31: invokevirtual 120	java/io/File:length	()J
    //   34: pop2
    //   35: aconst_null
    //   36: astore_0
    //   37: new 20	java/io/BufferedReader
    //   40: dup
    //   41: new 122	java/io/FileReader
    //   44: dup
    //   45: aload_2
    //   46: invokespecial 125	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   49: invokespecial 128	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   52: astore_2
    //   53: ldc -126
    //   55: invokestatic 134	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   58: astore_0
    //   59: ldc -120
    //   61: invokestatic 134	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   64: astore_3
    //   65: ldc -118
    //   67: invokestatic 134	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   70: astore 4
    //   72: ldc -116
    //   74: invokestatic 134	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   77: astore 5
    //   79: new 142	java/text/SimpleDateFormat
    //   82: dup
    //   83: ldc -112
    //   85: getstatic 150	java/util/Locale:US	Ljava/util/Locale;
    //   88: invokespecial 153	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;Ljava/util/Locale;)V
    //   91: astore 6
    //   93: aload_2
    //   94: iconst_1
    //   95: anewarray 43	java/util/regex/Pattern
    //   98: dup
    //   99: iconst_0
    //   100: aload_0
    //   101: aastore
    //   102: invokestatic 155	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:a	(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    //   105: astore 7
    //   107: aload 7
    //   109: ifnull +436 -> 545
    //   112: aload 7
    //   114: iconst_1
    //   115: aaload
    //   116: invokevirtual 156	java/lang/Object:toString	()Ljava/lang/String;
    //   119: ldc -98
    //   121: invokevirtual 162	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   124: astore 7
    //   126: aload 7
    //   128: iconst_2
    //   129: aaload
    //   130: invokestatic 168	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   133: lstore 9
    //   135: aload 6
    //   137: new 26	java/lang/StringBuilder
    //   140: dup
    //   141: invokespecial 27	java/lang/StringBuilder:<init>	()V
    //   144: aload 7
    //   146: iconst_4
    //   147: aaload
    //   148: invokevirtual 31	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: ldc 99
    //   153: invokevirtual 31	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: aload 7
    //   158: iconst_5
    //   159: aaload
    //   160: invokevirtual 31	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 36	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: invokevirtual 172	java/text/SimpleDateFormat:parse	(Ljava/lang/String;)Ljava/util/Date;
    //   169: invokevirtual 177	java/util/Date:getTime	()J
    //   172: lstore 11
    //   174: aload_2
    //   175: iconst_1
    //   176: anewarray 43	java/util/regex/Pattern
    //   179: dup
    //   180: iconst_0
    //   181: aload 4
    //   183: aastore
    //   184: invokestatic 155	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:a	(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    //   187: astore 7
    //   189: aload 7
    //   191: ifnonnull +21 -> 212
    //   194: aload_2
    //   195: invokevirtual 180	java/io/BufferedReader:close	()V
    //   198: return
    //   199: astore_0
    //   200: aload_0
    //   201: invokestatic 183	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   204: ifne -196 -> 8
    //   207: aload_0
    //   208: invokevirtual 186	java/io/IOException:printStackTrace	()V
    //   211: return
    //   212: aload 4
    //   214: aload 7
    //   216: iconst_1
    //   217: aaload
    //   218: invokevirtual 156	java/lang/Object:toString	()Ljava/lang/String;
    //   221: invokevirtual 47	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   224: astore 7
    //   226: aload 7
    //   228: invokevirtual 189	java/util/regex/Matcher:find	()Z
    //   231: pop
    //   232: aload 7
    //   234: iconst_1
    //   235: invokevirtual 193	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   238: pop
    //   239: aload_1
    //   240: lload 9
    //   242: lload 11
    //   244: aload 7
    //   246: iconst_1
    //   247: invokevirtual 193	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   250: invokeinterface 198 6 0
    //   255: istore 13
    //   257: iload 13
    //   259: ifne +21 -> 280
    //   262: aload_2
    //   263: invokevirtual 180	java/io/BufferedReader:close	()V
    //   266: return
    //   267: astore_0
    //   268: aload_0
    //   269: invokestatic 183	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   272: ifne -264 -> 8
    //   275: aload_0
    //   276: invokevirtual 186	java/io/IOException:printStackTrace	()V
    //   279: return
    //   280: aload_2
    //   281: iconst_2
    //   282: anewarray 43	java/util/regex/Pattern
    //   285: dup
    //   286: iconst_0
    //   287: aload 5
    //   289: aastore
    //   290: dup
    //   291: iconst_1
    //   292: aload_3
    //   293: aastore
    //   294: invokestatic 155	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:a	(Ljava/io/BufferedReader;[Ljava/util/regex/Pattern;)[Ljava/lang/Object;
    //   297: astore 7
    //   299: aload 7
    //   301: ifnull -208 -> 93
    //   304: aload 7
    //   306: iconst_0
    //   307: aaload
    //   308: aload 5
    //   310: if_acmpne +187 -> 497
    //   313: aload 7
    //   315: iconst_1
    //   316: aaload
    //   317: invokevirtual 156	java/lang/Object:toString	()Ljava/lang/String;
    //   320: astore 7
    //   322: ldc -56
    //   324: invokestatic 134	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   327: aload 7
    //   329: invokevirtual 47	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   332: astore 8
    //   334: aload 8
    //   336: invokevirtual 189	java/util/regex/Matcher:find	()Z
    //   339: pop
    //   340: aload 8
    //   342: invokevirtual 202	java/util/regex/Matcher:group	()Ljava/lang/String;
    //   345: astore 8
    //   347: aload 8
    //   349: iconst_1
    //   350: aload 8
    //   352: invokevirtual 63	java/lang/String:length	()I
    //   355: iconst_1
    //   356: isub
    //   357: invokevirtual 206	java/lang/String:substring	(II)Ljava/lang/String;
    //   360: astore 8
    //   362: aload 7
    //   364: ldc -48
    //   366: invokevirtual 212	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   369: pop
    //   370: ldc -42
    //   372: invokestatic 134	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   375: aload 7
    //   377: invokevirtual 47	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   380: astore 7
    //   382: aload 7
    //   384: invokevirtual 189	java/util/regex/Matcher:find	()Z
    //   387: pop
    //   388: aload 7
    //   390: invokevirtual 202	java/util/regex/Matcher:group	()Ljava/lang/String;
    //   393: astore 7
    //   395: aload_1
    //   396: aload 8
    //   398: aload 7
    //   400: aload 7
    //   402: ldc -40
    //   404: invokevirtual 220	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   407: iconst_1
    //   408: iadd
    //   409: invokevirtual 222	java/lang/String:substring	(I)Ljava/lang/String;
    //   412: invokestatic 227	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   415: aload_2
    //   416: invokestatic 229	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:a	(Ljava/io/BufferedReader;)Ljava/lang/String;
    //   419: aload_2
    //   420: invokestatic 231	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:b	(Ljava/io/BufferedReader;)Ljava/lang/String;
    //   423: invokeinterface 234 5 0
    //   428: pop
    //   429: goto -149 -> 280
    //   432: astore_1
    //   433: aload_2
    //   434: astore_0
    //   435: ldc -20
    //   437: iconst_2
    //   438: anewarray 4	java/lang/Object
    //   441: dup
    //   442: iconst_0
    //   443: aload_1
    //   444: invokevirtual 240	java/lang/Object:getClass	()Ljava/lang/Class;
    //   447: invokevirtual 245	java/lang/Class:getName	()Ljava/lang/String;
    //   450: aastore
    //   451: dup
    //   452: iconst_1
    //   453: new 26	java/lang/StringBuilder
    //   456: dup
    //   457: invokespecial 27	java/lang/StringBuilder:<init>	()V
    //   460: aload_1
    //   461: invokevirtual 248	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   464: invokevirtual 31	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   467: invokevirtual 36	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   470: aastore
    //   471: invokestatic 251	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   474: pop
    //   475: aload_0
    //   476: ifnull -468 -> 8
    //   479: aload_0
    //   480: invokevirtual 180	java/io/BufferedReader:close	()V
    //   483: return
    //   484: astore_0
    //   485: aload_0
    //   486: invokestatic 183	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   489: ifne -481 -> 8
    //   492: aload_0
    //   493: invokevirtual 186	java/io/IOException:printStackTrace	()V
    //   496: return
    //   497: aload_1
    //   498: aload 7
    //   500: iconst_1
    //   501: aaload
    //   502: invokevirtual 156	java/lang/Object:toString	()Ljava/lang/String;
    //   505: ldc -98
    //   507: invokevirtual 162	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   510: iconst_2
    //   511: aaload
    //   512: invokestatic 168	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   515: invokeinterface 254 3 0
    //   520: istore 13
    //   522: iload 13
    //   524: ifne -431 -> 93
    //   527: aload_2
    //   528: invokevirtual 180	java/io/BufferedReader:close	()V
    //   531: return
    //   532: astore_0
    //   533: aload_0
    //   534: invokestatic 183	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   537: ifne -529 -> 8
    //   540: aload_0
    //   541: invokevirtual 186	java/io/IOException:printStackTrace	()V
    //   544: return
    //   545: aload_2
    //   546: invokevirtual 180	java/io/BufferedReader:close	()V
    //   549: return
    //   550: astore_0
    //   551: aload_0
    //   552: invokestatic 183	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   555: ifne -547 -> 8
    //   558: aload_0
    //   559: invokevirtual 186	java/io/IOException:printStackTrace	()V
    //   562: return
    //   563: astore_0
    //   564: aconst_null
    //   565: astore_1
    //   566: aload_1
    //   567: ifnull +7 -> 574
    //   570: aload_1
    //   571: invokevirtual 180	java/io/BufferedReader:close	()V
    //   574: aload_0
    //   575: athrow
    //   576: astore_1
    //   577: aload_1
    //   578: invokestatic 183	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   581: ifne -7 -> 574
    //   584: aload_1
    //   585: invokevirtual 186	java/io/IOException:printStackTrace	()V
    //   588: goto -14 -> 574
    //   591: astore_0
    //   592: aload_2
    //   593: astore_1
    //   594: goto -28 -> 566
    //   597: astore_2
    //   598: aload_0
    //   599: astore_1
    //   600: aload_2
    //   601: astore_0
    //   602: goto -36 -> 566
    //   605: astore_1
    //   606: goto -171 -> 435
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	609	0	paramString	String
    //   0	609	1	paramb	TraceFileHelper.b
    //   17	576	2	localObject1	Object
    //   597	4	2	localObject2	Object
    //   64	229	3	localPattern1	Pattern
    //   70	143	4	localPattern2	Pattern
    //   77	232	5	localPattern3	Pattern
    //   91	45	6	localSimpleDateFormat	java.text.SimpleDateFormat
    //   105	394	7	localObject3	Object
    //   332	65	8	localObject4	Object
    //   133	108	9	l1	long
    //   172	71	11	l2	long
    //   255	268	13	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   194	198	199	java/io/IOException
    //   262	266	267	java/io/IOException
    //   53	93	432	java/lang/Exception
    //   93	107	432	java/lang/Exception
    //   112	189	432	java/lang/Exception
    //   212	257	432	java/lang/Exception
    //   280	299	432	java/lang/Exception
    //   313	429	432	java/lang/Exception
    //   497	522	432	java/lang/Exception
    //   479	483	484	java/io/IOException
    //   527	531	532	java/io/IOException
    //   545	549	550	java/io/IOException
    //   37	53	563	finally
    //   570	574	576	java/io/IOException
    //   53	93	591	finally
    //   93	107	591	finally
    //   112	189	591	finally
    //   212	257	591	finally
    //   280	299	591	finally
    //   313	429	591	finally
    //   497	522	591	finally
    //   435	475	597	finally
    //   37	53	605	java/lang/Exception
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\anr\TraceFileHelper.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */