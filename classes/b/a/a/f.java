package b.a.a;

import android.os.Handler;
import android.os.Looper;

final class f
  extends Handler
{
  final i a;
  boolean b;
  private final int c;
  private final c d;
  
  f(c paramc, Looper paramLooper)
  {
    super(paramLooper);
    this.d = paramc;
    this.c = 10;
    this.a = new i();
  }
  
  /* Error */
  public final void handleMessage(android.os.Message paramMessage)
  {
    // Byte code:
    //   0: invokestatic 37	android/os/SystemClock:uptimeMillis	()J
    //   3: lstore_3
    //   4: aload_0
    //   5: getfield 28	b/a/a/f:a	Lb/a/a/i;
    //   8: invokevirtual 40	b/a/a/i:a	()Lb/a/a/h;
    //   11: astore_2
    //   12: aload_2
    //   13: astore_1
    //   14: aload_2
    //   15: ifnonnull +32 -> 47
    //   18: aload_0
    //   19: monitorenter
    //   20: aload_0
    //   21: getfield 28	b/a/a/f:a	Lb/a/a/i;
    //   24: invokevirtual 40	b/a/a/i:a	()Lb/a/a/h;
    //   27: astore_1
    //   28: aload_1
    //   29: ifnonnull +16 -> 45
    //   32: aload_0
    //   33: iconst_0
    //   34: putfield 42	b/a/a/f:b	Z
    //   37: aload_0
    //   38: monitorexit
    //   39: aload_0
    //   40: iconst_0
    //   41: putfield 42	b/a/a/f:b	Z
    //   44: return
    //   45: aload_0
    //   46: monitorexit
    //   47: aload_0
    //   48: getfield 19	b/a/a/f:d	Lb/a/a/c;
    //   51: aload_1
    //   52: invokevirtual 47	b/a/a/c:a	(Lb/a/a/h;)V
    //   55: invokestatic 37	android/os/SystemClock:uptimeMillis	()J
    //   58: lload_3
    //   59: lsub
    //   60: aload_0
    //   61: getfield 21	b/a/a/f:c	I
    //   64: i2l
    //   65: lcmp
    //   66: iflt -62 -> 4
    //   69: aload_0
    //   70: aload_0
    //   71: invokevirtual 51	b/a/a/f:obtainMessage	()Landroid/os/Message;
    //   74: invokevirtual 55	b/a/a/f:sendMessage	(Landroid/os/Message;)Z
    //   77: ifne +26 -> 103
    //   80: new 57	b/a/a/e
    //   83: dup
    //   84: ldc 59
    //   86: invokespecial 62	b/a/a/e:<init>	(Ljava/lang/String;)V
    //   89: athrow
    //   90: astore_1
    //   91: aload_0
    //   92: iconst_0
    //   93: putfield 42	b/a/a/f:b	Z
    //   96: aload_1
    //   97: athrow
    //   98: astore_1
    //   99: aload_0
    //   100: monitorexit
    //   101: aload_1
    //   102: athrow
    //   103: aload_0
    //   104: iconst_1
    //   105: putfield 42	b/a/a/f:b	Z
    //   108: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	f
    //   0	109	1	paramMessage	android.os.Message
    //   11	4	2	localh	h
    //   3	56	3	l	long
    // Exception table:
    //   from	to	target	type
    //   0	4	90	finally
    //   4	12	90	finally
    //   18	20	90	finally
    //   47	90	90	finally
    //   101	103	90	finally
    //   20	28	98	finally
    //   32	39	98	finally
    //   45	47	98	finally
    //   99	101	98	finally
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\b\a\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */