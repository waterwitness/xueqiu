package com.xiaomi.push.service.a;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import com.xiaomi.a.a.b.c;

public final class a
{
  private static volatile long c = 0L;
  private PendingIntent a = null;
  private Context b = null;
  
  public a(Context paramContext)
  {
    this.b = paramContext;
  }
  
  /* Error */
  private void a(android.content.Intent paramIntent, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	com/xiaomi/push/service/a/a:a	Landroid/app/PendingIntent;
    //   6: astore 4
    //   8: aload 4
    //   10: ifnull +6 -> 16
    //   13: aload_0
    //   14: monitorexit
    //   15: return
    //   16: aload_0
    //   17: getfield 23	com/xiaomi/push/service/a/a:b	Landroid/content/Context;
    //   20: ldc 28
    //   22: invokevirtual 34	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   25: checkcast 36	android/app/AlarmManager
    //   28: astore 4
    //   30: aload_0
    //   31: aload_0
    //   32: getfield 23	com/xiaomi/push/service/a/a:b	Landroid/content/Context;
    //   35: iconst_0
    //   36: aload_1
    //   37: iconst_0
    //   38: invokestatic 42	android/app/PendingIntent:getBroadcast	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   41: putfield 21	com/xiaomi/push/service/a/a:a	Landroid/app/PendingIntent;
    //   44: getstatic 48	android/os/Build$VERSION:SDK_INT	I
    //   47: bipush 19
    //   49: if_icmplt +101 -> 150
    //   52: aload_0
    //   53: getfield 21	com/xiaomi/push/service/a/a:a	Landroid/app/PendingIntent;
    //   56: astore_1
    //   57: ldc 36
    //   59: ldc 50
    //   61: iconst_3
    //   62: anewarray 52	java/lang/Class
    //   65: dup
    //   66: iconst_0
    //   67: getstatic 58	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   70: aastore
    //   71: dup
    //   72: iconst_1
    //   73: getstatic 61	java/lang/Long:TYPE	Ljava/lang/Class;
    //   76: aastore
    //   77: dup
    //   78: iconst_2
    //   79: ldc 38
    //   81: aastore
    //   82: invokevirtual 65	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   85: aload 4
    //   87: iconst_3
    //   88: anewarray 4	java/lang/Object
    //   91: dup
    //   92: iconst_0
    //   93: iconst_0
    //   94: invokestatic 69	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   97: aastore
    //   98: dup
    //   99: iconst_1
    //   100: lload_2
    //   101: invokestatic 72	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   104: aastore
    //   105: dup
    //   106: iconst_2
    //   107: aload_1
    //   108: aastore
    //   109: invokevirtual 78	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   112: pop
    //   113: new 80	java/lang/StringBuilder
    //   116: dup
    //   117: ldc 82
    //   119: invokespecial 85	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   122: getstatic 14	com/xiaomi/push/service/a/a:c	J
    //   125: invokevirtual 89	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   128: invokevirtual 93	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokestatic 97	com/xiaomi/a/a/b/c:c	(Ljava/lang/String;)V
    //   134: goto -121 -> 13
    //   137: astore_1
    //   138: aload_0
    //   139: monitorexit
    //   140: aload_1
    //   141: athrow
    //   142: astore_1
    //   143: aload_1
    //   144: invokestatic 100	com/xiaomi/a/a/b/c:a	(Ljava/lang/Throwable;)V
    //   147: goto -34 -> 113
    //   150: aload 4
    //   152: iconst_0
    //   153: lload_2
    //   154: aload_0
    //   155: getfield 21	com/xiaomi/push/service/a/a:a	Landroid/app/PendingIntent;
    //   158: invokevirtual 104	android/app/AlarmManager:set	(IJLandroid/app/PendingIntent;)V
    //   161: goto -48 -> 113
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	164	0	this	a
    //   0	164	1	paramIntent	android.content.Intent
    //   0	164	2	paramLong	long
    //   6	145	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	8	137	finally
    //   16	57	137	finally
    //   57	113	137	finally
    //   113	134	137	finally
    //   143	147	137	finally
    //   150	161	137	finally
    //   57	113	142	java/lang/Exception
  }
  
  public final void a()
  {
    try
    {
      if (this.a != null)
      {
        ((AlarmManager)this.b.getSystemService("alarm")).cancel(this.a);
        this.a = null;
        c.c("unregister timer");
        c = 0L;
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
  public final void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 113	android/content/Intent
    //   5: dup
    //   6: getstatic 119	com/xiaomi/push/service/bh:o	Ljava/lang/String;
    //   9: invokespecial 120	android/content/Intent:<init>	(Ljava/lang/String;)V
    //   12: astore_2
    //   13: aload_2
    //   14: aload_0
    //   15: getfield 23	com/xiaomi/push/service/a/a:b	Landroid/content/Context;
    //   18: invokevirtual 123	android/content/Context:getPackageName	()Ljava/lang/String;
    //   21: invokevirtual 127	android/content/Intent:setPackage	(Ljava/lang/String;)Landroid/content/Intent;
    //   24: pop
    //   25: invokestatic 132	com/xiaomi/e/k:c	()I
    //   28: i2l
    //   29: lstore_3
    //   30: iload_1
    //   31: ifne +11 -> 42
    //   34: getstatic 14	com/xiaomi/push/service/a/a:c	J
    //   37: lconst_0
    //   38: lcmp
    //   39: ifne +32 -> 71
    //   42: invokestatic 138	java/lang/System:currentTimeMillis	()J
    //   45: lstore 5
    //   47: lload_3
    //   48: invokestatic 143	android/os/SystemClock:elapsedRealtime	()J
    //   51: lload_3
    //   52: lrem
    //   53: lsub
    //   54: lload 5
    //   56: ladd
    //   57: putstatic 14	com/xiaomi/push/service/a/a:c	J
    //   60: aload_0
    //   61: aload_2
    //   62: getstatic 14	com/xiaomi/push/service/a/a:c	J
    //   65: invokespecial 145	com/xiaomi/push/service/a/a:a	(Landroid/content/Intent;J)V
    //   68: aload_0
    //   69: monitorexit
    //   70: return
    //   71: getstatic 14	com/xiaomi/push/service/a/a:c	J
    //   74: lload_3
    //   75: ladd
    //   76: lstore 5
    //   78: lload 5
    //   80: putstatic 14	com/xiaomi/push/service/a/a:c	J
    //   83: lload 5
    //   85: invokestatic 138	java/lang/System:currentTimeMillis	()J
    //   88: lcmp
    //   89: ifge -29 -> 60
    //   92: lload_3
    //   93: invokestatic 138	java/lang/System:currentTimeMillis	()J
    //   96: ladd
    //   97: putstatic 14	com/xiaomi/push/service/a/a:c	J
    //   100: goto -40 -> 60
    //   103: astore_2
    //   104: aload_0
    //   105: monitorexit
    //   106: aload_2
    //   107: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	a
    //   0	108	1	paramBoolean	boolean
    //   12	50	2	localIntent	android.content.Intent
    //   103	4	2	localObject	Object
    //   29	64	3	l1	long
    //   45	39	5	l2	long
    // Exception table:
    //   from	to	target	type
    //   2	30	103	finally
    //   34	42	103	finally
    //   42	60	103	finally
    //   60	68	103	finally
    //   71	100	103	finally
  }
  
  /* Error */
  public final boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	com/xiaomi/push/service/a/a:a	Landroid/app/PendingIntent;
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
    //   0	27	0	this	a
    //   6	2	1	localPendingIntent	PendingIntent
    //   22	4	1	localObject	Object
    //   12	7	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xiaomi\push\service\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */