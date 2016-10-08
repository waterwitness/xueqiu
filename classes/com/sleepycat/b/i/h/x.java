package com.sleepycat.b.i.h;

import com.sleepycat.b.aa;
import com.sleepycat.d.b;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.Channel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.Logger;

public class x
  extends com.sleepycat.b.p.aj
{
  private static final byte[] k;
  private static final int m;
  public final InetSocketAddress a;
  public boolean b = true;
  private final Selector d;
  private final ServerSocketChannel e;
  private int f = 0;
  private final Map<String, ad> g = new ConcurrentHashMap();
  private final ExecutorService h = Executors.newCachedThreadPool();
  private final Logger i;
  private final Formatter j;
  private final com.sleepycat.b.i.c.aj l;
  
  static
  {
    if (!x.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      byte[] arrayOfByte = b.b("Service:");
      k = arrayOfByte;
      m = arrayOfByte.length + 1;
      return;
    }
  }
  
  public x(InetSocketAddress paramInetSocketAddress, com.sleepycat.b.i.c.aj paramaj)
  {
    super(paramaj, "ServiceDispatcher-" + paramInetSocketAddress.getHostName() + ":" + paramInetSocketAddress.getPort());
    this.l = paramaj;
    this.a = paramInetSocketAddress;
    this.e = ServerSocketChannel.open();
    this.e.configureBlocking(false);
    this.d = Selector.open();
    this.e.register(this.d, 16);
    ServerSocket localServerSocket = this.e.socket();
    localServerSocket.setSoTimeout(0);
    localServerSocket.bind(paramInetSocketAddress);
    if (paramaj == null)
    {
      this.i = com.sleepycat.b.p.w.b(getClass());
      if (paramaj != null) {
        break label179;
      }
    }
    label179:
    for (paramInetSocketAddress = com.sleepycat.b.i.c.b.x.c;; paramInetSocketAddress = paramaj.ao)
    {
      this.j = new w(paramInetSocketAddress);
      return;
      this.i = com.sleepycat.b.p.w.a(getClass());
      break;
    }
  }
  
  public static OutputStream a(Socket paramSocket, String paramString)
  {
    if ((!c) && (!paramSocket.isConnected())) {
      throw new AssertionError();
    }
    byte[] arrayOfByte = b(paramString);
    OutputStream localOutputStream = paramSocket.getOutputStream();
    localOutputStream.write(arrayOfByte);
    localOutputStream.flush();
    int n = paramSocket.getInputStream().read();
    if (n < 0) {
      throw new IOException("No service response byte: " + n);
    }
    paramSocket = ac.a(n);
    if (paramSocket == null) {
      throw new IOException("Unexpected read response byte: " + n);
    }
    if (paramSocket != ac.a) {
      throw new ae(paramString, paramSocket);
    }
    return localOutputStream;
  }
  
  private String a(SelectionKey paramSelectionKey)
  {
    try
    {
      Object localObject1 = (ByteBuffer)paramSelectionKey.attachment();
      localSocketChannel = (SocketChannel)paramSelectionKey.channel();
      int n;
      Object localObject2;
      com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.WARNING, "Exception during read: " + com.sleepycat.b.p.w.a(paramSelectionKey));
    }
    catch (IOException paramSelectionKey)
    {
      try
      {
        n = localSocketChannel.read((ByteBuffer)localObject1);
        if (n < 0)
        {
          this.f += 1;
          com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.WARNING, "Premature EOF on channel: " + localSocketChannel + " read() returned: " + n);
          localSocketChannel.close();
          return null;
        }
        if (((ByteBuffer)localObject1).remaining() == 0)
        {
          ((ByteBuffer)localObject1).flip();
          if (((ByteBuffer)localObject1).capacity() == m)
          {
            localObject2 = b.c(((ByteBuffer)localObject1).array());
            if (!((String)localObject2).equals("Service:"))
            {
              this.f += 1;
              com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.WARNING, "Malformed service request: " + (String)localObject2);
              localSocketChannel.write(ac.c.a());
              localSocketChannel.close();
              return null;
            }
            n = ((ByteBuffer)localObject1).get(m - 1);
            if (n <= 0)
            {
              this.f += 1;
              com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.WARNING, "Bad service service name length: " + n);
              localSocketChannel.write(ac.c.a());
              localSocketChannel.close();
              return null;
            }
            localObject2 = ByteBuffer.allocate(n + m);
            ((ByteBuffer)localObject2).put((ByteBuffer)localObject1);
            paramSelectionKey.attach(localObject2);
            return a(paramSelectionKey);
          }
          localObject1 = b.b(((ByteBuffer)localObject1).array());
          paramSelectionKey.cancel();
          paramSelectionKey = ((String)localObject1).substring(9);
          return paramSelectionKey;
        }
        return null;
      }
      catch (IOException paramSelectionKey)
      {
        SocketChannel localSocketChannel;
        for (;;) {}
      }
      paramSelectionKey = paramSelectionKey;
      localSocketChannel = null;
    }
    a(localSocketChannel);
    return null;
  }
  
  private void a(Channel paramChannel)
  {
    if (paramChannel != null) {}
    try
    {
      paramChannel.close();
      return;
    }
    catch (IOException paramChannel)
    {
      com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.WARNING, "Exception during cleanup: " + com.sleepycat.b.p.w.a(paramChannel));
    }
  }
  
  public static void a(SocketChannel paramSocketChannel, String paramString)
  {
    ByteBuffer localByteBuffer = ByteBuffer.wrap(b(paramString));
    while (localByteBuffer.remaining() > 0) {
      paramSocketChannel.write(localByteBuffer);
    }
    localByteBuffer = ByteBuffer.allocate(1);
    while (localByteBuffer.remaining() > 0) {
      if (paramSocketChannel.read(localByteBuffer) < 0) {
        throw new IOException("EOF in response to service request:" + paramString);
      }
    }
    int n = paramSocketChannel.read(localByteBuffer);
    if (n < 0) {
      throw new IOException("No service response byte: " + n);
    }
    localByteBuffer.flip();
    paramSocketChannel = ac.a(localByteBuffer.get());
    if (paramSocketChannel == null) {
      throw new IOException("Unexpected read response byte: " + n);
    }
    if (paramSocketChannel != ac.a) {
      throw new ae(paramString, paramSocketChannel);
    }
  }
  
  private static byte[] b(String paramString)
  {
    paramString = b.b(paramString);
    ByteBuffer localByteBuffer = ByteBuffer.allocate(k.length + 1 + paramString.length);
    localByteBuffer.put(k).put((byte)paramString.length).put(paramString);
    return localByteBuffer.array();
  }
  
  public final SocketChannel a(String paramString, int paramInt)
  {
    for (;;)
    {
      Object localObject1 = (ad)this.g.get(paramString);
      if (localObject1 == null) {
        throw aa.c("Service: " + paramString + " was not registered");
      }
      if (!(localObject1 instanceof ab)) {
        throw aa.c("Service: " + paramString + " is not a queuing service");
      }
      try
      {
        localObject1 = (SocketChannel)((ab)localObject1).b.take();
        try
        {
          if ((c) || (localObject1 != null)) {
            break;
          }
          throw new AssertionError();
        }
        catch (IOException localIOException2) {}
      }
      catch (IOException localIOException3)
      {
        for (;;)
        {
          Object localObject2 = null;
        }
      }
      com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.WARNING, "Unable to configure channel for '" + paramString + "' service: " + com.sleepycat.b.p.w.a(localIOException2));
      try
      {
        ((SocketChannel)localObject1).close();
      }
      catch (IOException localIOException1)
      {
        com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.FINEST, "Cleanup failed for service: " + paramString + "\n" + com.sleepycat.b.p.w.a(localIOException1));
      }
    }
    if (localIOException1 == q.a) {
      return null;
    }
    localIOException1.configureBlocking(true);
    localIOException1.socket().setSoTimeout(paramInt);
    return localIOException1;
  }
  
  protected final Logger a()
  {
    return this.i;
  }
  
  public final void a(ad paramad)
  {
    if (paramad == null) {
      throw aa.c("The service argument must not be null");
    }
    if (this.g.containsKey(paramad.d)) {
      throw aa.c("Service: " + paramad.d + " is already registered");
    }
    com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.FINE, "Service: " + paramad.d + " registered.");
    this.g.put(paramad.d, paramad);
  }
  
  public final void a(String paramString)
  {
    if (paramString == null) {
      throw aa.c("The serviceName argument must not be null.");
    }
    ad localad = (ad)this.g.remove(paramString);
    if (localad == null) {
      throw aa.c("Service: " + paramString + " was not registered.");
    }
    localad.a();
    com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.FINE, "Service: " + paramString + " shut down.");
  }
  
  public final void a(String paramString, BlockingQueue<SocketChannel> paramBlockingQueue)
  {
    if (this.g.containsKey(paramString)) {
      throw aa.c("Service: " + paramString + " is already registered");
    }
    if (paramBlockingQueue == null) {
      throw aa.c("The serviceQueue argument must not be null");
    }
    this.g.put(paramString, new ab(this, paramString, paramBlockingQueue));
  }
  
  public final void b()
  {
    if (n()) {
      return;
    }
    com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.INFO, "ServiceDispatcher shutdown starting. HostPort=" + this.a.getHostName() + ":" + this.a.getPort() + " Registered services: " + this.g.keySet());
    a(this.i);
    Iterator localIterator = this.g.keySet().iterator();
    while (localIterator.hasNext()) {
      a((String)localIterator.next());
    }
    this.h.shutdownNow();
    try
    {
      this.e.socket().close();
      this.d.close();
      com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.INFO, "ServiceDispatcher shutdown completed. HostPort=" + this.a.getHostName() + ":" + this.a.getPort());
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        com.sleepycat.b.p.w.a(this.i, this.l, this.j, Level.WARNING, "Ignoring I/O error during close: " + com.sleepycat.b.p.w.a(localIOException));
      }
    }
  }
  
  protected final int c()
  {
    this.d.wakeup();
    return 0;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 159	com/sleepycat/b/i/h/x:i	Ljava/util/logging/Logger;
    //   4: aload_0
    //   5: getfield 107	com/sleepycat/b/i/h/x:l	Lcom/sleepycat/b/i/c/aj;
    //   8: aload_0
    //   9: getfield 171	com/sleepycat/b/i/h/x:j	Ljava/util/logging/Formatter;
    //   12: getstatic 454	java/util/logging/Level:INFO	Ljava/util/logging/Level;
    //   15: new 57	java/lang/StringBuilder
    //   18: dup
    //   19: ldc_w 499
    //   22: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: getfield 109	com/sleepycat/b/i/h/x:a	Ljava/net/InetSocketAddress;
    //   29: invokevirtual 68	java/net/InetSocketAddress:getHostName	()Ljava/lang/String;
    //   32: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: ldc 74
    //   37: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: aload_0
    //   41: getfield 109	com/sleepycat/b/i/h/x:a	Ljava/net/InetSocketAddress;
    //   44: invokevirtual 78	java/net/InetSocketAddress:getPort	()I
    //   47: invokevirtual 81	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   50: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: invokestatic 264	com/sleepycat/b/p/w:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   56: aload_0
    //   57: getfield 128	com/sleepycat/b/i/h/x:d	Ljava/nio/channels/Selector;
    //   60: invokevirtual 502	java/nio/channels/Selector:select	()I
    //   63: istore 7
    //   65: aload_0
    //   66: getfield 506	com/sleepycat/b/p/aj:E	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   69: invokevirtual 510	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   72: istore 8
    //   74: iload 8
    //   76: ifeq +12 -> 88
    //   79: aload_0
    //   80: aload_0
    //   81: getfield 117	com/sleepycat/b/i/h/x:e	Ljava/nio/channels/ServerSocketChannel;
    //   84: invokespecial 336	com/sleepycat/b/i/h/x:a	(Ljava/nio/channels/Channel;)V
    //   87: return
    //   88: iload 7
    //   90: ifeq -34 -> 56
    //   93: aload_0
    //   94: getfield 128	com/sleepycat/b/i/h/x:d	Ljava/nio/channels/Selector;
    //   97: invokevirtual 513	java/nio/channels/Selector:selectedKeys	()Ljava/util/Set;
    //   100: astore_3
    //   101: aload_3
    //   102: invokeinterface 471 1 0
    //   107: astore 4
    //   109: aload 4
    //   111: invokeinterface 476 1 0
    //   116: ifeq +532 -> 648
    //   119: aload 4
    //   121: invokeinterface 479 1 0
    //   126: checkcast 233	java/nio/channels/SelectionKey
    //   129: astore_1
    //   130: aload_1
    //   131: invokevirtual 516	java/nio/channels/SelectionKey:readyOps	()I
    //   134: lookupswitch	default:+523->657, 1:+210->344, 16:+105->239
    //   160: new 57	java/lang/StringBuilder
    //   163: dup
    //   164: ldc_w 518
    //   167: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   170: aload_1
    //   171: invokevirtual 516	java/nio/channels/SelectionKey:readyOps	()I
    //   174: invokevirtual 81	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   177: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   180: invokestatic 376	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   183: athrow
    //   184: astore_1
    //   185: aload_0
    //   186: aload_0
    //   187: getfield 117	com/sleepycat/b/i/h/x:e	Ljava/nio/channels/ServerSocketChannel;
    //   190: invokespecial 336	com/sleepycat/b/i/h/x:a	(Ljava/nio/channels/Channel;)V
    //   193: aload_1
    //   194: athrow
    //   195: astore_1
    //   196: aload_0
    //   197: getfield 159	com/sleepycat/b/i/h/x:i	Ljava/util/logging/Logger;
    //   200: aload_0
    //   201: getfield 107	com/sleepycat/b/i/h/x:l	Lcom/sleepycat/b/i/c/aj;
    //   204: aload_0
    //   205: getfield 171	com/sleepycat/b/i/h/x:j	Ljava/util/logging/Formatter;
    //   208: getstatic 521	java/util/logging/Level:SEVERE	Ljava/util/logging/Level;
    //   211: new 57	java/lang/StringBuilder
    //   214: dup
    //   215: ldc_w 523
    //   218: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   221: aload_1
    //   222: invokestatic 333	com/sleepycat/b/p/w:a	(Ljava/lang/Exception;)Ljava/lang/String;
    //   225: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   228: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   231: invokestatic 264	com/sleepycat/b/p/w:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   234: aload_1
    //   235: invokestatic 526	com/sleepycat/b/aa:a	(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   238: athrow
    //   239: aconst_null
    //   240: astore_1
    //   241: aload_0
    //   242: getfield 117	com/sleepycat/b/i/h/x:e	Ljava/nio/channels/ServerSocketChannel;
    //   245: invokevirtual 530	java/nio/channels/ServerSocketChannel:accept	()Ljava/nio/channels/SocketChannel;
    //   248: astore_2
    //   249: aload_2
    //   250: astore_1
    //   251: aload_0
    //   252: getfield 89	com/sleepycat/b/i/h/x:b	Z
    //   255: ifne +60 -> 315
    //   258: aload_2
    //   259: astore_1
    //   260: aload_0
    //   261: aload_2
    //   262: invokespecial 336	com/sleepycat/b/i/h/x:a	(Ljava/nio/channels/Channel;)V
    //   265: goto -156 -> 109
    //   268: astore_2
    //   269: aload_0
    //   270: getfield 159	com/sleepycat/b/i/h/x:i	Ljava/util/logging/Logger;
    //   273: aload_0
    //   274: getfield 107	com/sleepycat/b/i/h/x:l	Lcom/sleepycat/b/i/c/aj;
    //   277: aload_0
    //   278: getfield 171	com/sleepycat/b/i/h/x:j	Ljava/util/logging/Formatter;
    //   281: getstatic 254	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   284: new 57	java/lang/StringBuilder
    //   287: dup
    //   288: ldc_w 532
    //   291: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   294: aload_2
    //   295: invokestatic 333	com/sleepycat/b/p/w:a	(Ljava/lang/Exception;)Ljava/lang/String;
    //   298: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   301: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   304: invokestatic 264	com/sleepycat/b/p/w:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   307: aload_0
    //   308: aload_1
    //   309: invokespecial 336	com/sleepycat/b/i/h/x:a	(Ljava/nio/channels/Channel;)V
    //   312: goto -203 -> 109
    //   315: aload_2
    //   316: astore_1
    //   317: aload_2
    //   318: iconst_0
    //   319: invokevirtual 405	java/nio/channels/SocketChannel:configureBlocking	(Z)Ljava/nio/channels/SelectableChannel;
    //   322: pop
    //   323: aload_2
    //   324: astore_1
    //   325: aload_2
    //   326: aload_0
    //   327: getfield 128	com/sleepycat/b/i/h/x:d	Ljava/nio/channels/Selector;
    //   330: iconst_1
    //   331: getstatic 52	com/sleepycat/b/i/h/x:m	I
    //   334: invokestatic 309	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   337: invokevirtual 535	java/nio/channels/SocketChannel:register	(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    //   340: pop
    //   341: goto -232 -> 109
    //   344: aload_0
    //   345: aload_1
    //   346: invokespecial 319	com/sleepycat/b/i/h/x:a	(Ljava/nio/channels/SelectionKey;)Ljava/lang/String;
    //   349: astore_2
    //   350: aload_2
    //   351: ifnull -242 -> 109
    //   354: aload_1
    //   355: invokevirtual 324	java/nio/channels/SelectionKey:cancel	()V
    //   358: aload_1
    //   359: invokevirtual 243	java/nio/channels/SelectionKey:channel	()Ljava/nio/channels/SelectableChannel;
    //   362: checkcast 245	java/nio/channels/SocketChannel
    //   365: astore 5
    //   367: aload_0
    //   368: getfield 97	com/sleepycat/b/i/h/x:g	Ljava/util/Map;
    //   371: aload_2
    //   372: invokeinterface 365 2 0
    //   377: checkcast 367	com/sleepycat/b/i/h/ad
    //   380: astore 6
    //   382: aload 6
    //   384: ifnonnull +139 -> 523
    //   387: aload_0
    //   388: aload_0
    //   389: getfield 91	com/sleepycat/b/i/h/x:f	I
    //   392: iconst_1
    //   393: iadd
    //   394: putfield 91	com/sleepycat/b/i/h/x:f	I
    //   397: aload 5
    //   399: getstatic 537	com/sleepycat/b/i/h/ac:d	Lcom/sleepycat/b/i/h/ac;
    //   402: invokevirtual 297	com/sleepycat/b/i/h/ac:a	()Ljava/nio/ByteBuffer;
    //   405: invokevirtual 299	java/nio/channels/SocketChannel:write	(Ljava/nio/ByteBuffer;)I
    //   408: pop
    //   409: aload_0
    //   410: aload 5
    //   412: invokespecial 336	com/sleepycat/b/i/h/x:a	(Ljava/nio/channels/Channel;)V
    //   415: aload_0
    //   416: getfield 159	com/sleepycat/b/i/h/x:i	Ljava/util/logging/Logger;
    //   419: aload_0
    //   420: getfield 107	com/sleepycat/b/i/h/x:l	Lcom/sleepycat/b/i/c/aj;
    //   423: aload_0
    //   424: getfield 171	com/sleepycat/b/i/h/x:j	Ljava/util/logging/Formatter;
    //   427: getstatic 454	java/util/logging/Level:INFO	Ljava/util/logging/Level;
    //   430: new 57	java/lang/StringBuilder
    //   433: dup
    //   434: ldc_w 539
    //   437: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   440: aload_2
    //   441: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   444: ldc_w 458
    //   447: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   450: aload_0
    //   451: getfield 97	com/sleepycat/b/i/h/x:g	Ljava/util/Map;
    //   454: invokeinterface 462 1 0
    //   459: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   462: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   465: invokestatic 264	com/sleepycat/b/p/w:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   468: goto -359 -> 109
    //   471: astore_1
    //   472: aload_0
    //   473: aload 5
    //   475: invokespecial 336	com/sleepycat/b/i/h/x:a	(Ljava/nio/channels/Channel;)V
    //   478: aload_0
    //   479: getfield 159	com/sleepycat/b/i/h/x:i	Ljava/util/logging/Logger;
    //   482: aload_0
    //   483: getfield 107	com/sleepycat/b/i/h/x:l	Lcom/sleepycat/b/i/c/aj;
    //   486: aload_0
    //   487: getfield 171	com/sleepycat/b/i/h/x:j	Ljava/util/logging/Formatter;
    //   490: getstatic 254	java/util/logging/Level:WARNING	Ljava/util/logging/Level;
    //   493: new 57	java/lang/StringBuilder
    //   496: dup
    //   497: ldc_w 541
    //   500: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   503: aload_2
    //   504: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   507: aload_1
    //   508: invokestatic 333	com/sleepycat/b/p/w:a	(Ljava/lang/Exception;)Ljava/lang/String;
    //   511: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   514: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   517: invokestatic 264	com/sleepycat/b/p/w:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   520: goto -411 -> 109
    //   523: aload 6
    //   525: invokevirtual 543	com/sleepycat/b/i/h/ad:b	()Z
    //   528: ifeq +96 -> 624
    //   531: getstatic 545	com/sleepycat/b/i/h/ac:b	Lcom/sleepycat/b/i/h/ac;
    //   534: astore_1
    //   535: aload_0
    //   536: getfield 159	com/sleepycat/b/i/h/x:i	Ljava/util/logging/Logger;
    //   539: aload_0
    //   540: getfield 107	com/sleepycat/b/i/h/x:l	Lcom/sleepycat/b/i/c/aj;
    //   543: aload_0
    //   544: getfield 171	com/sleepycat/b/i/h/x:j	Ljava/util/logging/Formatter;
    //   547: getstatic 424	java/util/logging/Level:FINE	Ljava/util/logging/Level;
    //   550: new 57	java/lang/StringBuilder
    //   553: dup
    //   554: ldc_w 547
    //   557: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   560: aload_1
    //   561: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   564: ldc_w 549
    //   567: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   570: aload 6
    //   572: getfield 416	com/sleepycat/b/i/h/ad:d	Ljava/lang/String;
    //   575: invokevirtual 72	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   578: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   581: invokestatic 264	com/sleepycat/b/p/w:a	(Ljava/util/logging/Logger;Lcom/sleepycat/b/c/ad;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    //   584: aload 5
    //   586: aload_1
    //   587: invokevirtual 297	com/sleepycat/b/i/h/ac:a	()Ljava/nio/ByteBuffer;
    //   590: invokevirtual 299	java/nio/channels/SocketChannel:write	(Ljava/nio/ByteBuffer;)I
    //   593: ifne +38 -> 631
    //   596: new 57	java/lang/StringBuilder
    //   599: dup
    //   600: ldc_w 551
    //   603: invokespecial 62	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   606: aload 5
    //   608: invokevirtual 408	java/nio/channels/SocketChannel:socket	()Ljava/net/Socket;
    //   611: invokevirtual 554	java/net/Socket:getSendBufferSize	()I
    //   614: invokevirtual 81	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   617: invokevirtual 84	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   620: invokestatic 376	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   623: athrow
    //   624: getstatic 225	com/sleepycat/b/i/h/ac:a	Lcom/sleepycat/b/i/h/ac;
    //   627: astore_1
    //   628: goto -93 -> 535
    //   631: aload_1
    //   632: getstatic 225	com/sleepycat/b/i/h/ac:a	Lcom/sleepycat/b/i/h/ac;
    //   635: if_acmpne -526 -> 109
    //   638: aload 6
    //   640: aload 5
    //   642: invokevirtual 557	com/sleepycat/b/i/h/ad:d	(Ljava/nio/channels/SocketChannel;)V
    //   645: goto -536 -> 109
    //   648: aload_3
    //   649: invokeinterface 560 1 0
    //   654: goto -598 -> 56
    //   657: goto -497 -> 160
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	660	0	this	x
    //   129	42	1	localSelectionKey	SelectionKey
    //   184	10	1	localObject1	Object
    //   195	40	1	localIOException1	IOException
    //   240	119	1	localObject2	Object
    //   471	37	1	localIOException2	IOException
    //   534	98	1	localac	ac
    //   248	14	2	localSocketChannel1	SocketChannel
    //   268	58	2	localIOException3	IOException
    //   349	155	2	str	String
    //   100	549	3	localSet	Set
    //   107	13	4	localIterator	Iterator
    //   365	276	5	localSocketChannel2	SocketChannel
    //   380	259	6	localad	ad
    //   63	26	7	n	int
    //   72	3	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   56	74	184	finally
    //   93	109	184	finally
    //   109	160	184	finally
    //   160	184	184	finally
    //   196	239	184	finally
    //   241	249	184	finally
    //   251	258	184	finally
    //   260	265	184	finally
    //   269	312	184	finally
    //   317	323	184	finally
    //   325	341	184	finally
    //   344	350	184	finally
    //   354	382	184	finally
    //   387	468	184	finally
    //   472	520	184	finally
    //   523	535	184	finally
    //   535	624	184	finally
    //   624	628	184	finally
    //   631	645	184	finally
    //   648	654	184	finally
    //   56	74	195	java/io/IOException
    //   241	249	268	java/io/IOException
    //   251	258	268	java/io/IOException
    //   260	265	268	java/io/IOException
    //   317	323	268	java/io/IOException
    //   325	341	268	java/io/IOException
    //   387	468	471	java/io/IOException
    //   523	535	471	java/io/IOException
    //   535	624	471	java/io/IOException
    //   624	628	471	java/io/IOException
    //   631	645	471	java/io/IOException
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */