package com.xiaomi.mipush.sdk;

import android.content.Context;

final class n
  implements Runnable
{
  n(Context paramContext) {}
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 12	com/xiaomi/mipush/sdk/n:a	Landroid/content/Context;
    //   4: invokestatic 26	com/xiaomi/mipush/sdk/b:a	(Landroid/content/Context;)Z
    //   7: ifne +203 -> 210
    //   10: iconst_1
    //   11: aload_0
    //   12: getfield 12	com/xiaomi/mipush/sdk/n:a	Landroid/content/Context;
    //   15: invokestatic 31	com/xiaomi/mipush/sdk/j:a	(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/j;
    //   18: getfield 35	com/xiaomi/mipush/sdk/j:b	Lcom/xiaomi/mipush/sdk/k;
    //   21: getfield 41	com/xiaomi/mipush/sdk/k:j	I
    //   24: if_icmpne +186 -> 210
    //   27: aload_0
    //   28: getfield 12	com/xiaomi/mipush/sdk/n:a	Landroid/content/Context;
    //   31: invokevirtual 47	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   34: iconst_4
    //   35: invokevirtual 53	android/content/pm/PackageManager:getInstalledPackages	(I)Ljava/util/List;
    //   38: astore_1
    //   39: aload_1
    //   40: ifnull +170 -> 210
    //   43: aload_1
    //   44: invokeinterface 59 1 0
    //   49: astore_1
    //   50: aload_1
    //   51: invokeinterface 65 1 0
    //   56: ifeq +154 -> 210
    //   59: aload_1
    //   60: invokeinterface 69 1 0
    //   65: checkcast 71	android/content/pm/PackageInfo
    //   68: getfield 75	android/content/pm/PackageInfo:services	[Landroid/content/pm/ServiceInfo;
    //   71: astore_2
    //   72: aload_2
    //   73: ifnull -23 -> 50
    //   76: aload_2
    //   77: arraylength
    //   78: istore 6
    //   80: iconst_0
    //   81: istore 5
    //   83: iload 5
    //   85: iload 6
    //   87: if_icmpge -37 -> 50
    //   90: aload_2
    //   91: iload 5
    //   93: aaload
    //   94: astore_3
    //   95: aload_3
    //   96: getfield 81	android/content/pm/ServiceInfo:exported	Z
    //   99: ifeq +101 -> 200
    //   102: aload_3
    //   103: getfield 84	android/content/pm/ServiceInfo:enabled	Z
    //   106: ifeq +94 -> 200
    //   109: ldc 86
    //   111: aload_3
    //   112: getfield 90	android/content/pm/ServiceInfo:name	Ljava/lang/String;
    //   115: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   118: ifeq +82 -> 200
    //   121: aload_0
    //   122: getfield 12	com/xiaomi/mipush/sdk/n:a	Landroid/content/Context;
    //   125: invokevirtual 100	android/content/Context:getPackageName	()Ljava/lang/String;
    //   128: aload_3
    //   129: getfield 103	android/content/pm/ServiceInfo:packageName	Ljava/lang/String;
    //   132: invokevirtual 96	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   135: istore 7
    //   137: iload 7
    //   139: ifne +61 -> 200
    //   142: invokestatic 109	java/lang/Math:random	()D
    //   145: ldc2_w 110
    //   148: dmul
    //   149: dconst_1
    //   150: dadd
    //   151: d2l
    //   152: ldc2_w 112
    //   155: lmul
    //   156: invokestatic 119	java/lang/Thread:sleep	(J)V
    //   159: new 121	android/content/Intent
    //   162: dup
    //   163: invokespecial 122	android/content/Intent:<init>	()V
    //   166: astore 4
    //   168: aload 4
    //   170: aload_3
    //   171: getfield 103	android/content/pm/ServiceInfo:packageName	Ljava/lang/String;
    //   174: aload_3
    //   175: getfield 90	android/content/pm/ServiceInfo:name	Ljava/lang/String;
    //   178: invokevirtual 126	android/content/Intent:setClassName	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   181: pop
    //   182: aload 4
    //   184: ldc -128
    //   186: invokevirtual 132	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   189: pop
    //   190: aload_0
    //   191: getfield 12	com/xiaomi/mipush/sdk/n:a	Landroid/content/Context;
    //   194: aload 4
    //   196: invokevirtual 136	android/content/Context:startService	(Landroid/content/Intent;)Landroid/content/ComponentName;
    //   199: pop
    //   200: iload 5
    //   202: iconst_1
    //   203: iadd
    //   204: istore 5
    //   206: goto -123 -> 83
    //   209: astore_1
    //   210: return
    //   211: astore 4
    //   213: goto -54 -> 159
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	216	0	this	n
    //   38	22	1	localObject	Object
    //   209	1	1	localThrowable	Throwable
    //   71	20	2	arrayOfServiceInfo	android.content.pm.ServiceInfo[]
    //   94	81	3	localServiceInfo	android.content.pm.ServiceInfo
    //   166	29	4	localIntent	android.content.Intent
    //   211	1	4	localInterruptedException	InterruptedException
    //   81	124	5	i	int
    //   78	10	6	j	int
    //   135	3	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   27	39	209	java/lang/Throwable
    //   43	50	209	java/lang/Throwable
    //   50	72	209	java/lang/Throwable
    //   76	80	209	java/lang/Throwable
    //   95	137	209	java/lang/Throwable
    //   142	159	209	java/lang/Throwable
    //   159	200	209	java/lang/Throwable
    //   142	159	211	java/lang/InterruptedException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\mipush\sdk\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */