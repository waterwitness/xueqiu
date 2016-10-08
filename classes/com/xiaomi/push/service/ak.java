package com.xiaomi.push.service;

import android.content.Context;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import com.xiaomi.a.a.b.c;
import com.xiaomi.a.a.f.d;

public final class ak
{
  private static String a = null;
  private static String b = null;
  private static String c = null;
  
  public static String a(Context paramContext)
  {
    String str1 = null;
    String str2;
    if (b == null) {
      str2 = b(paramContext);
    }
    try
    {
      paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      if (Build.VERSION.SDK_INT > 8) {
        str1 = Build.SERIAL;
      }
      b = "a-" + d.b(new StringBuilder().append(str2).append(paramContext).append(str1).toString());
      return b;
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        c.a(paramContext);
        paramContext = null;
      }
    }
  }
  
  /* Error */
  public static String b(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 12	com/xiaomi/push/service/ak:a	Ljava/lang/String;
    //   3: ifnull +7 -> 10
    //   6: getstatic 12	com/xiaomi/push/service/ak:a	Ljava/lang/String;
    //   9: areturn
    //   10: aload_0
    //   11: ldc 79
    //   13: invokevirtual 83	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   16: checkcast 85	android/telephony/TelephonyManager
    //   19: astore_1
    //   20: aload_1
    //   21: invokevirtual 88	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   24: astore_0
    //   25: bipush 10
    //   27: istore_2
    //   28: aload_0
    //   29: ifnonnull +25 -> 54
    //   32: iload_2
    //   33: ifle +21 -> 54
    //   36: ldc2_w 89
    //   39: invokestatic 96	java/lang/Thread:sleep	(J)V
    //   42: aload_1
    //   43: invokevirtual 88	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   46: astore_0
    //   47: iload_2
    //   48: iconst_1
    //   49: isub
    //   50: istore_2
    //   51: goto -23 -> 28
    //   54: aload_0
    //   55: ifnull +7 -> 62
    //   58: aload_0
    //   59: putstatic 12	com/xiaomi/push/service/ak:a	Ljava/lang/String;
    //   62: aload_0
    //   63: areturn
    //   64: astore_0
    //   65: aload_0
    //   66: invokestatic 75	com/xiaomi/a/a/b/c:a	(Ljava/lang/Throwable;)V
    //   69: aconst_null
    //   70: areturn
    //   71: astore_0
    //   72: goto -30 -> 42
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	paramContext	Context
    //   19	24	1	localTelephonyManager	TelephonyManager
    //   27	24	2	i	int
    // Exception table:
    //   from	to	target	type
    //   10	25	64	java/lang/Throwable
    //   36	42	64	java/lang/Throwable
    //   42	47	64	java/lang/Throwable
    //   58	62	64	java/lang/Throwable
    //   36	42	71	java/lang/InterruptedException
  }
  
  /* Error */
  public static String c(Context paramContext)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 16	com/xiaomi/push/service/ak:c	Ljava/lang/String;
    //   6: ifnull +12 -> 18
    //   9: getstatic 16	com/xiaomi/push/service/ak:c	Ljava/lang/String;
    //   12: astore_0
    //   13: ldc 2
    //   15: monitorexit
    //   16: aload_0
    //   17: areturn
    //   18: aload_0
    //   19: invokevirtual 28	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   22: ldc 30
    //   24: invokestatic 36	android/provider/Settings$Secure:getString	(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    //   27: astore_0
    //   28: getstatic 42	android/os/Build$VERSION:SDK_INT	I
    //   31: bipush 8
    //   33: if_icmple +52 -> 85
    //   36: getstatic 47	android/os/Build:SERIAL	Ljava/lang/String;
    //   39: astore_1
    //   40: new 49	java/lang/StringBuilder
    //   43: dup
    //   44: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   47: aload_0
    //   48: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   51: aload_1
    //   52: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: invokevirtual 65	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   58: invokestatic 70	com/xiaomi/a/a/f/d:b	(Ljava/lang/String;)Ljava/lang/String;
    //   61: astore_0
    //   62: aload_0
    //   63: putstatic 16	com/xiaomi/push/service/ak:c	Ljava/lang/String;
    //   66: goto -53 -> 13
    //   69: astore_0
    //   70: ldc 2
    //   72: monitorexit
    //   73: aload_0
    //   74: athrow
    //   75: astore_0
    //   76: aload_0
    //   77: invokestatic 75	com/xiaomi/a/a/b/c:a	(Ljava/lang/Throwable;)V
    //   80: aconst_null
    //   81: astore_0
    //   82: goto -54 -> 28
    //   85: aconst_null
    //   86: astore_1
    //   87: goto -47 -> 40
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	90	0	paramContext	Context
    //   39	48	1	str	String
    // Exception table:
    //   from	to	target	type
    //   3	13	69	finally
    //   18	28	69	finally
    //   28	40	69	finally
    //   40	66	69	finally
    //   76	80	69	finally
    //   18	28	75	java/lang/Throwable
  }
  
  public static String d(Context paramContext)
  {
    return ((TelephonyManager)paramContext.getSystemService("phone")).getSimOperatorName();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */