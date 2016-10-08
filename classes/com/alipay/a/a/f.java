package com.alipay.a.a;

import a.a;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;

public final class f
{
  public static boolean a = true;
  private static File b = null;
  private static File c = null;
  private static String d = null;
  private static String e = null;
  private static String f = "logger";
  private static Context g = null;
  
  /* Error */
  private static String a(String paramString)
  {
    // Byte code:
    //   0: new 43	org/json/JSONObject
    //   3: dup
    //   4: invokespecial 46	org/json/JSONObject:<init>	()V
    //   7: astore_2
    //   8: new 48	java/io/File
    //   11: dup
    //   12: getstatic 19	com/alipay/a/a/f:b	Ljava/io/File;
    //   15: aload_0
    //   16: invokespecial 51	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   19: astore_0
    //   20: aload_0
    //   21: invokevirtual 55	java/io/File:exists	()Z
    //   24: ifeq +12 -> 36
    //   27: aload_0
    //   28: invokevirtual 59	java/io/File:length	()J
    //   31: lconst_0
    //   32: lcmp
    //   33: ifne +5 -> 38
    //   36: aconst_null
    //   37: areturn
    //   38: aload_0
    //   39: invokevirtual 59	java/io/File:length	()J
    //   42: l2i
    //   43: newarray <illegal type>
    //   45: astore_3
    //   46: new 61	java/io/FileReader
    //   49: dup
    //   50: aload_0
    //   51: invokespecial 64	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   54: astore_1
    //   55: aload_1
    //   56: astore_0
    //   57: aload_1
    //   58: aload_3
    //   59: invokevirtual 68	java/io/FileReader:read	([C)I
    //   62: pop
    //   63: aload_1
    //   64: invokevirtual 71	java/io/FileReader:close	()V
    //   67: aload_2
    //   68: ldc 73
    //   70: ldc 75
    //   72: invokevirtual 79	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   75: pop
    //   76: aload_2
    //   77: ldc 81
    //   79: aload_3
    //   80: invokestatic 87	java/lang/String:valueOf	([C)Ljava/lang/String;
    //   83: invokevirtual 79	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   86: pop
    //   87: aload_2
    //   88: invokevirtual 91	org/json/JSONObject:toString	()Ljava/lang/String;
    //   91: areturn
    //   92: astore_2
    //   93: aconst_null
    //   94: astore_1
    //   95: aload_1
    //   96: astore_0
    //   97: aload_2
    //   98: invokevirtual 94	java/io/FileNotFoundException:printStackTrace	()V
    //   101: aload_1
    //   102: ifnull -66 -> 36
    //   105: aload_1
    //   106: invokevirtual 71	java/io/FileReader:close	()V
    //   109: aconst_null
    //   110: areturn
    //   111: astore_0
    //   112: aload_0
    //   113: invokevirtual 95	java/io/IOException:printStackTrace	()V
    //   116: aconst_null
    //   117: areturn
    //   118: astore_2
    //   119: aconst_null
    //   120: astore_1
    //   121: aload_1
    //   122: astore_0
    //   123: aload_2
    //   124: invokevirtual 95	java/io/IOException:printStackTrace	()V
    //   127: aload_1
    //   128: ifnull -92 -> 36
    //   131: aload_1
    //   132: invokevirtual 71	java/io/FileReader:close	()V
    //   135: aconst_null
    //   136: areturn
    //   137: astore_0
    //   138: aload_0
    //   139: invokevirtual 95	java/io/IOException:printStackTrace	()V
    //   142: aconst_null
    //   143: areturn
    //   144: astore_1
    //   145: aconst_null
    //   146: astore_0
    //   147: aload_0
    //   148: ifnull +7 -> 155
    //   151: aload_0
    //   152: invokevirtual 71	java/io/FileReader:close	()V
    //   155: aload_1
    //   156: athrow
    //   157: astore_0
    //   158: aload_0
    //   159: invokevirtual 95	java/io/IOException:printStackTrace	()V
    //   162: goto -7 -> 155
    //   165: astore_0
    //   166: aload_0
    //   167: invokevirtual 95	java/io/IOException:printStackTrace	()V
    //   170: goto -103 -> 67
    //   173: astore_0
    //   174: getstatic 31	com/alipay/a/a/f:f	Ljava/lang/String;
    //   177: aload_0
    //   178: invokevirtual 98	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   181: invokestatic 103	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   184: pop
    //   185: aconst_null
    //   186: areturn
    //   187: astore_1
    //   188: goto -41 -> 147
    //   191: astore_2
    //   192: goto -71 -> 121
    //   195: astore_2
    //   196: goto -101 -> 95
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	199	0	paramString	String
    //   54	78	1	localFileReader	java.io.FileReader
    //   144	12	1	localObject1	Object
    //   187	1	1	localObject2	Object
    //   7	81	2	localJSONObject	org.json.JSONObject
    //   92	6	2	localFileNotFoundException1	java.io.FileNotFoundException
    //   118	6	2	localIOException1	IOException
    //   191	1	2	localIOException2	IOException
    //   195	1	2	localFileNotFoundException2	java.io.FileNotFoundException
    //   45	35	3	arrayOfChar	char[]
    // Exception table:
    //   from	to	target	type
    //   46	55	92	java/io/FileNotFoundException
    //   105	109	111	java/io/IOException
    //   46	55	118	java/io/IOException
    //   131	135	137	java/io/IOException
    //   46	55	144	finally
    //   151	155	157	java/io/IOException
    //   63	67	165	java/io/IOException
    //   67	87	173	org/json/JSONException
    //   57	63	187	finally
    //   97	101	187	finally
    //   123	127	187	finally
    //   57	63	191	java/io/IOException
    //   57	63	195	java/io/FileNotFoundException
  }
  
  public static String a(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return localStringWriter.toString();
  }
  
  public static void a()
  {
    int m = 0;
    try
    {
      if (b == null) {
        throw new IllegalStateException("logFileDir can not be null! call 'LOG.init' first!");
      }
    }
    finally {}
    if ((!b.exists()) || (!b.isDirectory()) || (b.list().length == 0))
    {
      if (a) {
        Log.d(f, "log Dir not exist or no log");
      }
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Object localObject2 = b.list();
    int j = localObject2.length;
    int i = 0;
    Object localObject3;
    for (;;)
    {
      if (i >= j)
      {
        Collections.sort(localArrayList);
        localObject3 = (String)localArrayList.get(localArrayList.size() - 1);
        j = localArrayList.size();
        localObject2 = localObject3;
        i = j;
        if (!((String)localObject3).equals(c())) {
          break label215;
        }
        if (localArrayList.size() >= 2) {
          break label192;
        }
        if (!a) {
          break;
        }
        Log.d(f, "only log of today");
        break;
      }
      localArrayList.add(localObject2[i]);
      i += 1;
    }
    label192:
    localObject2 = (String)localArrayList.get(localArrayList.size() - 2);
    i = j - 1;
    label215:
    localObject2 = a((String)localObject2);
    label236:
    int k;
    if (localObject2 == null)
    {
      Log.e(f, "logFile to JosonString is null");
      break label423;
      while (k < j)
      {
        localObject2 = (String)localArrayList.get(k);
        new File(b, (String)localObject2).delete();
        k += 1;
      }
    }
    else
    {
      if (a) {
        Log.d(f, (String)localObject2);
      }
      if (g != null)
      {
        localObject3 = ((ConnectivityManager)g.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
        if ((localObject3 == null) || (!((NetworkInfo)localObject3).isConnected()) || (((NetworkInfo)localObject3).getType() != 1)) {
          break label443;
        }
      }
    }
    label423:
    label443:
    for (j = 1;; j = 0)
    {
      if (j != 0)
      {
        new a();
        localObject2 = a.a("https://seccliprod.alipay.com/api/do.htm", "bugTrack", (String)localObject2, "1", true);
        if ((localObject2 == null) || (((HttpResponse)localObject2).getStatusLine().getStatusCode() != 200)) {}
      }
      for (j = 1; j != 0; j = 0)
      {
        j = i;
        k = m;
        if (!a) {
          break;
        }
        Log.d(f, "upload success");
        j = i;
        k = m;
        break;
      }
      j = i - 1;
      k = m;
      break label236;
      break;
    }
  }
  
  public static void a(Context paramContext)
  {
    try
    {
      g = paramContext;
      if (b == null)
      {
        b = new File(paramContext.getFilesDir().getAbsolutePath() + "/log/ap");
        d = Build.MODEL;
        e = paramContext.getApplicationContext().getApplicationInfo().packageName;
        if (a) {
          Log.d(f, e + "," + d);
        }
      }
      if (b.exists())
      {
        if (b.isDirectory()) {
          break label166;
        }
        throw new IllegalStateException(String.format("<%s> exists but not a Directory!", new Object[] { b.getAbsoluteFile() }));
      }
    }
    finally {}
    b.mkdirs();
    label166:
  }
  
  /* Error */
  public static void a(List<String> paramList)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 19	com/alipay/a/a/f:b	Ljava/io/File;
    //   6: ifnonnull +19 -> 25
    //   9: new 120	java/lang/IllegalStateException
    //   12: dup
    //   13: ldc 122
    //   15: invokespecial 125	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   18: athrow
    //   19: astore_0
    //   20: ldc 2
    //   22: monitorexit
    //   23: aload_0
    //   24: athrow
    //   25: new 278	java/lang/StringBuffer
    //   28: dup
    //   29: new 280	java/text/SimpleDateFormat
    //   32: dup
    //   33: ldc_w 282
    //   36: invokespecial 283	java/text/SimpleDateFormat:<init>	(Ljava/lang/String;)V
    //   39: invokestatic 289	java/util/Calendar:getInstance	()Ljava/util/Calendar;
    //   42: invokevirtual 293	java/util/Calendar:getTime	()Ljava/util/Date;
    //   45: invokevirtual 296	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   48: invokespecial 297	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   51: astore 4
    //   53: aload 4
    //   55: new 227	java/lang/StringBuilder
    //   58: dup
    //   59: ldc_w 262
    //   62: invokespecial 238	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   65: getstatic 23	com/alipay/a/a/f:d	Ljava/lang/String;
    //   68: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 245	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokevirtual 300	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   77: pop
    //   78: aload 4
    //   80: new 227	java/lang/StringBuilder
    //   83: dup
    //   84: ldc_w 262
    //   87: invokespecial 238	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   90: getstatic 25	com/alipay/a/a/f:e	Ljava/lang/String;
    //   93: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: invokevirtual 245	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   99: invokevirtual 300	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   102: pop
    //   103: aload_0
    //   104: invokeinterface 304 1 0
    //   109: astore_0
    //   110: aload_0
    //   111: invokeinterface 309 1 0
    //   116: istore 7
    //   118: iload 7
    //   120: ifne +167 -> 287
    //   123: aconst_null
    //   124: astore_3
    //   125: aconst_null
    //   126: astore_0
    //   127: aload_0
    //   128: astore_2
    //   129: aload_3
    //   130: astore_1
    //   131: invokestatic 311	com/alipay/a/a/f:b	()J
    //   134: lstore 5
    //   136: aload_0
    //   137: astore_2
    //   138: aload_3
    //   139: astore_1
    //   140: getstatic 27	com/alipay/a/a/f:a	Z
    //   143: ifeq +32 -> 175
    //   146: aload_0
    //   147: astore_2
    //   148: aload_3
    //   149: astore_1
    //   150: getstatic 31	com/alipay/a/a/f:f	Ljava/lang/String;
    //   153: new 227	java/lang/StringBuilder
    //   156: dup
    //   157: ldc_w 313
    //   160: invokespecial 238	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   163: lload 5
    //   165: invokevirtual 316	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   168: invokevirtual 245	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   171: invokestatic 136	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   174: pop
    //   175: aload_0
    //   176: astore_2
    //   177: aload_3
    //   178: astore_1
    //   179: lload 5
    //   181: aload 4
    //   183: invokevirtual 318	java/lang/StringBuffer:length	()I
    //   186: i2l
    //   187: ladd
    //   188: ldc2_w 319
    //   191: lcmp
    //   192: ifgt +131 -> 323
    //   195: aload_0
    //   196: astore_2
    //   197: aload_3
    //   198: astore_1
    //   199: new 322	java/io/FileWriter
    //   202: dup
    //   203: getstatic 21	com/alipay/a/a/f:c	Ljava/io/File;
    //   206: iconst_1
    //   207: invokespecial 325	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   210: astore_0
    //   211: aload_0
    //   212: astore_2
    //   213: aload_0
    //   214: astore_1
    //   215: aload 4
    //   217: ldc_w 327
    //   220: invokevirtual 300	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   223: pop
    //   224: aload_0
    //   225: astore_2
    //   226: aload_0
    //   227: astore_1
    //   228: getstatic 27	com/alipay/a/a/f:a	Z
    //   231: ifeq +35 -> 266
    //   234: aload_0
    //   235: astore_2
    //   236: aload_0
    //   237: astore_1
    //   238: getstatic 31	com/alipay/a/a/f:f	Ljava/lang/String;
    //   241: new 227	java/lang/StringBuilder
    //   244: dup
    //   245: ldc_w 329
    //   248: invokespecial 238	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   251: aload 4
    //   253: invokevirtual 330	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   256: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 245	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: invokestatic 136	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   265: pop
    //   266: aload_0
    //   267: astore_2
    //   268: aload_0
    //   269: astore_1
    //   270: aload_0
    //   271: aload 4
    //   273: invokevirtual 330	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   276: invokevirtual 333	java/io/FileWriter:write	(Ljava/lang/String;)V
    //   279: aload_0
    //   280: invokevirtual 334	java/io/FileWriter:close	()V
    //   283: ldc 2
    //   285: monitorexit
    //   286: return
    //   287: aload_0
    //   288: invokeinterface 338 1 0
    //   293: checkcast 83	java/lang/String
    //   296: astore_1
    //   297: aload 4
    //   299: new 227	java/lang/StringBuilder
    //   302: dup
    //   303: ldc_w 262
    //   306: invokespecial 238	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   309: aload_1
    //   310: invokevirtual 244	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   313: invokevirtual 245	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   316: invokevirtual 300	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   319: pop
    //   320: goto -210 -> 110
    //   323: aload_0
    //   324: astore_2
    //   325: aload_3
    //   326: astore_1
    //   327: new 322	java/io/FileWriter
    //   330: dup
    //   331: getstatic 21	com/alipay/a/a/f:c	Ljava/io/File;
    //   334: invokespecial 339	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   337: astore_0
    //   338: goto -127 -> 211
    //   341: astore_0
    //   342: aload_2
    //   343: astore_1
    //   344: aload_0
    //   345: invokevirtual 340	java/lang/Exception:printStackTrace	()V
    //   348: aload_2
    //   349: ifnull -66 -> 283
    //   352: aload_2
    //   353: invokevirtual 334	java/io/FileWriter:close	()V
    //   356: goto -73 -> 283
    //   359: astore_0
    //   360: getstatic 31	com/alipay/a/a/f:f	Ljava/lang/String;
    //   363: ldc_w 342
    //   366: invokestatic 103	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   369: pop
    //   370: aload_0
    //   371: invokevirtual 95	java/io/IOException:printStackTrace	()V
    //   374: goto -91 -> 283
    //   377: astore_0
    //   378: aload_1
    //   379: ifnull +7 -> 386
    //   382: aload_1
    //   383: invokevirtual 334	java/io/FileWriter:close	()V
    //   386: aload_0
    //   387: athrow
    //   388: astore_1
    //   389: getstatic 31	com/alipay/a/a/f:f	Ljava/lang/String;
    //   392: ldc_w 342
    //   395: invokestatic 103	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   398: pop
    //   399: aload_1
    //   400: invokevirtual 95	java/io/IOException:printStackTrace	()V
    //   403: goto -17 -> 386
    //   406: astore_0
    //   407: getstatic 31	com/alipay/a/a/f:f	Ljava/lang/String;
    //   410: ldc_w 342
    //   413: invokestatic 103	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   416: pop
    //   417: aload_0
    //   418: invokevirtual 95	java/io/IOException:printStackTrace	()V
    //   421: goto -138 -> 283
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	424	0	paramList	List<String>
    //   130	253	1	localObject1	Object
    //   388	12	1	localIOException	IOException
    //   128	225	2	localList	List<String>
    //   124	202	3	localObject2	Object
    //   51	247	4	localStringBuffer	StringBuffer
    //   134	46	5	l	long
    //   116	3	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	19	19	finally
    //   25	110	19	finally
    //   110	118	19	finally
    //   279	283	19	finally
    //   287	320	19	finally
    //   352	356	19	finally
    //   360	374	19	finally
    //   382	386	19	finally
    //   386	388	19	finally
    //   389	403	19	finally
    //   407	421	19	finally
    //   131	136	341	java/lang/Exception
    //   140	146	341	java/lang/Exception
    //   150	175	341	java/lang/Exception
    //   179	195	341	java/lang/Exception
    //   199	211	341	java/lang/Exception
    //   215	224	341	java/lang/Exception
    //   228	234	341	java/lang/Exception
    //   238	266	341	java/lang/Exception
    //   270	279	341	java/lang/Exception
    //   327	338	341	java/lang/Exception
    //   352	356	359	java/io/IOException
    //   131	136	377	finally
    //   140	146	377	finally
    //   150	175	377	finally
    //   179	195	377	finally
    //   199	211	377	finally
    //   215	224	377	finally
    //   228	234	377	finally
    //   238	266	377	finally
    //   270	279	377	finally
    //   327	338	377	finally
    //   344	348	377	finally
    //   382	386	388	java/io/IOException
    //   279	283	406	java/io/IOException
  }
  
  private static long b()
  {
    for (;;)
    {
      try
      {
        c = new File(b, c());
        if (a) {
          Log.d(f, "current logfile is:" + c.getAbsolutePath());
        }
        boolean bool = c.exists();
        if (!bool) {
          try
          {
            c.createNewFile();
            l = 0L;
            return l;
          }
          catch (IOException localIOException)
          {
            localIOException.printStackTrace();
            continue;
          }
        }
        long l = c.length();
      }
      finally {}
    }
  }
  
  private static String c()
  {
    Date localDate = Calendar.getInstance().getTime();
    return new SimpleDateFormat("yyyyMMdd").format(localDate) + ".log";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\alipay\a\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */