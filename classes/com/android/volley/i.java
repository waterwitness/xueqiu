package com.android.volley;

import java.util.concurrent.BlockingQueue;

public final class i
  extends Thread
{
  volatile boolean a = false;
  private final BlockingQueue<n<?>> b;
  private final h c;
  private final b d;
  private final u e;
  
  public i(BlockingQueue<n<?>> paramBlockingQueue, h paramh, b paramb, u paramu)
  {
    this.b = paramBlockingQueue;
    this.c = paramh;
    this.d = paramb;
    this.e = paramu;
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: bipush 10
    //   2: invokestatic 46	android/os/Process:setThreadPriority	(I)V
    //   5: aload_0
    //   6: getfield 24	com/android/volley/i:b	Ljava/util/concurrent/BlockingQueue;
    //   9: invokeinterface 52 1 0
    //   14: checkcast 54	com/android/volley/n
    //   17: astore_1
    //   18: aload_1
    //   19: ldc 56
    //   21: invokevirtual 59	com/android/volley/n:a	(Ljava/lang/String;)V
    //   24: aload_1
    //   25: getfield 62	com/android/volley/n:h	Z
    //   28: ifeq +42 -> 70
    //   31: aload_1
    //   32: ldc 64
    //   34: invokevirtual 66	com/android/volley/n:b	(Ljava/lang/String;)V
    //   37: goto -32 -> 5
    //   40: astore_2
    //   41: aload_1
    //   42: aload_2
    //   43: invokevirtual 69	com/android/volley/n:a	(Lcom/android/volley/y;)Lcom/android/volley/y;
    //   46: astore_2
    //   47: aload_0
    //   48: getfield 30	com/android/volley/i:e	Lcom/android/volley/u;
    //   51: aload_1
    //   52: aload_2
    //   53: invokeinterface 74 3 0
    //   58: goto -53 -> 5
    //   61: astore_1
    //   62: aload_0
    //   63: getfield 22	com/android/volley/i:a	Z
    //   66: ifeq -61 -> 5
    //   69: return
    //   70: getstatic 80	android/os/Build$VERSION:SDK_INT	I
    //   73: bipush 14
    //   75: if_icmplt +10 -> 85
    //   78: aload_1
    //   79: getfield 82	com/android/volley/n:d	I
    //   82: invokestatic 87	android/net/TrafficStats:setThreadStatsTag	(I)V
    //   85: aload_0
    //   86: getfield 26	com/android/volley/i:c	Lcom/android/volley/h;
    //   89: aload_1
    //   90: invokeinterface 92 2 0
    //   95: astore_2
    //   96: aload_1
    //   97: ldc 94
    //   99: invokevirtual 59	com/android/volley/n:a	(Ljava/lang/String;)V
    //   102: aload_2
    //   103: getfield 98	com/android/volley/k:d	Z
    //   106: ifeq +58 -> 164
    //   109: aload_1
    //   110: getfield 101	com/android/volley/n:i	Z
    //   113: ifeq +51 -> 164
    //   116: aload_1
    //   117: ldc 103
    //   119: invokevirtual 66	com/android/volley/n:b	(Ljava/lang/String;)V
    //   122: goto -117 -> 5
    //   125: astore_2
    //   126: aload_2
    //   127: ldc 105
    //   129: iconst_1
    //   130: anewarray 107	java/lang/Object
    //   133: dup
    //   134: iconst_0
    //   135: aload_2
    //   136: invokevirtual 111	java/lang/Exception:toString	()Ljava/lang/String;
    //   139: aastore
    //   140: invokestatic 116	com/android/volley/z:a	(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    //   143: aload_0
    //   144: getfield 30	com/android/volley/i:e	Lcom/android/volley/u;
    //   147: aload_1
    //   148: new 38	com/android/volley/y
    //   151: dup
    //   152: aload_2
    //   153: invokespecial 119	com/android/volley/y:<init>	(Ljava/lang/Throwable;)V
    //   156: invokeinterface 74 3 0
    //   161: goto -156 -> 5
    //   164: aload_1
    //   165: aload_2
    //   166: invokevirtual 122	com/android/volley/n:a	(Lcom/android/volley/k;)Lcom/android/volley/r;
    //   169: astore_2
    //   170: aload_1
    //   171: ldc 124
    //   173: invokevirtual 59	com/android/volley/n:a	(Ljava/lang/String;)V
    //   176: aload_1
    //   177: getfield 127	com/android/volley/n:g	Z
    //   180: ifeq +33 -> 213
    //   183: aload_2
    //   184: getfield 132	com/android/volley/r:b	Lcom/android/volley/c;
    //   187: ifnull +26 -> 213
    //   190: aload_0
    //   191: getfield 28	com/android/volley/i:d	Lcom/android/volley/b;
    //   194: aload_1
    //   195: invokevirtual 134	com/android/volley/n:b	()Ljava/lang/String;
    //   198: aload_2
    //   199: getfield 132	com/android/volley/r:b	Lcom/android/volley/c;
    //   202: invokeinterface 139 3 0
    //   207: aload_1
    //   208: ldc -115
    //   210: invokevirtual 59	com/android/volley/n:a	(Ljava/lang/String;)V
    //   213: aload_1
    //   214: iconst_1
    //   215: putfield 101	com/android/volley/n:i	Z
    //   218: aload_0
    //   219: getfield 30	com/android/volley/i:e	Lcom/android/volley/u;
    //   222: aload_1
    //   223: aload_2
    //   224: invokeinterface 144 3 0
    //   229: goto -224 -> 5
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	232	0	this	i
    //   17	35	1	localn	n
    //   61	162	1	localInterruptedException	InterruptedException
    //   40	3	2	localy	y
    //   46	57	2	localObject	Object
    //   125	41	2	localException	Exception
    //   169	55	2	localr	r
    // Exception table:
    //   from	to	target	type
    //   18	37	40	com/android/volley/y
    //   70	85	40	com/android/volley/y
    //   85	122	40	com/android/volley/y
    //   164	213	40	com/android/volley/y
    //   213	229	40	com/android/volley/y
    //   5	18	61	java/lang/InterruptedException
    //   18	37	125	java/lang/Exception
    //   70	85	125	java/lang/Exception
    //   85	122	125	java/lang/Exception
    //   164	213	125	java/lang/Exception
    //   213	229	125	java/lang/Exception
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\android\volley\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */