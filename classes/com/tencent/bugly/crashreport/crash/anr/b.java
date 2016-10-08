package com.tencent.bugly.crashreport.crash.anr;

import android.app.ActivityManager;
import android.app.ActivityManager.ProcessErrorStateInfo;
import android.content.Context;
import android.os.FileObserver;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.w;
import com.tencent.bugly.proguard.x;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public final class b
{
  private AtomicInteger a = new AtomicInteger(0);
  private long b = -1L;
  private final Context c;
  private final com.tencent.bugly.crashreport.common.info.a d;
  private final v e;
  private final com.tencent.bugly.crashreport.common.strategy.a f;
  private final String g;
  private final com.tencent.bugly.crashreport.crash.b h;
  private FileObserver i;
  private boolean j = true;
  
  public b(Context paramContext, com.tencent.bugly.crashreport.common.strategy.a parama, com.tencent.bugly.crashreport.common.info.a parama1, v paramv, com.tencent.bugly.crashreport.crash.b paramb)
  {
    Object localObject;
    if (paramContext == null) {
      localObject = paramContext;
    }
    for (;;)
    {
      this.c = ((Context)localObject);
      this.g = paramContext.getDir("bugly", 0).getAbsolutePath();
      this.d = parama1;
      this.e = paramv;
      this.f = parama;
      this.h = paramb;
      return;
      Context localContext = paramContext.getApplicationContext();
      localObject = localContext;
      if (localContext == null) {
        localObject = paramContext;
      }
    }
  }
  
  private static ActivityManager.ProcessErrorStateInfo a(Context paramContext, long paramLong)
  {
    paramLong = 10000L;
    if (10000L < 0L) {
      paramLong = 0L;
    }
    w.c("to find!", new Object[0]);
    paramContext = (ActivityManager)paramContext.getSystemService("activity");
    paramLong /= 500L;
    int k = 0;
    for (;;)
    {
      w.c("waiting!", new Object[0]);
      Object localObject = paramContext.getProcessesInErrorState();
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          ActivityManager.ProcessErrorStateInfo localProcessErrorStateInfo = (ActivityManager.ProcessErrorStateInfo)((Iterator)localObject).next();
          if (localProcessErrorStateInfo.condition == 2)
          {
            w.c("found!", new Object[0]);
            return localProcessErrorStateInfo;
          }
        }
      }
      try
      {
        Thread.sleep(500L);
        if (k >= paramLong)
        {
          w.c("end!", new Object[0]);
          return null;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
        k += 1;
      }
    }
  }
  
  private CrashDetailBean a(a parama)
  {
    localCrashDetailBean = new CrashDetailBean();
    try
    {
      localCrashDetailBean.B = com.tencent.bugly.proguard.a.i();
      localCrashDetailBean.C = com.tencent.bugly.proguard.a.g();
      localCrashDetailBean.D = com.tencent.bugly.proguard.a.k();
      localCrashDetailBean.E = this.d.o();
      localCrashDetailBean.F = this.d.n();
      localCrashDetailBean.G = this.d.p();
      localCrashDetailBean.w = com.tencent.bugly.proguard.a.a(this.c, c.d, null);
      localCrashDetailBean.x = x.a(true);
      localCrashDetailBean.b = 3;
      localCrashDetailBean.e = this.d.g();
      localCrashDetailBean.f = this.d.i;
      localCrashDetailBean.g = this.d.t();
      localCrashDetailBean.m = this.d.f();
      localCrashDetailBean.n = "ANR_EXCEPTION";
      localCrashDetailBean.o = parama.f;
      localCrashDetailBean.q = parama.g;
      localCrashDetailBean.N = new HashMap();
      localCrashDetailBean.N.put("BUGLY_CR_01", parama.e);
      int k = localCrashDetailBean.q.indexOf("\n");
      if (k > 0) {}
      for (String str = localCrashDetailBean.q.substring(0, k);; str = "GET_FAIL")
      {
        localCrashDetailBean.p = str;
        localCrashDetailBean.r = parama.c;
        localCrashDetailBean.u = com.tencent.bugly.proguard.a.b(localCrashDetailBean.q.getBytes());
        localCrashDetailBean.y = parama.b;
        localCrashDetailBean.z = this.d.d;
        localCrashDetailBean.A = "main(1)";
        localCrashDetailBean.H = this.d.v();
        localCrashDetailBean.h = this.d.s();
        localCrashDetailBean.i = this.d.E();
        localCrashDetailBean.v = parama.d;
        localCrashDetailBean.K = this.d.l;
        localCrashDetailBean.L = this.d.a;
        localCrashDetailBean.M = this.d.n;
        localCrashDetailBean.O = this.d.B();
        localCrashDetailBean.P = this.d.C();
        localCrashDetailBean.Q = this.d.w();
        localCrashDetailBean.R = this.d.A();
        return localCrashDetailBean;
      }
      return localCrashDetailBean;
    }
    catch (Throwable parama)
    {
      if (!w.a(parama)) {
        parama.printStackTrace();
      }
    }
  }
  
  private boolean a(Context paramContext, String paramString, ActivityManager.ProcessErrorStateInfo paramProcessErrorStateInfo, long paramLong, Map<String, String> paramMap)
  {
    this.f.c();
    int k;
    if (!this.f.b())
    {
      w.e("waiting for remote sync", new Object[0]);
      k = 0;
    }
    for (;;)
    {
      if (!this.f.b()) {}
      try
      {
        Thread.sleep(500L);
        int m = k + 500;
        k = m;
        if (m >= 5000)
        {
          Object localObject = new File(paramContext.getFilesDir(), "bugly/bugly_trace_" + paramLong + ".txt");
          paramContext = new a();
          paramContext.c = paramLong;
          paramContext.d = ((File)localObject).getAbsolutePath();
          paramContext.a = paramProcessErrorStateInfo.processName;
          paramContext.f = paramProcessErrorStateInfo.shortMsg;
          paramContext.e = paramProcessErrorStateInfo.longMsg;
          paramContext.b = paramMap;
          if (paramMap != null)
          {
            paramProcessErrorStateInfo = paramMap.keySet().iterator();
            while (paramProcessErrorStateInfo.hasNext())
            {
              localObject = (String)paramProcessErrorStateInfo.next();
              if (((String)localObject).startsWith("main(")) {
                paramContext.g = ((String)paramMap.get(localObject));
              }
            }
          }
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        for (;;)
        {
          localInterruptedException.printStackTrace();
        }
        paramLong = paramContext.c;
        paramProcessErrorStateInfo = paramContext.d;
        paramMap = paramContext.a;
        String str1 = paramContext.f;
        String str2 = paramContext.e;
        if (paramContext.b == null) {}
        for (k = 0;; k = paramContext.b.size())
        {
          w.c("anr tm:%d\ntr:%s\nproc:%s\nsMsg:%s\n lMsg:%s\n threads:%d", new Object[] { Long.valueOf(paramLong), paramProcessErrorStateInfo, paramMap, str1, str2, Integer.valueOf(k) });
          if (this.f.b()) {
            break;
          }
          w.e("crash report sync remote fail, will not upload to Bugly , print local for helpful!", new Object[0]);
          com.tencent.bugly.crashreport.crash.b.a("ANR", com.tencent.bugly.proguard.a.n(), paramContext.a, null, paramContext.e, null);
          return false;
        }
        if (!this.f.c().g)
        {
          w.d("ANR Report is closed!", new Object[0]);
          return false;
        }
        w.a("found visiable anr , start to upload!", new Object[0]);
        paramProcessErrorStateInfo = a(paramContext);
        if (paramProcessErrorStateInfo == null)
        {
          w.e("pack anr fail!", new Object[0]);
          return false;
        }
        c.a().a(paramProcessErrorStateInfo);
        if (paramProcessErrorStateInfo.a < 0L) {
          break label569;
        }
      }
    }
    w.a("backup anr record success!", new Object[0]);
    for (;;)
    {
      if ((paramString != null) && (new File(paramString).exists()))
      {
        this.a.set(3);
        if (a(paramString, paramContext.d, paramContext.a)) {
          w.a("backup trace success", new Object[0]);
        }
      }
      com.tencent.bugly.crashreport.crash.b.a("ANR", com.tencent.bugly.proguard.a.n(), paramContext.a, null, paramContext.e, paramProcessErrorStateInfo);
      if (!this.h.a(paramProcessErrorStateInfo)) {
        this.h.a(paramProcessErrorStateInfo, 5000L, true);
      }
      this.h.b(paramProcessErrorStateInfo);
      return true;
      label569:
      w.d("backup anr record fail!", new Object[0]);
    }
  }
  
  /* Error */
  private static boolean a(String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_2
    //   1: aload_0
    //   2: iconst_1
    //   3: invokestatic 513	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:readTargetDumpInfo	(Ljava/lang/String;Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +22 -> 30
    //   11: aload_3
    //   12: getfield 517	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a:d	Ljava/util/Map;
    //   15: ifnull +15 -> 30
    //   18: aload_3
    //   19: getfield 517	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a:d	Ljava/util/Map;
    //   22: invokeinterface 452 1 0
    //   27: ifgt +20 -> 47
    //   30: ldc_w 519
    //   33: iconst_1
    //   34: anewarray 4	java/lang/Object
    //   37: dup
    //   38: iconst_0
    //   39: aload_2
    //   40: aastore
    //   41: invokestatic 370	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   44: pop
    //   45: iconst_0
    //   46: ireturn
    //   47: new 58	java/io/File
    //   50: dup
    //   51: aload_1
    //   52: invokespecial 478	java/io/File:<init>	(Ljava/lang/String;)V
    //   55: astore_2
    //   56: aload_2
    //   57: invokevirtual 481	java/io/File:exists	()Z
    //   60: ifne +26 -> 86
    //   63: aload_2
    //   64: invokevirtual 522	java/io/File:getParentFile	()Ljava/io/File;
    //   67: invokevirtual 481	java/io/File:exists	()Z
    //   70: ifne +11 -> 81
    //   73: aload_2
    //   74: invokevirtual 522	java/io/File:getParentFile	()Ljava/io/File;
    //   77: invokevirtual 525	java/io/File:mkdirs	()Z
    //   80: pop
    //   81: aload_2
    //   82: invokevirtual 528	java/io/File:createNewFile	()Z
    //   85: pop
    //   86: aload_2
    //   87: invokevirtual 481	java/io/File:exists	()Z
    //   90: ifeq +10 -> 100
    //   93: aload_2
    //   94: invokevirtual 531	java/io/File:canWrite	()Z
    //   97: ifne +85 -> 182
    //   100: ldc_w 533
    //   103: iconst_1
    //   104: anewarray 4	java/lang/Object
    //   107: dup
    //   108: iconst_0
    //   109: aload_1
    //   110: aastore
    //   111: invokestatic 370	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   114: pop
    //   115: iconst_0
    //   116: ireturn
    //   117: astore_0
    //   118: aload_0
    //   119: invokestatic 357	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   122: ifne +7 -> 129
    //   125: aload_0
    //   126: invokevirtual 534	java/lang/Exception:printStackTrace	()V
    //   129: ldc_w 536
    //   132: iconst_2
    //   133: anewarray 4	java/lang/Object
    //   136: dup
    //   137: iconst_0
    //   138: new 376	java/lang/StringBuilder
    //   141: dup
    //   142: invokespecial 537	java/lang/StringBuilder:<init>	()V
    //   145: aload_0
    //   146: invokevirtual 541	java/lang/Object:getClass	()Ljava/lang/Class;
    //   149: invokevirtual 546	java/lang/Class:getName	()Ljava/lang/String;
    //   152: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: ldc_w 548
    //   158: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   161: aload_0
    //   162: invokevirtual 551	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   165: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   168: invokevirtual 393	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   171: aastore
    //   172: dup
    //   173: iconst_1
    //   174: aload_1
    //   175: aastore
    //   176: invokestatic 370	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   179: pop
    //   180: iconst_0
    //   181: ireturn
    //   182: aconst_null
    //   183: astore_0
    //   184: new 553	java/io/BufferedWriter
    //   187: dup
    //   188: new 555	java/io/FileWriter
    //   191: dup
    //   192: aload_2
    //   193: iconst_0
    //   194: invokespecial 558	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   197: invokespecial 561	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   200: astore_1
    //   201: aload_3
    //   202: getfield 517	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a:d	Ljava/util/Map;
    //   205: ldc_w 563
    //   208: invokeinterface 425 2 0
    //   213: checkcast 565	[Ljava/lang/String;
    //   216: astore 4
    //   218: aload 4
    //   220: ifnull +77 -> 297
    //   223: aload 4
    //   225: arraylength
    //   226: iconst_3
    //   227: if_icmplt +70 -> 297
    //   230: aload 4
    //   232: iconst_0
    //   233: aaload
    //   234: astore_0
    //   235: aload 4
    //   237: iconst_1
    //   238: aaload
    //   239: astore_2
    //   240: aload 4
    //   242: iconst_2
    //   243: aaload
    //   244: astore 4
    //   246: aload_1
    //   247: new 376	java/lang/StringBuilder
    //   250: dup
    //   251: ldc_w 567
    //   254: invokespecial 381	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   257: aload 4
    //   259: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: ldc_w 569
    //   265: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   268: aload_0
    //   269: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: ldc -2
    //   274: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: aload_2
    //   278: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   281: ldc_w 571
    //   284: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   287: invokevirtual 393	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   290: invokevirtual 574	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   293: aload_1
    //   294: invokevirtual 577	java/io/BufferedWriter:flush	()V
    //   297: aload_3
    //   298: getfield 517	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a:d	Ljava/util/Map;
    //   301: invokeinterface 580 1 0
    //   306: invokeinterface 415 1 0
    //   311: astore_0
    //   312: aload_0
    //   313: invokeinterface 117 1 0
    //   318: ifeq +238 -> 556
    //   321: aload_0
    //   322: invokeinterface 121 1 0
    //   327: checkcast 582	java/util/Map$Entry
    //   330: astore_2
    //   331: aload_2
    //   332: invokeinterface 585 1 0
    //   337: checkcast 256	java/lang/String
    //   340: ldc_w 563
    //   343: invokevirtual 589	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   346: ifne -34 -> 312
    //   349: aload_2
    //   350: invokeinterface 592 1 0
    //   355: ifnull -43 -> 312
    //   358: aload_2
    //   359: invokeinterface 592 1 0
    //   364: checkcast 565	[Ljava/lang/String;
    //   367: arraylength
    //   368: iconst_3
    //   369: if_icmplt -57 -> 312
    //   372: aload_2
    //   373: invokeinterface 592 1 0
    //   378: checkcast 565	[Ljava/lang/String;
    //   381: iconst_0
    //   382: aaload
    //   383: astore_3
    //   384: aload_2
    //   385: invokeinterface 592 1 0
    //   390: checkcast 565	[Ljava/lang/String;
    //   393: iconst_1
    //   394: aaload
    //   395: astore 4
    //   397: aload_2
    //   398: invokeinterface 592 1 0
    //   403: checkcast 565	[Ljava/lang/String;
    //   406: iconst_2
    //   407: aaload
    //   408: astore 5
    //   410: aload_1
    //   411: new 376	java/lang/StringBuilder
    //   414: dup
    //   415: ldc_w 594
    //   418: invokespecial 381	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   421: aload_2
    //   422: invokeinterface 585 1 0
    //   427: checkcast 256	java/lang/String
    //   430: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   433: ldc_w 596
    //   436: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   439: aload 5
    //   441: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   444: ldc_w 569
    //   447: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   450: aload_3
    //   451: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   454: ldc -2
    //   456: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   459: aload 4
    //   461: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   464: ldc_w 571
    //   467: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   470: invokevirtual 393	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   473: invokevirtual 574	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   476: aload_1
    //   477: invokevirtual 577	java/io/BufferedWriter:flush	()V
    //   480: goto -168 -> 312
    //   483: astore_2
    //   484: aload_1
    //   485: astore_0
    //   486: aload_2
    //   487: astore_1
    //   488: aload_1
    //   489: invokestatic 357	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   492: ifne +7 -> 499
    //   495: aload_1
    //   496: invokevirtual 597	java/io/IOException:printStackTrace	()V
    //   499: ldc_w 599
    //   502: iconst_1
    //   503: anewarray 4	java/lang/Object
    //   506: dup
    //   507: iconst_0
    //   508: new 376	java/lang/StringBuilder
    //   511: dup
    //   512: invokespecial 537	java/lang/StringBuilder:<init>	()V
    //   515: aload_1
    //   516: invokevirtual 541	java/lang/Object:getClass	()Ljava/lang/Class;
    //   519: invokevirtual 546	java/lang/Class:getName	()Ljava/lang/String;
    //   522: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   525: ldc_w 548
    //   528: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   531: aload_1
    //   532: invokevirtual 600	java/io/IOException:getMessage	()Ljava/lang/String;
    //   535: invokevirtual 390	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   538: invokevirtual 393	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   541: aastore
    //   542: invokestatic 370	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   545: pop
    //   546: aload_0
    //   547: ifnull +7 -> 554
    //   550: aload_0
    //   551: invokevirtual 603	java/io/BufferedWriter:close	()V
    //   554: iconst_0
    //   555: ireturn
    //   556: aload_1
    //   557: invokevirtual 603	java/io/BufferedWriter:close	()V
    //   560: iconst_1
    //   561: ireturn
    //   562: astore_0
    //   563: aload_0
    //   564: invokestatic 357	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   567: ifne -7 -> 560
    //   570: aload_0
    //   571: invokevirtual 597	java/io/IOException:printStackTrace	()V
    //   574: goto -14 -> 560
    //   577: astore_0
    //   578: aload_0
    //   579: invokestatic 357	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   582: ifne -28 -> 554
    //   585: aload_0
    //   586: invokevirtual 597	java/io/IOException:printStackTrace	()V
    //   589: goto -35 -> 554
    //   592: astore_0
    //   593: aconst_null
    //   594: astore_1
    //   595: aload_1
    //   596: ifnull +7 -> 603
    //   599: aload_1
    //   600: invokevirtual 603	java/io/BufferedWriter:close	()V
    //   603: aload_0
    //   604: athrow
    //   605: astore_1
    //   606: aload_1
    //   607: invokestatic 357	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   610: ifne -7 -> 603
    //   613: aload_1
    //   614: invokevirtual 597	java/io/IOException:printStackTrace	()V
    //   617: goto -14 -> 603
    //   620: astore_0
    //   621: goto -26 -> 595
    //   624: astore_2
    //   625: aload_0
    //   626: astore_1
    //   627: aload_2
    //   628: astore_0
    //   629: goto -34 -> 595
    //   632: astore_1
    //   633: goto -145 -> 488
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	636	0	paramString1	String
    //   0	636	1	paramString2	String
    //   0	636	2	paramString3	String
    //   6	445	3	localObject1	Object
    //   216	244	4	localObject2	Object
    //   408	32	5	str	String
    // Exception table:
    //   from	to	target	type
    //   56	81	117	java/lang/Exception
    //   81	86	117	java/lang/Exception
    //   201	218	483	java/io/IOException
    //   223	230	483	java/io/IOException
    //   246	297	483	java/io/IOException
    //   297	312	483	java/io/IOException
    //   312	480	483	java/io/IOException
    //   556	560	562	java/io/IOException
    //   550	554	577	java/io/IOException
    //   184	201	592	finally
    //   599	603	605	java/io/IOException
    //   201	218	620	finally
    //   223	230	620	finally
    //   246	297	620	finally
    //   297	312	620	finally
    //   312	480	620	finally
    //   488	499	624	finally
    //   499	546	624	finally
    //   184	201	632	java/io/IOException
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        c();
        return;
      }
      finally {}
      d();
    }
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 610	com/tencent/bugly/crashreport/crash/anr/b:e	()Z
    //   6: ifeq +17 -> 23
    //   9: ldc_w 612
    //   12: iconst_0
    //   13: anewarray 4	java/lang/Object
    //   16: invokestatic 460	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   19: pop
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: aload_0
    //   24: new 6	com/tencent/bugly/crashreport/crash/anr/b$1
    //   27: dup
    //   28: aload_0
    //   29: ldc_w 614
    //   32: invokespecial 617	com/tencent/bugly/crashreport/crash/anr/b$1:<init>	(Lcom/tencent/bugly/crashreport/crash/anr/b;Ljava/lang/String;)V
    //   35: putfield 619	com/tencent/bugly/crashreport/crash/anr/b:i	Landroid/os/FileObserver;
    //   38: aload_0
    //   39: getfield 619	com/tencent/bugly/crashreport/crash/anr/b:i	Landroid/os/FileObserver;
    //   42: invokevirtual 624	android/os/FileObserver:startWatching	()V
    //   45: ldc_w 626
    //   48: iconst_0
    //   49: anewarray 4	java/lang/Object
    //   52: invokestatic 464	com/tencent/bugly/proguard/w:a	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   55: pop
    //   56: aload_0
    //   57: getfield 68	com/tencent/bugly/crashreport/crash/anr/b:e	Lcom/tencent/bugly/proguard/v;
    //   60: new 8	com/tencent/bugly/crashreport/crash/anr/b$2
    //   63: dup
    //   64: aload_0
    //   65: invokespecial 629	com/tencent/bugly/crashreport/crash/anr/b$2:<init>	(Lcom/tencent/bugly/crashreport/crash/anr/b;)V
    //   68: invokevirtual 634	com/tencent/bugly/proguard/v:b	(Ljava/lang/Runnable;)Z
    //   71: pop
    //   72: goto -52 -> 20
    //   75: astore_1
    //   76: aload_0
    //   77: aconst_null
    //   78: putfield 619	com/tencent/bugly/crashreport/crash/anr/b:i	Landroid/os/FileObserver;
    //   81: ldc_w 636
    //   84: iconst_0
    //   85: anewarray 4	java/lang/Object
    //   88: invokestatic 460	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   91: pop
    //   92: aload_1
    //   93: invokestatic 357	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   96: ifne -76 -> 20
    //   99: aload_1
    //   100: invokevirtual 358	java/lang/Throwable:printStackTrace	()V
    //   103: goto -83 -> 20
    //   106: astore_1
    //   107: aload_0
    //   108: monitorexit
    //   109: aload_1
    //   110: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	111	0	this	b
    //   75	25	1	localThrowable	Throwable
    //   106	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   38	72	75	java/lang/Throwable
    //   2	20	106	finally
    //   23	38	106	finally
    //   38	72	106	finally
    //   76	103	106	finally
  }
  
  private void c(boolean paramBoolean)
  {
    try
    {
      if (this.j != paramBoolean)
      {
        w.a("user change anr %b", new Object[] { Boolean.valueOf(paramBoolean) });
        this.j = paramBoolean;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  private void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 610	com/tencent/bugly/crashreport/crash/anr/b:e	()Z
    //   6: ifne +17 -> 23
    //   9: ldc_w 645
    //   12: iconst_0
    //   13: anewarray 4	java/lang/Object
    //   16: invokestatic 460	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   19: pop
    //   20: aload_0
    //   21: monitorexit
    //   22: return
    //   23: aload_0
    //   24: getfield 619	com/tencent/bugly/crashreport/crash/anr/b:i	Landroid/os/FileObserver;
    //   27: invokevirtual 648	android/os/FileObserver:stopWatching	()V
    //   30: aload_0
    //   31: aconst_null
    //   32: putfield 619	com/tencent/bugly/crashreport/crash/anr/b:i	Landroid/os/FileObserver;
    //   35: ldc_w 650
    //   38: iconst_0
    //   39: anewarray 4	java/lang/Object
    //   42: invokestatic 460	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   45: pop
    //   46: goto -26 -> 20
    //   49: astore_1
    //   50: ldc_w 652
    //   53: iconst_0
    //   54: anewarray 4	java/lang/Object
    //   57: invokestatic 460	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   60: pop
    //   61: aload_1
    //   62: invokestatic 357	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   65: ifne -45 -> 20
    //   68: aload_1
    //   69: invokevirtual 358	java/lang/Throwable:printStackTrace	()V
    //   72: goto -52 -> 20
    //   75: astore_1
    //   76: aload_0
    //   77: monitorexit
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	b
    //   49	20	1	localThrowable	Throwable
    //   75	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   23	46	49	java/lang/Throwable
    //   2	20	75	finally
    //   23	46	75	finally
    //   50	72	75	finally
  }
  
  /* Error */
  private boolean e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 619	com/tencent/bugly/crashreport/crash/anr/b:i	Landroid/os/FileObserver;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +9 -> 17
    //   11: iconst_1
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_2
    //   19: goto -6 -> 13
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	b
    //   6	2	1	localFileObserver	FileObserver
    //   22	4	1	localObject	Object
    //   12	7	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  private boolean f()
  {
    try
    {
      boolean bool = this.j;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final void a(StrategyBean paramStrategyBean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_1
    //   5: ifnull +35 -> 40
    //   8: aload_1
    //   9: getfield 456	com/tencent/bugly/crashreport/common/strategy/StrategyBean:g	Z
    //   12: aload_0
    //   13: invokespecial 610	com/tencent/bugly/crashreport/crash/anr/b:e	()Z
    //   16: if_icmpeq +24 -> 40
    //   19: ldc_w 655
    //   22: iconst_1
    //   23: anewarray 4	java/lang/Object
    //   26: dup
    //   27: iconst_0
    //   28: aload_1
    //   29: getfield 456	com/tencent/bugly/crashreport/common/strategy/StrategyBean:g	Z
    //   32: invokestatic 643	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   35: aastore
    //   36: invokestatic 460	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   39: pop
    //   40: aload_1
    //   41: getfield 456	com/tencent/bugly/crashreport/common/strategy/StrategyBean:g	Z
    //   44: ifeq +44 -> 88
    //   47: aload_0
    //   48: invokespecial 657	com/tencent/bugly/crashreport/crash/anr/b:f	()Z
    //   51: ifeq +37 -> 88
    //   54: iload_2
    //   55: aload_0
    //   56: invokespecial 610	com/tencent/bugly/crashreport/crash/anr/b:e	()Z
    //   59: if_icmpeq +26 -> 85
    //   62: ldc_w 659
    //   65: iconst_1
    //   66: anewarray 4	java/lang/Object
    //   69: dup
    //   70: iconst_0
    //   71: iload_2
    //   72: invokestatic 643	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   75: aastore
    //   76: invokestatic 464	com/tencent/bugly/proguard/w:a	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   79: pop
    //   80: aload_0
    //   81: iload_2
    //   82: invokespecial 661	com/tencent/bugly/crashreport/crash/anr/b:b	(Z)V
    //   85: aload_0
    //   86: monitorexit
    //   87: return
    //   88: iconst_0
    //   89: istore_2
    //   90: goto -36 -> 54
    //   93: astore_1
    //   94: aload_0
    //   95: monitorexit
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	b
    //   0	98	1	paramStrategyBean	StrategyBean
    //   1	89	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   8	40	93	finally
    //   40	54	93	finally
    //   54	85	93	finally
  }
  
  /* Error */
  public final void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 40	com/tencent/bugly/crashreport/crash/anr/b:a	Ljava/util/concurrent/atomic/AtomicInteger;
    //   6: invokevirtual 663	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   9: ifeq +17 -> 26
    //   12: ldc_w 665
    //   15: iconst_0
    //   16: anewarray 4	java/lang/Object
    //   19: invokestatic 89	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   22: pop
    //   23: aload_0
    //   24: monitorexit
    //   25: return
    //   26: aload_0
    //   27: getfield 40	com/tencent/bugly/crashreport/crash/anr/b:a	Ljava/util/concurrent/atomic/AtomicInteger;
    //   30: iconst_1
    //   31: invokevirtual 484	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   34: aload_0
    //   35: monitorexit
    //   36: ldc_w 667
    //   39: iconst_0
    //   40: anewarray 4	java/lang/Object
    //   43: invokestatic 89	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   46: pop
    //   47: aload_1
    //   48: iconst_0
    //   49: invokestatic 671	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper:readFirstDumpInfo	(Ljava/lang/String;Z)Lcom/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a;
    //   52: astore_2
    //   53: aload_2
    //   54: ifnull +329 -> 383
    //   57: aload_2
    //   58: getfield 672	com/tencent/bugly/crashreport/crash/anr/TraceFileHelper$a:c	J
    //   61: lstore 4
    //   63: lload 4
    //   65: lstore 6
    //   67: lload 4
    //   69: ldc2_w 41
    //   72: lcmp
    //   73: ifne +19 -> 92
    //   76: ldc_w 674
    //   79: iconst_0
    //   80: anewarray 4	java/lang/Object
    //   83: invokestatic 460	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   86: pop
    //   87: invokestatic 679	java/lang/System:currentTimeMillis	()J
    //   90: lstore 6
    //   92: lload 6
    //   94: aload_0
    //   95: getfield 44	com/tencent/bugly/crashreport/crash/anr/b:b	J
    //   98: lsub
    //   99: invokestatic 685	java/lang/Math:abs	(J)J
    //   102: ldc2_w 81
    //   105: lcmp
    //   106: ifge +37 -> 143
    //   109: ldc_w 687
    //   112: iconst_1
    //   113: anewarray 4	java/lang/Object
    //   116: dup
    //   117: iconst_0
    //   118: sipush 10000
    //   121: invokestatic 438	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   124: aastore
    //   125: invokestatic 460	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   128: pop
    //   129: aload_0
    //   130: getfield 40	com/tencent/bugly/crashreport/crash/anr/b:a	Ljava/util/concurrent/atomic/AtomicInteger;
    //   133: iconst_0
    //   134: invokevirtual 484	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   137: return
    //   138: astore_1
    //   139: aload_0
    //   140: monitorexit
    //   141: aload_1
    //   142: athrow
    //   143: aload_0
    //   144: lload 6
    //   146: putfield 44	com/tencent/bugly/crashreport/crash/anr/b:b	J
    //   149: aload_0
    //   150: getfield 40	com/tencent/bugly/crashreport/crash/anr/b:a	Ljava/util/concurrent/atomic/AtomicInteger;
    //   153: iconst_1
    //   154: invokevirtual 484	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   157: getstatic 689	com/tencent/bugly/crashreport/crash/c:e	I
    //   160: iconst_0
    //   161: invokestatic 692	com/tencent/bugly/proguard/a:a	(IZ)Ljava/util/Map;
    //   164: astore_2
    //   165: aload_2
    //   166: ifnull +12 -> 178
    //   169: aload_2
    //   170: invokeinterface 452 1 0
    //   175: ifgt +49 -> 224
    //   178: ldc_w 694
    //   181: iconst_0
    //   182: anewarray 4	java/lang/Object
    //   185: invokestatic 460	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   188: pop
    //   189: aload_0
    //   190: getfield 40	com/tencent/bugly/crashreport/crash/anr/b:a	Ljava/util/concurrent/atomic/AtomicInteger;
    //   193: iconst_0
    //   194: invokevirtual 484	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   197: return
    //   198: astore_1
    //   199: aload_1
    //   200: invokestatic 357	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   203: pop
    //   204: ldc_w 696
    //   207: iconst_0
    //   208: anewarray 4	java/lang/Object
    //   211: invokestatic 370	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   214: pop
    //   215: aload_0
    //   216: getfield 40	com/tencent/bugly/crashreport/crash/anr/b:a	Ljava/util/concurrent/atomic/AtomicInteger;
    //   219: iconst_0
    //   220: invokevirtual 484	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   223: return
    //   224: aload_0
    //   225: getfield 48	com/tencent/bugly/crashreport/crash/anr/b:c	Landroid/content/Context;
    //   228: ldc2_w 81
    //   231: invokestatic 698	com/tencent/bugly/crashreport/crash/anr/b:a	(Landroid/content/Context;J)Landroid/app/ActivityManager$ProcessErrorStateInfo;
    //   234: astore_3
    //   235: aload_3
    //   236: ifnonnull +23 -> 259
    //   239: ldc_w 700
    //   242: iconst_0
    //   243: anewarray 4	java/lang/Object
    //   246: invokestatic 89	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   249: pop
    //   250: aload_0
    //   251: getfield 40	com/tencent/bugly/crashreport/crash/anr/b:a	Ljava/util/concurrent/atomic/AtomicInteger;
    //   254: iconst_0
    //   255: invokevirtual 484	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   258: return
    //   259: aload_3
    //   260: getfield 703	android/app/ActivityManager$ProcessErrorStateInfo:pid	I
    //   263: invokestatic 708	android/os/Process:myPid	()I
    //   266: if_icmpeq +30 -> 296
    //   269: ldc_w 710
    //   272: iconst_1
    //   273: anewarray 4	java/lang/Object
    //   276: dup
    //   277: iconst_0
    //   278: aload_3
    //   279: getfield 400	android/app/ActivityManager$ProcessErrorStateInfo:processName	Ljava/lang/String;
    //   282: aastore
    //   283: invokestatic 89	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   286: pop
    //   287: aload_0
    //   288: getfield 40	com/tencent/bugly/crashreport/crash/anr/b:a	Ljava/util/concurrent/atomic/AtomicInteger;
    //   291: iconst_0
    //   292: invokevirtual 484	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   295: return
    //   296: ldc_w 712
    //   299: iconst_0
    //   300: anewarray 4	java/lang/Object
    //   303: invokestatic 464	com/tencent/bugly/proguard/w:a	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   306: pop
    //   307: aload_0
    //   308: aload_0
    //   309: getfield 48	com/tencent/bugly/crashreport/crash/anr/b:c	Landroid/content/Context;
    //   312: aload_1
    //   313: aload_3
    //   314: lload 6
    //   316: aload_2
    //   317: invokespecial 714	com/tencent/bugly/crashreport/crash/anr/b:a	(Landroid/content/Context;Ljava/lang/String;Landroid/app/ActivityManager$ProcessErrorStateInfo;JLjava/util/Map;)Z
    //   320: pop
    //   321: aload_0
    //   322: getfield 40	com/tencent/bugly/crashreport/crash/anr/b:a	Ljava/util/concurrent/atomic/AtomicInteger;
    //   325: iconst_0
    //   326: invokevirtual 484	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   329: return
    //   330: astore_1
    //   331: aload_1
    //   332: invokestatic 357	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   335: ifne +7 -> 342
    //   338: aload_1
    //   339: invokevirtual 358	java/lang/Throwable:printStackTrace	()V
    //   342: ldc_w 716
    //   345: iconst_1
    //   346: anewarray 4	java/lang/Object
    //   349: dup
    //   350: iconst_0
    //   351: aload_1
    //   352: invokevirtual 541	java/lang/Object:getClass	()Ljava/lang/Class;
    //   355: invokevirtual 717	java/lang/Class:toString	()Ljava/lang/String;
    //   358: aastore
    //   359: invokestatic 370	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   362: pop
    //   363: aload_0
    //   364: getfield 40	com/tencent/bugly/crashreport/crash/anr/b:a	Ljava/util/concurrent/atomic/AtomicInteger;
    //   367: iconst_0
    //   368: invokevirtual 484	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   371: return
    //   372: astore_1
    //   373: aload_0
    //   374: getfield 40	com/tencent/bugly/crashreport/crash/anr/b:a	Ljava/util/concurrent/atomic/AtomicInteger;
    //   377: iconst_0
    //   378: invokevirtual 484	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   381: aload_1
    //   382: athrow
    //   383: ldc2_w 41
    //   386: lstore 4
    //   388: goto -325 -> 63
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	391	0	this	b
    //   0	391	1	paramString	String
    //   52	265	2	localObject	Object
    //   234	80	3	localProcessErrorStateInfo	ActivityManager.ProcessErrorStateInfo
    //   61	326	4	l1	long
    //   65	250	6	l2	long
    // Exception table:
    //   from	to	target	type
    //   2	25	138	finally
    //   26	36	138	finally
    //   157	165	198	java/lang/Throwable
    //   36	53	330	java/lang/Throwable
    //   57	63	330	java/lang/Throwable
    //   76	92	330	java/lang/Throwable
    //   92	129	330	java/lang/Throwable
    //   143	157	330	java/lang/Throwable
    //   169	178	330	java/lang/Throwable
    //   178	189	330	java/lang/Throwable
    //   199	215	330	java/lang/Throwable
    //   224	235	330	java/lang/Throwable
    //   239	250	330	java/lang/Throwable
    //   259	287	330	java/lang/Throwable
    //   296	321	330	java/lang/Throwable
    //   36	53	372	finally
    //   57	63	372	finally
    //   76	92	372	finally
    //   92	129	372	finally
    //   143	157	372	finally
    //   157	165	372	finally
    //   169	178	372	finally
    //   178	189	372	finally
    //   199	215	372	finally
    //   224	235	372	finally
    //   239	250	372	finally
    //   259	287	372	finally
    //   296	321	372	finally
    //   331	342	372	finally
    //   342	363	372	finally
  }
  
  public final void a(boolean paramBoolean)
  {
    c(paramBoolean);
    if ((com.tencent.bugly.crashreport.common.strategy.a.a().c().g) && (f())) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      if (paramBoolean != e())
      {
        w.a("anr changed to %b", new Object[] { Boolean.valueOf(paramBoolean) });
        b(paramBoolean);
      }
      return;
    }
  }
  
  public final boolean a()
  {
    return this.a.get() != 0;
  }
  
  protected final void b()
  {
    long l1 = com.tencent.bugly.proguard.a.o();
    long l2 = c.f;
    Object localObject1 = new File(this.g);
    if ((((File)localObject1).exists()) && (((File)localObject1).isDirectory()))
    {
      localObject1 = ((File)localObject1).listFiles();
      if ((localObject1 != null) && (localObject1.length != 0)) {}
    }
    else
    {
      return;
    }
    int i1 = "bugly_trace_".length();
    int i2 = localObject1.length;
    int k = 0;
    Object localObject2;
    String str;
    int n;
    for (int m = 0;; m = n)
    {
      if (k >= i2) {
        break label192;
      }
      localObject2 = localObject1[k];
      str = ((File)localObject2).getName();
      n = m;
      if (str.startsWith("bugly_trace_")) {}
      try
      {
        n = str.indexOf(".txt");
        if (n <= 0) {
          break;
        }
        long l3 = Long.parseLong(str.substring(i1, n));
        if (l3 < l1 - l2) {
          break;
        }
        n = m;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          w.e("tomb format error delete %s", new Object[] { str });
          n = m;
          if (((File)localObject2).delete()) {
            n = m + 1;
          }
        }
      }
      k += 1;
    }
    label192:
    w.c("clean tombs %d", new Object[] { Integer.valueOf(m) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\anr\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */