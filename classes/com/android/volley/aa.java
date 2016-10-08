package com.android.volley;

import android.os.SystemClock;
import java.util.ArrayList;
import java.util.List;

final class aa
{
  public static final boolean a = z.b;
  private final List<ab> b = new ArrayList();
  private boolean c = false;
  
  /* Error */
  public final void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: iconst_1
    //   4: putfield 29	com/android/volley/aa:c	Z
    //   7: aload_0
    //   8: getfield 27	com/android/volley/aa:b	Ljava/util/List;
    //   11: invokeinterface 36 1 0
    //   16: istore_3
    //   17: iload_3
    //   18: ifne +16 -> 34
    //   21: lconst_0
    //   22: lstore 4
    //   24: lload 4
    //   26: lconst_0
    //   27: lcmp
    //   28: ifgt +58 -> 86
    //   31: aload_0
    //   32: monitorexit
    //   33: return
    //   34: aload_0
    //   35: getfield 27	com/android/volley/aa:b	Ljava/util/List;
    //   38: iconst_0
    //   39: invokeinterface 40 2 0
    //   44: checkcast 42	com/android/volley/ab
    //   47: getfield 45	com/android/volley/ab:c	J
    //   50: lstore 4
    //   52: aload_0
    //   53: getfield 27	com/android/volley/aa:b	Ljava/util/List;
    //   56: aload_0
    //   57: getfield 27	com/android/volley/aa:b	Ljava/util/List;
    //   60: invokeinterface 36 1 0
    //   65: iconst_1
    //   66: isub
    //   67: invokeinterface 40 2 0
    //   72: checkcast 42	com/android/volley/ab
    //   75: getfield 45	com/android/volley/ab:c	J
    //   78: lload 4
    //   80: lsub
    //   81: lstore 4
    //   83: goto -59 -> 24
    //   86: aload_0
    //   87: getfield 27	com/android/volley/aa:b	Ljava/util/List;
    //   90: iconst_0
    //   91: invokeinterface 40 2 0
    //   96: checkcast 42	com/android/volley/ab
    //   99: getfield 45	com/android/volley/ab:c	J
    //   102: lstore 6
    //   104: ldc 47
    //   106: iconst_2
    //   107: anewarray 4	java/lang/Object
    //   110: dup
    //   111: iconst_0
    //   112: lload 4
    //   114: invokestatic 53	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   117: aastore
    //   118: dup
    //   119: iconst_1
    //   120: aload_1
    //   121: aastore
    //   122: invokestatic 56	com/android/volley/z:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   125: aload_0
    //   126: getfield 27	com/android/volley/aa:b	Ljava/util/List;
    //   129: invokeinterface 60 1 0
    //   134: astore_1
    //   135: lload 6
    //   137: lstore 4
    //   139: aload_1
    //   140: invokeinterface 66 1 0
    //   145: ifeq -114 -> 31
    //   148: aload_1
    //   149: invokeinterface 70 1 0
    //   154: checkcast 42	com/android/volley/ab
    //   157: astore_2
    //   158: aload_2
    //   159: getfield 45	com/android/volley/ab:c	J
    //   162: lstore 6
    //   164: ldc 72
    //   166: iconst_3
    //   167: anewarray 4	java/lang/Object
    //   170: dup
    //   171: iconst_0
    //   172: lload 6
    //   174: lload 4
    //   176: lsub
    //   177: invokestatic 53	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   180: aastore
    //   181: dup
    //   182: iconst_1
    //   183: aload_2
    //   184: getfield 74	com/android/volley/ab:b	J
    //   187: invokestatic 53	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   190: aastore
    //   191: dup
    //   192: iconst_2
    //   193: aload_2
    //   194: getfield 77	com/android/volley/ab:a	Ljava/lang/String;
    //   197: aastore
    //   198: invokestatic 56	com/android/volley/z:b	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   201: lload 6
    //   203: lstore 4
    //   205: goto -66 -> 139
    //   208: astore_1
    //   209: aload_0
    //   210: monitorexit
    //   211: aload_1
    //   212: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	213	0	this	aa
    //   0	213	1	paramString	String
    //   157	37	2	localab	ab
    //   16	2	3	i	int
    //   22	182	4	l1	long
    //   102	100	6	l2	long
    // Exception table:
    //   from	to	target	type
    //   2	17	208	finally
    //   34	83	208	finally
    //   86	135	208	finally
    //   139	201	208	finally
  }
  
  public final void a(String paramString, long paramLong)
  {
    try
    {
      if (this.c) {
        throw new IllegalStateException("Marker added to finished log");
      }
    }
    finally {}
    this.b.add(new ab(paramString, paramLong, SystemClock.elapsedRealtime()));
  }
  
  protected final void finalize()
  {
    if (!this.c)
    {
      a("Request on the loose");
      z.c("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */