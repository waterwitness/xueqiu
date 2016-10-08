package com.tencent.bugly.proguard;

import android.content.Context;
import com.tencent.bugly.BuglyStrategy.a;
import com.tencent.bugly.crashreport.crash.b;

public final class z
{
  private Context a;
  private b b;
  private com.tencent.bugly.crashreport.common.strategy.a c;
  private com.tencent.bugly.crashreport.common.info.a d;
  
  public z(Context paramContext, b paramb, com.tencent.bugly.crashreport.common.strategy.a parama, com.tencent.bugly.crashreport.common.info.a parama1, BuglyStrategy.a parama2)
  {
    this.a = paramContext;
    this.b = paramb;
    this.c = parama;
    this.d = parama1;
  }
  
  /* Error */
  public final void a(Thread paramThread, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: ldc 33
    //   2: iconst_0
    //   3: anewarray 4	java/lang/Object
    //   6: invokestatic 39	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   9: pop
    //   10: aload_0
    //   11: getfield 23	com/tencent/bugly/proguard/z:c	Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   14: invokevirtual 44	com/tencent/bugly/crashreport/common/strategy/a:c	()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    //   17: pop
    //   18: aload_0
    //   19: getfield 23	com/tencent/bugly/proguard/z:c	Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   22: invokevirtual 47	com/tencent/bugly/crashreport/common/strategy/a:b	()Z
    //   25: ifne +56 -> 81
    //   28: ldc 49
    //   30: iconst_0
    //   31: anewarray 4	java/lang/Object
    //   34: invokestatic 39	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   37: pop
    //   38: iconst_0
    //   39: istore 9
    //   41: aload_0
    //   42: getfield 23	com/tencent/bugly/proguard/z:c	Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   45: invokevirtual 47	com/tencent/bugly/crashreport/common/strategy/a:b	()Z
    //   48: istore 11
    //   50: iload 11
    //   52: ifne +29 -> 81
    //   55: ldc2_w 50
    //   58: invokestatic 57	java/lang/Thread:sleep	(J)V
    //   61: iload 9
    //   63: sipush 500
    //   66: iadd
    //   67: istore 10
    //   69: iload 10
    //   71: istore 9
    //   73: iload 10
    //   75: sipush 5000
    //   78: if_icmplt -37 -> 41
    //   81: aload_0
    //   82: getfield 23	com/tencent/bugly/proguard/z:c	Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   85: invokevirtual 47	com/tencent/bugly/crashreport/common/strategy/a:b	()Z
    //   88: ifne +13 -> 101
    //   91: ldc 59
    //   93: iconst_0
    //   94: anewarray 4	java/lang/Object
    //   97: invokestatic 61	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   100: pop
    //   101: aload_0
    //   102: getfield 23	com/tencent/bugly/proguard/z:c	Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   105: invokevirtual 44	com/tencent/bugly/crashreport/common/strategy/a:c	()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;
    //   108: getfield 66	com/tencent/bugly/crashreport/common/strategy/StrategyBean:d	Z
    //   111: ifne +117 -> 228
    //   114: aload_0
    //   115: getfield 23	com/tencent/bugly/proguard/z:c	Lcom/tencent/bugly/crashreport/common/strategy/a;
    //   118: invokevirtual 47	com/tencent/bugly/crashreport/common/strategy/a:b	()Z
    //   121: ifeq +107 -> 228
    //   124: ldc 68
    //   126: iconst_0
    //   127: anewarray 4	java/lang/Object
    //   130: invokestatic 39	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   133: pop
    //   134: ldc 70
    //   136: invokestatic 76	com/tencent/bugly/proguard/a:n	()Ljava/lang/String;
    //   139: aload_0
    //   140: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   143: getfield 81	com/tencent/bugly/crashreport/common/info/a:d	Ljava/lang/String;
    //   146: aload_1
    //   147: new 83	java/lang/StringBuilder
    //   150: dup
    //   151: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   154: aload_2
    //   155: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: ldc 90
    //   160: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: aload_3
    //   164: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: ldc 90
    //   169: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: aload 4
    //   174: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   177: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: aconst_null
    //   181: invokestatic 98	com/tencent/bugly/crashreport/crash/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    //   184: ldc 100
    //   186: iconst_0
    //   187: anewarray 4	java/lang/Object
    //   190: invokestatic 39	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   193: pop
    //   194: return
    //   195: astore 5
    //   197: aload 5
    //   199: invokevirtual 103	java/lang/InterruptedException:printStackTrace	()V
    //   202: goto -141 -> 61
    //   205: astore_1
    //   206: aload_1
    //   207: invokestatic 106	com/tencent/bugly/proguard/w:a	(Ljava/lang/Throwable;)Z
    //   210: ifne +7 -> 217
    //   213: aload_1
    //   214: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   217: ldc 100
    //   219: iconst_0
    //   220: anewarray 4	java/lang/Object
    //   223: invokestatic 39	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   226: pop
    //   227: return
    //   228: new 109	com/tencent/bugly/crashreport/crash/CrashDetailBean
    //   231: dup
    //   232: invokespecial 110	com/tencent/bugly/crashreport/crash/CrashDetailBean:<init>	()V
    //   235: astore 7
    //   237: aload 7
    //   239: invokestatic 114	com/tencent/bugly/proguard/a:i	()J
    //   242: putfield 118	com/tencent/bugly/crashreport/crash/CrashDetailBean:B	J
    //   245: aload 7
    //   247: invokestatic 121	com/tencent/bugly/proguard/a:g	()J
    //   250: putfield 124	com/tencent/bugly/crashreport/crash/CrashDetailBean:C	J
    //   253: aload 7
    //   255: invokestatic 127	com/tencent/bugly/proguard/a:k	()J
    //   258: putfield 130	com/tencent/bugly/crashreport/crash/CrashDetailBean:D	J
    //   261: aload 7
    //   263: aload_0
    //   264: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   267: invokevirtual 133	com/tencent/bugly/crashreport/common/info/a:o	()J
    //   270: putfield 136	com/tencent/bugly/crashreport/crash/CrashDetailBean:E	J
    //   273: aload 7
    //   275: aload_0
    //   276: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   279: invokevirtual 138	com/tencent/bugly/crashreport/common/info/a:n	()J
    //   282: putfield 141	com/tencent/bugly/crashreport/crash/CrashDetailBean:F	J
    //   285: aload 7
    //   287: aload_0
    //   288: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   291: invokevirtual 144	com/tencent/bugly/crashreport/common/info/a:p	()J
    //   294: putfield 147	com/tencent/bugly/crashreport/crash/CrashDetailBean:G	J
    //   297: aload 7
    //   299: aload_0
    //   300: getfield 19	com/tencent/bugly/proguard/z:a	Landroid/content/Context;
    //   303: getstatic 152	com/tencent/bugly/crashreport/crash/c:d	I
    //   306: aconst_null
    //   307: invokestatic 155	com/tencent/bugly/proguard/a:a	(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    //   310: putfield 158	com/tencent/bugly/crashreport/crash/CrashDetailBean:w	Ljava/lang/String;
    //   313: aload 7
    //   315: iconst_0
    //   316: invokestatic 163	com/tencent/bugly/proguard/x:a	(Z)[B
    //   319: putfield 167	com/tencent/bugly/crashreport/crash/CrashDetailBean:x	[B
    //   322: aload 7
    //   324: iconst_4
    //   325: putfield 169	com/tencent/bugly/crashreport/crash/CrashDetailBean:b	I
    //   328: aload 7
    //   330: aload_0
    //   331: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   334: invokevirtual 171	com/tencent/bugly/crashreport/common/info/a:g	()Ljava/lang/String;
    //   337: putfield 173	com/tencent/bugly/crashreport/crash/CrashDetailBean:e	Ljava/lang/String;
    //   340: aload 7
    //   342: aload_0
    //   343: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   346: getfield 175	com/tencent/bugly/crashreport/common/info/a:i	Ljava/lang/String;
    //   349: putfield 178	com/tencent/bugly/crashreport/crash/CrashDetailBean:f	Ljava/lang/String;
    //   352: aload 7
    //   354: aload_0
    //   355: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   358: invokevirtual 181	com/tencent/bugly/crashreport/common/info/a:t	()Ljava/lang/String;
    //   361: putfield 183	com/tencent/bugly/crashreport/crash/CrashDetailBean:g	Ljava/lang/String;
    //   364: aload 7
    //   366: aload_0
    //   367: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   370: invokevirtual 185	com/tencent/bugly/crashreport/common/info/a:f	()Ljava/lang/String;
    //   373: putfield 188	com/tencent/bugly/crashreport/crash/CrashDetailBean:m	Ljava/lang/String;
    //   376: aload 7
    //   378: aload_2
    //   379: putfield 190	com/tencent/bugly/crashreport/crash/CrashDetailBean:n	Ljava/lang/String;
    //   382: aload 7
    //   384: aload_3
    //   385: putfield 192	com/tencent/bugly/crashreport/crash/CrashDetailBean:o	Ljava/lang/String;
    //   388: ldc -62
    //   390: astore 6
    //   392: aload 6
    //   394: astore 5
    //   396: aload 4
    //   398: ifnull +37 -> 435
    //   401: aload 4
    //   403: ldc 90
    //   405: invokevirtual 200	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   408: astore 8
    //   410: aload 6
    //   412: astore 5
    //   414: aload 8
    //   416: ifnull +19 -> 435
    //   419: aload 6
    //   421: astore 5
    //   423: aload 8
    //   425: arraylength
    //   426: ifle +9 -> 435
    //   429: aload 8
    //   431: iconst_0
    //   432: aaload
    //   433: astore 5
    //   435: aload 7
    //   437: aload 5
    //   439: putfield 202	com/tencent/bugly/crashreport/crash/CrashDetailBean:p	Ljava/lang/String;
    //   442: aload 7
    //   444: aload 4
    //   446: putfield 205	com/tencent/bugly/crashreport/crash/CrashDetailBean:q	Ljava/lang/String;
    //   449: aload 7
    //   451: invokestatic 210	java/lang/System:currentTimeMillis	()J
    //   454: putfield 213	com/tencent/bugly/crashreport/crash/CrashDetailBean:r	J
    //   457: aload 7
    //   459: aload 7
    //   461: getfield 205	com/tencent/bugly/crashreport/crash/CrashDetailBean:q	Ljava/lang/String;
    //   464: invokevirtual 217	java/lang/String:getBytes	()[B
    //   467: invokestatic 220	com/tencent/bugly/proguard/a:b	([B)Ljava/lang/String;
    //   470: putfield 223	com/tencent/bugly/crashreport/crash/CrashDetailBean:u	Ljava/lang/String;
    //   473: aload 7
    //   475: getstatic 225	com/tencent/bugly/crashreport/crash/c:e	I
    //   478: iconst_0
    //   479: invokestatic 228	com/tencent/bugly/proguard/a:a	(IZ)Ljava/util/Map;
    //   482: putfield 232	com/tencent/bugly/crashreport/crash/CrashDetailBean:y	Ljava/util/Map;
    //   485: aload 7
    //   487: aload_0
    //   488: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   491: getfield 81	com/tencent/bugly/crashreport/common/info/a:d	Ljava/lang/String;
    //   494: putfield 235	com/tencent/bugly/crashreport/crash/CrashDetailBean:z	Ljava/lang/String;
    //   497: aload 7
    //   499: new 83	java/lang/StringBuilder
    //   502: dup
    //   503: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   506: aload_1
    //   507: invokevirtual 238	java/lang/Thread:getName	()Ljava/lang/String;
    //   510: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   513: ldc -16
    //   515: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   518: aload_1
    //   519: invokevirtual 243	java/lang/Thread:getId	()J
    //   522: invokevirtual 246	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   525: ldc -8
    //   527: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   530: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   533: putfield 251	com/tencent/bugly/crashreport/crash/CrashDetailBean:A	Ljava/lang/String;
    //   536: aload 7
    //   538: aload_0
    //   539: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   542: invokevirtual 254	com/tencent/bugly/crashreport/common/info/a:v	()Ljava/lang/String;
    //   545: putfield 257	com/tencent/bugly/crashreport/crash/CrashDetailBean:H	Ljava/lang/String;
    //   548: aload 7
    //   550: aload_0
    //   551: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   554: invokevirtual 261	com/tencent/bugly/crashreport/common/info/a:s	()Ljava/util/Map;
    //   557: putfield 264	com/tencent/bugly/crashreport/crash/CrashDetailBean:h	Ljava/util/Map;
    //   560: aload 7
    //   562: aload_0
    //   563: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   566: invokevirtual 266	com/tencent/bugly/crashreport/common/info/a:E	()Ljava/util/Map;
    //   569: putfield 268	com/tencent/bugly/crashreport/crash/CrashDetailBean:i	Ljava/util/Map;
    //   572: aload 7
    //   574: aload_0
    //   575: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   578: getfield 270	com/tencent/bugly/crashreport/common/info/a:a	J
    //   581: putfield 273	com/tencent/bugly/crashreport/crash/CrashDetailBean:L	J
    //   584: aload 7
    //   586: aload_0
    //   587: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   590: getfield 275	com/tencent/bugly/crashreport/common/info/a:n	Z
    //   593: putfield 278	com/tencent/bugly/crashreport/crash/CrashDetailBean:M	Z
    //   596: aload 7
    //   598: aload_0
    //   599: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   602: invokevirtual 281	com/tencent/bugly/crashreport/common/info/a:B	()I
    //   605: putfield 284	com/tencent/bugly/crashreport/crash/CrashDetailBean:O	I
    //   608: aload 7
    //   610: aload_0
    //   611: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   614: invokevirtual 286	com/tencent/bugly/crashreport/common/info/a:C	()I
    //   617: putfield 289	com/tencent/bugly/crashreport/crash/CrashDetailBean:P	I
    //   620: aload 7
    //   622: aload_0
    //   623: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   626: invokevirtual 291	com/tencent/bugly/crashreport/common/info/a:w	()Ljava/util/Map;
    //   629: putfield 294	com/tencent/bugly/crashreport/crash/CrashDetailBean:Q	Ljava/util/Map;
    //   632: aload 7
    //   634: aload_0
    //   635: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   638: invokevirtual 296	com/tencent/bugly/crashreport/common/info/a:A	()Ljava/util/Map;
    //   641: putfield 299	com/tencent/bugly/crashreport/crash/CrashDetailBean:R	Ljava/util/Map;
    //   644: aload_0
    //   645: getfield 21	com/tencent/bugly/proguard/z:b	Lcom/tencent/bugly/crashreport/crash/b;
    //   648: aload 7
    //   650: invokevirtual 302	com/tencent/bugly/crashreport/crash/b:b	(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    //   653: ldc 70
    //   655: invokestatic 76	com/tencent/bugly/proguard/a:n	()Ljava/lang/String;
    //   658: aload_0
    //   659: getfield 25	com/tencent/bugly/proguard/z:d	Lcom/tencent/bugly/crashreport/common/info/a;
    //   662: getfield 81	com/tencent/bugly/crashreport/common/info/a:d	Ljava/lang/String;
    //   665: aload_1
    //   666: new 83	java/lang/StringBuilder
    //   669: dup
    //   670: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   673: aload_2
    //   674: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   677: ldc 90
    //   679: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   682: aload_3
    //   683: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   686: ldc 90
    //   688: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   691: aload 4
    //   693: invokevirtual 88	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   696: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   699: aload 7
    //   701: invokestatic 98	com/tencent/bugly/crashreport/crash/b:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Thread;Ljava/lang/String;Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)V
    //   704: aload_0
    //   705: getfield 21	com/tencent/bugly/proguard/z:b	Lcom/tencent/bugly/crashreport/crash/b;
    //   708: aload 7
    //   710: invokevirtual 305	com/tencent/bugly/crashreport/crash/b:a	(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;)Z
    //   713: ifne +16 -> 729
    //   716: aload_0
    //   717: getfield 21	com/tencent/bugly/proguard/z:b	Lcom/tencent/bugly/crashreport/crash/b;
    //   720: aload 7
    //   722: ldc2_w 306
    //   725: iconst_1
    //   726: invokevirtual 310	com/tencent/bugly/crashreport/crash/b:a	(Lcom/tencent/bugly/crashreport/crash/CrashDetailBean;JZ)V
    //   729: ldc 100
    //   731: iconst_0
    //   732: anewarray 4	java/lang/Object
    //   735: invokestatic 39	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   738: pop
    //   739: return
    //   740: astore_1
    //   741: ldc 100
    //   743: iconst_0
    //   744: anewarray 4	java/lang/Object
    //   747: invokestatic 39	com/tencent/bugly/proguard/w:e	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   750: pop
    //   751: aload_1
    //   752: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	753	0	this	z
    //   0	753	1	paramThread	Thread
    //   0	753	2	paramString1	String
    //   0	753	3	paramString2	String
    //   0	753	4	paramString3	String
    //   195	3	5	localInterruptedException	InterruptedException
    //   394	44	5	localObject	Object
    //   390	30	6	str	String
    //   235	486	7	localCrashDetailBean	com.tencent.bugly.crashreport.crash.CrashDetailBean
    //   408	22	8	arrayOfString	String[]
    //   39	33	9	i	int
    //   67	12	10	j	int
    //   48	3	11	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   55	61	195	java/lang/InterruptedException
    //   10	38	205	java/lang/Throwable
    //   41	50	205	java/lang/Throwable
    //   55	61	205	java/lang/Throwable
    //   81	101	205	java/lang/Throwable
    //   101	184	205	java/lang/Throwable
    //   197	202	205	java/lang/Throwable
    //   228	388	205	java/lang/Throwable
    //   401	410	205	java/lang/Throwable
    //   423	429	205	java/lang/Throwable
    //   435	729	205	java/lang/Throwable
    //   10	38	740	finally
    //   41	50	740	finally
    //   55	61	740	finally
    //   81	101	740	finally
    //   101	184	740	finally
    //   197	202	740	finally
    //   206	217	740	finally
    //   228	388	740	finally
    //   401	410	740	finally
    //   423	429	740	finally
    //   435	729	740	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */