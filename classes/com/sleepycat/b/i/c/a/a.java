package com.sleepycat.b.i.c.a;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.h.aa;
import com.sleepycat.b.i.h.q;
import com.sleepycat.b.p.aj;
import com.sleepycat.b.p.w;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Timer;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;

public class a
  extends aj
{
  private static long l = Long.MAX_VALUE;
  final Map<Integer, c> a = new ConcurrentHashMap();
  final Map<Integer, b> b = new ConcurrentHashMap();
  final Map<String, j> c = new ConcurrentHashMap();
  final Timer d = new Timer(true);
  final com.sleepycat.b.i.c.b.x e;
  public int f;
  long g = 300000L;
  final com.sleepycat.b.i.h.x h;
  final AtomicBoolean i = new AtomicBoolean(false);
  final Logger j;
  private final BlockingQueue<SocketChannel> k = new LinkedBlockingQueue();
  
  public a(com.sleepycat.b.i.h.x paramx, ad paramad, com.sleepycat.b.i.c.b.x paramx1)
  {
    super(paramad, "Feeder Manager node: " + paramx1.a);
    this.h = paramx;
    paramx.getClass();
    paramx.a(new aa(paramx, "LogFileFeeder", this.k, this));
    this.e = paramx1;
    this.j = w.a(getClass());
  }
  
  protected final Logger a()
  {
    return this.j;
  }
  
  public final void b()
  {
    w.d(this.j, this.D, "Shutting down log file feeder manager");
    if (!this.i.compareAndSet(false, true)) {
      return;
    }
    a(this.j);
    Iterator localIterator = new ArrayList(this.a.values()).iterator();
    while (localIterator.hasNext()) {
      ((c)localIterator.next()).b();
    }
    this.d.cancel();
    localIterator = new ArrayList(this.b.values()).iterator();
    while (localIterator.hasNext()) {
      ((b)localIterator.next()).a();
    }
    this.h.a("LogFileFeeder");
    w.d(this.j, this.D, "Shut down log file feeder manager completed");
  }
  
  protected final int c()
  {
    this.k.clear();
    this.k.add(q.a);
    return 0;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 67	com/sleepycat/b/i/c/a/a:k	Ljava/util/concurrent/BlockingQueue;
    //   4: getstatic 35	com/sleepycat/b/i/c/a/a:l	J
    //   7: getstatic 205	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   10: invokeinterface 209 4 0
    //   15: checkcast 211	java/nio/channels/SocketChannel
    //   18: astore_1
    //   19: aload_1
    //   20: getstatic 190	com/sleepycat/b/i/h/q:a	Ljava/nio/channels/SocketChannel;
    //   23: if_acmpne +21 -> 44
    //   26: aload_0
    //   27: getfield 121	com/sleepycat/b/i/c/a/a:j	Ljava/util/logging/Logger;
    //   30: aload_0
    //   31: getfield 126	com/sleepycat/b/i/c/a/a:D	Lcom/sleepycat/b/c/ad;
    //   34: ldc -43
    //   36: invokestatic 215	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   39: aload_0
    //   40: invokevirtual 216	com/sleepycat/b/i/c/a/a:b	()V
    //   43: return
    //   44: new 165	com/sleepycat/b/i/c/a/c
    //   47: dup
    //   48: aload_0
    //   49: aload_1
    //   50: invokespecial 219	com/sleepycat/b/i/c/a/c:<init>	(Lcom/sleepycat/b/i/c/a/a;Ljava/nio/channels/SocketChannel;)V
    //   53: invokevirtual 222	com/sleepycat/b/i/c/a/c:start	()V
    //   56: goto -56 -> 0
    //   59: astore_1
    //   60: aload_0
    //   61: getfield 121	com/sleepycat/b/i/c/a/a:j	Ljava/util/logging/Logger;
    //   64: aload_0
    //   65: getfield 126	com/sleepycat/b/i/c/a/a:D	Lcom/sleepycat/b/c/ad;
    //   68: ldc -32
    //   70: invokestatic 215	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   73: goto -34 -> 39
    //   76: astore_1
    //   77: aload_0
    //   78: invokevirtual 216	com/sleepycat/b/i/c/a/a:b	()V
    //   81: aload_1
    //   82: athrow
    //   83: astore_1
    //   84: aload_0
    //   85: getfield 121	com/sleepycat/b/i/c/a/a:j	Ljava/util/logging/Logger;
    //   88: aload_0
    //   89: getfield 126	com/sleepycat/b/i/c/a/a:D	Lcom/sleepycat/b/c/ad;
    //   92: new 40	java/lang/StringBuilder
    //   95: dup
    //   96: ldc -30
    //   98: invokespecial 45	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   101: aload_1
    //   102: invokevirtual 229	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   105: invokevirtual 54	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: invokevirtual 58	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   111: invokestatic 231	com/sleepycat/b/p/w:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   114: new 233	com/sleepycat/b/aa
    //   117: dup
    //   118: aload_0
    //   119: getfield 126	com/sleepycat/b/i/c/a/a:D	Lcom/sleepycat/b/c/ad;
    //   122: getstatic 239	com/sleepycat/b/c/ac:y	Lcom/sleepycat/b/c/ac;
    //   125: aload_1
    //   126: invokespecial 242	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V
    //   129: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	130	0	this	a
    //   18	32	1	localSocketChannel	SocketChannel
    //   59	1	1	localInterruptedException	InterruptedException
    //   76	6	1	localObject	Object
    //   83	43	1	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   0	39	59	java/lang/InterruptedException
    //   44	56	59	java/lang/InterruptedException
    //   0	39	76	finally
    //   44	56	76	finally
    //   60	73	76	finally
    //   84	130	76	finally
    //   0	39	83	java/lang/Exception
    //   44	56	83	java/lang/Exception
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */