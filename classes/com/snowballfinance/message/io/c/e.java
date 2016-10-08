package com.snowballfinance.message.io.c;

import com.snowballfinance.message.io.logger.Logger;
import com.snowballfinance.message.io.logger.LoggerFactory;
import java.net.InetSocketAddress;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.i.c;

public class e
{
  private static final Logger c = LoggerFactory.getLogger(e.class);
  d a;
  final c<com.snowballfinance.message.io.b> b = c.k();
  private final String d;
  private final InetSocketAddress e;
  private i f;
  private final AtomicBoolean g = new AtomicBoolean(false);
  private final AtomicBoolean h = new AtomicBoolean(false);
  private final AtomicBoolean i = new AtomicBoolean(false);
  
  public e(String paramString, InetSocketAddress paramInetSocketAddress)
  {
    this.d = paramString;
    this.e = paramInetSocketAddress;
  }
  
  /* Error */
  private e e()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 55	com/snowballfinance/message/io/c/e:g	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   6: invokevirtual 82	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   9: ifne +132 -> 141
    //   12: aload_0
    //   13: getfield 71	com/snowballfinance/message/io/c/e:e	Ljava/net/InetSocketAddress;
    //   16: invokestatic 88	java/nio/channels/SocketChannel:open	(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;
    //   19: astore_1
    //   20: aload_1
    //   21: iconst_0
    //   22: invokevirtual 92	java/nio/channels/SocketChannel:configureBlocking	(Z)Ljava/nio/channels/SelectableChannel;
    //   25: pop
    //   26: aload_0
    //   27: new 94	com/snowballfinance/message/io/c/d
    //   30: dup
    //   31: aload_1
    //   32: invokespecial 97	com/snowballfinance/message/io/c/d:<init>	(Ljava/nio/channels/SocketChannel;)V
    //   35: putfield 75	com/snowballfinance/message/io/c/e:a	Lcom/snowballfinance/message/io/c/d;
    //   38: aload_0
    //   39: getfield 75	com/snowballfinance/message/io/c/e:a	Lcom/snowballfinance/message/io/c/d;
    //   42: astore_2
    //   43: new 99	com/snowballfinance/message/io/c/c
    //   46: dup
    //   47: aload_0
    //   48: getfield 75	com/snowballfinance/message/io/c/e:a	Lcom/snowballfinance/message/io/c/d;
    //   51: invokespecial 102	com/snowballfinance/message/io/c/c:<init>	(Lcom/snowballfinance/message/io/c/d;)V
    //   54: astore_3
    //   55: aload_2
    //   56: getfield 107	com/snowballfinance/message/io/a:a	Ljava/util/Map;
    //   59: ldc 109
    //   61: aload_3
    //   62: invokeinterface 115 3 0
    //   67: pop
    //   68: aload_0
    //   69: getfield 75	com/snowballfinance/message/io/c/e:a	Lcom/snowballfinance/message/io/c/d;
    //   72: aload_0
    //   73: getfield 69	com/snowballfinance/message/io/c/e:d	Ljava/lang/String;
    //   76: invokevirtual 118	com/snowballfinance/message/io/c/d:b	(Ljava/lang/String;)Lcom/snowballfinance/message/io/c/d;
    //   79: pop
    //   80: aload_0
    //   81: new 120	com/snowballfinance/message/io/c/i
    //   84: dup
    //   85: aload_1
    //   86: invokespecial 121	com/snowballfinance/message/io/c/i:<init>	(Ljava/nio/channels/SocketChannel;)V
    //   89: putfield 123	com/snowballfinance/message/io/c/e:f	Lcom/snowballfinance/message/io/c/i;
    //   92: aload_0
    //   93: getfield 123	com/snowballfinance/message/io/c/e:f	Lcom/snowballfinance/message/io/c/i;
    //   96: getfield 124	com/snowballfinance/message/io/c/i:b	Lrx/i/c;
    //   99: invokevirtual 127	rx/i/c:c	()Lrx/a;
    //   102: new 6	com/snowballfinance/message/io/c/e$1
    //   105: dup
    //   106: aload_0
    //   107: invokespecial 130	com/snowballfinance/message/io/c/e$1:<init>	(Lcom/snowballfinance/message/io/c/e;)V
    //   110: new 8	com/snowballfinance/message/io/c/e$2
    //   113: dup
    //   114: aload_0
    //   115: invokespecial 131	com/snowballfinance/message/io/c/e$2:<init>	(Lcom/snowballfinance/message/io/c/e;)V
    //   118: invokevirtual 136	rx/a:a	(Lrx/c/b;Lrx/c/b;)Lrx/j;
    //   121: pop
    //   122: aload_0
    //   123: getfield 123	com/snowballfinance/message/io/c/e:f	Lcom/snowballfinance/message/io/c/i;
    //   126: invokevirtual 139	com/snowballfinance/message/io/c/i:start	()V
    //   129: aload_0
    //   130: getfield 55	com/snowballfinance/message/io/c/e:g	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   133: iconst_1
    //   134: invokevirtual 142	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   137: aload_0
    //   138: monitorexit
    //   139: aload_0
    //   140: areturn
    //   141: getstatic 43	com/snowballfinance/message/io/c/e:c	Lcom/snowballfinance/message/io/logger/Logger;
    //   144: ldc -112
    //   146: iconst_1
    //   147: anewarray 4	java/lang/Object
    //   150: dup
    //   151: iconst_0
    //   152: aload_0
    //   153: getfield 71	com/snowballfinance/message/io/c/e:e	Ljava/net/InetSocketAddress;
    //   156: invokevirtual 150	java/net/InetSocketAddress:toString	()Ljava/lang/String;
    //   159: aastore
    //   160: invokestatic 156	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   163: invokevirtual 162	com/snowballfinance/message/io/logger/Logger:warn	(Ljava/lang/String;)V
    //   166: goto -37 -> 129
    //   169: astore_1
    //   170: aload_0
    //   171: monitorexit
    //   172: aload_1
    //   173: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	174	0	this	e
    //   19	67	1	localSocketChannel	java.nio.channels.SocketChannel
    //   169	4	1	localObject	Object
    //   42	14	2	locald	d
    //   54	8	3	localc	c
    // Exception table:
    //   from	to	target	type
    //   2	129	169	finally
    //   129	137	169	finally
    //   141	166	169	finally
  }
  
  public final rx.a<Boolean> a()
  {
    label100:
    try
    {
      boolean bool = this.g.get();
      if (!bool) {}
      try
      {
        e();
        if (!this.i.get()) {
          break label100;
        }
        if (c.isDebugEnabled()) {
          c.debug(String.format("channel %s already marked as shutdown.", new Object[] { this.a }));
        }
        this.a.d();
        this.f.interrupt();
        locala = rx.a.b(new Exception("channel already marked as shutdown."));
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          rx.a locala;
          Object localObject1 = rx.a.b(localThrowable);
          continue;
          localObject1 = this.a.b(7);
          this.a.a((com.snowballfinance.message.io.b)localObject1);
          if (c.isDebugEnabled()) {
            c.debug(String.format("sent [SYN:%s] to %s.", new Object[] { Long.valueOf(((com.snowballfinance.message.io.b)localObject1).a), this.a }));
          }
          this.a.a().b(new rx.c.f() {}).c(new rx.c.b() {});
          this.a.h.c(new rx.c.b() {});
          localObject1 = this.a.h.c();
        }
      }
      return locala;
    }
    finally {}
  }
  
  public final boolean b()
  {
    try
    {
      boolean bool = this.h.get();
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 123	com/snowballfinance/message/io/c/e:f	Lcom/snowballfinance/message/io/c/i;
    //   6: ifnull +10 -> 16
    //   9: aload_0
    //   10: getfield 123	com/snowballfinance/message/io/c/e:f	Lcom/snowballfinance/message/io/c/i;
    //   13: invokevirtual 179	com/snowballfinance/message/io/c/i:interrupt	()V
    //   16: aload_0
    //   17: getfield 55	com/snowballfinance/message/io/c/e:g	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   20: iconst_1
    //   21: iconst_0
    //   22: invokevirtual 231	java/util/concurrent/atomic/AtomicBoolean:compareAndSet	(ZZ)Z
    //   25: ifeq +60 -> 85
    //   28: aload_0
    //   29: getfield 57	com/snowballfinance/message/io/c/e:h	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   32: iconst_0
    //   33: invokevirtual 142	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   36: getstatic 43	com/snowballfinance/message/io/c/e:c	Lcom/snowballfinance/message/io/logger/Logger;
    //   39: invokevirtual 169	com/snowballfinance/message/io/logger/Logger:isDebugEnabled	()Z
    //   42: ifeq +25 -> 67
    //   45: getstatic 43	com/snowballfinance/message/io/c/e:c	Lcom/snowballfinance/message/io/logger/Logger;
    //   48: ldc -23
    //   50: iconst_1
    //   51: anewarray 4	java/lang/Object
    //   54: dup
    //   55: iconst_0
    //   56: aload_0
    //   57: getfield 71	com/snowballfinance/message/io/c/e:e	Ljava/net/InetSocketAddress;
    //   60: aastore
    //   61: invokestatic 156	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   64: invokevirtual 174	com/snowballfinance/message/io/logger/Logger:debug	(Ljava/lang/String;)V
    //   67: aload_0
    //   68: getfield 75	com/snowballfinance/message/io/c/e:a	Lcom/snowballfinance/message/io/c/d;
    //   71: invokevirtual 176	com/snowballfinance/message/io/c/d:d	()V
    //   74: aload_0
    //   75: getfield 59	com/snowballfinance/message/io/c/e:i	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   78: iconst_1
    //   79: invokevirtual 142	java/util/concurrent/atomic/AtomicBoolean:set	(Z)V
    //   82: aload_0
    //   83: monitorexit
    //   84: return
    //   85: getstatic 43	com/snowballfinance/message/io/c/e:c	Lcom/snowballfinance/message/io/logger/Logger;
    //   88: ldc -21
    //   90: iconst_1
    //   91: anewarray 4	java/lang/Object
    //   94: dup
    //   95: iconst_0
    //   96: aload_0
    //   97: getfield 71	com/snowballfinance/message/io/c/e:e	Ljava/net/InetSocketAddress;
    //   100: aastore
    //   101: invokestatic 156	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   104: invokevirtual 162	com/snowballfinance/message/io/logger/Logger:warn	(Ljava/lang/String;)V
    //   107: goto -33 -> 74
    //   110: astore_1
    //   111: aload_0
    //   112: monitorexit
    //   113: aload_1
    //   114: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	115	0	this	e
    //   110	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	16	110	finally
    //   16	67	110	finally
    //   67	74	110	finally
    //   74	82	110	finally
    //   85	107	110	finally
  }
  
  public String toString()
  {
    return String.format("%s", new Object[] { this.e });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\c\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */