package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.os.SystemClock;
import com.flurry.android.FlurryEventRecordStatus;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class jb
  implements ll.a
{
  static int a = 100;
  static int b = 10;
  static int c = 1000;
  static int d = 160000;
  static int e = 50;
  private static final String f = jb.class.getSimpleName();
  private int A = 0;
  private final List<iu> B = new ArrayList();
  private int C = 0;
  private int D = 0;
  private boolean E = true;
  private final hm F = new hm();
  private final kb<jg> G = new kb()
  {
    public void a(jg paramAnonymousjg)
    {
      js.a().b(new ly()
      {
        public void a()
        {
          jb.a(jb.this, true, je.a().d());
        }
      });
    }
  };
  private final AtomicInteger g = new AtomicInteger(0);
  private final AtomicInteger h = new AtomicInteger(0);
  private final AtomicInteger i = new AtomicInteger(0);
  private final kb<lg> j = new kb()
  {
    public void a(lg paramAnonymouslg)
    {
      if ((jb.a(jb.this) != null) && (paramAnonymouslg.b != jb.a(jb.this).get())) {
        return;
      }
      switch (jb.8.a[paramAnonymouslg.c.ordinal()])
      {
      default: 
        return;
      case 1: 
        jb.this.a(paramAnonymouslg.b, (Context)paramAnonymouslg.a.get());
        return;
      case 2: 
        jb.this.a((Context)paramAnonymouslg.a.get());
        return;
      case 3: 
        jb.this.b((Context)paramAnonymouslg.a.get());
        return;
      }
      kc.a().b("com.flurry.android.sdk.FlurrySessionEvent", jb.b(jb.this));
      jb.this.a(paramAnonymouslg.d);
    }
  };
  private WeakReference<lf> k;
  private File l;
  private jz<List<iz>> m;
  private boolean n;
  private long o;
  private boolean p;
  private String q;
  private byte r;
  private Long s;
  private int t = -1;
  private final List<iz> u = new ArrayList();
  private final Map<String, List<String>> v = new HashMap();
  private final Map<String, String> w = new HashMap();
  private final Map<String, iv> x = new HashMap();
  private final List<iw> y = new ArrayList();
  private boolean z = true;
  
  public jb()
  {
    kc.a().a("com.flurry.android.sdk.FlurrySessionEvent", this.j);
  }
  
  @TargetApi(18)
  private void a(boolean paramBoolean)
  {
    i2 = -1;
    Object localObject1;
    Object localObject2;
    Object localObject3;
    if (paramBoolean)
    {
      this.w.put("boot.time", Long.toString(System.currentTimeMillis() - SystemClock.elapsedRealtime()));
      localObject1 = new StatFs(Environment.getRootDirectory().getAbsolutePath());
      localObject2 = new StatFs(Environment.getExternalStorageDirectory().getAbsolutePath());
      if (Build.VERSION.SDK_INT >= 18)
      {
        this.w.put("disk.size.total.internal", Long.toString(((StatFs)localObject1).getAvailableBlocksLong()));
        this.w.put("disk.size.available.internal", Long.toString(((StatFs)localObject1).getAvailableBlocksLong()));
        this.w.put("disk.size.total.external", Long.toString(((StatFs)localObject2).getAvailableBlocksLong()));
        this.w.put("disk.size.available.external", Long.toString(((StatFs)localObject2).getAvailableBlocksLong()));
        this.w.put("carrier.name", jm.a().c());
        this.w.put("carrier.details", jm.a().d());
      }
    }
    else
    {
      localObject1 = (ActivityManager)js.a().c().getSystemService("activity");
      localObject2 = new ActivityManager.MemoryInfo();
      ((ActivityManager)localObject1).getMemoryInfo((ActivityManager.MemoryInfo)localObject2);
      localObject3 = this.w;
      StringBuilder localStringBuilder = new StringBuilder("memory.available");
      if (!paramBoolean) {
        break label590;
      }
      localObject1 = ".start";
      label242:
      ((Map)localObject3).put((String)localObject1, Long.toString(((ActivityManager.MemoryInfo)localObject2).availMem));
      if (Build.VERSION.SDK_INT >= 16)
      {
        localObject3 = this.w;
        localStringBuilder = new StringBuilder("memory.total");
        if (!paramBoolean) {
          break label597;
        }
        localObject1 = ".start";
        label301:
        ((Map)localObject3).put((String)localObject1, Long.toString(((ActivityManager.MemoryInfo)localObject2).availMem));
      }
    }
    for (;;)
    {
      try
      {
        localObject1 = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        localObject1 = js.a().c().registerReceiver(null, (IntentFilter)localObject1);
        if (localObject1 == null) {
          continue;
        }
        i1 = ((Intent)localObject1).getIntExtra("status", -1);
        if ((i1 == 2) || (i1 == 5)) {
          bool = true;
        }
      }
      catch (Exception localException1)
      {
        float f1;
        label590:
        label597:
        boolean bool = false;
        int i1 = -1;
        kg.a(5, f, "Error getting battery status: " + localException1);
        i2 = i1;
        i1 = -1;
        continue;
        String str = ".end";
        continue;
        str = ".end";
        continue;
        bool = false;
        i1 = -1;
        continue;
      }
      try
      {
        i2 = ((Intent)localObject1).getIntExtra("level", -1);
      }
      catch (Exception localException2)
      {
        i1 = -1;
        continue;
      }
      try
      {
        i1 = ((Intent)localObject1).getIntExtra("scale", -1);
        f1 = i2 / i1;
        localObject2 = this.w;
        localObject3 = new StringBuilder("battery.charging");
        if (!paramBoolean) {
          continue;
        }
        localObject1 = ".start";
        ((Map)localObject2).put((String)localObject1, Boolean.toString(bool));
        localObject2 = this.w;
        localObject3 = new StringBuilder("battery.remaining");
        if (!paramBoolean) {
          continue;
        }
        localObject1 = ".start";
        ((Map)localObject2).put((String)localObject1, Float.toString(f1));
        return;
      }
      catch (Exception localException3)
      {
        i1 = i2;
        continue;
      }
      this.w.put("disk.size.total.internal", Long.toString(((StatFs)localObject1).getAvailableBlocks()));
      this.w.put("disk.size.available.internal", Long.toString(((StatFs)localObject1).getAvailableBlocks()));
      this.w.put("disk.size.total.external", Long.toString(((StatFs)localObject2).getAvailableBlocks()));
      this.w.put("disk.size.available.external", Long.toString(((StatFs)localObject2).getAvailableBlocks()));
      break;
      localObject1 = ".end";
      break label242;
      localObject1 = ".end";
      break label301;
      bool = false;
    }
  }
  
  /* Error */
  private void a(boolean paramBoolean, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 169	com/flurry/sdk/jb:E	Z
    //   6: ifne +16 -> 22
    //   9: iconst_3
    //   10: getstatic 108	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   13: ldc_w 370
    //   16: invokestatic 367	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: iload_1
    //   23: ifne +15 -> 38
    //   26: aload_0
    //   27: getfield 146	com/flurry/sdk/jb:u	Ljava/util/List;
    //   30: invokeinterface 376 1 0
    //   35: ifne -16 -> 19
    //   38: iconst_3
    //   39: getstatic 108	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   42: ldc_w 378
    //   45: invokestatic 367	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   48: new 380	com/flurry/sdk/ix
    //   51: dup
    //   52: invokestatic 278	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   55: invokevirtual 381	com/flurry/sdk/js:d	()Ljava/lang/String;
    //   58: invokestatic 386	com/flurry/sdk/jo:a	()Lcom/flurry/sdk/jo;
    //   61: invokevirtual 388	com/flurry/sdk/jo:e	()Ljava/lang/String;
    //   64: aload_0
    //   65: getfield 390	com/flurry/sdk/jb:n	Z
    //   68: invokestatic 395	com/flurry/sdk/jf:a	()Lcom/flurry/sdk/jf;
    //   71: invokevirtual 397	com/flurry/sdk/jf:e	()Z
    //   74: aload_0
    //   75: getfield 399	com/flurry/sdk/jb:o	J
    //   78: lload_2
    //   79: aload_0
    //   80: getfield 146	com/flurry/sdk/jb:u	Ljava/util/List;
    //   83: invokestatic 395	com/flurry/sdk/jf:a	()Lcom/flurry/sdk/jf;
    //   86: invokevirtual 402	com/flurry/sdk/jf:h	()Ljava/util/Map;
    //   89: aload_0
    //   90: getfield 174	com/flurry/sdk/jb:F	Lcom/flurry/sdk/hm;
    //   93: iconst_0
    //   94: invokevirtual 405	com/flurry/sdk/hm:a	(Z)Ljava/util/Map;
    //   97: aload_0
    //   98: getfield 151	com/flurry/sdk/jb:v	Ljava/util/Map;
    //   101: invokestatic 410	com/flurry/sdk/ju:a	()Lcom/flurry/sdk/ju;
    //   104: invokevirtual 413	com/flurry/sdk/ju:c	()Ljava/util/HashMap;
    //   107: invokestatic 208	java/lang/System:currentTimeMillis	()J
    //   110: invokespecial 416	com/flurry/sdk/ix:<init>	(Ljava/lang/String;Ljava/lang/String;ZZJJLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;J)V
    //   113: invokevirtual 419	com/flurry/sdk/ix:a	()[B
    //   116: astore 4
    //   118: aload 4
    //   120: ifnonnull +58 -> 178
    //   123: getstatic 108	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   126: ldc_w 421
    //   129: invokestatic 424	com/flurry/sdk/kg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   132: aload_0
    //   133: invokespecial 426	com/flurry/sdk/jb:j	()V
    //   136: goto -117 -> 19
    //   139: astore 4
    //   141: aload_0
    //   142: monitorexit
    //   143: aload 4
    //   145: athrow
    //   146: astore 4
    //   148: getstatic 108	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   151: new 300	java/lang/StringBuilder
    //   154: dup
    //   155: ldc_w 428
    //   158: invokespecial 303	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   161: aload 4
    //   163: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   166: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   169: invokestatic 424	com/flurry/sdk/kg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   172: aconst_null
    //   173: astore 4
    //   175: goto -57 -> 118
    //   178: iconst_3
    //   179: getstatic 108	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   182: new 300	java/lang/StringBuilder
    //   185: dup
    //   186: ldc_w 430
    //   189: invokespecial 303	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   192: aload 4
    //   194: arraylength
    //   195: invokevirtual 433	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   198: ldc_w 435
    //   201: invokevirtual 309	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: aload_0
    //   205: getfield 146	com/flurry/sdk/jb:u	Ljava/util/List;
    //   208: invokeinterface 438 1 0
    //   213: invokevirtual 433	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   216: ldc_w 440
    //   219: invokevirtual 309	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   225: invokestatic 367	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   228: invokestatic 445	com/flurry/sdk/hl:a	()Lcom/flurry/sdk/hl;
    //   231: invokevirtual 448	com/flurry/sdk/hl:d	()Lcom/flurry/sdk/iy;
    //   234: astore 5
    //   236: new 300	java/lang/StringBuilder
    //   239: dup
    //   240: invokespecial 449	java/lang/StringBuilder:<init>	()V
    //   243: invokestatic 453	com/flurry/sdk/jt:a	()I
    //   246: invokevirtual 433	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   249: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   252: astore 6
    //   254: aload 5
    //   256: aload 4
    //   258: invokestatic 278	com/flurry/sdk/js:a	()Lcom/flurry/sdk/js;
    //   261: invokevirtual 381	com/flurry/sdk/js:d	()Ljava/lang/String;
    //   264: aload 6
    //   266: invokevirtual 458	com/flurry/sdk/iy:b	([BLjava/lang/String;Ljava/lang/String;)V
    //   269: goto -137 -> 132
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	272	0	this	jb
    //   0	272	1	paramBoolean	boolean
    //   0	272	2	paramLong	long
    //   116	3	4	arrayOfByte1	byte[]
    //   139	5	4	localObject	Object
    //   146	16	4	localException	Exception
    //   173	84	4	arrayOfByte2	byte[]
    //   234	21	5	localiy	iy
    //   252	13	6	str	String
    // Exception table:
    //   from	to	target	type
    //   2	19	139	finally
    //   26	38	139	finally
    //   38	48	139	finally
    //   48	118	139	finally
    //   123	132	139	finally
    //   132	136	139	finally
    //   148	172	139	finally
    //   178	269	139	finally
    //   48	118	146	java/lang/Exception
  }
  
  private void b(long paramLong)
  {
    try
    {
      Iterator localIterator = this.y.iterator();
      while (localIterator.hasNext())
      {
        iw localiw = (iw)localIterator.next();
        if ((localiw.a()) && (!localiw.b())) {
          localiw.a(paramLong);
        }
      }
    }
    finally {}
  }
  
  private void c(Context paramContext)
  {
    if ((paramContext instanceof Activity))
    {
      Bundle localBundle = ((Activity)paramContext).getIntent().getExtras();
      if (localBundle != null)
      {
        kg.a(3, f, "Launch Options Bundle is present " + localBundle.toString());
        Iterator localIterator = localBundle.keySet().iterator();
        while (localIterator.hasNext())
        {
          String str = (String)localIterator.next();
          if (str != null)
          {
            paramContext = localBundle.get(str);
            if (paramContext != null) {}
            for (paramContext = paramContext.toString();; paramContext = "null")
            {
              this.v.put(str, new ArrayList(Arrays.asList(new String[] { paramContext })));
              kg.a(3, f, "Launch options Key: " + str + ". Its value: " + paramContext);
              break;
            }
          }
        }
      }
    }
  }
  
  /* Error */
  private void i()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: iconst_4
    //   3: getstatic 108	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   6: ldc_w 535
    //   9: invokestatic 367	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   12: aload_0
    //   13: getfield 537	com/flurry/sdk/jb:m	Lcom/flurry/sdk/jz;
    //   16: invokevirtual 541	com/flurry/sdk/jz:a	()Ljava/lang/Object;
    //   19: checkcast 372	java/util/List
    //   22: astore_1
    //   23: aload_1
    //   24: ifnull +17 -> 41
    //   27: aload_0
    //   28: getfield 146	com/flurry/sdk/jb:u	Ljava/util/List;
    //   31: aload_1
    //   32: invokeinterface 545 2 0
    //   37: pop
    //   38: aload_0
    //   39: monitorexit
    //   40: return
    //   41: aload_0
    //   42: getfield 547	com/flurry/sdk/jb:l	Ljava/io/File;
    //   45: invokevirtual 550	java/io/File:exists	()Z
    //   48: ifeq -10 -> 38
    //   51: iconst_4
    //   52: getstatic 108	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   55: ldc_w 552
    //   58: invokestatic 367	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   61: aload_0
    //   62: getfield 547	com/flurry/sdk/jb:l	Ljava/io/File;
    //   65: invokestatic 557	com/flurry/sdk/ho:a	(Ljava/io/File;)Lcom/flurry/sdk/jc;
    //   68: astore_1
    //   69: aload_1
    //   70: ifnull +67 -> 137
    //   73: aload_1
    //   74: invokevirtual 560	com/flurry/sdk/jc:a	()Z
    //   77: istore 6
    //   79: aload_1
    //   80: invokevirtual 562	com/flurry/sdk/jc:b	()J
    //   83: lstore 4
    //   85: lload 4
    //   87: lstore_2
    //   88: lload 4
    //   90: lconst_0
    //   91: lcmp
    //   92: ifgt +10 -> 102
    //   95: invokestatic 567	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   98: invokevirtual 569	com/flurry/sdk/je:d	()J
    //   101: lstore_2
    //   102: aload_0
    //   103: iload 6
    //   105: putfield 390	com/flurry/sdk/jb:n	Z
    //   108: aload_0
    //   109: lload_2
    //   110: putfield 399	com/flurry/sdk/jb:o	J
    //   113: aload_0
    //   114: invokespecial 531	com/flurry/sdk/jb:n	()V
    //   117: aload_1
    //   118: invokevirtual 572	com/flurry/sdk/jc:c	()Ljava/util/List;
    //   121: astore_1
    //   122: aload_1
    //   123: ifnull +14 -> 137
    //   126: aload_0
    //   127: getfield 146	com/flurry/sdk/jb:u	Ljava/util/List;
    //   130: aload_1
    //   131: invokeinterface 545 2 0
    //   136: pop
    //   137: aload_0
    //   138: getfield 547	com/flurry/sdk/jb:l	Ljava/io/File;
    //   141: invokevirtual 575	java/io/File:delete	()Z
    //   144: pop
    //   145: aload_0
    //   146: invokevirtual 577	com/flurry/sdk/jb:c	()V
    //   149: goto -111 -> 38
    //   152: astore_1
    //   153: aload_0
    //   154: monitorexit
    //   155: aload_1
    //   156: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	157	0	this	jb
    //   22	109	1	localObject1	Object
    //   152	4	1	localObject2	Object
    //   87	23	2	l1	long
    //   83	6	4	l2	long
    //   77	27	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	23	152	finally
    //   27	38	152	finally
    //   41	69	152	finally
    //   73	85	152	finally
    //   95	102	152	finally
    //   102	122	152	finally
    //   126	137	152	finally
    //   137	149	152	finally
  }
  
  private void j()
  {
    this.u.clear();
    this.m.b();
  }
  
  private String k()
  {
    return ".flurryagent." + Integer.toString(js.a().d().hashCode(), 16);
  }
  
  private String l()
  {
    return ".yflurryreport." + Long.toString(lt.i(js.a().d()), 16);
  }
  
  private void m()
  {
    SharedPreferences localSharedPreferences = js.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
    this.n = localSharedPreferences.getBoolean("com.flurry.sdk.previous_successful_report", false);
    this.o = localSharedPreferences.getLong("com.flurry.sdk.initial_run_time", je.a().d());
  }
  
  private void n()
  {
    SharedPreferences.Editor localEditor = js.a().c().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
    localEditor.putBoolean("com.flurry.sdk.previous_successful_report", this.n);
    localEditor.putLong("com.flurry.sdk.initial_run_time", this.o);
    localEditor.commit();
  }
  
  private int o()
  {
    return this.g.incrementAndGet();
  }
  
  private int p()
  {
    return this.h.incrementAndGet();
  }
  
  /* Error */
  public FlurryEventRecordStatus a(String paramString1, String paramString2, Map<String, String> paramMap, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: getstatic 648	com/flurry/android/FlurryEventRecordStatus:kFlurryEventFailed	Lcom/flurry/android/FlurryEventRecordStatus;
    //   5: astore 5
    //   7: aload_3
    //   8: ifnonnull +8 -> 16
    //   11: aload_0
    //   12: monitorexit
    //   13: aload 5
    //   15: areturn
    //   16: aload_2
    //   17: invokestatic 653	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   20: ifne -9 -> 11
    //   23: aload_3
    //   24: ldc_w 655
    //   27: aload_2
    //   28: invokeinterface 225 3 0
    //   33: pop
    //   34: aload_0
    //   35: aload_1
    //   36: aload_3
    //   37: iconst_0
    //   38: invokevirtual 658	com/flurry/sdk/jb:a	(Ljava/lang/String;Ljava/util/Map;Z)Lcom/flurry/android/FlurryEventRecordStatus;
    //   41: astore 5
    //   43: iconst_5
    //   44: getstatic 108	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   47: new 300	java/lang/StringBuilder
    //   50: dup
    //   51: ldc_w 660
    //   54: invokespecial 303	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   57: aload 5
    //   59: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   62: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: invokestatic 367	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   68: goto -57 -> 11
    //   71: astore_1
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_1
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	jb
    //   0	76	1	paramString1	String
    //   0	76	2	paramString2	String
    //   0	76	3	paramMap	Map<String, String>
    //   0	76	4	paramBoolean	boolean
    //   5	53	5	localFlurryEventRecordStatus	FlurryEventRecordStatus
    // Exception table:
    //   from	to	target	type
    //   2	7	71	finally
    //   16	68	71	finally
  }
  
  public FlurryEventRecordStatus a(String paramString, final Map<String, String> paramMap, boolean paramBoolean)
  {
    label458:
    label466:
    for (;;)
    {
      try
      {
        FlurryEventRecordStatus localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventRecorded;
        if (!this.E)
        {
          paramString = FlurryEventRecordStatus.kFlurryEventAnalyticsDisabled;
          kg.e(f, "Analytics has been disabled, not logging event.");
          return paramString;
        }
        long l1 = SystemClock.elapsedRealtime();
        long l2 = je.a().e();
        final String str = lt.b(paramString);
        if (str.length() == 0)
        {
          paramString = FlurryEventRecordStatus.kFlurryEventFailed;
          continue;
        }
        paramString = (iv)this.x.get(str);
        if (paramString == null)
        {
          if (this.x.size() < a)
          {
            paramString = new iv();
            paramString.a = 1;
            this.x.put(str, paramString);
            kg.e(f, "Event count started: " + str);
            paramString = localFlurryEventRecordStatus;
            if ((!this.p) || (this.y.size() >= c) || (this.A >= d)) {
              break label458;
            }
            if (paramMap != null) {
              break label466;
            }
            paramMap = Collections.emptyMap();
            if (paramMap.size() > b)
            {
              kg.e(f, "MaxEventParams exceeded: " + paramMap.size());
              paramString = FlurryEventRecordStatus.kFlurryEventParamsCountExceeded;
            }
          }
          else
          {
            kg.e(f, "Too many different events. Event not counted: " + str);
            paramString = FlurryEventRecordStatus.kFlurryEventUniqueCountExceeded;
            continue;
          }
        }
        else
        {
          paramString.a += 1;
          kg.e(f, "Event count incremented: " + str);
          paramString = FlurryEventRecordStatus.kFlurryEventRecorded;
          continue;
        }
        paramString = new iw(o(), str, paramMap, l1 - l2, paramBoolean);
        if (paramString.d() + this.A <= d)
        {
          this.y.add(paramString);
          int i1 = this.A;
          this.A = (paramString.d() + i1);
          localFlurryEventRecordStatus = FlurryEventRecordStatus.kFlurryEventRecorded;
          paramString = localFlurryEventRecordStatus;
          if (!this.E) {
            continue;
          }
          paramString = localFlurryEventRecordStatus;
          if (hl.a().c() == null) {
            continue;
          }
          js.a().b(new Runnable()
          {
            public void run()
            {
              hl.a().c().a(str, paramMap);
            }
          });
          paramString = localFlurryEventRecordStatus;
          continue;
        }
        this.A = d;
      }
      finally {}
      this.z = false;
      kg.e(f, "Event Log size exceeded. No more event details logged.");
      paramString = FlurryEventRecordStatus.kFlurryEventLogCountExceeded;
      continue;
      this.z = false;
    }
  }
  
  /* Error */
  iz a(long paramLong1, long paramLong2, long paramLong3, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 738	com/flurry/sdk/ja
    //   5: dup
    //   6: invokespecial 739	com/flurry/sdk/ja:<init>	()V
    //   9: astore 8
    //   11: aload 8
    //   13: invokestatic 386	com/flurry/sdk/jo:a	()Lcom/flurry/sdk/jo;
    //   16: invokevirtual 388	com/flurry/sdk/jo:e	()Ljava/lang/String;
    //   19: invokevirtual 741	com/flurry/sdk/ja:a	(Ljava/lang/String;)V
    //   22: aload 8
    //   24: lload_1
    //   25: invokevirtual 742	com/flurry/sdk/ja:a	(J)V
    //   28: aload 8
    //   30: lload_3
    //   31: invokevirtual 744	com/flurry/sdk/ja:b	(J)V
    //   34: aload 8
    //   36: lload 5
    //   38: invokevirtual 746	com/flurry/sdk/ja:c	(J)V
    //   41: aload 8
    //   43: aload_0
    //   44: getfield 153	com/flurry/sdk/jb:w	Ljava/util/Map;
    //   47: invokevirtual 749	com/flurry/sdk/ja:a	(Ljava/util/Map;)V
    //   50: aload 8
    //   52: invokestatic 567	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   55: invokevirtual 751	com/flurry/sdk/je:i	()Ljava/lang/String;
    //   58: invokevirtual 753	com/flurry/sdk/ja:b	(Ljava/lang/String;)V
    //   61: aload 8
    //   63: invokestatic 567	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   66: invokevirtual 755	com/flurry/sdk/je:j	()Ljava/lang/String;
    //   69: invokevirtual 757	com/flurry/sdk/ja:c	(Ljava/lang/String;)V
    //   72: aload 8
    //   74: invokestatic 567	com/flurry/sdk/je:a	()Lcom/flurry/sdk/je;
    //   77: invokevirtual 759	com/flurry/sdk/je:k	()Ljava/util/Map;
    //   80: invokevirtual 761	com/flurry/sdk/ja:b	(Ljava/util/Map;)V
    //   83: aload 8
    //   85: invokestatic 766	com/flurry/sdk/ji:a	()Lcom/flurry/sdk/ji;
    //   88: invokevirtual 767	com/flurry/sdk/ji:c	()Ljava/lang/String;
    //   91: invokevirtual 769	com/flurry/sdk/ja:d	(Ljava/lang/String;)V
    //   94: aload 8
    //   96: invokestatic 766	com/flurry/sdk/ji:a	()Lcom/flurry/sdk/ji;
    //   99: invokevirtual 770	com/flurry/sdk/ji:d	()Ljava/lang/String;
    //   102: invokevirtual 772	com/flurry/sdk/ja:e	(Ljava/lang/String;)V
    //   105: aload 8
    //   107: iload 7
    //   109: invokevirtual 774	com/flurry/sdk/ja:a	(I)V
    //   112: aload_0
    //   113: getfield 141	com/flurry/sdk/jb:t	I
    //   116: iconst_m1
    //   117: if_icmpeq +138 -> 255
    //   120: aload_0
    //   121: getfield 141	com/flurry/sdk/jb:t	I
    //   124: istore 7
    //   126: aload 8
    //   128: iload 7
    //   130: invokevirtual 776	com/flurry/sdk/ja:b	(I)V
    //   133: aload 8
    //   135: aload_0
    //   136: invokevirtual 777	com/flurry/sdk/jb:d	()Ljava/lang/String;
    //   139: invokevirtual 779	com/flurry/sdk/ja:f	(Ljava/lang/String;)V
    //   142: aload 8
    //   144: invokestatic 784	com/flurry/sdk/jj:a	()Lcom/flurry/sdk/jj;
    //   147: invokevirtual 787	com/flurry/sdk/jj:e	()Landroid/location/Location;
    //   150: invokevirtual 790	com/flurry/sdk/ja:a	(Landroid/location/Location;)V
    //   153: aload 8
    //   155: aload_0
    //   156: invokevirtual 792	com/flurry/sdk/jb:h	()I
    //   159: invokevirtual 794	com/flurry/sdk/ja:c	(I)V
    //   162: aload 8
    //   164: aload_0
    //   165: getfield 796	com/flurry/sdk/jb:r	B
    //   168: invokevirtual 799	com/flurry/sdk/ja:a	(B)V
    //   171: aload 8
    //   173: aload_0
    //   174: getfield 801	com/flurry/sdk/jb:s	Ljava/lang/Long;
    //   177: invokevirtual 804	com/flurry/sdk/ja:a	(Ljava/lang/Long;)V
    //   180: aload 8
    //   182: aload_0
    //   183: invokevirtual 806	com/flurry/sdk/jb:g	()Ljava/util/Map;
    //   186: invokevirtual 808	com/flurry/sdk/ja:c	(Ljava/util/Map;)V
    //   189: aload 8
    //   191: aload_0
    //   192: invokevirtual 810	com/flurry/sdk/jb:e	()Ljava/util/List;
    //   195: invokevirtual 813	com/flurry/sdk/ja:a	(Ljava/util/List;)V
    //   198: aload 8
    //   200: aload_0
    //   201: getfield 159	com/flurry/sdk/jb:z	Z
    //   204: invokevirtual 815	com/flurry/sdk/ja:a	(Z)V
    //   207: aload 8
    //   209: aload_0
    //   210: invokevirtual 817	com/flurry/sdk/jb:f	()Ljava/util/List;
    //   213: invokevirtual 819	com/flurry/sdk/ja:b	(Ljava/util/List;)V
    //   216: aload 8
    //   218: aload_0
    //   219: getfield 165	com/flurry/sdk/jb:C	I
    //   222: invokevirtual 821	com/flurry/sdk/ja:d	(I)V
    //   225: new 823	com/flurry/sdk/iz
    //   228: dup
    //   229: aload 8
    //   231: invokespecial 826	com/flurry/sdk/iz:<init>	(Lcom/flurry/sdk/ja;)V
    //   234: astore 8
    //   236: aload 8
    //   238: ifnonnull +12 -> 250
    //   241: getstatic 108	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   244: ldc_w 828
    //   247: invokestatic 424	com/flurry/sdk/kg:e	(Ljava/lang/String;Ljava/lang/String;)V
    //   250: aload_0
    //   251: monitorexit
    //   252: aload 8
    //   254: areturn
    //   255: invokestatic 832	com/flurry/sdk/lr:j	()I
    //   258: istore 7
    //   260: goto -134 -> 126
    //   263: astore 8
    //   265: iconst_5
    //   266: getstatic 108	com/flurry/sdk/jb:f	Ljava/lang/String;
    //   269: new 300	java/lang/StringBuilder
    //   272: dup
    //   273: ldc_w 834
    //   276: invokespecial 303	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   279: aload 8
    //   281: invokevirtual 362	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   284: invokevirtual 311	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   287: invokestatic 367	com/flurry/sdk/kg:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   290: aconst_null
    //   291: astore 8
    //   293: goto -57 -> 236
    //   296: astore 8
    //   298: aload_0
    //   299: monitorexit
    //   300: aload 8
    //   302: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	303	0	this	jb
    //   0	303	1	paramLong1	long
    //   0	303	3	paramLong2	long
    //   0	303	5	paramLong3	long
    //   0	303	7	paramInt	int
    //   9	244	8	localObject1	Object
    //   263	17	8	localIOException	java.io.IOException
    //   291	1	8	localObject2	Object
    //   296	5	8	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   225	236	263	java/io/IOException
    //   2	126	296	finally
    //   126	225	296	finally
    //   225	236	296	finally
    //   241	250	296	finally
    //   255	260	296	finally
    //   265	290	296	finally
  }
  
  public void a()
  {
    this.n = true;
  }
  
  public void a(final long paramLong)
  {
    try
    {
      kc.a().a(this.G);
      js.a().b(new ly()
      {
        public void a()
        {
          if ((jb.g(jb.this)) && (hl.a().c() != null)) {
            hl.a().c().d();
          }
          if (hl.a().e() != null) {
            js.a().b(new ly()
            {
              public void a()
              {
                hl.a().e().d();
              }
            });
          }
        }
      });
      if (jf.a().c()) {
        js.a().b(new ly()
        {
          public void a()
          {
            jb.a(jb.this, false, paramLong);
          }
        });
      }
      lk.a().b("Gender", this);
      lk.a().b("UserId", this);
      lk.a().b("Age", this);
      lk.a().b("LogEvents", this);
      return;
    }
    finally {}
  }
  
  public void a(Context paramContext)
  {
    try
    {
      this.t = lr.j();
      if (hl.a().e() != null) {
        js.a().b(new ly()
        {
          public void a()
          {
            hl.a().e().e();
          }
        });
      }
      if ((this.E) && (hl.a().c() != null)) {
        js.a().b(new ly()
        {
          public void a()
          {
            hl.a().c().c();
          }
        });
      }
      return;
    }
    finally {}
  }
  
  public void a(lf paramlf, Context paramContext)
  {
    this.k = new WeakReference(paramlf);
    paramlf = lk.a();
    this.p = ((Boolean)paramlf.a("LogEvents")).booleanValue();
    paramlf.a("LogEvents", this);
    kg.a(4, f, "initSettings, LogEvents = " + this.p);
    this.q = ((String)paramlf.a("UserId"));
    paramlf.a("UserId", this);
    kg.a(4, f, "initSettings, UserId = " + this.q);
    this.r = ((Byte)paramlf.a("Gender")).byteValue();
    paramlf.a("Gender", this);
    kg.a(4, f, "initSettings, Gender = " + this.r);
    this.s = ((Long)paramlf.a("Age"));
    paramlf.a("Age", this);
    kg.a(4, f, "initSettings, BirthDate = " + this.s);
    this.E = ((Boolean)paramlf.a("analyticsEnabled")).booleanValue();
    paramlf.a("analyticsEnabled", this);
    kg.a(4, f, "initSettings, AnalyticsEnabled = " + this.E);
    this.l = paramContext.getFileStreamPath(k());
    this.m = new jz(paramContext.getFileStreamPath(l()), ".yflurryreport.", 1, new le()
    {
      public lb<List<iz>> a(int paramAnonymousInt)
      {
        return new la(new iz.a());
      }
    });
    c(paramContext);
    a(true);
    if (hl.a().c() != null) {
      js.a().b(new ly()
      {
        public void a()
        {
          hl.a().c().b();
        }
      });
    }
    js.a().b(new ly()
    {
      public void a()
      {
        jb.c(jb.this);
      }
    });
    js.a().b(new ly()
    {
      public void a()
      {
        jb.d(jb.this);
      }
    });
    if (jf.a().c())
    {
      js.a().b(new ly()
      {
        public void a()
        {
          jb.a(jb.this, true, je.a().d());
        }
      });
      return;
    }
    kc.a().a("com.flurry.android.sdk.IdProviderFinishedEvent", this.G);
  }
  
  public void a(String paramString, Object paramObject)
  {
    int i1 = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i1)
      {
      default: 
        kg.a(6, f, "onSettingUpdate internal error!");
        return;
        if (paramString.equals("LogEvents"))
        {
          i1 = 0;
          continue;
          if (paramString.equals("UserId"))
          {
            i1 = 1;
            continue;
            if (paramString.equals("Gender"))
            {
              i1 = 2;
              continue;
              if (paramString.equals("Age"))
              {
                i1 = 3;
                continue;
                if (paramString.equals("analyticsEnabled")) {
                  i1 = 4;
                }
              }
            }
          }
        }
        break;
      }
    }
    this.p = ((Boolean)paramObject).booleanValue();
    kg.a(4, f, "onSettingUpdate, LogEvents = " + this.p);
    return;
    this.q = ((String)paramObject);
    kg.a(4, f, "onSettingUpdate, UserId = " + this.q);
    return;
    this.r = ((Byte)paramObject).byteValue();
    kg.a(4, f, "onSettingUpdate, Gender = " + this.r);
    return;
    this.s = ((Long)paramObject);
    kg.a(4, f, "onSettingUpdate, Birthdate = " + this.s);
    return;
    this.E = ((Boolean)paramObject).booleanValue();
    kg.a(4, f, "onSettingUpdate, AnalyticsEnabled = " + this.E);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, Throwable paramThrowable)
  {
    if (paramString1 != null) {}
    for (;;)
    {
      try
      {
        long l1;
        if ("uncaught".equals(paramString1))
        {
          i1 = 1;
          this.C += 1;
          if (this.B.size() < e)
          {
            l1 = System.currentTimeMillis();
            paramString1 = new iu(p(), Long.valueOf(l1).longValue(), paramString1, paramString2, paramString3, paramThrowable);
            this.B.add(paramString1);
            kg.e(f, "Error logged: " + paramString1.c());
          }
        }
        else
        {
          i1 = 0;
          continue;
        }
        if (i1 == 0) {
          break label240;
        }
        int i1 = 0;
        if (i1 >= this.B.size()) {
          continue;
        }
        iu localiu = (iu)this.B.get(i1);
        if ((localiu.c() != null) && (!"uncaught".equals(localiu.c())))
        {
          l1 = System.currentTimeMillis();
          paramString1 = new iu(p(), Long.valueOf(l1).longValue(), paramString1, paramString2, paramString3, paramThrowable);
          this.B.set(i1, paramString1);
          continue;
        }
        i1 += 1;
      }
      finally {}
      continue;
      label240:
      kg.e(f, "Max errors logged. No more errors logged.");
    }
  }
  
  public void a(String paramString, Map<String, String> paramMap)
  {
    for (;;)
    {
      try
      {
        Iterator localIterator = this.y.iterator();
        iw localiw;
        int i1;
        if (localIterator.hasNext())
        {
          localiw = (iw)localIterator.next();
          if (!localiw.a(paramString)) {
            continue;
          }
          long l1 = SystemClock.elapsedRealtime();
          long l2 = je.a().e();
          if ((paramMap != null) && (paramMap.size() > 0) && (this.A < d))
          {
            i1 = this.A - localiw.d();
            paramString = new HashMap(localiw.c());
            localiw.a(paramMap);
            if (localiw.d() + i1 > d) {
              break label201;
            }
            if (localiw.c().size() > b)
            {
              kg.e(f, "MaxEventParams exceeded on endEvent: " + localiw.c().size());
              localiw.b(paramString);
            }
          }
          else
          {
            localiw.a(l1 - l2);
          }
        }
        else
        {
          return;
        }
        this.A = (i1 + localiw.d());
        continue;
        localiw.b(paramString);
      }
      finally {}
      label201:
      this.z = false;
      this.A = d;
      kg.e(f, "Event Log size exceeded. No more event details logged.");
    }
  }
  
  public void b()
  {
    try
    {
      this.D += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void b(Context paramContext)
  {
    try
    {
      a(false);
      final long l1 = je.a().d();
      long l2 = je.a().f();
      final long l3 = je.a().h();
      int i1 = je.a().l().a();
      b(je.a().f());
      if ((this.E) && (hl.a().c() != null)) {
        js.a().b(new ly()
        {
          public void a()
          {
            hl.a().c().a(l1);
          }
        });
      }
      js.a().b(new ly()
      {
        public void a()
        {
          jb.e(jb.this);
        }
      });
      if (jf.a().c()) {
        js.a().b(new ly()
        {
          public void a()
          {
            iz localiz = jb.this.a(l1, l3, this.c, this.d);
            jb.f(jb.this).clear();
            jb.f(jb.this).add(localiz);
            jb.this.c();
          }
        });
      }
      return;
    }
    finally {}
  }
  
  public void c()
  {
    try
    {
      kg.a(4, f, "Saving persistent agent data.");
      this.m.a(this.u);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  String d()
  {
    if (this.q == null) {
      return "";
    }
    return this.q;
  }
  
  List<iw> e()
  {
    return this.y;
  }
  
  List<iu> f()
  {
    return this.B;
  }
  
  Map<String, iv> g()
  {
    return this.x;
  }
  
  int h()
  {
    return this.D;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\flurry\sdk\jb.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */