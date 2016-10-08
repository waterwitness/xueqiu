package com.tencent.bugly.crashreport.common.info;

import android.content.Context;
import android.content.pm.PackageInfo;
import com.tencent.bugly.b;
import com.tencent.bugly.proguard.w;
import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public final class a
{
  private static a V = null;
  private String A;
  private String B;
  private String C = "unknown";
  private String D = "unknown";
  private String E = "";
  private String F = null;
  private String G = null;
  private String H = null;
  private String I = null;
  private long J = -1L;
  private long K = -1L;
  private long L = -1L;
  private String M = null;
  private String N = null;
  private Map<String, PlugInBean> O = null;
  private boolean P = true;
  private String Q = null;
  private String R = null;
  private Boolean S = null;
  private String T = null;
  private Map<String, PlugInBean> U = null;
  private int W = -1;
  private int X = -1;
  private Map<String, String> Y = new HashMap();
  private Map<String, String> Z = new HashMap();
  public final long a = System.currentTimeMillis();
  private final Object aa = new Object();
  private final Object ab = new Object();
  public final byte b;
  public String c;
  public final String d;
  public final String e;
  public final String f;
  public final String g;
  public long h;
  public String i = null;
  public String j = null;
  public String k = null;
  public String l = null;
  public List<String> m = null;
  public boolean n;
  public String o = "unknown";
  public long p = 0L;
  public long q = 0L;
  public long r = 0L;
  public long s = 0L;
  public boolean t = false;
  public String u = null;
  public String v = null;
  public String w = null;
  public boolean x = false;
  public boolean y = false;
  private final Context z;
  
  private a(Context paramContext)
  {
    Object localObject1;
    if (paramContext == null) {
      localObject1 = paramContext;
    }
    for (;;)
    {
      this.z = ((Context)localObject1);
      this.b = 1;
      localObject1 = AppInfo.b(paramContext);
      if (localObject1 != null)
      {
        this.i = AppInfo.a((PackageInfo)localObject1);
        this.u = this.i;
        this.v = AppInfo.b((PackageInfo)localObject1);
      }
      this.c = AppInfo.a(paramContext);
      this.d = AppInfo.c(paramContext);
      this.e = com.tencent.bugly.proguard.a.m();
      this.f = com.tencent.bugly.proguard.a.b();
      this.g = ("Android " + com.tencent.bugly.proguard.a.c() + ",level " + com.tencent.bugly.proguard.a.d());
      new StringBuilder().append(this.f).append(";").append(this.g);
      localObject1 = AppInfo.d(paramContext);
      if (localObject1 != null) {}
      try
      {
        this.m = AppInfo.a((Map)localObject1);
        localObject2 = (String)((Map)localObject1).get("BUGLY_APPID");
        if (localObject2 != null) {
          this.R = ((String)localObject2);
        }
        localObject2 = (String)((Map)localObject1).get("BUGLY_APP_VERSION");
        if (localObject2 != null) {
          this.i = ((String)localObject2);
        }
        localObject2 = (String)((Map)localObject1).get("BUGLY_APP_CHANNEL");
        if (localObject2 != null) {
          this.j = ((String)localObject2);
        }
        localObject2 = (String)((Map)localObject1).get("BUGLY_ENABLE_DEBUG");
        if (localObject2 != null)
        {
          if (((String)localObject2).toLowerCase().equals("true"))
          {
            bool = true;
            this.t = bool;
          }
        }
        else
        {
          localObject1 = (String)((Map)localObject1).get("com.tencent.rdm.uuid");
          if (localObject1 != null) {
            this.w = ((String)localObject1);
          }
        }
      }
      catch (Throwable localThrowable)
      {
        try
        {
          for (;;)
          {
            if (!paramContext.getDatabasePath("bugly_db_").exists())
            {
              this.y = true;
              w.c("App is first time to be installed on the device.", new Object[0]);
            }
            w.c("com info create end", new Object[0]);
            return;
            Object localObject2 = paramContext.getApplicationContext();
            localObject1 = localObject2;
            if (localObject2 != null) {
              break;
            }
            localObject1 = paramContext;
            break;
            boolean bool = false;
            continue;
            localThrowable = localThrowable;
            if (!w.a(localThrowable)) {
              localThrowable.printStackTrace();
            }
          }
        }
        catch (Throwable paramContext)
        {
          for (;;)
          {
            if (b.b) {
              paramContext.printStackTrace();
            }
          }
        }
      }
    }
  }
  
  public static a a()
  {
    try
    {
      a locala = V;
      return locala;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public static a a(Context paramContext)
  {
    try
    {
      if (V == null) {
        V = new a(paramContext);
      }
      paramContext = V;
      return paramContext;
    }
    finally {}
  }
  
  public static String b()
  {
    return "2.1.9";
  }
  
  /* Error */
  public final Map<String, String> A()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 144	com/tencent/bugly/crashreport/common/info/a:Z	Ljava/util/Map;
    //   6: invokeinterface 321 1 0
    //   11: istore_2
    //   12: iload_2
    //   13: ifgt +9 -> 22
    //   16: aconst_null
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: areturn
    //   22: new 139	java/util/HashMap
    //   25: dup
    //   26: aload_0
    //   27: getfield 144	com/tencent/bugly/crashreport/common/info/a:Z	Ljava/util/Map;
    //   30: invokespecial 324	java/util/HashMap:<init>	(Ljava/util/Map;)V
    //   33: astore_1
    //   34: goto -16 -> 18
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	a
    //   17	17	1	localObject1	Object
    //   37	4	1	localObject2	Object
    //   11	2	2	i1	int
    // Exception table:
    //   from	to	target	type
    //   2	12	37	finally
    //   22	34	37	finally
  }
  
  public final int B()
  {
    try
    {
      int i1 = this.W;
      return i1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int C()
  {
    try
    {
      int i1 = this.X;
      return i1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final boolean D()
  {
    try
    {
      boolean bool = AppInfo.e(this.z);
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final Map<String, PlugInBean> E()
  {
    return null;
  }
  
  public final int F()
  {
    try
    {
      int i1 = com.tencent.bugly.proguard.a.d();
      return i1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void a(int paramInt)
  {
    try
    {
      int i1 = this.W;
      if (i1 != paramInt)
      {
        this.W = paramInt;
        w.a("user scene tag %d changed to tag %d", new Object[] { Integer.valueOf(i1), Integer.valueOf(this.W) });
      }
      return;
    }
    finally {}
  }
  
  public final void a(String paramString)
  {
    this.R = paramString;
  }
  
  public final void a(String paramString1, String paramString2)
  {
    int i2 = 0;
    if (paramString1 != null) {}
    for (;;)
    {
      int i1;
      try
      {
        if (paramString1.trim().length() > 0)
        {
          i1 = 0;
          if (i1 == 0)
          {
            if ((paramString2 != null) && (paramString2.trim().length() > 0))
            {
              i1 = i2;
              break label97;
            }
          }
          else {
            w.d("key&value should not be empty %s %s", new Object[] { paramString1, paramString2 });
          }
        }
        else
        {
          i1 = 1;
          continue;
        }
        i1 = 1;
      }
      finally {}
      this.Y.put(paramString1, paramString2);
      continue;
      label97:
      if (i1 == 0) {}
    }
  }
  
  public final void b(String paramString)
  {
    String str = paramString;
    if (paramString == null) {
      str = "10000";
    }
    try
    {
      this.C = str;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public final void b(String paramString1, String paramString2)
  {
    int i2 = 0;
    if (paramString1 != null) {}
    for (;;)
    {
      int i1;
      try
      {
        if (paramString1.trim().length() > 0)
        {
          i1 = 0;
          if (i1 == 0)
          {
            if ((paramString2 != null) && (paramString2.trim().length() > 0))
            {
              i1 = i2;
              break label97;
            }
          }
          else {
            w.d("server key&value should not be empty %s %s", new Object[] { paramString1, paramString2 });
          }
        }
        else
        {
          i1 = 1;
          continue;
        }
        i1 = 1;
      }
      finally {}
      this.Z.put(paramString1, paramString2);
      continue;
      label97:
      if (i1 == 0) {}
    }
  }
  
  public final void c()
  {
    synchronized (this.aa)
    {
      this.A = UUID.randomUUID().toString();
      return;
    }
  }
  
  public final void c(String paramString)
  {
    try
    {
      this.B = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public final String d()
  {
    if (this.A == null) {}
    synchronized (this.aa)
    {
      if (this.A == null) {
        this.A = UUID.randomUUID().toString();
      }
      return this.A;
    }
  }
  
  public final void d(String paramString)
  {
    try
    {
      this.D = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public final String e()
  {
    return this.R;
  }
  
  public final void e(String paramString)
  {
    try
    {
      this.E = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public final String f()
  {
    try
    {
      String str = this.C;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final String f(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_1
    //   5: ifnull +38 -> 43
    //   8: aload_1
    //   9: invokevirtual 345	java/lang/String:trim	()Ljava/lang/String;
    //   12: invokevirtual 348	java/lang/String:length	()I
    //   15: ifle +28 -> 43
    //   18: iload_2
    //   19: ifeq +29 -> 48
    //   22: ldc_w 374
    //   25: iconst_1
    //   26: anewarray 4	java/lang/Object
    //   29: dup
    //   30: iconst_0
    //   31: aload_1
    //   32: aastore
    //   33: invokestatic 352	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   36: pop
    //   37: aconst_null
    //   38: astore_1
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: areturn
    //   43: iconst_1
    //   44: istore_2
    //   45: goto -27 -> 18
    //   48: aload_0
    //   49: getfield 142	com/tencent/bugly/crashreport/common/info/a:Y	Ljava/util/Map;
    //   52: aload_1
    //   53: invokeinterface 377 2 0
    //   58: checkcast 257	java/lang/String
    //   61: astore_1
    //   62: goto -23 -> 39
    //   65: astore_1
    //   66: aload_0
    //   67: monitorexit
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	a
    //   0	70	1	paramString	String
    //   1	44	2	i1	int
    // Exception table:
    //   from	to	target	type
    //   8	18	65	finally
    //   22	37	65	finally
    //   48	62	65	finally
  }
  
  /* Error */
  public final String g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 371	com/tencent/bugly/crashreport/common/info/a:B	Ljava/lang/String;
    //   6: ifnull +12 -> 18
    //   9: aload_0
    //   10: getfield 371	com/tencent/bugly/crashreport/common/info/a:B	Ljava/lang/String;
    //   13: astore_1
    //   14: aload_0
    //   15: monitorexit
    //   16: aload_1
    //   17: areturn
    //   18: aload_0
    //   19: new 214	java/lang/StringBuilder
    //   22: dup
    //   23: invokespecial 239	java/lang/StringBuilder:<init>	()V
    //   26: aload_0
    //   27: invokevirtual 379	com/tencent/bugly/crashreport/common/info/a:j	()Ljava/lang/String;
    //   30: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: ldc_w 381
    //   36: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: aload_0
    //   40: invokevirtual 383	com/tencent/bugly/crashreport/common/info/a:l	()Ljava/lang/String;
    //   43: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   46: ldc_w 381
    //   49: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: aload_0
    //   53: invokevirtual 384	com/tencent/bugly/crashreport/common/info/a:m	()Ljava/lang/String;
    //   56: invokevirtual 225	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: putfield 371	com/tencent/bugly/crashreport/common/info/a:B	Ljava/lang/String;
    //   65: aload_0
    //   66: getfield 371	com/tencent/bugly/crashreport/common/info/a:B	Ljava/lang/String;
    //   69: astore_1
    //   70: goto -56 -> 14
    //   73: astore_1
    //   74: aload_0
    //   75: monitorexit
    //   76: aload_1
    //   77: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	78	0	this	a
    //   13	57	1	str	String
    //   73	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	73	finally
    //   18	70	73	finally
  }
  
  /* Error */
  public final String g(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_1
    //   5: ifnull +38 -> 43
    //   8: aload_1
    //   9: invokevirtual 345	java/lang/String:trim	()Ljava/lang/String;
    //   12: invokevirtual 348	java/lang/String:length	()I
    //   15: ifle +28 -> 43
    //   18: iload_2
    //   19: ifeq +29 -> 48
    //   22: ldc_w 374
    //   25: iconst_1
    //   26: anewarray 4	java/lang/Object
    //   29: dup
    //   30: iconst_0
    //   31: aload_1
    //   32: aastore
    //   33: invokestatic 352	com/tencent/bugly/proguard/w:d	(Ljava/lang/String;[Ljava/lang/Object;)Z
    //   36: pop
    //   37: aconst_null
    //   38: astore_1
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_1
    //   42: areturn
    //   43: iconst_1
    //   44: istore_2
    //   45: goto -27 -> 18
    //   48: aload_0
    //   49: getfield 142	com/tencent/bugly/crashreport/common/info/a:Y	Ljava/util/Map;
    //   52: aload_1
    //   53: invokeinterface 255 2 0
    //   58: checkcast 257	java/lang/String
    //   61: astore_1
    //   62: goto -23 -> 39
    //   65: astore_1
    //   66: aload_0
    //   67: monitorexit
    //   68: aload_1
    //   69: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	70	0	this	a
    //   0	70	1	paramString	String
    //   1	44	2	i1	int
    // Exception table:
    //   from	to	target	type
    //   8	18	65	finally
    //   22	37	65	finally
    //   48	62	65	finally
  }
  
  public final String h()
  {
    try
    {
      String str = this.D;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final String i()
  {
    try
    {
      String str = this.E;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final String j()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 113	com/tencent/bugly/crashreport/common/info/a:P	Z
    //   6: ifne +10 -> 16
    //   9: ldc 87
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: areturn
    //   16: aload_0
    //   17: getfield 91	com/tencent/bugly/crashreport/common/info/a:F	Ljava/lang/String;
    //   20: ifnonnull +14 -> 34
    //   23: aload_0
    //   24: aload_0
    //   25: getfield 180	com/tencent/bugly/crashreport/common/info/a:z	Landroid/content/Context;
    //   28: invokestatic 385	com/tencent/bugly/proguard/a:a	(Landroid/content/Context;)Ljava/lang/String;
    //   31: putfield 91	com/tencent/bugly/crashreport/common/info/a:F	Ljava/lang/String;
    //   34: aload_0
    //   35: getfield 91	com/tencent/bugly/crashreport/common/info/a:F	Ljava/lang/String;
    //   38: astore_1
    //   39: goto -27 -> 12
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	a
    //   11	28	1	str	String
    //   42	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	9	42	finally
    //   16	34	42	finally
    //   34	39	42	finally
  }
  
  /* Error */
  public final String k()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 113	com/tencent/bugly/crashreport/common/info/a:P	Z
    //   6: ifne +10 -> 16
    //   9: ldc 87
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: areturn
    //   16: aload_0
    //   17: getfield 93	com/tencent/bugly/crashreport/common/info/a:G	Ljava/lang/String;
    //   20: ifnonnull +14 -> 34
    //   23: aload_0
    //   24: aload_0
    //   25: getfield 180	com/tencent/bugly/crashreport/common/info/a:z	Landroid/content/Context;
    //   28: invokestatic 387	com/tencent/bugly/proguard/a:d	(Landroid/content/Context;)Ljava/lang/String;
    //   31: putfield 93	com/tencent/bugly/crashreport/common/info/a:G	Ljava/lang/String;
    //   34: aload_0
    //   35: getfield 93	com/tencent/bugly/crashreport/common/info/a:G	Ljava/lang/String;
    //   38: astore_1
    //   39: goto -27 -> 12
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	a
    //   11	28	1	str	String
    //   42	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	9	42	finally
    //   16	34	42	finally
    //   34	39	42	finally
  }
  
  /* Error */
  public final String l()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 113	com/tencent/bugly/crashreport/common/info/a:P	Z
    //   6: ifne +10 -> 16
    //   9: ldc 87
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: areturn
    //   16: aload_0
    //   17: getfield 95	com/tencent/bugly/crashreport/common/info/a:H	Ljava/lang/String;
    //   20: ifnonnull +14 -> 34
    //   23: aload_0
    //   24: aload_0
    //   25: getfield 180	com/tencent/bugly/crashreport/common/info/a:z	Landroid/content/Context;
    //   28: invokestatic 389	com/tencent/bugly/proguard/a:b	(Landroid/content/Context;)Ljava/lang/String;
    //   31: putfield 95	com/tencent/bugly/crashreport/common/info/a:H	Ljava/lang/String;
    //   34: aload_0
    //   35: getfield 95	com/tencent/bugly/crashreport/common/info/a:H	Ljava/lang/String;
    //   38: astore_1
    //   39: goto -27 -> 12
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	a
    //   11	28	1	str	String
    //   42	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	9	42	finally
    //   16	34	42	finally
    //   34	39	42	finally
  }
  
  /* Error */
  public final String m()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 113	com/tencent/bugly/crashreport/common/info/a:P	Z
    //   6: ifne +10 -> 16
    //   9: ldc 87
    //   11: astore_1
    //   12: aload_0
    //   13: monitorexit
    //   14: aload_1
    //   15: areturn
    //   16: aload_0
    //   17: getfield 97	com/tencent/bugly/crashreport/common/info/a:I	Ljava/lang/String;
    //   20: ifnonnull +14 -> 34
    //   23: aload_0
    //   24: aload_0
    //   25: getfield 180	com/tencent/bugly/crashreport/common/info/a:z	Landroid/content/Context;
    //   28: invokestatic 390	com/tencent/bugly/proguard/a:c	(Landroid/content/Context;)Ljava/lang/String;
    //   31: putfield 97	com/tencent/bugly/crashreport/common/info/a:I	Ljava/lang/String;
    //   34: aload_0
    //   35: getfield 97	com/tencent/bugly/crashreport/common/info/a:I	Ljava/lang/String;
    //   38: astore_1
    //   39: goto -27 -> 12
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	a
    //   11	28	1	str	String
    //   42	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	9	42	finally
    //   16	34	42	finally
    //   34	39	42	finally
  }
  
  public final long n()
  {
    try
    {
      if (this.J <= 0L) {
        this.J = com.tencent.bugly.proguard.a.f();
      }
      long l1 = this.J;
      return l1;
    }
    finally {}
  }
  
  public final long o()
  {
    try
    {
      if (this.K <= 0L) {
        this.K = com.tencent.bugly.proguard.a.h();
      }
      long l1 = this.K;
      return l1;
    }
    finally {}
  }
  
  public final long p()
  {
    try
    {
      if (this.L <= 0L) {
        this.L = com.tencent.bugly.proguard.a.j();
      }
      long l1 = this.L;
      return l1;
    }
    finally {}
  }
  
  public final String q()
  {
    try
    {
      if (this.M == null) {
        this.M = com.tencent.bugly.proguard.a.e();
      }
      String str = this.M;
      return str;
    }
    finally {}
  }
  
  public final String r()
  {
    if (this.N == null) {}
    synchronized (this.ab)
    {
      if (this.N == null) {
        this.N = com.tencent.bugly.proguard.a.a(this.z, "ro.board.platform");
      }
      return this.N;
    }
  }
  
  public final Map<String, PlugInBean> s()
  {
    return null;
  }
  
  public final String t()
  {
    if (this.Q == null) {
      this.Q = com.tencent.bugly.proguard.a.l();
    }
    return this.Q;
  }
  
  public final Boolean u()
  {
    try
    {
      if (this.S == null) {
        this.S = Boolean.valueOf(com.tencent.bugly.proguard.a.f(this.z));
      }
      Boolean localBoolean = this.S;
      return localBoolean;
    }
    finally {}
  }
  
  public final String v()
  {
    int i2 = 0;
    for (;;)
    {
      try
      {
        Object localObject1;
        if (this.T == null)
        {
          StringBuilder localStringBuilder = new StringBuilder();
          localObject1 = this.z;
          str = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.miui.ui.version.name");
          if ((str != null) && (str.trim().length() > 0))
          {
            i1 = 0;
            if ((i1 != 0) || (str.equals("fail"))) {
              continue;
            }
            localObject1 = "XiaoMi/MIUI/" + str;
            this.T = ((String)localObject1);
            w.a("rom:%s", new Object[] { this.T });
          }
        }
        else
        {
          localObject1 = this.T;
          return (String)localObject1;
        }
        i1 = 1;
        continue;
        String str = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.version.emui");
        if ((str != null) && (str.trim().length() > 0))
        {
          i1 = 0;
          if ((i1 == 0) && (!str.equals("fail")))
          {
            localObject1 = "HuaWei/EMOTION/" + str;
            continue;
          }
          str = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.lenovo.series");
          if ((str == null) || (str.trim().length() <= 0)) {
            break label868;
          }
          i1 = 0;
          if ((i1 == 0) && (!str.equals("fail")))
          {
            localObject1 = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.version.incremental");
            localObject1 = "Lenovo/VIBE/" + (String)localObject1;
            continue;
          }
          str = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.nubia.rom.name");
          if ((str == null) || (str.trim().length() <= 0)) {
            break label874;
          }
          i1 = 0;
          if ((i1 == 0) && (!str.equals("fail")))
          {
            localObject1 = "Zte/NUBIA/" + str + "_" + com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.nubia.rom.code");
            continue;
          }
          str = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.meizu.product.model");
          if ((str == null) || (str.trim().length() <= 0)) {
            break label880;
          }
          i1 = 0;
          if ((i1 == 0) && (!str.equals("fail")))
          {
            localObject1 = "Meizu/FLYME/" + com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.display.id");
            continue;
          }
          str = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.version.opporom");
          if ((str == null) || (str.trim().length() <= 0)) {
            break label886;
          }
          i1 = 0;
          if ((i1 == 0) && (!str.equals("fail")))
          {
            localObject1 = "Oppo/COLOROS/" + str;
            continue;
          }
          str = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.vivo.os.build.display.id");
          if ((str == null) || (str.trim().length() <= 0)) {
            break label892;
          }
          i1 = 0;
          if ((i1 == 0) && (!str.equals("fail")))
          {
            localObject1 = "vivo/FUNTOUCH/" + str;
            continue;
          }
          str = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.aa.romver");
          if ((str == null) || (str.trim().length() <= 0)) {
            break label898;
          }
          i1 = 0;
          if ((i1 == 0) && (!str.equals("fail")))
          {
            localObject1 = "htc/" + str + "/" + com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.description");
            continue;
          }
          str = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.lewa.version");
          if ((str == null) || (str.trim().length() <= 0)) {
            break label904;
          }
          i1 = 0;
          if ((i1 == 0) && (!str.equals("fail")))
          {
            localObject1 = "tcl/" + str + "/" + com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.display.id");
            continue;
          }
          str = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.gn.gnromvernumber");
          if ((str == null) || (str.trim().length() <= 0)) {
            break label910;
          }
          i1 = 0;
          if ((i1 == 0) && (!str.equals("fail")))
          {
            localObject1 = "amigo/" + str + "/" + com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.display.id");
            continue;
          }
          str = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.tyd.kbstyle_version");
          if ((str == null) || (str.trim().length() <= 0)) {
            break label916;
          }
          i1 = i2;
          if ((i1 == 0) && (!str.equals("fail")))
          {
            localObject1 = "dido/" + str;
            continue;
          }
          localObject1 = com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.fingerprint") + "/" + com.tencent.bugly.proguard.a.a((Context)localObject1, "ro.build.rom.id");
          continue;
        }
        i1 = 1;
      }
      finally {}
      continue;
      label868:
      int i1 = 1;
      continue;
      label874:
      i1 = 1;
      continue;
      label880:
      i1 = 1;
      continue;
      label886:
      i1 = 1;
      continue;
      label892:
      i1 = 1;
      continue;
      label898:
      i1 = 1;
      continue;
      label904:
      i1 = 1;
      continue;
      label910:
      i1 = 1;
      continue;
      label916:
      i1 = 1;
    }
  }
  
  /* Error */
  public final Map<String, String> w()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 142	com/tencent/bugly/crashreport/common/info/a:Y	Ljava/util/Map;
    //   6: invokeinterface 321 1 0
    //   11: istore_2
    //   12: iload_2
    //   13: ifgt +9 -> 22
    //   16: aconst_null
    //   17: astore_1
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_1
    //   21: areturn
    //   22: new 139	java/util/HashMap
    //   25: dup
    //   26: aload_0
    //   27: getfield 142	com/tencent/bugly/crashreport/common/info/a:Y	Ljava/util/Map;
    //   30: invokespecial 324	java/util/HashMap:<init>	(Ljava/util/Map;)V
    //   33: astore_1
    //   34: goto -16 -> 18
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	a
    //   17	17	1	localObject1	Object
    //   37	4	1	localObject2	Object
    //   11	2	2	i1	int
    // Exception table:
    //   from	to	target	type
    //   2	12	37	finally
    //   22	34	37	finally
  }
  
  public final void x()
  {
    try
    {
      this.Y.clear();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final int y()
  {
    try
    {
      int i1 = this.Y.size();
      return i1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final Set<String> z()
  {
    try
    {
      Set localSet = this.Y.keySet();
      return localSet;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\crashreport\common\info\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */