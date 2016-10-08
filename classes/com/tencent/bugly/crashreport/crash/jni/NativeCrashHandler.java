package com.tencent.bugly.crashreport.crash.jni;

import android.annotation.SuppressLint;
import android.content.Context;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.crashreport.crash.c;
import com.tencent.bugly.proguard.v;
import com.tencent.bugly.proguard.w;
import java.io.File;

public class NativeCrashHandler
{
  private static NativeCrashHandler a;
  private static boolean l = false;
  private final Context b;
  private final com.tencent.bugly.crashreport.common.info.a c;
  private final v d;
  private NativeExceptionHandler e;
  private String f;
  private final boolean g;
  private boolean h = false;
  private boolean i = false;
  private boolean j = false;
  private boolean k = false;
  private com.tencent.bugly.crashreport.crash.b m;
  
  @SuppressLint({"SdCardPath"})
  private NativeCrashHandler(Context paramContext, com.tencent.bugly.crashreport.common.info.a parama, com.tencent.bugly.crashreport.crash.b paramb, v paramv, boolean paramBoolean, String paramString)
  {
    Object localObject;
    if (paramContext == null)
    {
      localObject = paramContext;
      this.b = ((Context)localObject);
      if (paramString == null) {
        break label123;
      }
    }
    for (;;)
    {
      try
      {
        if (paramString.trim().length() <= 0) {
          continue;
        }
        n = 0;
        if (n != 0) {
          paramString = paramContext.getDir("bugly", 0).getAbsolutePath();
        }
      }
      catch (Throwable paramString)
      {
        int n;
        Context localContext;
        label123:
        paramContext = com.tencent.bugly.crashreport.common.info.a.a(paramContext).c;
        paramString = "/data/data/" + paramContext + "/app_bugly";
        continue;
      }
      this.m = paramb;
      this.f = paramString;
      this.c = parama;
      this.d = paramv;
      this.g = paramBoolean;
      return;
      localContext = paramContext.getApplicationContext();
      localObject = localContext;
      if (localContext != null) {
        break;
      }
      localObject = paramContext;
      break;
      n = 1;
    }
  }
  
  /* Error */
  private void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 47	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:j	Z
    //   6: ifeq +16 -> 22
    //   9: ldc 116
    //   11: iconst_0
    //   12: anewarray 4	java/lang/Object
    //   15: invokestatic 121	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   18: pop
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: new 123	com/tencent/bugly/crashreport/crash/jni/a
    //   26: dup
    //   27: aload_0
    //   28: getfield 51	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:b	Landroid/content/Context;
    //   31: aload_0
    //   32: getfield 80	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:c	Lcom/tencent/bugly/crashreport/common/info/a;
    //   35: aload_0
    //   36: getfield 76	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:m	Lcom/tencent/bugly/crashreport/crash/b;
    //   39: invokestatic 128	com/tencent/bugly/crashreport/common/strategy/a:a	()Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   42: aload_0
    //   43: getfield 78	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:f	Ljava/lang/String;
    //   46: invokespecial 131	com/tencent/bugly/crashreport/crash/jni/a:<init>	(Landroid/content/Context;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/crash/b;Lcom/tencent/bugly/crashreport/common/strategy/a;Ljava/lang/String;)V
    //   49: putfield 133	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:e	Lcom/tencent/bugly/crashreport/crash/jni/NativeExceptionHandler;
    //   52: aload_0
    //   53: getfield 45	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:i	Z
    //   56: istore 7
    //   58: iload 7
    //   60: ifeq +218 -> 278
    //   63: aload_0
    //   64: aload_0
    //   65: getfield 78	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:f	Ljava/lang/String;
    //   68: iload_1
    //   69: iconst_1
    //   70: invokevirtual 137	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:regist	(Ljava/lang/String;ZI)Ljava/lang/String;
    //   73: astore 4
    //   75: aload 4
    //   77: ifnull +137 -> 214
    //   80: ldc -117
    //   82: iconst_0
    //   83: anewarray 4	java/lang/Object
    //   86: invokestatic 141	com/tencent/bugly/proguard/w:a	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   89: pop
    //   90: ldc -113
    //   92: iconst_1
    //   93: anewarray 4	java/lang/Object
    //   96: dup
    //   97: iconst_0
    //   98: aload 4
    //   100: aastore
    //   101: invokestatic 145	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   104: pop
    //   105: ldc -109
    //   107: ldc -107
    //   109: ldc -105
    //   111: invokevirtual 155	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   114: astore 5
    //   116: aload 4
    //   118: ldc -107
    //   120: ldc -105
    //   122: invokevirtual 155	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   125: astore_3
    //   126: aload_3
    //   127: invokevirtual 61	java/lang/String:length	()I
    //   130: iconst_2
    //   131: if_icmpne +101 -> 232
    //   134: new 97	java/lang/StringBuilder
    //   137: dup
    //   138: invokespecial 156	java/lang/StringBuilder:<init>	()V
    //   141: aload_3
    //   142: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   145: ldc -98
    //   147: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: astore_2
    //   154: aload_2
    //   155: invokestatic 164	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   158: aload 5
    //   160: invokestatic 164	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   163: if_icmplt +7 -> 170
    //   166: iconst_1
    //   167: putstatic 31	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:l	Z
    //   170: getstatic 31	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:l	Z
    //   173: ifeq +92 -> 265
    //   176: ldc -90
    //   178: iconst_0
    //   179: anewarray 4	java/lang/Object
    //   182: invokestatic 141	com/tencent/bugly/proguard/w:a	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   185: pop
    //   186: aload_0
    //   187: getfield 80	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:c	Lcom/tencent/bugly/crashreport/common/info/a;
    //   190: aload 4
    //   192: putfield 168	com/tencent/bugly/crashreport/common/info/a:l	Ljava/lang/String;
    //   195: aload_0
    //   196: iconst_1
    //   197: putfield 47	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:j	Z
    //   200: goto -181 -> 19
    //   203: astore_2
    //   204: ldc -86
    //   206: iconst_0
    //   207: anewarray 4	java/lang/Object
    //   210: invokestatic 145	com/tencent/bugly/proguard/w:c	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   213: pop
    //   214: aload_0
    //   215: iconst_0
    //   216: putfield 45	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:i	Z
    //   219: aload_0
    //   220: iconst_0
    //   221: putfield 43	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:h	Z
    //   224: goto -205 -> 19
    //   227: astore_2
    //   228: aload_0
    //   229: monitorexit
    //   230: aload_2
    //   231: athrow
    //   232: aload_3
    //   233: astore_2
    //   234: aload_3
    //   235: invokevirtual 61	java/lang/String:length	()I
    //   238: iconst_1
    //   239: if_icmpne -85 -> 154
    //   242: new 97	java/lang/StringBuilder
    //   245: dup
    //   246: invokespecial 156	java/lang/StringBuilder:<init>	()V
    //   249: aload_3
    //   250: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: ldc -84
    //   255: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   258: invokevirtual 111	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   261: astore_2
    //   262: goto -108 -> 154
    //   265: ldc -82
    //   267: iconst_0
    //   268: anewarray 4	java/lang/Object
    //   271: invokestatic 121	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   274: pop
    //   275: goto -89 -> 186
    //   278: aload_0
    //   279: getfield 43	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:h	Z
    //   282: istore_1
    //   283: iload_1
    //   284: ifeq -70 -> 214
    //   287: getstatic 178	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   290: astore_2
    //   291: getstatic 178	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   294: astore_3
    //   295: aload_0
    //   296: getfield 78	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:f	Ljava/lang/String;
    //   299: astore 4
    //   301: invokestatic 181	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   304: invokevirtual 184	com/tencent/bugly/crashreport/common/info/a:q	()Ljava/lang/String;
    //   307: astore 5
    //   309: invokestatic 181	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   312: invokevirtual 187	com/tencent/bugly/crashreport/common/info/a:F	()I
    //   315: istore 6
    //   317: ldc -67
    //   319: ldc -65
    //   321: aconst_null
    //   322: iconst_4
    //   323: anewarray 193	java/lang/Class
    //   326: dup
    //   327: iconst_0
    //   328: ldc 53
    //   330: aastore
    //   331: dup
    //   332: iconst_1
    //   333: ldc 53
    //   335: aastore
    //   336: dup
    //   337: iconst_2
    //   338: aload_2
    //   339: aastore
    //   340: dup
    //   341: iconst_3
    //   342: aload_3
    //   343: aastore
    //   344: iconst_4
    //   345: anewarray 4	java/lang/Object
    //   348: dup
    //   349: iconst_0
    //   350: aload 4
    //   352: aastore
    //   353: dup
    //   354: iconst_1
    //   355: aload 5
    //   357: aastore
    //   358: dup
    //   359: iconst_2
    //   360: iload 6
    //   362: invokestatic 197	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   365: aastore
    //   366: dup
    //   367: iconst_3
    //   368: iconst_1
    //   369: invokestatic 197	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   372: aastore
    //   373: invokestatic 202	com/tencent/bugly/proguard/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   376: checkcast 53	java/lang/String
    //   379: astore_3
    //   380: aload_3
    //   381: astore_2
    //   382: aload_3
    //   383: ifnonnull +79 -> 462
    //   386: getstatic 178	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   389: astore_2
    //   390: aload_0
    //   391: getfield 78	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:f	Ljava/lang/String;
    //   394: astore_3
    //   395: invokestatic 181	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   398: invokevirtual 184	com/tencent/bugly/crashreport/common/info/a:q	()Ljava/lang/String;
    //   401: astore 4
    //   403: invokestatic 181	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   406: invokevirtual 187	com/tencent/bugly/crashreport/common/info/a:F	()I
    //   409: istore 6
    //   411: ldc -67
    //   413: ldc -52
    //   415: aconst_null
    //   416: iconst_3
    //   417: anewarray 193	java/lang/Class
    //   420: dup
    //   421: iconst_0
    //   422: ldc 53
    //   424: aastore
    //   425: dup
    //   426: iconst_1
    //   427: ldc 53
    //   429: aastore
    //   430: dup
    //   431: iconst_2
    //   432: aload_2
    //   433: aastore
    //   434: iconst_3
    //   435: anewarray 4	java/lang/Object
    //   438: dup
    //   439: iconst_0
    //   440: aload_3
    //   441: aastore
    //   442: dup
    //   443: iconst_1
    //   444: aload 4
    //   446: aastore
    //   447: dup
    //   448: iconst_2
    //   449: iload 6
    //   451: invokestatic 197	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   454: aastore
    //   455: invokestatic 202	com/tencent/bugly/proguard/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   458: checkcast 53	java/lang/String
    //   461: astore_2
    //   462: aload_2
    //   463: ifnull -249 -> 214
    //   466: aload_0
    //   467: iconst_1
    //   468: putfield 47	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:j	Z
    //   471: invokestatic 181	com/tencent/bugly/crashreport/common/info/a:a	()Lcom/tencent/bugly/crashreport/common/info/a;
    //   474: aload_2
    //   475: putfield 168	com/tencent/bugly/crashreport/common/info/a:l	Ljava/lang/String;
    //   478: ldc -67
    //   480: ldc -50
    //   482: aconst_null
    //   483: iconst_1
    //   484: anewarray 193	java/lang/Class
    //   487: dup
    //   488: iconst_0
    //   489: getstatic 209	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   492: aastore
    //   493: iconst_1
    //   494: anewarray 4	java/lang/Object
    //   497: dup
    //   498: iconst_0
    //   499: iconst_1
    //   500: invokestatic 212	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   503: aastore
    //   504: invokestatic 202	com/tencent/bugly/proguard/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   507: pop
    //   508: getstatic 216	com/tencent/bugly/b:b	Z
    //   511: ifeq +44 -> 555
    //   514: iconst_3
    //   515: istore 6
    //   517: ldc -67
    //   519: ldc -38
    //   521: aconst_null
    //   522: iconst_1
    //   523: anewarray 193	java/lang/Class
    //   526: dup
    //   527: iconst_0
    //   528: getstatic 178	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   531: aastore
    //   532: iconst_1
    //   533: anewarray 4	java/lang/Object
    //   536: dup
    //   537: iconst_0
    //   538: iload 6
    //   540: invokestatic 197	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   543: aastore
    //   544: invokestatic 202	com/tencent/bugly/proguard/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    //   547: pop
    //   548: goto -529 -> 19
    //   551: astore_2
    //   552: goto -338 -> 214
    //   555: iconst_5
    //   556: istore 6
    //   558: goto -41 -> 517
    //   561: astore_2
    //   562: goto -392 -> 170
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	565	0	this	NativeCrashHandler
    //   0	565	1	paramBoolean	boolean
    //   153	2	2	str1	String
    //   203	1	2	localThrowable1	Throwable
    //   227	4	2	localObject1	Object
    //   233	242	2	localObject2	Object
    //   551	1	2	localThrowable2	Throwable
    //   561	1	2	localThrowable3	Throwable
    //   125	316	3	localObject3	Object
    //   73	372	4	str2	String
    //   114	242	5	str3	String
    //   315	242	6	n	int
    //   56	3	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   63	75	203	java/lang/Throwable
    //   80	154	203	java/lang/Throwable
    //   170	186	203	java/lang/Throwable
    //   186	200	203	java/lang/Throwable
    //   234	262	203	java/lang/Throwable
    //   265	275	203	java/lang/Throwable
    //   2	19	227	finally
    //   22	58	227	finally
    //   63	75	227	finally
    //   80	154	227	finally
    //   154	170	227	finally
    //   170	186	227	finally
    //   186	200	227	finally
    //   204	214	227	finally
    //   214	224	227	finally
    //   234	262	227	finally
    //   265	275	227	finally
    //   278	283	227	finally
    //   287	380	227	finally
    //   386	462	227	finally
    //   466	514	227	finally
    //   517	548	227	finally
    //   287	380	551	java/lang/Throwable
    //   386	462	551	java/lang/Throwable
    //   466	514	551	java/lang/Throwable
    //   517	548	551	java/lang/Throwable
    //   154	170	561	java/lang/Throwable
  }
  
  private static boolean a(String paramString, boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        w.a("[native] trying to load so: %s", new Object[] { paramString });
        if (paramBoolean) {
          System.load(paramString);
        }
      }
      catch (Throwable localThrowable1)
      {
        paramBoolean = false;
      }
      try
      {
        w.a("[native] load so success: %s", new Object[] { paramString });
        return true;
      }
      catch (Throwable localThrowable2)
      {
        for (;;)
        {
          paramBoolean = true;
        }
      }
      System.loadLibrary(paramString);
    }
    w.d(localThrowable1.getMessage(), new Object[0]);
    w.d("[native] Failed to load so, please check.", new Object[] { paramString });
    return paramBoolean;
  }
  
  private void b()
  {
    label135:
    for (;;)
    {
      try
      {
        if (!this.j)
        {
          w.d("native already unregisted!", new Object[0]);
          return;
        }
        try
        {
          if (unregist() == null) {
            break label135;
          }
          w.a("Native Crash Report close!", new Object[0]);
          this.j = false;
        }
        catch (Throwable localThrowable1)
        {
          w.c("unregist bugly so fail", new Object[0]);
        }
        try
        {
          com.tencent.bugly.proguard.a.a("com.tencent.feedback.eup.jni.NativeExceptionUpload", "enableHandler", null, new Class[] { Boolean.TYPE }, new Object[] { Boolean.valueOf(false) });
          this.j = false;
          w.c("unregist rqd so success", new Object[0]);
        }
        catch (Throwable localThrowable2)
        {
          w.c("unregist rqd so fail", new Object[0]);
          this.i = false;
          this.h = false;
        }
        continue;
        w.c("unregist bugly so success", new Object[0]);
      }
      finally {}
    }
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        startNativeMonitor();
        return;
      }
      finally {}
      b();
    }
  }
  
  private void c(boolean paramBoolean)
  {
    try
    {
      if (this.k != paramBoolean)
      {
        w.a("user change native %b", new Object[] { Boolean.valueOf(paramBoolean) });
        this.k = paramBoolean;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static NativeCrashHandler getInstance()
  {
    try
    {
      NativeCrashHandler localNativeCrashHandler = a;
      return localNativeCrashHandler;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static NativeCrashHandler getInstance(Context paramContext, com.tencent.bugly.crashreport.common.info.a parama, com.tencent.bugly.crashreport.crash.b paramb, com.tencent.bugly.crashreport.common.strategy.a parama1, v paramv, boolean paramBoolean, String paramString)
  {
    try
    {
      if (a == null) {
        a = new NativeCrashHandler(paramContext, parama, paramb, paramv, paramBoolean, paramString);
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  protected final void a()
  {
    long l1 = com.tencent.bugly.proguard.a.o();
    long l2 = c.f;
    Object localObject1 = new File(this.f);
    if ((((File)localObject1).exists()) && (((File)localObject1).isDirectory()))
    {
      localObject1 = ((File)localObject1).listFiles();
      if ((localObject1 != null) && (localObject1.length != 0)) {}
    }
    else
    {
      return;
    }
    int i3 = "tomb_".length();
    int i4 = localObject1.length;
    int n = 0;
    Object localObject2;
    String str;
    int i2;
    for (int i1 = 0;; i1 = i2)
    {
      if (n >= i4) {
        break label192;
      }
      localObject2 = localObject1[n];
      str = ((File)localObject2).getName();
      i2 = i1;
      if (str.startsWith("tomb_")) {}
      try
      {
        i2 = str.indexOf(".txt");
        if (i2 <= 0) {
          break;
        }
        long l3 = Long.parseLong(str.substring(i3, i2));
        if (l3 < l1 - l2) {
          break;
        }
        i2 = i1;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          w.e("tomb format error delete %s", new Object[] { str });
          i2 = i1;
          if (((File)localObject2).delete()) {
            i2 = i1 + 1;
          }
        }
      }
      n += 1;
    }
    label192:
    w.c("clean tombs %d", new Object[] { Integer.valueOf(i1) });
  }
  
  public boolean appendLogToNative(String paramString1, String paramString2, String paramString3)
  {
    if ((!this.i) || (!l)) {}
    do
    {
      do
      {
        return false;
      } while ((paramString1 == null) || (paramString2 == null) || (paramString3 == null));
      try
      {
        boolean bool = appendNativeLog(paramString1, paramString2, paramString3);
        return bool;
      }
      catch (UnsatisfiedLinkError paramString1)
      {
        l = false;
        return false;
      }
      catch (Throwable paramString1) {}
    } while (w.a(paramString1));
    paramString1.printStackTrace();
    return false;
  }
  
  protected native boolean appendNativeLog(String paramString1, String paramString2, String paramString3);
  
  protected native boolean appendWholeNativeLog(String paramString);
  
  public String getDumpFilePath()
  {
    try
    {
      String str = this.f;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public NativeExceptionHandler getNativeExceptionHandler()
  {
    return this.e;
  }
  
  protected native String getNativeKeyValueList();
  
  protected native String getNativeLog();
  
  public boolean isUserOpened()
  {
    try
    {
      boolean bool = this.k;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public void onStrategyChanged(StrategyBean paramStrategyBean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_1
    //   5: ifnull +35 -> 40
    //   8: aload_1
    //   9: getfield 348	com/tencent/bugly/crashreport/common/strategy/StrategyBean:d	Z
    //   12: aload_0
    //   13: getfield 47	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:j	Z
    //   16: if_icmpeq +24 -> 40
    //   19: ldc_w 350
    //   22: iconst_1
    //   23: anewarray 4	java/lang/Object
    //   26: dup
    //   27: iconst_0
    //   28: aload_1
    //   29: getfield 348	com/tencent/bugly/crashreport/common/strategy/StrategyBean:d	Z
    //   32: invokestatic 212	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   35: aastore
    //   36: invokestatic 121	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   39: pop
    //   40: invokestatic 128	com/tencent/bugly/crashreport/common/strategy/a:a	()Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   43: invokevirtual 353	com/tencent/bugly/crashreport/common/strategy/a:c	()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    //   46: getfield 348	com/tencent/bugly/crashreport/common/strategy/StrategyBean:d	Z
    //   49: ifeq +44 -> 93
    //   52: aload_0
    //   53: getfield 49	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:k	Z
    //   56: ifeq +37 -> 93
    //   59: iload_2
    //   60: aload_0
    //   61: getfield 47	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:j	Z
    //   64: if_icmpeq +26 -> 90
    //   67: ldc_w 355
    //   70: iconst_1
    //   71: anewarray 4	java/lang/Object
    //   74: dup
    //   75: iconst_0
    //   76: iload_2
    //   77: invokestatic 212	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   80: aastore
    //   81: invokestatic 141	com/tencent/bugly/proguard/w:a	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   84: pop
    //   85: aload_0
    //   86: iload_2
    //   87: invokespecial 357	com/tencent/bugly/crashreport/crash/jni/NativeCrashHandler:b	(Z)V
    //   90: aload_0
    //   91: monitorexit
    //   92: return
    //   93: iconst_0
    //   94: istore_2
    //   95: goto -36 -> 59
    //   98: astore_1
    //   99: aload_0
    //   100: monitorexit
    //   101: aload_1
    //   102: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	103	0	this	NativeCrashHandler
    //   0	103	1	paramStrategyBean	StrategyBean
    //   1	94	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   8	40	98	finally
    //   40	59	98	finally
    //   59	90	98	finally
  }
  
  public boolean putKeyValueToNative(String paramString1, String paramString2)
  {
    if ((!this.i) || (!l)) {}
    do
    {
      do
      {
        return false;
      } while ((paramString1 == null) || (paramString2 == null));
      try
      {
        boolean bool = putNativeKeyValue(paramString1, paramString2);
        return bool;
      }
      catch (UnsatisfiedLinkError paramString1)
      {
        l = false;
        return false;
      }
      catch (Throwable paramString1) {}
    } while (w.a(paramString1));
    paramString1.printStackTrace();
    return false;
  }
  
  protected native boolean putNativeKeyValue(String paramString1, String paramString2);
  
  protected native String regist(String paramString, boolean paramBoolean, int paramInt);
  
  protected native String removeNativeKeyValue(String paramString);
  
  public void setDumpFilePath(String paramString)
  {
    try
    {
      this.f = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void setUserOpened(boolean paramBoolean)
  {
    c(paramBoolean);
    if ((com.tencent.bugly.crashreport.common.strategy.a.a().c().d) && (isUserOpened())) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      if (paramBoolean != this.j)
      {
        w.a("native changed to %b", new Object[] { Boolean.valueOf(paramBoolean) });
        b(paramBoolean);
      }
      return;
    }
  }
  
  public void startNativeMonitor()
  {
    boolean bool = true;
    String str1;
    int n;
    label54:
    label93:
    label120:
    try
    {
      if ((this.i) || (this.h))
      {
        a(this.g);
        return;
      }
      str1 = this.c.k;
      if ((str1 == null) || (str1.trim().length() <= 0)) {
        break label176;
      }
      n = 0;
      if (n == 0) {
        str1 = this.c.k;
      }
      str1 = this.c.k;
      if ((str1 == null) || (str1.trim().length() <= 0)) {
        break label181;
      }
      n = 0;
    }
    finally {}
    String str3 = this.c.k;
    if ((str3 != null) && (str3.trim().length() > 0)) {
      n = 0;
    }
    for (;;)
    {
      this.i = a(str1, bool);
      if ((!this.i) && (!this.h)) {
        break;
      }
      a(this.g);
      this.d.b(new Runnable()
      {
        public final void run()
        {
          if (!com.tencent.bugly.proguard.a.a(NativeCrashHandler.a(NativeCrashHandler.this), "native_record_lock", 10000L))
          {
            w.a("Failed to lock file for handling native crash record.", new Object[0]);
            return;
          }
          CrashDetailBean localCrashDetailBean = b.a(NativeCrashHandler.a(NativeCrashHandler.this), NativeCrashHandler.b(NativeCrashHandler.this), NativeCrashHandler.c(NativeCrashHandler.this));
          if (localCrashDetailBean != null)
          {
            if (!NativeCrashHandler.d(NativeCrashHandler.this).a(localCrashDetailBean)) {
              NativeCrashHandler.d(NativeCrashHandler.this).a(localCrashDetailBean, 5000L, false);
            }
            b.b(NativeCrashHandler.b(NativeCrashHandler.this));
            w.a("get crash from native record!", new Object[0]);
          }
          NativeCrashHandler.this.a();
          com.tencent.bugly.proguard.a.b(NativeCrashHandler.a(NativeCrashHandler.this), "native_record_lock");
        }
      });
      break;
      label176:
      n = 1;
      break label54;
      label181:
      n = 1;
      break label208;
      label186:
      String str2 = this.c.k;
      break label93;
      n = 1;
      label208:
      while (n != 0)
      {
        bool = false;
        break label120;
        if (n == 0) {
          break label186;
        }
        str2 = "Bugly";
        break;
      }
    }
  }
  
  protected native void testCrash();
  
  public void testNativeCrash()
  {
    if (!this.i)
    {
      w.d("libBugly.so has not been load! so fail!", new Object[0]);
      return;
    }
    testCrash();
  }
  
  protected native String unregist();
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\crash\jni\NativeCrashHandler.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */