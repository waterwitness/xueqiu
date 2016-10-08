package com.sleepycat.b.i.c;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.m;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.h.z;
import com.sleepycat.b.p.w;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.logging.Logger;

public final class g
  extends z
{
  final aa a;
  final x b;
  final Logger c;
  private final Collection<SocketChannel> e = new ArrayList();
  
  public g(com.sleepycat.b.i.h.x paramx, aa paramaa)
  {
    super("Group", paramx);
    this.a = paramaa;
    this.b = new x(paramaa.i.u.a(an.a), paramaa.a, paramaa.i);
    this.c = w.a(getClass());
  }
  
  public final Runnable a(SocketChannel paramSocketChannel)
  {
    return new h(this, paramSocketChannel, this.b);
  }
  
  /* Error */
  protected final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 22	java/util/ArrayList
    //   5: dup
    //   6: aload_0
    //   7: getfield 27	com/sleepycat/b/i/c/g:e	Ljava/util/Collection;
    //   10: invokespecial 86	java/util/ArrayList:<init>	(Ljava/util/Collection;)V
    //   13: astore_1
    //   14: aload_0
    //   15: getfield 27	com/sleepycat/b/i/c/g:e	Ljava/util/Collection;
    //   18: invokeinterface 91 1 0
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: invokeinterface 95 1 0
    //   31: ifne +19 -> 50
    //   34: aload_0
    //   35: getfield 74	com/sleepycat/b/i/c/g:c	Ljava/util/logging/Logger;
    //   38: aload_0
    //   39: getfield 29	com/sleepycat/b/i/c/g:a	Lcom/sleepycat/b/i/c/b/aa;
    //   42: getfield 37	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   45: ldc 97
    //   47: invokestatic 100	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   50: aload_1
    //   51: invokeinterface 104 1 0
    //   56: astore 4
    //   58: aload 4
    //   60: invokeinterface 109 1 0
    //   65: ifeq +221 -> 286
    //   68: aload 4
    //   70: invokeinterface 113 1 0
    //   75: checkcast 115	java/nio/channels/SocketChannel
    //   78: astore_1
    //   79: new 117	java/io/PrintWriter
    //   82: dup
    //   83: aload_1
    //   84: invokevirtual 121	java/nio/channels/SocketChannel:socket	()Ljava/net/Socket;
    //   87: invokevirtual 127	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   90: iconst_1
    //   91: invokespecial 130	java/io/PrintWriter:<init>	(Ljava/io/OutputStream;Z)V
    //   94: astore_2
    //   95: aload_0
    //   96: getfield 61	com/sleepycat/b/i/c/g:b	Lcom/sleepycat/b/i/c/x;
    //   99: astore_3
    //   100: aload_3
    //   101: invokevirtual 67	java/lang/Object:getClass	()Ljava/lang/Class;
    //   104: pop
    //   105: aload_2
    //   106: new 132	com/sleepycat/b/i/c/ab
    //   109: dup
    //   110: aload_3
    //   111: getstatic 137	com/sleepycat/b/i/c/ac:a	Lcom/sleepycat/b/i/c/ac;
    //   114: ldc -117
    //   116: invokespecial 142	com/sleepycat/b/i/c/ab:<init>	(Lcom/sleepycat/b/i/c/x;Lcom/sleepycat/b/i/c/ac;Ljava/lang/String;)V
    //   119: invokevirtual 147	com/sleepycat/b/i/c/az:b	()Ljava/lang/String;
    //   122: invokevirtual 151	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   125: aload_1
    //   126: invokevirtual 154	java/nio/channels/SocketChannel:isOpen	()Z
    //   129: ifeq -71 -> 58
    //   132: aload_1
    //   133: invokevirtual 157	java/nio/channels/SocketChannel:close	()V
    //   136: goto -78 -> 58
    //   139: astore_1
    //   140: aload_0
    //   141: getfield 74	com/sleepycat/b/i/c/g:c	Ljava/util/logging/Logger;
    //   144: astore_2
    //   145: aload_0
    //   146: getfield 29	com/sleepycat/b/i/c/g:a	Lcom/sleepycat/b/i/c/b/aa;
    //   149: getfield 37	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   152: astore_3
    //   153: new 159	java/lang/StringBuilder
    //   156: dup
    //   157: ldc -95
    //   159: invokespecial 163	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   162: aload_1
    //   163: invokevirtual 166	java/io/IOException:getMessage	()Ljava/lang/String;
    //   166: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: astore_1
    //   173: aload_2
    //   174: aload_3
    //   175: aload_1
    //   176: invokestatic 100	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   179: goto -121 -> 58
    //   182: astore_1
    //   183: aload_0
    //   184: monitorexit
    //   185: aload_1
    //   186: athrow
    //   187: astore_2
    //   188: aload_0
    //   189: getfield 74	com/sleepycat/b/i/c/g:c	Ljava/util/logging/Logger;
    //   192: aload_0
    //   193: getfield 29	com/sleepycat/b/i/c/g:a	Lcom/sleepycat/b/i/c/b/aa;
    //   196: getfield 37	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   199: new 159	java/lang/StringBuilder
    //   202: dup
    //   203: ldc -81
    //   205: invokespecial 163	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   208: aload_2
    //   209: invokevirtual 166	java/io/IOException:getMessage	()Ljava/lang/String;
    //   212: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   215: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   218: invokestatic 100	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   221: aload_1
    //   222: invokevirtual 154	java/nio/channels/SocketChannel:isOpen	()Z
    //   225: ifeq -167 -> 58
    //   228: aload_1
    //   229: invokevirtual 157	java/nio/channels/SocketChannel:close	()V
    //   232: goto -174 -> 58
    //   235: astore_1
    //   236: aload_0
    //   237: getfield 74	com/sleepycat/b/i/c/g:c	Ljava/util/logging/Logger;
    //   240: astore_2
    //   241: aload_0
    //   242: getfield 29	com/sleepycat/b/i/c/g:a	Lcom/sleepycat/b/i/c/b/aa;
    //   245: getfield 37	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   248: astore_3
    //   249: new 159	java/lang/StringBuilder
    //   252: dup
    //   253: ldc -95
    //   255: invokespecial 163	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   258: aload_1
    //   259: invokevirtual 166	java/io/IOException:getMessage	()Ljava/lang/String;
    //   262: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   265: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   268: astore_1
    //   269: goto -96 -> 173
    //   272: astore_2
    //   273: aload_1
    //   274: invokevirtual 154	java/nio/channels/SocketChannel:isOpen	()Z
    //   277: ifeq +7 -> 284
    //   280: aload_1
    //   281: invokevirtual 157	java/nio/channels/SocketChannel:close	()V
    //   284: aload_2
    //   285: athrow
    //   286: return
    //   287: astore_1
    //   288: aload_0
    //   289: getfield 74	com/sleepycat/b/i/c/g:c	Ljava/util/logging/Logger;
    //   292: aload_0
    //   293: getfield 29	com/sleepycat/b/i/c/g:a	Lcom/sleepycat/b/i/c/b/aa;
    //   296: getfield 37	com/sleepycat/b/i/c/b/aa:i	Lcom/sleepycat/b/i/c/aj;
    //   299: new 159	java/lang/StringBuilder
    //   302: dup
    //   303: ldc -95
    //   305: invokespecial 163	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   308: aload_1
    //   309: invokevirtual 166	java/io/IOException:getMessage	()Ljava/lang/String;
    //   312: invokevirtual 170	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: invokevirtual 173	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokestatic 100	com/sleepycat/b/p/w:b	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/lang/String;)V
    //   321: goto -37 -> 284
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	324	0	this	g
    //   13	120	1	localObject1	Object
    //   139	24	1	localIOException1	java.io.IOException
    //   172	4	1	str1	String
    //   182	47	1	localObject2	Object
    //   235	24	1	localIOException2	java.io.IOException
    //   268	13	1	str2	String
    //   287	22	1	localIOException3	java.io.IOException
    //   94	80	2	localObject3	Object
    //   187	22	2	localIOException4	java.io.IOException
    //   240	1	2	localLogger	Logger
    //   272	13	2	localObject4	Object
    //   99	150	3	localObject5	Object
    //   56	13	4	localIterator	java.util.Iterator
    // Exception table:
    //   from	to	target	type
    //   132	136	139	java/io/IOException
    //   2	25	182	finally
    //   183	185	182	finally
    //   79	125	187	java/io/IOException
    //   228	232	235	java/io/IOException
    //   79	125	272	finally
    //   188	221	272	finally
    //   280	284	287	java/io/IOException
  }
  
  final void b(SocketChannel paramSocketChannel)
  {
    try
    {
      this.e.add(paramSocketChannel);
      return;
    }
    finally
    {
      paramSocketChannel = finally;
      throw paramSocketChannel;
    }
  }
  
  final boolean c(SocketChannel paramSocketChannel)
  {
    try
    {
      boolean bool = this.e.remove(paramSocketChannel);
      return bool;
    }
    finally
    {
      paramSocketChannel = finally;
      throw paramSocketChannel;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */