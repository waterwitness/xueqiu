package com.sleepycat.b.i.h;

import com.sleepycat.b.aa;
import com.sleepycat.b.bn;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.m;
import com.sleepycat.b.i.c.an;
import com.sleepycat.b.i.c.b.x;
import com.sleepycat.b.p.ai;
import com.sleepycat.b.p.z;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.WritableByteChannel;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.Logger;

public abstract class a
{
  private static int e;
  protected final int A;
  public int B;
  public final x C;
  public final e D = new e((short)1001, b.class);
  public final e E = new e((short)1002, j.class);
  public final e F = new e((short)1003, c.class);
  public final e G = new e((short)1004, f.class);
  protected final ai H;
  protected final z I;
  protected final z J;
  protected final z K;
  protected final z L;
  protected final z M;
  protected final z N;
  public final z O;
  protected final Logger P;
  protected final Formatter Q;
  protected final ad R;
  private final Map<Short, e> a = new HashMap();
  private final int b;
  private final long c;
  private final boolean d;
  private final ByteBuffer f = ByteBuffer.allocate(e);
  private final ByteBuffer g = ByteBuffer.allocate(e);
  protected final ByteBuffer z = ByteBuffer.allocate(6);
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      S = bool;
      e = 16384;
      return;
    }
  }
  
  public a(x paramx, int paramInt1, int paramInt2, ad paramad)
  {
    this.C = paramx;
    this.A = paramInt1;
    this.B = paramInt2;
    this.R = paramad;
    e locale1;
    e locale2;
    e locale3;
    if (paramad != null)
    {
      this.P = com.sleepycat.b.p.w.a(getClass());
      this.Q = new w(paramx);
      this.H = new ai("BinaryProtocol", "Network traffic due to the replication stream.");
      this.I = new z(this.H, l.a);
      this.J = new z(this.H, l.b);
      this.K = new z(this.H, l.c);
      this.L = new z(this.H, l.d);
      this.M = new z(this.H, l.e);
      this.N = new z(this.H, l.f);
      this.O = new z(this.H, l.k);
      paramx = this.D;
      locale1 = this.E;
      locale2 = this.F;
      locale3 = this.G;
      paramInt1 = i;
    }
    for (;;)
    {
      if (paramInt1 >= 4) {
        break label426;
      }
      e locale4 = new e[] { paramx, locale1, locale2, locale3 }[paramInt1];
      if (this.a.put(Short.valueOf(locale4.a), locale4) != null)
      {
        throw aa.c("Duplicate op: " + locale4.a);
        this.P = com.sleepycat.b.p.w.b(getClass());
        break;
      }
      paramInt1 += 1;
    }
    label426:
    this.b = this.a.size();
    if (paramad != null)
    {
      paramx = paramad.u;
      long l2 = paramx.a(an.l);
      long l1 = l2;
      if (l2 == 0L) {
        l1 = paramad.n.ac.a >> 1;
      }
      this.c = l1;
      this.d = paramx.a(an.ah);
      return;
    }
    this.c = 1048576L;
    this.d = true;
  }
  
  private void a(d paramd, WritableByteChannel paramWritableByteChannel, x paramx)
  {
    ByteBuffer localByteBuffer = paramd.b();
    this.M.b(localByteBuffer.limit() + 6 - localByteBuffer.position());
    this.N.f();
    long l = System.nanoTime();
    while (localByteBuffer.remaining() > 0) {
      if (paramWritableByteChannel.write(localByteBuffer) == 0) {
        Thread.yield();
      }
    }
    this.J.b(System.nanoTime() - l);
    if (this.P.isLoggable(Level.FINER))
    {
      if (paramx != x.c) {
        break label150;
      }
      com.sleepycat.b.p.w.a(this.P, this.R, this.Q, Level.FINER, "Sent " + paramd + " to " + paramWritableByteChannel);
    }
    for (;;)
    {
      localByteBuffer.rewind();
      return;
      label150:
      com.sleepycat.b.p.w.a(this.P, this.R, this.Q, Level.FINER, "Sent to " + paramx.a + ": " + paramd);
    }
  }
  
  private void a(ReadableByteChannel paramReadableByteChannel, ByteBuffer paramByteBuffer)
  {
    long l = System.nanoTime();
    if ((!S) && (paramByteBuffer.position() != 0)) {
      throw new AssertionError();
    }
    while (paramByteBuffer.position() < paramByteBuffer.limit()) {
      if (paramReadableByteChannel.read(paramByteBuffer) <= 0) {
        throw new IOException("Expected bytes: " + paramByteBuffer.limit() + " read bytes: " + paramByteBuffer.position());
      }
    }
    this.I.b(System.nanoTime() - l);
    paramByteBuffer.flip();
  }
  
  private byte[] b(String paramString)
  {
    if (this.d) {
      return paramString.getBytes();
    }
    return com.sleepycat.d.b.a(paramString);
  }
  
  public final int a(String paramString)
  {
    return b(paramString).length + 4;
  }
  
  /* Error */
  public final d a(ReadableByteChannel paramReadableByteChannel)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: aload_0
    //   3: getfield 67	com/sleepycat/b/i/h/a:z	Ljava/nio/ByteBuffer;
    //   6: invokespecial 382	com/sleepycat/b/i/h/a:a	(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    //   9: aload_0
    //   10: getfield 67	com/sleepycat/b/i/h/a:z	Ljava/nio/ByteBuffer;
    //   13: invokestatic 387	com/sleepycat/b/g/ar:b	(Ljava/nio/ByteBuffer;)S
    //   16: istore_2
    //   17: aload_0
    //   18: getfield 72	com/sleepycat/b/i/h/a:a	Ljava/util/Map;
    //   21: iload_2
    //   22: invokestatic 179	java/lang/Short:valueOf	(S)Ljava/lang/Short;
    //   25: invokeinterface 391 2 0
    //   30: checkcast 74	com/sleepycat/b/i/h/e
    //   33: astore_3
    //   34: aload_3
    //   35: ifnonnull +54 -> 89
    //   38: aload_0
    //   39: getfield 105	com/sleepycat/b/i/h/a:R	Lcom/sleepycat/b/c/ad;
    //   42: new 187	java/lang/StringBuilder
    //   45: dup
    //   46: ldc_w 393
    //   49: invokespecial 192	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   52: iload_2
    //   53: invokevirtual 196	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   56: ldc_w 395
    //   59: invokevirtual 328	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: aload_0
    //   63: getfield 72	com/sleepycat/b/i/h/a:a	Ljava/util/Map;
    //   66: invokeinterface 399 1 0
    //   71: invokeinterface 405 1 0
    //   76: invokestatic 410	java/util/Arrays:toString	([Ljava/lang/Object;)Ljava/lang/String;
    //   79: invokevirtual 328	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   82: invokevirtual 200	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   85: invokestatic 413	com/sleepycat/b/aa:a	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   88: athrow
    //   89: aload_3
    //   90: getfield 416	com/sleepycat/b/i/h/e:b	Ljava/lang/reflect/Constructor;
    //   93: astore 4
    //   95: aload_0
    //   96: getfield 67	com/sleepycat/b/i/h/a:z	Ljava/nio/ByteBuffer;
    //   99: invokestatic 418	com/sleepycat/b/g/ar:c	(Ljava/nio/ByteBuffer;)I
    //   102: istore 5
    //   104: aload_0
    //   105: getfield 154	com/sleepycat/b/i/h/a:K	Lcom/sleepycat/b/p/z;
    //   108: iload 5
    //   110: bipush 6
    //   112: iadd
    //   113: i2l
    //   114: invokevirtual 280	com/sleepycat/b/p/z:b	(J)V
    //   117: aload_0
    //   118: getfield 158	com/sleepycat/b/i/h/a:L	Lcom/sleepycat/b/p/z;
    //   121: invokevirtual 282	com/sleepycat/b/p/z:f	()V
    //   124: iload 5
    //   126: ifle +159 -> 285
    //   129: iload 5
    //   131: i2l
    //   132: aload_0
    //   133: getfield 246	com/sleepycat/b/i/h/a:c	J
    //   136: lcmp
    //   137: ifle +71 -> 208
    //   140: new 187	java/lang/StringBuilder
    //   143: dup
    //   144: ldc_w 420
    //   147: invokespecial 192	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   150: aload_3
    //   151: invokevirtual 323	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   154: ldc_w 422
    //   157: invokevirtual 328	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   160: iload 5
    //   162: invokevirtual 196	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   165: ldc_w 424
    //   168: invokevirtual 328	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: aload_0
    //   172: getfield 246	com/sleepycat/b/i/h/a:c	J
    //   175: invokevirtual 427	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   178: ldc_w 429
    //   181: invokevirtual 328	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: invokevirtual 200	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: invokestatic 205	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   190: athrow
    //   191: astore_1
    //   192: aload_1
    //   193: invokestatic 432	com/sleepycat/b/aa:a	(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   196: athrow
    //   197: astore_1
    //   198: aload_0
    //   199: getfield 67	com/sleepycat/b/i/h/a:z	Ljava/nio/ByteBuffer;
    //   202: invokevirtual 435	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   205: pop
    //   206: aload_1
    //   207: athrow
    //   208: iload 5
    //   210: getstatic 54	com/sleepycat/b/i/h/a:e	I
    //   213: if_icmpgt +63 -> 276
    //   216: aload_0
    //   217: getfield 95	com/sleepycat/b/i/h/a:f	Ljava/nio/ByteBuffer;
    //   220: invokevirtual 262	java/nio/ByteBuffer:rewind	()Ljava/nio/Buffer;
    //   223: pop
    //   224: aload_0
    //   225: getfield 95	com/sleepycat/b/i/h/a:f	Ljava/nio/ByteBuffer;
    //   228: iload 5
    //   230: invokevirtual 266	java/nio/ByteBuffer:limit	(I)Ljava/nio/Buffer;
    //   233: pop
    //   234: aload_0
    //   235: getfield 95	com/sleepycat/b/i/h/a:f	Ljava/nio/ByteBuffer;
    //   238: astore_3
    //   239: aload_0
    //   240: aload_1
    //   241: aload_3
    //   242: invokespecial 382	com/sleepycat/b/i/h/a:a	(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;)V
    //   245: aload 4
    //   247: iconst_2
    //   248: anewarray 4	java/lang/Object
    //   251: dup
    //   252: iconst_0
    //   253: aload_0
    //   254: aastore
    //   255: dup
    //   256: iconst_1
    //   257: aload_3
    //   258: aastore
    //   259: invokevirtual 441	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   262: checkcast 269	com/sleepycat/b/i/h/d
    //   265: astore_1
    //   266: aload_0
    //   267: getfield 67	com/sleepycat/b/i/h/a:z	Ljava/nio/ByteBuffer;
    //   270: invokevirtual 435	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   273: pop
    //   274: aload_1
    //   275: areturn
    //   276: iload 5
    //   278: invokestatic 65	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   281: astore_3
    //   282: goto -43 -> 239
    //   285: iload 5
    //   287: ifge +41 -> 328
    //   290: new 187	java/lang/StringBuilder
    //   293: dup
    //   294: ldc_w 420
    //   297: invokespecial 192	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   300: aload_3
    //   301: invokevirtual 323	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   304: ldc_w 422
    //   307: invokevirtual 328	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: iload 5
    //   312: invokevirtual 196	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   315: invokevirtual 200	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokestatic 205	com/sleepycat/b/aa:c	(Ljava/lang/String;)Lcom/sleepycat/b/aa;
    //   321: athrow
    //   322: astore_1
    //   323: aload_1
    //   324: invokestatic 432	com/sleepycat/b/aa:a	(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   327: athrow
    //   328: aload 4
    //   330: iconst_2
    //   331: anewarray 4	java/lang/Object
    //   334: dup
    //   335: iconst_0
    //   336: aload_0
    //   337: aastore
    //   338: dup
    //   339: iconst_1
    //   340: aconst_null
    //   341: aastore
    //   342: invokevirtual 441	java/lang/reflect/Constructor:newInstance	([Ljava/lang/Object;)Ljava/lang/Object;
    //   345: checkcast 269	com/sleepycat/b/i/h/d
    //   348: astore_1
    //   349: aload_0
    //   350: getfield 67	com/sleepycat/b/i/h/a:z	Ljava/nio/ByteBuffer;
    //   353: invokevirtual 435	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   356: pop
    //   357: aload_1
    //   358: areturn
    //   359: astore_1
    //   360: aload_1
    //   361: invokestatic 432	com/sleepycat/b/aa:a	(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   364: athrow
    //   365: astore_1
    //   366: aload_1
    //   367: invokestatic 432	com/sleepycat/b/aa:a	(Ljava/lang/Exception;)Lcom/sleepycat/b/aa;
    //   370: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	371	0	this	a
    //   0	371	1	paramReadableByteChannel	ReadableByteChannel
    //   16	37	2	s	short
    //   33	268	3	localObject	Object
    //   93	236	4	localConstructor	java.lang.reflect.Constructor
    //   102	209	5	i	int
    // Exception table:
    //   from	to	target	type
    //   89	124	191	java/lang/InstantiationException
    //   129	191	191	java/lang/InstantiationException
    //   208	239	191	java/lang/InstantiationException
    //   239	266	191	java/lang/InstantiationException
    //   276	282	191	java/lang/InstantiationException
    //   290	322	191	java/lang/InstantiationException
    //   328	349	191	java/lang/InstantiationException
    //   89	124	197	finally
    //   129	191	197	finally
    //   192	197	197	finally
    //   208	239	197	finally
    //   239	266	197	finally
    //   276	282	197	finally
    //   290	322	197	finally
    //   323	328	197	finally
    //   328	349	197	finally
    //   360	365	197	finally
    //   366	371	197	finally
    //   89	124	322	java/lang/IllegalAccessException
    //   129	191	322	java/lang/IllegalAccessException
    //   208	239	322	java/lang/IllegalAccessException
    //   239	266	322	java/lang/IllegalAccessException
    //   276	282	322	java/lang/IllegalAccessException
    //   290	322	322	java/lang/IllegalAccessException
    //   328	349	322	java/lang/IllegalAccessException
    //   89	124	359	java/lang/SecurityException
    //   129	191	359	java/lang/SecurityException
    //   208	239	359	java/lang/SecurityException
    //   239	266	359	java/lang/SecurityException
    //   276	282	359	java/lang/SecurityException
    //   290	322	359	java/lang/SecurityException
    //   328	349	359	java/lang/SecurityException
    //   89	124	365	java/lang/reflect/InvocationTargetException
    //   129	191	365	java/lang/reflect/InvocationTargetException
    //   208	239	365	java/lang/reflect/InvocationTargetException
    //   239	266	365	java/lang/reflect/InvocationTargetException
    //   276	282	365	java/lang/reflect/InvocationTargetException
    //   290	322	365	java/lang/reflect/InvocationTargetException
    //   328	349	365	java/lang/reflect/InvocationTargetException
  }
  
  public final <T extends d> T a(ReadableByteChannel paramReadableByteChannel, Class<T> paramClass)
  {
    paramReadableByteChannel = a(paramReadableByteChannel);
    if (paramClass.isAssignableFrom(paramReadableByteChannel.getClass())) {
      return paramReadableByteChannel;
    }
    throw new g(paramReadableByteChannel, paramClass);
  }
  
  public final ai a(bn parambn)
  {
    return this.H.a(parambn.c);
  }
  
  public final void a(d paramd, o paramo)
  {
    a(paramd, paramo, paramo.a);
  }
  
  public final void a(d paramd, WritableByteChannel paramWritableByteChannel)
  {
    a(paramd, paramWritableByteChannel, x.c);
  }
  
  public final void a(String paramString, ByteBuffer paramByteBuffer)
  {
    paramString = b(paramString);
    com.sleepycat.b.g.ar.a(paramByteBuffer, paramString.length);
    paramByteBuffer.put(paramString);
  }
  
  public final void a(e[] paramArrayOfe)
  {
    int j = paramArrayOfe.length;
    int i = 0;
    while (i < j)
    {
      e locale = paramArrayOfe[i];
      if (this.a.put(Short.valueOf(locale.a), locale) != null) {
        throw aa.c("Duplicate op: " + locale.a);
      }
      i += 1;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */