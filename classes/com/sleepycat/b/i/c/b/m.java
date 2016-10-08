package com.sleepycat.b.i.c.b;

import com.sleepycat.b.bn;
import com.sleepycat.b.i.e.t;
import com.sleepycat.b.i.h.af;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.an;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.o;
import com.sleepycat.b.p.w;
import java.nio.channels.SocketChannel;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;

public final class m
{
  final aa a;
  final BlockingQueue<SocketChannel> b = new LinkedBlockingQueue();
  public final af<String, h> c;
  final Set<h> d = Collections.synchronizedSet(new HashSet());
  int e = 0;
  AtomicBoolean f = new AtomicBoolean(false);
  RuntimeException g;
  public final ai h;
  final com.sleepycat.b.i.h.n i;
  final an j;
  private final Logger l;
  private final o m;
  private final o n;
  
  static
  {
    if (!m.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      k = bool;
      return;
    }
  }
  
  m(aa paramaa)
  {
    this.a = paramaa;
    Map localMap = Collections.synchronizedMap(new HashMap());
    this.c = new af(paramaa.i, localMap);
    this.l = w.a(getClass());
    this.h = new ai("FeederManager", "A feeder is a replication stream connection between a master and replica nodes.");
    this.m = new com.sleepycat.b.i.h.m(this.h, n.a);
    this.n = new com.sleepycat.b.i.h.m(this.h, n.b);
    this.i = new com.sleepycat.b.i.h.n(this.h, n.c);
    this.j = new an(this.h, n.d);
  }
  
  /* Error */
  private void a(Exception paramException)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 74	com/sleepycat/b/i/c/b/m:f	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   4: iconst_0
    //   5: iconst_1
    //   6: invokevirtual 152	java/util/concurrent/atomic/AtomicBoolean:compareAndSet	(ZZ)Z
    //   9: ifne +4 -> 13
    //   12: return
    //   13: aload_0
    //   14: getfield 95	com/sleepycat/b/i/c/b/m:c	Lcom/sleepycat/b/i/h/af;
    //   17: astore_2
    //   18: aload_2
    //   19: monitorenter
    //   20: new 56	java/util/HashSet
    //   23: dup
    //   24: aload_0
    //   25: getfield 95	com/sleepycat/b/i/c/b/m:c	Lcom/sleepycat/b/i/h/af;
    //   28: invokevirtual 156	com/sleepycat/b/i/h/af:values	()Ljava/util/Collection;
    //   31: invokespecial 159	java/util/HashSet:<init>	(Ljava/util/Collection;)V
    //   34: astore_3
    //   35: aload_2
    //   36: monitorexit
    //   37: aload_0
    //   38: getfield 65	com/sleepycat/b/i/c/b/m:d	Ljava/util/Set;
    //   41: astore_2
    //   42: aload_2
    //   43: monitorenter
    //   44: aload_3
    //   45: aload_0
    //   46: getfield 65	com/sleepycat/b/i/c/b/m:d	Ljava/util/Set;
    //   49: invokeinterface 165 2 0
    //   54: pop
    //   55: aload_2
    //   56: monitorexit
    //   57: aload_3
    //   58: invokeinterface 169 1 0
    //   63: astore_2
    //   64: aload_2
    //   65: invokeinterface 174 1 0
    //   70: ifeq +74 -> 144
    //   73: aload_2
    //   74: invokeinterface 178 1 0
    //   79: checkcast 180	com/sleepycat/b/i/c/b/h
    //   82: astore_3
    //   83: aload_0
    //   84: getfield 133	com/sleepycat/b/i/c/b/m:n	Lcom/sleepycat/b/p/o;
    //   87: invokevirtual 184	com/sleepycat/b/p/o:f	()V
    //   90: aload_3
    //   91: aload_1
    //   92: invokevirtual 186	com/sleepycat/b/i/c/b/h:a	(Ljava/lang/Exception;)V
    //   95: goto -31 -> 64
    //   98: astore_3
    //   99: aload_1
    //   100: astore_2
    //   101: aload_1
    //   102: ifnonnull +13 -> 115
    //   105: new 188	java/lang/IllegalStateException
    //   108: dup
    //   109: ldc -66
    //   111: invokespecial 193	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   114: astore_2
    //   115: aload_0
    //   116: getfield 95	com/sleepycat/b/i/c/b/m:c	Lcom/sleepycat/b/i/h/af;
    //   119: aload_2
    //   120: invokevirtual 194	com/sleepycat/b/i/h/af:a	(Ljava/lang/Exception;)V
    //   123: aload_0
    //   124: getfield 65	com/sleepycat/b/i/c/b/m:d	Ljava/util/Set;
    //   127: invokeinterface 197 1 0
    //   132: aload_3
    //   133: athrow
    //   134: astore_3
    //   135: aload_2
    //   136: monitorexit
    //   137: aload_3
    //   138: athrow
    //   139: astore_3
    //   140: aload_2
    //   141: monitorexit
    //   142: aload_3
    //   143: athrow
    //   144: aload_1
    //   145: astore_2
    //   146: aload_1
    //   147: ifnonnull +13 -> 160
    //   150: new 188	java/lang/IllegalStateException
    //   153: dup
    //   154: ldc -66
    //   156: invokespecial 193	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   159: astore_2
    //   160: aload_0
    //   161: getfield 95	com/sleepycat/b/i/c/b/m:c	Lcom/sleepycat/b/i/h/af;
    //   164: aload_2
    //   165: invokevirtual 194	com/sleepycat/b/i/h/af:a	(Ljava/lang/Exception;)V
    //   168: aload_0
    //   169: getfield 65	com/sleepycat/b/i/c/b/m:d	Ljava/util/Set;
    //   172: invokeinterface 197 1 0
    //   177: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	178	0	this	m
    //   0	178	1	paramException	Exception
    //   34	57	3	localObject2	Object
    //   98	35	3	localObject3	Object
    //   134	4	3	localObject4	Object
    //   139	4	3	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   13	20	98	finally
    //   37	44	98	finally
    //   57	64	98	finally
    //   64	95	98	finally
    //   137	139	98	finally
    //   142	144	98	finally
    //   20	37	134	finally
    //   135	137	134	finally
    //   44	57	139	finally
    //   140	142	139	finally
  }
  
  public final int a(au paramau)
  {
    int i1 = 0;
    for (;;)
    {
      synchronized (this.c)
      {
        Iterator localIterator = this.c.values().iterator();
        if (localIterator.hasNext())
        {
          if (paramau.b(((h)localIterator.next()).e) <= 0) {
            i1 += 1;
          }
        }
        else {
          return i1;
        }
      }
    }
  }
  
  public final ai a(bn parambn)
  {
    ai localai = new ai("BinaryProtocol", "Network traffic due to the replication stream.");
    for (;;)
    {
      synchronized (this.c)
      {
        Iterator localIterator = this.c.values().iterator();
        if (!localIterator.hasNext()) {
          break;
        }
        localObject = ((h)localIterator.next()).c.a;
        if (localObject != null)
        {
          localObject = ((t)localObject).a(parambn);
          localai.a((ai)localObject);
        }
      }
      Object localObject = new ai("BinaryProtocol", "Network traffic due to the replication stream.");
    }
    return localai;
  }
  
  public final Set<String> a()
  {
    synchronized (this.c)
    {
      HashSet localHashSet = new HashSet(this.c.keySet());
      return localHashSet;
    }
  }
  
  /* Error */
  final void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 74	com/sleepycat/b/i/c/b/m:f	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   4: invokevirtual 243	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   7: ifeq +9 -> 16
    //   10: ldc -11
    //   12: invokestatic 250	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   15: athrow
    //   16: aload_0
    //   17: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   20: aload_0
    //   21: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   24: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   27: ldc -4
    //   29: invokestatic 255	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   32: new 257	com/sleepycat/b/i/c/b/r
    //   35: dup
    //   36: aload_0
    //   37: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   40: getfield 260	com/sleepycat/b/i/c/b/aa:a	Lcom/sleepycat/b/i/c/b/x;
    //   43: aload_0
    //   44: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   47: invokespecial 263	com/sleepycat/b/i/c/b/r:<init>	(Lcom/sleepycat/b/i/c/b/x;Lcom/sleepycat/b/i/c/b/aa;)V
    //   50: astore_1
    //   51: aload_0
    //   52: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   55: getfield 267	com/sleepycat/b/i/c/b/aa:p	Lcom/sleepycat/b/i/c/b/q;
    //   58: astore_2
    //   59: aload_0
    //   60: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   63: getfield 270	com/sleepycat/b/i/c/b/aa:c	Lcom/sleepycat/b/i/h/x;
    //   66: ldc_w 272
    //   69: aload_0
    //   70: getfield 54	com/sleepycat/b/i/c/b/m:b	Ljava/util/concurrent/BlockingQueue;
    //   73: invokevirtual 277	com/sleepycat/b/i/h/x:a	(Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    //   76: aload_0
    //   77: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   80: getfield 280	com/sleepycat/b/i/c/b/aa:k	Lcom/sleepycat/b/i/h/t;
    //   83: invokevirtual 285	com/sleepycat/b/i/h/t:countDown	()V
    //   86: aload_0
    //   87: getfield 54	com/sleepycat/b/i/c/b/m:b	Ljava/util/concurrent/BlockingQueue;
    //   90: ldc2_w 286
    //   93: getstatic 293	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   96: invokeinterface 299 4 0
    //   101: checkcast 301	java/nio/channels/SocketChannel
    //   104: astore_3
    //   105: aload_3
    //   106: getstatic 306	com/sleepycat/b/i/h/q:a	Ljava/nio/channels/SocketChannel;
    //   109: if_acmpne +90 -> 199
    //   112: aload_0
    //   113: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   116: aload_0
    //   117: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   120: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   123: ldc_w 308
    //   126: invokestatic 255	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   129: aload_0
    //   130: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   133: aconst_null
    //   134: invokevirtual 309	com/sleepycat/b/i/c/b/aa:a	(Ljava/lang/Exception;)V
    //   137: aload_0
    //   138: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   141: getfield 270	com/sleepycat/b/i/c/b/aa:c	Lcom/sleepycat/b/i/h/x;
    //   144: ldc_w 272
    //   147: invokevirtual 311	com/sleepycat/b/i/h/x:a	(Ljava/lang/String;)V
    //   150: aload_0
    //   151: aconst_null
    //   152: invokespecial 312	com/sleepycat/b/i/c/b/m:a	(Ljava/lang/Exception;)V
    //   155: aload_0
    //   156: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   159: astore_1
    //   160: aload_0
    //   161: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   164: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   167: astore_2
    //   168: new 314	java/lang/StringBuilder
    //   171: dup
    //   172: ldc_w 316
    //   175: invokespecial 317	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   178: aload_0
    //   179: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   182: invokevirtual 320	com/sleepycat/b/i/c/b/aa:g	()Lcom/sleepycat/b/p/au;
    //   185: invokevirtual 324	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   188: invokevirtual 328	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   191: astore_3
    //   192: aload_1
    //   193: aload_2
    //   194: aload_3
    //   195: invokestatic 255	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   198: return
    //   199: aload_0
    //   200: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   203: getfield 331	com/sleepycat/b/i/c/b/aa:g	Lcom/sleepycat/b/i/e/n;
    //   206: invokevirtual 335	com/sleepycat/b/i/e/n:e	()V
    //   209: aload_3
    //   210: ifnonnull +251 -> 461
    //   213: aload_0
    //   214: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   217: invokevirtual 337	com/sleepycat/b/i/c/b/aa:k	()Z
    //   220: ifeq +86 -> 306
    //   223: aload_0
    //   224: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   227: aload_0
    //   228: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   231: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   234: ldc_w 339
    //   237: invokestatic 255	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   240: aload_0
    //   241: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   244: aconst_null
    //   245: invokevirtual 309	com/sleepycat/b/i/c/b/aa:a	(Ljava/lang/Exception;)V
    //   248: aload_0
    //   249: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   252: getfield 270	com/sleepycat/b/i/c/b/aa:c	Lcom/sleepycat/b/i/h/x;
    //   255: ldc_w 272
    //   258: invokevirtual 311	com/sleepycat/b/i/h/x:a	(Ljava/lang/String;)V
    //   261: aload_0
    //   262: aconst_null
    //   263: invokespecial 312	com/sleepycat/b/i/c/b/m:a	(Ljava/lang/Exception;)V
    //   266: aload_0
    //   267: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   270: astore_1
    //   271: aload_0
    //   272: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   275: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   278: astore_2
    //   279: new 314	java/lang/StringBuilder
    //   282: dup
    //   283: ldc_w 316
    //   286: invokespecial 317	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   289: aload_0
    //   290: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   293: invokevirtual 320	com/sleepycat/b/i/c/b/aa:g	()Lcom/sleepycat/b/p/au;
    //   296: invokevirtual 324	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   299: invokevirtual 328	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   302: astore_3
    //   303: goto -111 -> 192
    //   306: aload_1
    //   307: aload_2
    //   308: getfield 343	com/sleepycat/b/i/c/b/q:b	Lcom/sleepycat/b/p/au;
    //   311: ldc_w 345
    //   314: invokevirtual 348	com/sleepycat/b/i/c/b/r:a	(Lcom/sleepycat/b/p/au;Ljava/lang/String;)V
    //   317: goto -231 -> 86
    //   320: astore_1
    //   321: aload_0
    //   322: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   325: aload_0
    //   326: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   329: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   332: new 314	java/lang/StringBuilder
    //   335: dup
    //   336: ldc_w 350
    //   339: invokespecial 317	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   342: aload_1
    //   343: invokevirtual 353	com/sleepycat/b/i/e/o:getMessage	()Ljava/lang/String;
    //   346: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   349: invokevirtual 328	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   352: invokestatic 255	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   355: new 358	com/sleepycat/b/i/af
    //   358: dup
    //   359: new 314	java/lang/StringBuilder
    //   362: dup
    //   363: ldc_w 360
    //   366: invokespecial 317	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   369: aload_0
    //   370: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   373: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   376: getfield 366	com/sleepycat/b/c/ad:af	Ljava/lang/String;
    //   379: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   382: ldc_w 368
    //   385: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   388: invokevirtual 328	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   391: invokespecial 369	com/sleepycat/b/i/af:<init>	(Ljava/lang/String;)V
    //   394: astore_1
    //   395: aload_0
    //   396: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   399: aload_1
    //   400: invokevirtual 309	com/sleepycat/b/i/c/b/aa:a	(Ljava/lang/Exception;)V
    //   403: aload_0
    //   404: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   407: getfield 270	com/sleepycat/b/i/c/b/aa:c	Lcom/sleepycat/b/i/h/x;
    //   410: ldc_w 272
    //   413: invokevirtual 311	com/sleepycat/b/i/h/x:a	(Ljava/lang/String;)V
    //   416: aload_0
    //   417: aload_1
    //   418: invokespecial 312	com/sleepycat/b/i/c/b/m:a	(Ljava/lang/Exception;)V
    //   421: aload_0
    //   422: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   425: astore_1
    //   426: aload_0
    //   427: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   430: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   433: astore_2
    //   434: new 314	java/lang/StringBuilder
    //   437: dup
    //   438: ldc_w 316
    //   441: invokespecial 317	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   444: aload_0
    //   445: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   448: invokevirtual 320	com/sleepycat/b/i/c/b/aa:g	()Lcom/sleepycat/b/p/au;
    //   451: invokevirtual 324	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   454: invokevirtual 328	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   457: astore_3
    //   458: goto -266 -> 192
    //   461: aload_0
    //   462: getfield 129	com/sleepycat/b/i/c/b/m:m	Lcom/sleepycat/b/p/o;
    //   465: invokevirtual 184	com/sleepycat/b/p/o:f	()V
    //   468: new 180	com/sleepycat/b/i/c/b/h
    //   471: dup
    //   472: aload_0
    //   473: aload_3
    //   474: invokespecial 372	com/sleepycat/b/i/c/b/h:<init>	(Lcom/sleepycat/b/i/c/b/m;Ljava/nio/channels/SocketChannel;)V
    //   477: astore 4
    //   479: aload_0
    //   480: getfield 65	com/sleepycat/b/i/c/b/m:d	Ljava/util/Set;
    //   483: aload 4
    //   485: invokeinterface 376 2 0
    //   490: pop
    //   491: aload 4
    //   493: getfield 379	com/sleepycat/b/i/c/b/h:b	Lcom/sleepycat/b/i/c/b/k;
    //   496: invokevirtual 384	com/sleepycat/b/i/c/b/k:start	()V
    //   499: goto -413 -> 86
    //   502: astore 4
    //   504: aload_0
    //   505: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   508: aload_0
    //   509: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   512: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   515: new 314	java/lang/StringBuilder
    //   518: dup
    //   519: ldc_w 386
    //   522: invokespecial 317	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   525: aload 4
    //   527: invokevirtual 387	java/io/IOException:getMessage	()Ljava/lang/String;
    //   530: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   533: invokevirtual 328	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   536: invokestatic 389	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   539: aload_3
    //   540: invokevirtual 392	java/nio/channels/SocketChannel:close	()V
    //   543: goto -457 -> 86
    //   546: astore_3
    //   547: aload_0
    //   548: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   551: aload_0
    //   552: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   555: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   558: new 314	java/lang/StringBuilder
    //   561: dup
    //   562: ldc_w 394
    //   565: invokespecial 317	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   568: aload 4
    //   570: invokevirtual 387	java/io/IOException:getMessage	()Ljava/lang/String;
    //   573: invokevirtual 356	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   576: invokevirtual 328	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   579: invokestatic 389	com/sleepycat/b/p/w:d	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   582: goto -496 -> 86
    //   585: astore_1
    //   586: aload_0
    //   587: getfield 396	com/sleepycat/b/i/c/b/m:g	Ljava/lang/RuntimeException;
    //   590: ifnull +93 -> 683
    //   593: aload_0
    //   594: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   597: aload_0
    //   598: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   601: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   604: ldc_w 398
    //   607: invokestatic 400	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   610: aload_0
    //   611: getfield 396	com/sleepycat/b/i/c/b/m:g	Ljava/lang/RuntimeException;
    //   614: athrow
    //   615: astore_2
    //   616: aconst_null
    //   617: astore_1
    //   618: aload_0
    //   619: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   622: aload_1
    //   623: invokevirtual 309	com/sleepycat/b/i/c/b/aa:a	(Ljava/lang/Exception;)V
    //   626: aload_0
    //   627: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   630: getfield 270	com/sleepycat/b/i/c/b/aa:c	Lcom/sleepycat/b/i/h/x;
    //   633: ldc_w 272
    //   636: invokevirtual 311	com/sleepycat/b/i/h/x:a	(Ljava/lang/String;)V
    //   639: aload_0
    //   640: aload_1
    //   641: invokespecial 312	com/sleepycat/b/i/c/b/m:a	(Ljava/lang/Exception;)V
    //   644: aload_0
    //   645: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   648: aload_0
    //   649: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   652: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   655: new 314	java/lang/StringBuilder
    //   658: dup
    //   659: ldc_w 316
    //   662: invokespecial 317	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   665: aload_0
    //   666: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   669: invokevirtual 320	com/sleepycat/b/i/c/b/aa:g	()Lcom/sleepycat/b/p/au;
    //   672: invokevirtual 324	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   675: invokevirtual 328	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   678: invokestatic 255	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   681: aload_2
    //   682: athrow
    //   683: aload_0
    //   684: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   687: getfield 405	com/sleepycat/b/p/aj:E	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   690: invokevirtual 243	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   693: ifeq +86 -> 779
    //   696: aload_0
    //   697: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   700: aload_0
    //   701: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   704: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   707: ldc_w 407
    //   710: invokestatic 255	com/sleepycat/b/p/w:c	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   713: aload_0
    //   714: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   717: aconst_null
    //   718: invokevirtual 309	com/sleepycat/b/i/c/b/aa:a	(Ljava/lang/Exception;)V
    //   721: aload_0
    //   722: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   725: getfield 270	com/sleepycat/b/i/c/b/aa:c	Lcom/sleepycat/b/i/h/x;
    //   728: ldc_w 272
    //   731: invokevirtual 311	com/sleepycat/b/i/h/x:a	(Ljava/lang/String;)V
    //   734: aload_0
    //   735: aconst_null
    //   736: invokespecial 312	com/sleepycat/b/i/c/b/m:a	(Ljava/lang/Exception;)V
    //   739: aload_0
    //   740: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   743: astore_1
    //   744: aload_0
    //   745: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   748: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   751: astore_2
    //   752: new 314	java/lang/StringBuilder
    //   755: dup
    //   756: ldc_w 316
    //   759: invokespecial 317	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   762: aload_0
    //   763: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   766: invokevirtual 320	com/sleepycat/b/i/c/b/aa:g	()Lcom/sleepycat/b/p/au;
    //   769: invokevirtual 324	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   772: invokevirtual 328	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   775: astore_3
    //   776: goto -584 -> 192
    //   779: aload_0
    //   780: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   783: aload_0
    //   784: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   787: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   790: ldc_w 398
    //   793: invokestatic 400	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   796: aload_0
    //   797: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   800: aload_1
    //   801: invokevirtual 309	com/sleepycat/b/i/c/b/aa:a	(Ljava/lang/Exception;)V
    //   804: aload_0
    //   805: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   808: getfield 270	com/sleepycat/b/i/c/b/aa:c	Lcom/sleepycat/b/i/h/x;
    //   811: ldc_w 272
    //   814: invokevirtual 311	com/sleepycat/b/i/h/x:a	(Ljava/lang/String;)V
    //   817: aload_0
    //   818: aload_1
    //   819: invokespecial 312	com/sleepycat/b/i/c/b/m:a	(Ljava/lang/Exception;)V
    //   822: aload_0
    //   823: getfield 106	com/sleepycat/b/i/c/b/m:l	Ljava/util/logging/Logger;
    //   826: astore_1
    //   827: aload_0
    //   828: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   831: getfield 90	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   834: astore_2
    //   835: new 314	java/lang/StringBuilder
    //   838: dup
    //   839: ldc_w 316
    //   842: invokespecial 317	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   845: aload_0
    //   846: getfield 76	com/sleepycat/b/i/c/b/m:a	Lcom/sleepycat/b/i/c/b/aa;
    //   849: invokevirtual 320	com/sleepycat/b/i/c/b/aa:g	()Lcom/sleepycat/b/p/au;
    //   852: invokevirtual 324	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   855: invokevirtual 328	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   858: astore_3
    //   859: goto -667 -> 192
    //   862: astore_2
    //   863: goto -245 -> 618
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	866	0	this	m
    //   50	257	1	localObject1	Object
    //   320	23	1	localo	com.sleepycat.b.i.e.o
    //   394	32	1	localObject2	Object
    //   585	1	1	localInterruptedException	InterruptedException
    //   617	210	1	localObject3	Object
    //   58	376	2	localObject4	Object
    //   615	67	2	localObject5	Object
    //   751	84	2	localaj	com.sleepycat.b.i.c.aj
    //   862	1	2	localObject6	Object
    //   104	436	3	localObject7	Object
    //   546	1	3	localIOException1	java.io.IOException
    //   775	84	3	str	String
    //   477	15	4	localh	h
    //   502	67	4	localIOException2	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   59	86	320	com/sleepycat/b/i/e/o
    //   86	129	320	com/sleepycat/b/i/e/o
    //   199	209	320	com/sleepycat/b/i/e/o
    //   213	240	320	com/sleepycat/b/i/e/o
    //   306	317	320	com/sleepycat/b/i/e/o
    //   461	468	320	com/sleepycat/b/i/e/o
    //   468	499	320	com/sleepycat/b/i/e/o
    //   504	539	320	com/sleepycat/b/i/e/o
    //   539	543	320	com/sleepycat/b/i/e/o
    //   547	582	320	com/sleepycat/b/i/e/o
    //   468	499	502	java/io/IOException
    //   539	543	546	java/io/IOException
    //   59	86	585	java/lang/InterruptedException
    //   86	129	585	java/lang/InterruptedException
    //   199	209	585	java/lang/InterruptedException
    //   213	240	585	java/lang/InterruptedException
    //   306	317	585	java/lang/InterruptedException
    //   461	468	585	java/lang/InterruptedException
    //   468	499	585	java/lang/InterruptedException
    //   504	539	585	java/lang/InterruptedException
    //   539	543	585	java/lang/InterruptedException
    //   547	582	585	java/lang/InterruptedException
    //   59	86	615	finally
    //   86	129	615	finally
    //   199	209	615	finally
    //   213	240	615	finally
    //   306	317	615	finally
    //   321	395	615	finally
    //   461	468	615	finally
    //   468	499	615	finally
    //   504	539	615	finally
    //   539	543	615	finally
    //   547	582	615	finally
    //   586	615	615	finally
    //   683	713	615	finally
    //   779	796	862	finally
  }
  
  public final String c()
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    synchronized (this.c)
    {
      Object localObject2 = this.c.entrySet();
      if (((Set)localObject2).size() == 0) {
        localStringBuilder1.append("No feeders.");
      }
      do
      {
        return localStringBuilder1.toString();
        localStringBuilder1.append("Current feeds:");
        localObject2 = ((Set)localObject2).iterator();
      } while (!((Iterator)localObject2).hasNext());
      Object localObject3 = (Map.Entry)((Iterator)localObject2).next();
      StringBuilder localStringBuilder2 = localStringBuilder1.append("\n ").append((String)((Map.Entry)localObject3).getKey()).append(": ");
      localObject3 = (h)((Map.Entry)localObject3).getValue();
      localStringBuilder2.append("feederVLSN=" + ((h)localObject3).d + " replicaTxnEndVLSN=" + ((h)localObject3).e);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\b\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */