package com.tencent.bugly.proguard;

import android.content.Context;
import android.util.Log;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;

public final class x
{
  public static boolean a;
  private static SimpleDateFormat b = null;
  private static int c;
  private static StringBuilder d;
  private static StringBuilder e;
  private static x.a f;
  private static String g;
  private static String h;
  private static Context i;
  private static String j;
  private static boolean k;
  private static int l;
  private static Object m;
  private static Object n;
  private static Method o;
  
  static
  {
    a = true;
    c = 5120;
    m = new Object();
    n = null;
    o = null;
    try
    {
      b = new SimpleDateFormat("MM-dd HH:mm:ss");
      o = Class.forName("com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler").getDeclaredMethod("appendLogToNative", new Class[] { String.class, String.class, String.class });
      return;
    }
    catch (Throwable localThrowable) {}
  }
  
  public static void a(int paramInt)
  {
    synchronized (m)
    {
      c = paramInt;
      if (paramInt < 0) {
        c = 0;
      }
      while (paramInt <= 10240) {
        return;
      }
      c = 10240;
    }
  }
  
  /* Error */
  public static void a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 81	com/tencent/bugly/proguard/x:k	Z
    //   6: ifne +15 -> 21
    //   9: aload_0
    //   10: ifnull +11 -> 21
    //   13: getstatic 38	com/tencent/bugly/proguard/x:a	Z
    //   16: istore_1
    //   17: iload_1
    //   18: ifne +7 -> 25
    //   21: ldc 2
    //   23: monitorexit
    //   24: return
    //   25: new 83	java/lang/StringBuilder
    //   28: dup
    //   29: iconst_0
    //   30: invokespecial 85	java/lang/StringBuilder:<init>	(I)V
    //   33: putstatic 87	com/tencent/bugly/proguard/x:e	Ljava/lang/StringBuilder;
    //   36: new 83	java/lang/StringBuilder
    //   39: dup
    //   40: iconst_0
    //   41: invokespecial 85	java/lang/StringBuilder:<init>	(I)V
    //   44: putstatic 89	com/tencent/bugly/proguard/x:d	Ljava/lang/StringBuilder;
    //   47: aload_0
    //   48: putstatic 91	com/tencent/bugly/proguard/x:i	Landroid/content/Context;
    //   51: aload_0
    //   52: invokestatic 96	com/tencent/bugly/crashreport/common/info/a:a	(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;
    //   55: astore_0
    //   56: aload_0
    //   57: getfield 98	com/tencent/bugly/crashreport/common/info/a:d	Ljava/lang/String;
    //   60: putstatic 100	com/tencent/bugly/proguard/x:g	Ljava/lang/String;
    //   63: aload_0
    //   64: invokevirtual 104	java/lang/Object:getClass	()Ljava/lang/Class;
    //   67: pop
    //   68: ldc 106
    //   70: putstatic 108	com/tencent/bugly/proguard/x:h	Ljava/lang/String;
    //   73: new 83	java/lang/StringBuilder
    //   76: dup
    //   77: invokespecial 109	java/lang/StringBuilder:<init>	()V
    //   80: getstatic 91	com/tencent/bugly/proguard/x:i	Landroid/content/Context;
    //   83: invokevirtual 115	android/content/Context:getFilesDir	()Ljava/io/File;
    //   86: invokevirtual 121	java/io/File:getPath	()Ljava/lang/String;
    //   89: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: ldc 127
    //   94: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: getstatic 100	com/tencent/bugly/proguard/x:g	Ljava/lang/String;
    //   100: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   103: ldc -127
    //   105: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: getstatic 108	com/tencent/bugly/proguard/x:h	Ljava/lang/String;
    //   111: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   114: ldc -125
    //   116: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: putstatic 136	com/tencent/bugly/proguard/x:j	Ljava/lang/String;
    //   125: invokestatic 142	android/os/Process:myPid	()I
    //   128: putstatic 144	com/tencent/bugly/proguard/x:l	I
    //   131: iconst_1
    //   132: putstatic 81	com/tencent/bugly/proguard/x:k	Z
    //   135: goto -114 -> 21
    //   138: astore_0
    //   139: ldc 2
    //   141: monitorexit
    //   142: aload_0
    //   143: athrow
    //   144: astore_0
    //   145: goto -14 -> 131
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	148	0	paramContext	Context
    //   16	2	1	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	9	138	finally
    //   13	17	138	finally
    //   25	131	138	finally
    //   131	135	138	finally
    //   25	131	144	java/lang/Throwable
  }
  
  /* Error */
  public static void a(String arg0, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 81	com/tencent/bugly/proguard/x:k	Z
    //   6: ifeq +13 -> 19
    //   9: getstatic 38	com/tencent/bugly/proguard/x:a	Z
    //   12: istore 5
    //   14: iload 5
    //   16: ifne +7 -> 23
    //   19: ldc 2
    //   21: monitorexit
    //   22: return
    //   23: aload_0
    //   24: aload_1
    //   25: aload_2
    //   26: invokestatic 148	com/tencent/bugly/proguard/x:b	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    //   29: pop
    //   30: invokestatic 151	android/os/Process:myTid	()I
    //   33: istore 4
    //   35: getstatic 89	com/tencent/bugly/proguard/x:d	Ljava/lang/StringBuilder;
    //   38: iconst_0
    //   39: invokevirtual 154	java/lang/StringBuilder:setLength	(I)V
    //   42: aload_2
    //   43: astore_3
    //   44: aload_2
    //   45: invokevirtual 157	java/lang/String:length	()I
    //   48: sipush 30720
    //   51: if_icmple +22 -> 73
    //   54: aload_2
    //   55: aload_2
    //   56: invokevirtual 157	java/lang/String:length	()I
    //   59: sipush 30720
    //   62: isub
    //   63: aload_2
    //   64: invokevirtual 157	java/lang/String:length	()I
    //   67: iconst_1
    //   68: isub
    //   69: invokevirtual 161	java/lang/String:substring	(II)Ljava/lang/String;
    //   72: astore_3
    //   73: new 163	java/util/Date
    //   76: dup
    //   77: invokespecial 164	java/util/Date:<init>	()V
    //   80: astore_2
    //   81: getstatic 36	com/tencent/bugly/proguard/x:b	Ljava/text/SimpleDateFormat;
    //   84: ifnull +131 -> 215
    //   87: getstatic 36	com/tencent/bugly/proguard/x:b	Ljava/text/SimpleDateFormat;
    //   90: aload_2
    //   91: invokevirtual 168	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   94: astore_2
    //   95: getstatic 89	com/tencent/bugly/proguard/x:d	Ljava/lang/StringBuilder;
    //   98: aload_2
    //   99: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: ldc -86
    //   104: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: getstatic 144	com/tencent/bugly/proguard/x:l	I
    //   110: invokevirtual 173	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   113: ldc -86
    //   115: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   118: iload 4
    //   120: invokevirtual 173	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   123: ldc -86
    //   125: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: aload_0
    //   129: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: ldc -86
    //   134: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   137: aload_1
    //   138: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: ldc -81
    //   143: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: aload_3
    //   147: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: ldc -79
    //   152: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   155: pop
    //   156: getstatic 89	com/tencent/bugly/proguard/x:d	Ljava/lang/StringBuilder;
    //   159: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   162: astore_1
    //   163: getstatic 45	com/tencent/bugly/proguard/x:m	Ljava/lang/Object;
    //   166: astore_0
    //   167: aload_0
    //   168: monitorenter
    //   169: getstatic 87	com/tencent/bugly/proguard/x:e	Ljava/lang/StringBuilder;
    //   172: aload_1
    //   173: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: pop
    //   177: aload_0
    //   178: monitorexit
    //   179: getstatic 87	com/tencent/bugly/proguard/x:e	Ljava/lang/StringBuilder;
    //   182: invokevirtual 178	java/lang/StringBuilder:length	()I
    //   185: getstatic 40	com/tencent/bugly/proguard/x:c	I
    //   188: if_icmple -169 -> 19
    //   191: invokestatic 183	com/tencent/bugly/proguard/v:a	()Lcom/tencent/bugly/proguard/v;
    //   194: new 6	com/tencent/bugly/proguard/x$1
    //   197: dup
    //   198: aload_1
    //   199: invokespecial 184	com/tencent/bugly/proguard/x$1:<init>	(Ljava/lang/String;)V
    //   202: invokevirtual 187	com/tencent/bugly/proguard/v:a	(Ljava/lang/Runnable;)Z
    //   205: pop
    //   206: goto -187 -> 19
    //   209: astore_0
    //   210: ldc 2
    //   212: monitorexit
    //   213: aload_0
    //   214: athrow
    //   215: aload_2
    //   216: invokevirtual 188	java/util/Date:toString	()Ljava/lang/String;
    //   219: astore_2
    //   220: goto -125 -> 95
    //   223: astore_1
    //   224: aload_0
    //   225: monitorexit
    //   226: aload_1
    //   227: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	228	1	paramString2	String
    //   0	228	2	paramString3	String
    //   43	104	3	str	String
    //   33	86	4	i1	int
    //   12	3	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   3	14	209	finally
    //   23	42	209	finally
    //   44	73	209	finally
    //   73	95	209	finally
    //   95	169	209	finally
    //   179	206	209	finally
    //   215	220	209	finally
    //   224	228	209	finally
    //   169	179	223	finally
  }
  
  public static void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (paramThrowable == null) {
      return;
    }
    Object localObject2 = paramThrowable.getMessage();
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = "";
    }
    localObject1 = new StringBuilder().append((String)localObject1).append('\n');
    if (paramThrowable == null) {}
    for (paramThrowable = "";; paramThrowable = ((StringWriter)localObject2).toString())
    {
      a(paramString1, paramString2, paramThrowable);
      return;
      localObject2 = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter((Writer)localObject2);
      paramThrowable.printStackTrace(localPrintWriter);
      localPrintWriter.flush();
    }
  }
  
  /* Error */
  public static byte[] a(boolean paramBoolean)
  {
    // Byte code:
    //   0: getstatic 38	com/tencent/bugly/proguard/x:a	Z
    //   3: ifne +5 -> 8
    //   6: aconst_null
    //   7: areturn
    //   8: getstatic 45	com/tencent/bugly/proguard/x:m	Ljava/lang/Object;
    //   11: astore_2
    //   12: aload_2
    //   13: monitorenter
    //   14: iload_0
    //   15: ifeq +49 -> 64
    //   18: getstatic 76	com/tencent/bugly/proguard/x:f	Lcom/tencent/bugly/proguard/x$a;
    //   21: ifnull +43 -> 64
    //   24: getstatic 76	com/tencent/bugly/proguard/x:f	Lcom/tencent/bugly/proguard/x$a;
    //   27: invokestatic 219	com/tencent/bugly/proguard/x$a:d	(Lcom/tencent/bugly/proguard/x$a;)Z
    //   30: ifeq +34 -> 64
    //   33: getstatic 76	com/tencent/bugly/proguard/x:f	Lcom/tencent/bugly/proguard/x$a;
    //   36: invokestatic 222	com/tencent/bugly/proguard/x$a:a	(Lcom/tencent/bugly/proguard/x$a;)Ljava/io/File;
    //   39: astore_1
    //   40: getstatic 87	com/tencent/bugly/proguard/x:e	Ljava/lang/StringBuilder;
    //   43: invokevirtual 178	java/lang/StringBuilder:length	()I
    //   46: istore_3
    //   47: iload_3
    //   48: ifne +21 -> 69
    //   51: aload_1
    //   52: ifnonnull +17 -> 69
    //   55: aload_2
    //   56: monitorexit
    //   57: aconst_null
    //   58: areturn
    //   59: astore_1
    //   60: aload_2
    //   61: monitorexit
    //   62: aload_1
    //   63: athrow
    //   64: aconst_null
    //   65: astore_1
    //   66: goto -26 -> 40
    //   69: aload_1
    //   70: getstatic 87	com/tencent/bugly/proguard/x:e	Ljava/lang/StringBuilder;
    //   73: invokevirtual 134	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokestatic 227	com/tencent/bugly/proguard/a:a	(Ljava/io/File;Ljava/lang/String;)[B
    //   79: astore_1
    //   80: aload_2
    //   81: monitorexit
    //   82: aload_1
    //   83: areturn
    //   84: astore_1
    //   85: aload_2
    //   86: monitorexit
    //   87: aconst_null
    //   88: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	89	0	paramBoolean	boolean
    //   39	13	1	localFile	java.io.File
    //   59	4	1	localObject1	Object
    //   65	18	1	localObject2	Object
    //   84	1	1	localThrowable	Throwable
    //   11	75	2	localObject3	Object
    //   46	2	3	i1	int
    // Exception table:
    //   from	to	target	type
    //   18	40	59	finally
    //   40	47	59	finally
    //   55	57	59	finally
    //   69	80	59	finally
    //   80	82	59	finally
    //   18	40	84	java/lang/Throwable
    //   40	47	84	java/lang/Throwable
    //   69	80	84	java/lang/Throwable
  }
  
  private static boolean b(String paramString1, String paramString2, String paramString3)
  {
    if (o == null) {
      return false;
    }
    if (n == null)
    {
      Object localObject = a.a("com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler", "getInstance", null, null, null);
      n = localObject;
      if (localObject == null) {
        return false;
      }
    }
    try
    {
      boolean bool = ((Boolean)o.invoke(n, new Object[] { paramString1, paramString2, paramString3 })).booleanValue();
      return bool;
    }
    catch (Throwable paramString1)
    {
      Log.w(w.a, paramString1.getMessage());
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\tencent\bugly\proguard\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */