package com.pingan.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.Looper;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.widget.Toast;
import com.pingan.main.PAVideoSdkApiManager;
import java.io.File;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public final class c
  implements Thread.UncaughtExceptionHandler
{
  public static final String a = PAVideoSdkApiManager.getLogRootPath() + "/crash/";
  private static final DateFormat b = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
  private static final DateFormat c = new SimpleDateFormat("yyyy-MM-dd");
  private static c e = new c();
  private Thread.UncaughtExceptionHandler d;
  private Context f;
  private Map<String, String> g = new HashMap();
  private String h = "";
  
  private a a(Throwable paramThrowable)
  {
    a locala = new a();
    label225:
    for (;;)
    {
      try
      {
        locala.b = c(this.f);
        locala.c = b.format(new Date());
        Object localObject;
        if (paramThrowable == null)
        {
          paramThrowable = null;
          locala.f = paramThrowable;
          paramThrowable = (ConnectivityManager)this.f.getSystemService("connectivity");
          if (paramThrowable == null) {
            break label225;
          }
          paramThrowable = paramThrowable.getActiveNetworkInfo();
          if (paramThrowable == null) {
            break label225;
          }
          localObject = paramThrowable.getExtraInfo();
          if ((localObject != null) && ("".equals(localObject)))
          {
            paramThrowable = paramThrowable.getTypeName() + File.separator + (String)localObject;
            locala.e = paramThrowable;
            locala.d = Build.VERSION.RELEASE;
            locala.a = "";
            return locala;
          }
        }
        else
        {
          localObject = new StringWriter();
          PrintWriter localPrintWriter = new PrintWriter((Writer)localObject);
          paramThrowable.printStackTrace(localPrintWriter);
          localPrintWriter.flush();
          localPrintWriter.close();
          paramThrowable = paramThrowable.toString() + localObject.toString();
          continue;
        }
        paramThrowable = paramThrowable.getTypeName();
        continue;
        paramThrowable = "";
      }
      catch (Exception paramThrowable)
      {
        Log.d("CrashHandler", "prepareBreakdownLog Exception", paramThrowable);
        paramThrowable.printStackTrace();
        return locala;
      }
    }
  }
  
  public static c a()
  {
    return e;
  }
  
  /* Error */
  private static String a(File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: invokestatic 191	java/lang/System:currentTimeMillis	()J
    //   5: lstore 6
    //   7: new 193	java/io/BufferedInputStream
    //   10: dup
    //   11: new 195	java/io/FileInputStream
    //   14: dup
    //   15: aload_0
    //   16: invokespecial 198	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   19: invokespecial 201	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   22: astore_2
    //   23: aload_2
    //   24: astore_1
    //   25: aload_0
    //   26: invokevirtual 204	java/io/File:length	()J
    //   29: lstore 8
    //   31: lload 8
    //   33: lconst_0
    //   34: lcmp
    //   35: ifle +99 -> 134
    //   38: lload 8
    //   40: l2i
    //   41: istore 5
    //   43: aload_2
    //   44: astore_1
    //   45: new 206	java/io/ByteArrayOutputStream
    //   48: dup
    //   49: iload 5
    //   51: invokespecial 209	java/io/ByteArrayOutputStream:<init>	(I)V
    //   54: astore_0
    //   55: aload_2
    //   56: astore_1
    //   57: sipush 4096
    //   60: newarray <illegal type>
    //   62: astore 4
    //   64: aload_2
    //   65: astore_1
    //   66: aload_2
    //   67: aload 4
    //   69: invokevirtual 215	java/io/InputStream:read	([B)I
    //   72: istore 5
    //   74: iload 5
    //   76: ifgt +66 -> 142
    //   79: aload_2
    //   80: astore_1
    //   81: aload_0
    //   82: invokevirtual 216	java/io/ByteArrayOutputStream:close	()V
    //   85: aload_2
    //   86: astore_1
    //   87: aload_0
    //   88: invokevirtual 217	java/io/ByteArrayOutputStream:toString	()Ljava/lang/String;
    //   91: astore_0
    //   92: aload_2
    //   93: invokevirtual 218	java/io/InputStream:close	()V
    //   96: invokestatic 191	java/lang/System:currentTimeMillis	()J
    //   99: lstore 8
    //   101: getstatic 222	java/lang/System:out	Ljava/io/PrintStream;
    //   104: new 41	java/lang/StringBuilder
    //   107: dup
    //   108: ldc -32
    //   110: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   113: lload 8
    //   115: lload 6
    //   117: lsub
    //   118: invokevirtual 227	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   121: ldc -27
    //   123: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   129: invokevirtual 234	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   132: aload_0
    //   133: areturn
    //   134: sipush 1024
    //   137: istore 5
    //   139: goto -96 -> 43
    //   142: aload_2
    //   143: astore_1
    //   144: aload_0
    //   145: aload 4
    //   147: iconst_0
    //   148: iload 5
    //   150: invokevirtual 238	java/io/ByteArrayOutputStream:write	([BII)V
    //   153: goto -89 -> 64
    //   156: astore_0
    //   157: aload_2
    //   158: astore_1
    //   159: aload_0
    //   160: invokevirtual 239	java/io/IOException:printStackTrace	()V
    //   163: aload_2
    //   164: astore_1
    //   165: ldc -84
    //   167: ldc -15
    //   169: aload_0
    //   170: invokestatic 179	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   173: pop
    //   174: aload_3
    //   175: astore_0
    //   176: aload_2
    //   177: ifnull -81 -> 96
    //   180: aload_2
    //   181: invokevirtual 218	java/io/InputStream:close	()V
    //   184: aload_3
    //   185: astore_0
    //   186: goto -90 -> 96
    //   189: astore_0
    //   190: aload_3
    //   191: astore_0
    //   192: goto -96 -> 96
    //   195: astore_0
    //   196: aconst_null
    //   197: astore_2
    //   198: aload_2
    //   199: astore_1
    //   200: aload_0
    //   201: invokevirtual 181	java/lang/Exception:printStackTrace	()V
    //   204: aload_2
    //   205: astore_1
    //   206: ldc -84
    //   208: ldc -15
    //   210: aload_0
    //   211: invokestatic 179	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   214: pop
    //   215: aload_3
    //   216: astore_0
    //   217: aload_2
    //   218: ifnull -122 -> 96
    //   221: aload_2
    //   222: invokevirtual 218	java/io/InputStream:close	()V
    //   225: aload_3
    //   226: astore_0
    //   227: goto -131 -> 96
    //   230: astore_0
    //   231: aload_3
    //   232: astore_0
    //   233: goto -137 -> 96
    //   236: astore_0
    //   237: aconst_null
    //   238: astore_1
    //   239: aload_1
    //   240: ifnull +7 -> 247
    //   243: aload_1
    //   244: invokevirtual 218	java/io/InputStream:close	()V
    //   247: aload_0
    //   248: athrow
    //   249: astore_1
    //   250: goto -3 -> 247
    //   253: astore_1
    //   254: goto -158 -> 96
    //   257: astore_0
    //   258: goto -19 -> 239
    //   261: astore_0
    //   262: goto -64 -> 198
    //   265: astore_0
    //   266: aconst_null
    //   267: astore_2
    //   268: goto -111 -> 157
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	271	0	paramFile	File
    //   24	220	1	localBufferedInputStream1	java.io.BufferedInputStream
    //   249	1	1	localException1	Exception
    //   253	1	1	localException2	Exception
    //   22	246	2	localBufferedInputStream2	java.io.BufferedInputStream
    //   1	231	3	localObject	Object
    //   62	84	4	arrayOfByte	byte[]
    //   41	108	5	i	int
    //   5	111	6	l1	long
    //   29	85	8	l2	long
    // Exception table:
    //   from	to	target	type
    //   25	31	156	java/io/IOException
    //   45	55	156	java/io/IOException
    //   57	64	156	java/io/IOException
    //   66	74	156	java/io/IOException
    //   81	85	156	java/io/IOException
    //   87	92	156	java/io/IOException
    //   144	153	156	java/io/IOException
    //   180	184	189	java/lang/Exception
    //   7	23	195	java/lang/Exception
    //   221	225	230	java/lang/Exception
    //   7	23	236	finally
    //   243	247	249	java/lang/Exception
    //   92	96	253	java/lang/Exception
    //   25	31	257	finally
    //   45	55	257	finally
    //   57	64	257	finally
    //   66	74	257	finally
    //   81	85	257	finally
    //   87	92	257	finally
    //   144	153	257	finally
    //   159	163	257	finally
    //   165	174	257	finally
    //   200	204	257	finally
    //   206	215	257	finally
    //   25	31	261	java/lang/Exception
    //   45	55	261	java/lang/Exception
    //   57	64	261	java/lang/Exception
    //   66	74	261	java/lang/Exception
    //   81	85	261	java/lang/Exception
    //   87	92	261	java/lang/Exception
    //   144	153	261	java/lang/Exception
    //   7	23	265	java/io/IOException
  }
  
  private static String b(Context paramContext)
  {
    try
    {
      paramContext = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      return paramContext;
    }
    catch (Exception paramContext)
    {
      paramContext.printStackTrace();
    }
    return "Not Found";
  }
  
  private static String c(Context paramContext)
  {
    try
    {
      paramContext = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 16384).versionName;
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      Log.d("CrashHandler", "UCPApp getVersionName NameNotFoundException", paramContext);
    }
    return null;
  }
  
  private static String d(Context paramContext)
  {
    try
    {
      PackageManager localPackageManager = paramContext.getPackageManager();
      paramContext = (String)localPackageManager.getPackageInfo(paramContext.getPackageName(), 16384).applicationInfo.loadLabel(localPackageManager);
      return paramContext;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      paramContext.printStackTrace();
    }
    return null;
  }
  
  public final void a(Context paramContext)
  {
    Log.e("CrashHandler", "crash-->logPath=" + a);
    this.f = paramContext;
    this.d = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }
  
  /* Error */
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aload_2
    //   7: ifnonnull +40 -> 47
    //   10: iconst_0
    //   11: istore 9
    //   13: iload 9
    //   15: ifne +719 -> 734
    //   18: aload_0
    //   19: getfield 297	com/pingan/a/c:d	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   22: ifnull +712 -> 734
    //   25: ldc_w 307
    //   28: ldc_w 309
    //   31: invokestatic 312	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   34: pop
    //   35: aload_0
    //   36: getfield 297	com/pingan/a/c:d	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   39: aload_1
    //   40: aload_2
    //   41: invokeinterface 314 3 0
    //   46: return
    //   47: new 8	com/pingan/a/c$1
    //   50: dup
    //   51: aload_0
    //   52: invokespecial 317	com/pingan/a/c$1:<init>	(Lcom/pingan/a/c;)V
    //   55: invokevirtual 320	com/pingan/a/c$1:start	()V
    //   58: new 135	java/io/File
    //   61: dup
    //   62: getstatic 65	com/pingan/a/c:a	Ljava/lang/String;
    //   65: invokespecial 321	java/io/File:<init>	(Ljava/lang/String;)V
    //   68: astore_3
    //   69: aload_3
    //   70: invokevirtual 325	java/io/File:exists	()Z
    //   73: ifne +8 -> 81
    //   76: aload_3
    //   77: invokevirtual 328	java/io/File:mkdirs	()Z
    //   80: pop
    //   81: getstatic 39	com/pingan/a/c:c	Ljava/text/DateFormat;
    //   84: new 96	java/util/Date
    //   87: dup
    //   88: invokespecial 97	java/util/Date:<init>	()V
    //   91: invokevirtual 103	java/text/DateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   94: astore_3
    //   95: aload_0
    //   96: new 41	java/lang/StringBuilder
    //   99: dup
    //   100: ldc_w 330
    //   103: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   106: aload_3
    //   107: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: ldc_w 332
    //   113: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   119: putfield 80	com/pingan/a/c:h	Ljava/lang/String;
    //   122: new 135	java/io/File
    //   125: dup
    //   126: new 41	java/lang/StringBuilder
    //   129: dup
    //   130: getstatic 65	com/pingan/a/c:a	Ljava/lang/String;
    //   133: invokestatic 53	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   136: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   139: aload_0
    //   140: getfield 80	com/pingan/a/c:h	Ljava/lang/String;
    //   143: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   149: invokespecial 321	java/io/File:<init>	(Ljava/lang/String;)V
    //   152: astore_3
    //   153: ldc -84
    //   155: new 41	java/lang/StringBuilder
    //   158: dup
    //   159: ldc_w 334
    //   162: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   165: aload_3
    //   166: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: invokestatic 289	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   175: pop
    //   176: aload_3
    //   177: invokevirtual 325	java/io/File:exists	()Z
    //   180: ifeq +633 -> 813
    //   183: aload_3
    //   184: invokestatic 339	com/pingan/a/c:a	(Ljava/io/File;)Ljava/lang/String;
    //   187: astore_3
    //   188: new 341	com/pingan/a/b
    //   191: dup
    //   192: invokespecial 342	com/pingan/a/b:<init>	()V
    //   195: astore 8
    //   197: aload 8
    //   199: ldc_w 344
    //   202: putfield 345	com/pingan/a/b:a	Ljava/lang/String;
    //   205: aload 8
    //   207: aload_0
    //   208: getfield 83	com/pingan/a/c:f	Landroid/content/Context;
    //   211: invokestatic 347	com/pingan/a/c:d	(Landroid/content/Context;)Ljava/lang/String;
    //   214: putfield 348	com/pingan/a/b:b	Ljava/lang/String;
    //   217: aload 8
    //   219: aload_0
    //   220: getfield 83	com/pingan/a/c:f	Landroid/content/Context;
    //   223: invokestatic 350	com/pingan/a/c:b	(Landroid/content/Context;)Ljava/lang/String;
    //   226: putfield 351	com/pingan/a/b:c	Ljava/lang/String;
    //   229: aload 8
    //   231: new 41	java/lang/StringBuilder
    //   234: dup
    //   235: getstatic 356	android/os/Build:BRAND	Ljava/lang/String;
    //   238: invokestatic 53	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   241: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   244: getstatic 138	java/io/File:separator	Ljava/lang/String;
    //   247: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   250: getstatic 359	android/os/Build:MODEL	Ljava/lang/String;
    //   253: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   256: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   259: putfield 360	com/pingan/a/b:d	Ljava/lang/String;
    //   262: aload 8
    //   264: new 362	java/util/ArrayList
    //   267: dup
    //   268: invokespecial 363	java/util/ArrayList:<init>	()V
    //   271: putfield 366	com/pingan/a/b:f	Ljava/util/List;
    //   274: aload_0
    //   275: getfield 83	com/pingan/a/c:f	Landroid/content/Context;
    //   278: astore 4
    //   280: new 368	android/util/DisplayMetrics
    //   283: dup
    //   284: invokespecial 369	android/util/DisplayMetrics:<init>	()V
    //   287: astore 7
    //   289: aload 4
    //   291: ldc_w 371
    //   294: invokevirtual 115	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   297: checkcast 373	android/view/WindowManager
    //   300: invokeinterface 377 1 0
    //   305: aload 7
    //   307: invokevirtual 383	android/view/Display:getMetrics	(Landroid/util/DisplayMetrics;)V
    //   310: aload 7
    //   312: getfield 387	android/util/DisplayMetrics:widthPixels	I
    //   315: istore 9
    //   317: aload 7
    //   319: getfield 390	android/util/DisplayMetrics:heightPixels	I
    //   322: istore 10
    //   324: aload 8
    //   326: new 41	java/lang/StringBuilder
    //   329: dup
    //   330: iload 9
    //   332: invokestatic 393	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   335: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   338: ldc_w 395
    //   341: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   344: iload 10
    //   346: invokevirtual 398	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   349: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   352: putfield 399	com/pingan/a/b:e	Ljava/lang/String;
    //   355: aload 8
    //   357: getfield 366	com/pingan/a/b:f	Ljava/util/List;
    //   360: astore 7
    //   362: aload 7
    //   364: astore 4
    //   366: aload 7
    //   368: ifnonnull +19 -> 387
    //   371: new 362	java/util/ArrayList
    //   374: dup
    //   375: invokespecial 363	java/util/ArrayList:<init>	()V
    //   378: astore 4
    //   380: aload 8
    //   382: aload 4
    //   384: putfield 366	com/pingan/a/b:f	Ljava/util/List;
    //   387: aload_0
    //   388: aload_2
    //   389: invokespecial 401	com/pingan/a/c:a	(Ljava/lang/Throwable;)Lcom/pingan/a/a;
    //   392: astore 7
    //   394: ldc -84
    //   396: new 41	java/lang/StringBuilder
    //   399: dup
    //   400: ldc_w 403
    //   403: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   406: aload 7
    //   408: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   411: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   414: invokestatic 289	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   417: pop
    //   418: aload 4
    //   420: aload 7
    //   422: invokeinterface 408 2 0
    //   427: pop
    //   428: ldc -84
    //   430: new 41	java/lang/StringBuilder
    //   433: dup
    //   434: ldc_w 410
    //   437: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   440: aload 4
    //   442: invokeinterface 414 1 0
    //   447: invokevirtual 398	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   450: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   453: invokestatic 289	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   456: pop
    //   457: new 416	java/lang/StringBuffer
    //   460: dup
    //   461: invokespecial 417	java/lang/StringBuffer:<init>	()V
    //   464: astore 7
    //   466: aload_3
    //   467: ifnull +10 -> 477
    //   470: aload 7
    //   472: aload_3
    //   473: invokevirtual 420	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   476: pop
    //   477: aload 7
    //   479: ldc_w 422
    //   482: invokevirtual 420	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   485: pop
    //   486: aload 7
    //   488: ldc_w 422
    //   491: invokevirtual 420	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   494: pop
    //   495: aload 7
    //   497: ldc_w 422
    //   500: invokevirtual 420	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   503: pop
    //   504: aload 7
    //   506: aload 8
    //   508: invokevirtual 423	com/pingan/a/b:toString	()Ljava/lang/String;
    //   511: invokevirtual 420	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   514: pop
    //   515: new 135	java/io/File
    //   518: dup
    //   519: getstatic 65	com/pingan/a/c:a	Ljava/lang/String;
    //   522: invokespecial 321	java/io/File:<init>	(Ljava/lang/String;)V
    //   525: astore_3
    //   526: aload_3
    //   527: invokevirtual 325	java/io/File:exists	()Z
    //   530: ifne +8 -> 538
    //   533: aload_3
    //   534: invokevirtual 328	java/io/File:mkdirs	()Z
    //   537: pop
    //   538: new 425	java/io/FileOutputStream
    //   541: dup
    //   542: new 135	java/io/File
    //   545: dup
    //   546: new 41	java/lang/StringBuilder
    //   549: dup
    //   550: getstatic 65	com/pingan/a/c:a	Ljava/lang/String;
    //   553: invokestatic 53	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   556: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   559: aload_0
    //   560: getfield 80	com/pingan/a/c:h	Ljava/lang/String;
    //   563: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   566: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   569: invokespecial 321	java/io/File:<init>	(Ljava/lang/String;)V
    //   572: invokespecial 426	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   575: astore_3
    //   576: new 428	java/io/ObjectOutputStream
    //   579: dup
    //   580: aload_3
    //   581: invokespecial 431	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   584: astore 4
    //   586: aload 4
    //   588: aload 7
    //   590: invokevirtual 432	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   593: invokevirtual 436	java/lang/String:getBytes	()[B
    //   596: invokevirtual 439	java/io/ObjectOutputStream:write	([B)V
    //   599: aload 4
    //   601: invokevirtual 440	java/io/ObjectOutputStream:flush	()V
    //   604: aload_3
    //   605: invokevirtual 441	java/io/FileOutputStream:close	()V
    //   608: aload 4
    //   610: invokevirtual 442	java/io/ObjectOutputStream:close	()V
    //   613: iconst_1
    //   614: istore 9
    //   616: goto -603 -> 13
    //   619: astore 4
    //   621: aload 4
    //   623: invokevirtual 181	java/lang/Exception:printStackTrace	()V
    //   626: ldc -84
    //   628: ldc_w 444
    //   631: aload 4
    //   633: invokestatic 446	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   636: pop
    //   637: goto -282 -> 355
    //   640: astore 5
    //   642: aconst_null
    //   643: astore_3
    //   644: aload 6
    //   646: astore 4
    //   648: ldc -84
    //   650: ldc 78
    //   652: aload 5
    //   654: invokestatic 179	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   657: pop
    //   658: ldc -84
    //   660: new 41	java/lang/StringBuilder
    //   663: dup
    //   664: ldc_w 448
    //   667: invokespecial 54	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   670: aload 5
    //   672: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   675: invokevirtual 63	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   678: invokestatic 450	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   681: pop
    //   682: aload_3
    //   683: ifnull +7 -> 690
    //   686: aload_3
    //   687: invokevirtual 441	java/io/FileOutputStream:close	()V
    //   690: aload 4
    //   692: ifnull -79 -> 613
    //   695: aload 4
    //   697: invokevirtual 442	java/io/ObjectOutputStream:close	()V
    //   700: goto -87 -> 613
    //   703: astore_3
    //   704: goto -91 -> 613
    //   707: astore_1
    //   708: aconst_null
    //   709: astore_3
    //   710: aload 5
    //   712: astore 4
    //   714: aload_3
    //   715: ifnull +7 -> 722
    //   718: aload_3
    //   719: invokevirtual 441	java/io/FileOutputStream:close	()V
    //   722: aload 4
    //   724: ifnull +8 -> 732
    //   727: aload 4
    //   729: invokevirtual 442	java/io/ObjectOutputStream:close	()V
    //   732: aload_1
    //   733: athrow
    //   734: ldc_w 307
    //   737: ldc_w 452
    //   740: invokestatic 312	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;)I
    //   743: pop
    //   744: ldc2_w 453
    //   747: invokestatic 458	java/lang/Thread:sleep	(J)V
    //   750: invokestatic 463	android/os/Process:myPid	()I
    //   753: invokestatic 466	android/os/Process:killProcess	(I)V
    //   756: iconst_1
    //   757: invokestatic 469	java/lang/System:exit	(I)V
    //   760: return
    //   761: astore_1
    //   762: ldc -84
    //   764: ldc_w 471
    //   767: aload_1
    //   768: invokestatic 446	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   771: pop
    //   772: goto -22 -> 750
    //   775: astore_3
    //   776: goto -163 -> 613
    //   779: astore_2
    //   780: goto -48 -> 732
    //   783: astore_1
    //   784: aload 5
    //   786: astore 4
    //   788: goto -74 -> 714
    //   791: astore_1
    //   792: goto -78 -> 714
    //   795: astore_1
    //   796: goto -82 -> 714
    //   799: astore 5
    //   801: aload 6
    //   803: astore 4
    //   805: goto -157 -> 648
    //   808: astore 5
    //   810: goto -162 -> 648
    //   813: aconst_null
    //   814: astore_3
    //   815: goto -627 -> 188
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	818	0	this	c
    //   0	818	1	paramThread	Thread
    //   0	818	2	paramThrowable	Throwable
    //   68	619	3	localObject1	Object
    //   703	1	3	localIOException1	java.io.IOException
    //   709	10	3	localObject2	Object
    //   775	1	3	localIOException2	java.io.IOException
    //   814	1	3	localObject3	Object
    //   278	331	4	localObject4	Object
    //   619	13	4	localException1	Exception
    //   646	158	4	localObject5	Object
    //   1	1	5	localObject6	Object
    //   640	145	5	localException2	Exception
    //   799	1	5	localException3	Exception
    //   808	1	5	localException4	Exception
    //   4	798	6	localObject7	Object
    //   287	302	7	localObject8	Object
    //   195	312	8	localb	b
    //   11	604	9	i	int
    //   322	23	10	j	int
    // Exception table:
    //   from	to	target	type
    //   197	355	619	java/lang/Exception
    //   457	466	640	java/lang/Exception
    //   470	477	640	java/lang/Exception
    //   477	538	640	java/lang/Exception
    //   538	576	640	java/lang/Exception
    //   686	690	703	java/io/IOException
    //   695	700	703	java/io/IOException
    //   457	466	707	finally
    //   470	477	707	finally
    //   477	538	707	finally
    //   538	576	707	finally
    //   744	750	761	java/lang/InterruptedException
    //   604	613	775	java/io/IOException
    //   718	722	779	java/io/IOException
    //   727	732	779	java/io/IOException
    //   576	586	783	finally
    //   586	604	791	finally
    //   648	682	795	finally
    //   576	586	799	java/lang/Exception
    //   586	604	808	java/lang/Exception
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\pingan\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */