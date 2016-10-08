package com.squareup.okhttp.internal.spdy;

import c.d;
import c.f;
import c.m;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class SpdyConnection
  implements Closeable
{
  private static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
  private static final ExecutorService executor;
  long bytesLeftInWriteWindow;
  final boolean client;
  private final Set<Integer> currentPushRequests = new LinkedHashSet();
  final FrameWriter frameWriter;
  private final IncomingStreamHandler handler;
  private final String hostName;
  private long idleStartTimeNs = System.nanoTime();
  private int lastGoodStreamId;
  private int nextPingId;
  private int nextStreamId;
  final Settings okHttpSettings = new Settings();
  final Settings peerSettings = new Settings();
  private Map<Integer, Ping> pings;
  final Protocol protocol;
  private final ExecutorService pushExecutor;
  private final PushObserver pushObserver;
  final SpdyConnection.Reader readerRunnable;
  private boolean receivedInitialPeerSettings = false;
  private boolean shutdown;
  final Socket socket;
  private final Map<Integer, SpdyStream> streams = new HashMap();
  long unacknowledgedBytesRead = 0L;
  final Variant variant;
  
  static
  {
    if (!SpdyConnection.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Util.threadFactory("OkHttp SpdyConnection", true));
      return;
    }
  }
  
  private SpdyConnection(SpdyConnection.Builder paramBuilder)
  {
    this.protocol = SpdyConnection.Builder.access$000(paramBuilder);
    this.pushObserver = SpdyConnection.Builder.access$100(paramBuilder);
    this.client = SpdyConnection.Builder.access$200(paramBuilder);
    this.handler = SpdyConnection.Builder.access$300(paramBuilder);
    int i;
    if (SpdyConnection.Builder.access$200(paramBuilder))
    {
      i = 1;
      this.nextStreamId = i;
      if ((SpdyConnection.Builder.access$200(paramBuilder)) && (this.protocol == Protocol.HTTP_2)) {
        this.nextStreamId += 2;
      }
      i = j;
      if (SpdyConnection.Builder.access$200(paramBuilder)) {
        i = 1;
      }
      this.nextPingId = i;
      if (SpdyConnection.Builder.access$200(paramBuilder)) {
        this.okHttpSettings.set(7, 0, 16777216);
      }
      this.hostName = SpdyConnection.Builder.access$400(paramBuilder);
      if (this.protocol != Protocol.HTTP_2) {
        break label359;
      }
      this.variant = new Http2();
      this.pushExecutor = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Util.threadFactory(String.format("OkHttp %s Push Observer", new Object[] { this.hostName }), true));
      this.peerSettings.set(7, 0, 65535);
      this.peerSettings.set(5, 0, 16384);
    }
    for (;;)
    {
      this.bytesLeftInWriteWindow = this.peerSettings.getInitialWindowSize(65536);
      this.socket = SpdyConnection.Builder.access$500(paramBuilder);
      this.frameWriter = this.variant.newWriter(m.a(m.a(SpdyConnection.Builder.access$500(paramBuilder))), this.client);
      this.readerRunnable = new SpdyConnection.Reader(this, null);
      new Thread(this.readerRunnable).start();
      return;
      i = 2;
      break;
      label359:
      if (this.protocol != Protocol.SPDY_3) {
        break label388;
      }
      this.variant = new Spdy3();
      this.pushExecutor = null;
    }
    label388:
    throw new AssertionError(this.protocol);
  }
  
  /* Error */
  private void close(ErrorCode paramErrorCode1, ErrorCode paramErrorCode2)
  {
    // Byte code:
    //   0: getstatic 75	com/squareup/okhttp/internal/spdy/SpdyConnection:$assertionsDisabled	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: invokestatic 344	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   10: ifeq +11 -> 21
    //   13: new 253	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 345	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: aload_0
    //   22: aload_1
    //   23: invokevirtual 348	com/squareup/okhttp/internal/spdy/SpdyConnection:shutdown	(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    //   26: aconst_null
    //   27: astore_1
    //   28: aload_0
    //   29: monitorenter
    //   30: aload_0
    //   31: getfield 112	com/squareup/okhttp/internal/spdy/SpdyConnection:streams	Ljava/util/Map;
    //   34: invokeinterface 353 1 0
    //   39: ifne +246 -> 285
    //   42: aload_0
    //   43: getfield 112	com/squareup/okhttp/internal/spdy/SpdyConnection:streams	Ljava/util/Map;
    //   46: invokeinterface 357 1 0
    //   51: aload_0
    //   52: getfield 112	com/squareup/okhttp/internal/spdy/SpdyConnection:streams	Ljava/util/Map;
    //   55: invokeinterface 361 1 0
    //   60: anewarray 363	com/squareup/okhttp/internal/spdy/SpdyStream
    //   63: invokeinterface 369 2 0
    //   68: checkcast 371	[Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    //   71: astore 4
    //   73: aload_0
    //   74: getfield 112	com/squareup/okhttp/internal/spdy/SpdyConnection:streams	Ljava/util/Map;
    //   77: invokeinterface 374 1 0
    //   82: aload_0
    //   83: iconst_0
    //   84: invokespecial 378	com/squareup/okhttp/internal/spdy/SpdyConnection:setIdle	(Z)V
    //   87: aload_0
    //   88: getfield 380	com/squareup/okhttp/internal/spdy/SpdyConnection:pings	Ljava/util/Map;
    //   91: ifnull +188 -> 279
    //   94: aload_0
    //   95: getfield 380	com/squareup/okhttp/internal/spdy/SpdyConnection:pings	Ljava/util/Map;
    //   98: invokeinterface 357 1 0
    //   103: aload_0
    //   104: getfield 380	com/squareup/okhttp/internal/spdy/SpdyConnection:pings	Ljava/util/Map;
    //   107: invokeinterface 361 1 0
    //   112: anewarray 382	com/squareup/okhttp/internal/spdy/Ping
    //   115: invokeinterface 369 2 0
    //   120: checkcast 384	[Lcom/squareup/okhttp/internal/spdy/Ping;
    //   123: astore 5
    //   125: aload_0
    //   126: aconst_null
    //   127: putfield 380	com/squareup/okhttp/internal/spdy/SpdyConnection:pings	Ljava/util/Map;
    //   130: aload_0
    //   131: monitorexit
    //   132: aload_1
    //   133: astore_3
    //   134: aload 4
    //   136: ifnull +67 -> 203
    //   139: aload 4
    //   141: arraylength
    //   142: istore 8
    //   144: iconst_0
    //   145: istore 7
    //   147: iload 7
    //   149: iload 8
    //   151: if_icmpge +50 -> 201
    //   154: aload 4
    //   156: iload 7
    //   158: aaload
    //   159: astore_3
    //   160: aload_3
    //   161: aload_2
    //   162: invokevirtual 386	com/squareup/okhttp/internal/spdy/SpdyStream:close	(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    //   165: aload_1
    //   166: astore_3
    //   167: iload 7
    //   169: iconst_1
    //   170: iadd
    //   171: istore 7
    //   173: aload_3
    //   174: astore_1
    //   175: goto -28 -> 147
    //   178: astore_1
    //   179: goto -151 -> 28
    //   182: astore_1
    //   183: aload_0
    //   184: monitorexit
    //   185: aload_1
    //   186: athrow
    //   187: astore 6
    //   189: aload_1
    //   190: astore_3
    //   191: aload_1
    //   192: ifnull -25 -> 167
    //   195: aload 6
    //   197: astore_3
    //   198: goto -31 -> 167
    //   201: aload_1
    //   202: astore_3
    //   203: aload 5
    //   205: ifnull +35 -> 240
    //   208: aload 5
    //   210: arraylength
    //   211: istore 8
    //   213: iconst_0
    //   214: istore 7
    //   216: iload 7
    //   218: iload 8
    //   220: if_icmpge +20 -> 240
    //   223: aload 5
    //   225: iload 7
    //   227: aaload
    //   228: invokevirtual 389	com/squareup/okhttp/internal/spdy/Ping:cancel	()V
    //   231: iload 7
    //   233: iconst_1
    //   234: iadd
    //   235: istore 7
    //   237: goto -21 -> 216
    //   240: aload_0
    //   241: getfield 230	com/squareup/okhttp/internal/spdy/SpdyConnection:frameWriter	Lcom/squareup/okhttp/internal/spdy/FrameWriter;
    //   244: invokeinterface 393 1 0
    //   249: aload_3
    //   250: astore_1
    //   251: aload_0
    //   252: getfield 213	com/squareup/okhttp/internal/spdy/SpdyConnection:socket	Ljava/net/Socket;
    //   255: invokevirtual 396	java/net/Socket:close	()V
    //   258: aload_1
    //   259: ifnull +15 -> 274
    //   262: aload_1
    //   263: athrow
    //   264: astore_1
    //   265: aload_3
    //   266: ifnull -15 -> 251
    //   269: aload_3
    //   270: astore_1
    //   271: goto -20 -> 251
    //   274: return
    //   275: astore_1
    //   276: goto -18 -> 258
    //   279: aconst_null
    //   280: astore 5
    //   282: goto -152 -> 130
    //   285: aconst_null
    //   286: astore 4
    //   288: goto -201 -> 87
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	291	0	this	SpdyConnection
    //   0	291	1	paramErrorCode1	ErrorCode
    //   0	291	2	paramErrorCode2	ErrorCode
    //   133	137	3	localObject	Object
    //   71	216	4	arrayOfSpdyStream	SpdyStream[]
    //   123	158	5	arrayOfPing	Ping[]
    //   187	9	6	localIOException	IOException
    //   145	91	7	i	int
    //   142	79	8	j	int
    // Exception table:
    //   from	to	target	type
    //   21	26	178	java/io/IOException
    //   30	87	182	finally
    //   87	130	182	finally
    //   130	132	182	finally
    //   183	185	182	finally
    //   160	165	187	java/io/IOException
    //   240	249	264	java/io/IOException
    //   251	258	275	java/io/IOException
  }
  
  private SpdyStream newStream(int paramInt, List<Header> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool2 = true;
    boolean bool1;
    if (!paramBoolean1)
    {
      bool1 = true;
      if (paramBoolean2) {
        break label65;
      }
    }
    label65:
    for (paramBoolean2 = bool2;; paramBoolean2 = false)
    {
      synchronized (this.frameWriter)
      {
        try
        {
          if (!this.shutdown) {
            break label71;
          }
          throw new IOException("shutdown");
        }
        finally {}
      }
      bool1 = false;
      break;
    }
    label71:
    int i = this.nextStreamId;
    this.nextStreamId += 2;
    SpdyStream localSpdyStream = new SpdyStream(i, this, bool1, paramBoolean2, paramList);
    if (localSpdyStream.isOpen())
    {
      this.streams.put(Integer.valueOf(i), localSpdyStream);
      setIdle(false);
    }
    if (paramInt == 0) {
      this.frameWriter.synStream(bool1, paramBoolean2, i, paramInt, paramList);
    }
    for (;;)
    {
      if (!paramBoolean1) {
        this.frameWriter.flush();
      }
      return localSpdyStream;
      if (this.client) {
        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
      }
      this.frameWriter.pushPromise(paramInt, i, paramList);
    }
  }
  
  private void pushDataLater(final int paramInt1, f paramf, final int paramInt2, final boolean paramBoolean)
  {
    final d locald = new d();
    paramf.a(paramInt2);
    paramf.read(locald, paramInt2);
    if (locald.b != paramInt2) {
      throw new IOException(locald.b + " != " + paramInt2);
    }
    this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Data[%s]", new Object[] { this.hostName, Integer.valueOf(paramInt1) })
    {
      public void execute()
      {
        try
        {
          boolean bool = SpdyConnection.this.pushObserver.onData(paramInt1, locald, paramInt2, paramBoolean);
          if (bool) {
            SpdyConnection.this.frameWriter.rstStream(paramInt1, ErrorCode.CANCEL);
          }
          if ((bool) || (paramBoolean)) {
            synchronized (SpdyConnection.this)
            {
              SpdyConnection.this.currentPushRequests.remove(Integer.valueOf(paramInt1));
              return;
            }
          }
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  private void pushHeadersLater(final int paramInt, final List<Header> paramList, final boolean paramBoolean)
  {
    this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Headers[%s]", new Object[] { this.hostName, Integer.valueOf(paramInt) })
    {
      public void execute()
      {
        boolean bool = SpdyConnection.this.pushObserver.onHeaders(paramInt, paramList, paramBoolean);
        if (bool) {}
        try
        {
          SpdyConnection.this.frameWriter.rstStream(paramInt, ErrorCode.CANCEL);
          if ((bool) || (paramBoolean)) {
            synchronized (SpdyConnection.this)
            {
              SpdyConnection.this.currentPushRequests.remove(Integer.valueOf(paramInt));
              return;
            }
          }
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  private void pushRequestLater(final int paramInt, final List<Header> paramList)
  {
    try
    {
      if (this.currentPushRequests.contains(Integer.valueOf(paramInt)))
      {
        writeSynResetLater(paramInt, ErrorCode.PROTOCOL_ERROR);
        return;
      }
      this.currentPushRequests.add(Integer.valueOf(paramInt));
      this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Request[%s]", new Object[] { this.hostName, Integer.valueOf(paramInt) })
      {
        public void execute()
        {
          if (SpdyConnection.this.pushObserver.onRequest(paramInt, paramList)) {
            try
            {
              SpdyConnection.this.frameWriter.rstStream(paramInt, ErrorCode.CANCEL);
              synchronized (SpdyConnection.this)
              {
                SpdyConnection.this.currentPushRequests.remove(Integer.valueOf(paramInt));
                return;
              }
              return;
            }
            catch (IOException localIOException) {}
          }
        }
      });
      return;
    }
    finally {}
  }
  
  private void pushResetLater(final int paramInt, final ErrorCode paramErrorCode)
  {
    this.pushExecutor.execute(new NamedRunnable("OkHttp %s Push Reset[%s]", new Object[] { this.hostName, Integer.valueOf(paramInt) })
    {
      public void execute()
      {
        SpdyConnection.this.pushObserver.onReset(paramInt, paramErrorCode);
        synchronized (SpdyConnection.this)
        {
          SpdyConnection.this.currentPushRequests.remove(Integer.valueOf(paramInt));
          return;
        }
      }
    });
  }
  
  private boolean pushedStream(int paramInt)
  {
    return (this.protocol == Protocol.HTTP_2) && (paramInt != 0) && ((paramInt & 0x1) == 0);
  }
  
  /* Error */
  private Ping removePing(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 380	com/squareup/okhttp/internal/spdy/SpdyConnection:pings	Ljava/util/Map;
    //   6: ifnull +24 -> 30
    //   9: aload_0
    //   10: getfield 380	com/squareup/okhttp/internal/spdy/SpdyConnection:pings	Ljava/util/Map;
    //   13: iload_1
    //   14: invokestatic 414	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   17: invokeinterface 518 2 0
    //   22: checkcast 382	com/squareup/okhttp/internal/spdy/Ping
    //   25: astore_2
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_2
    //   29: areturn
    //   30: aconst_null
    //   31: astore_2
    //   32: goto -6 -> 26
    //   35: astore_2
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_2
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	SpdyConnection
    //   0	40	1	paramInt	int
    //   25	7	2	localPing	Ping
    //   35	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	35	finally
  }
  
  private void setIdle(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        l = System.nanoTime();
        this.idleStartTimeNs = l;
        return;
      }
      finally {}
      long l = Long.MAX_VALUE;
    }
  }
  
  private void writePing(boolean paramBoolean, int paramInt1, int paramInt2, Ping paramPing)
  {
    FrameWriter localFrameWriter = this.frameWriter;
    if (paramPing != null) {}
    try
    {
      paramPing.send();
      this.frameWriter.ping(paramBoolean, paramInt1, paramInt2);
      return;
    }
    finally {}
  }
  
  private void writePingLater(final boolean paramBoolean, final int paramInt1, final int paramInt2, final Ping paramPing)
  {
    executor.execute(new NamedRunnable("OkHttp %s ping %08x%08x", new Object[] { this.hostName, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) })
    {
      public void execute()
      {
        try
        {
          SpdyConnection.this.writePing(paramBoolean, paramInt1, paramInt2, paramPing);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  final void addBytesToWriteWindow(long paramLong)
  {
    this.bytesLeftInWriteWindow += paramLong;
    if (paramLong > 0L) {
      notifyAll();
    }
  }
  
  public final void close()
  {
    close(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
  }
  
  public final void flush()
  {
    this.frameWriter.flush();
  }
  
  public final long getIdleStartTimeNs()
  {
    try
    {
      long l = this.idleStartTimeNs;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final Protocol getProtocol()
  {
    return this.protocol;
  }
  
  final SpdyStream getStream(int paramInt)
  {
    try
    {
      SpdyStream localSpdyStream = (SpdyStream)this.streams.get(Integer.valueOf(paramInt));
      return localSpdyStream;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final boolean isIdle()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 120	com/squareup/okhttp/internal/spdy/SpdyConnection:idleStartTimeNs	J
    //   6: lstore_2
    //   7: lload_2
    //   8: ldc2_w 519
    //   11: lcmp
    //   12: ifeq +11 -> 23
    //   15: iconst_1
    //   16: istore 4
    //   18: aload_0
    //   19: monitorexit
    //   20: iload 4
    //   22: ireturn
    //   23: iconst_0
    //   24: istore 4
    //   26: goto -8 -> 18
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	SpdyConnection
    //   29	4	1	localObject	Object
    //   6	2	2	l	long
    //   16	9	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	29	finally
  }
  
  public final SpdyStream newStream(List<Header> paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    return newStream(0, paramList, paramBoolean1, paramBoolean2);
  }
  
  public final int openStreamCount()
  {
    try
    {
      int i = this.streams.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final Ping ping()
  {
    Ping localPing = new Ping();
    try
    {
      if (this.shutdown) {
        throw new IOException("shutdown");
      }
    }
    finally {}
    int i = this.nextPingId;
    this.nextPingId += 2;
    if (this.pings == null) {
      this.pings = new HashMap();
    }
    this.pings.put(Integer.valueOf(i), localObject);
    writePing(false, i, 1330343787, (Ping)localObject);
    return (Ping)localObject;
  }
  
  public final SpdyStream pushStream(int paramInt, List<Header> paramList, boolean paramBoolean)
  {
    if (this.client) {
      throw new IllegalStateException("Client cannot push requests.");
    }
    if (this.protocol != Protocol.HTTP_2) {
      throw new IllegalStateException("protocol != HTTP_2");
    }
    return newStream(paramInt, paramList, paramBoolean, false);
  }
  
  final SpdyStream removeStream(int paramInt)
  {
    try
    {
      SpdyStream localSpdyStream = (SpdyStream)this.streams.remove(Integer.valueOf(paramInt));
      if ((localSpdyStream != null) && (this.streams.isEmpty())) {
        setIdle(true);
      }
      return localSpdyStream;
    }
    finally {}
  }
  
  public final void sendConnectionPreface()
  {
    this.frameWriter.connectionPreface();
    this.frameWriter.settings(this.okHttpSettings);
    int i = this.okHttpSettings.getInitialWindowSize(65536);
    if (i != 65536) {
      this.frameWriter.windowUpdate(0, i - 65536);
    }
  }
  
  public final void shutdown(ErrorCode paramErrorCode)
  {
    int i;
    synchronized (this.frameWriter) {}
  }
  
  public final void writeData(int paramInt, boolean paramBoolean, d paramd, long paramLong)
  {
    long l = paramLong;
    if (paramLong == 0L)
    {
      this.frameWriter.data(paramBoolean, paramInt, paramd, 0);
      return;
    }
    for (;;)
    {
      try
      {
        int i = Math.min((int)Math.min(l, this.bytesLeftInWriteWindow), this.frameWriter.maxDataLength());
        this.bytesLeftInWriteWindow -= i;
        l -= i;
        FrameWriter localFrameWriter = this.frameWriter;
        if ((paramBoolean) && (l == 0L))
        {
          bool = true;
          localFrameWriter.data(bool, paramInt, paramd, i);
          if (l <= 0L) {
            break;
          }
          try
          {
            if (this.bytesLeftInWriteWindow > 0L) {
              continue;
            }
            wait();
            continue;
            paramd = finally;
          }
          catch (InterruptedException paramd)
          {
            throw new InterruptedIOException();
          }
        }
        boolean bool = false;
      }
      finally {}
    }
  }
  
  final void writeSynReply(int paramInt, boolean paramBoolean, List<Header> paramList)
  {
    this.frameWriter.synReply(paramBoolean, paramInt, paramList);
  }
  
  final void writeSynReset(int paramInt, ErrorCode paramErrorCode)
  {
    this.frameWriter.rstStream(paramInt, paramErrorCode);
  }
  
  final void writeSynResetLater(final int paramInt, final ErrorCode paramErrorCode)
  {
    executor.submit(new NamedRunnable("OkHttp %s stream %d", new Object[] { this.hostName, Integer.valueOf(paramInt) })
    {
      public void execute()
      {
        try
        {
          SpdyConnection.this.writeSynReset(paramInt, paramErrorCode);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  final void writeWindowUpdateLater(final int paramInt, final long paramLong)
  {
    executor.execute(new NamedRunnable("OkHttp Window Update %s stream %d", new Object[] { this.hostName, Integer.valueOf(paramInt) })
    {
      public void execute()
      {
        try
        {
          SpdyConnection.this.frameWriter.windowUpdate(paramInt, paramLong);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\SpdyConnection.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */