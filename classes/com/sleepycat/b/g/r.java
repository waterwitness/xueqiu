package com.sleepycat.b.g;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ac;
import com.sleepycat.b.p.ae;
import com.sleepycat.b.p.z;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.util.concurrent.locks.ReentrantLock;

final class r
{
  private RandomAccessFile c = null;
  private RandomAccessFile d = null;
  private final ReentrantLock e = new ReentrantLock();
  private final byte[] f;
  private int g;
  private long h;
  private long i;
  
  static
  {
    if (!m.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  r(m paramm)
  {
    paramm = (m)localObject;
    if (m.a(this.b)) {
      paramm = new byte[m.b(this.b)];
    }
    this.f = paramm;
    this.g = 0;
    this.i = -1L;
  }
  
  /* Error */
  private RandomAccessFile a(long paramLong, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 41	com/sleepycat/b/g/r:c	Ljava/io/RandomAccessFile;
    //   4: ifnonnull +69 -> 73
    //   7: iload_3
    //   8: ifeq +10 -> 18
    //   11: aload_0
    //   12: getfield 48	com/sleepycat/b/g/r:e	Ljava/util/concurrent/locks/ReentrantLock;
    //   15: invokevirtual 68	java/util/concurrent/locks/ReentrantLock:lock	()V
    //   18: aload_0
    //   19: aload_0
    //   20: getfield 37	com/sleepycat/b/g/r:b	Lcom/sleepycat/b/g/m;
    //   23: lload_1
    //   24: aload_0
    //   25: getfield 37	com/sleepycat/b/g/r:b	Lcom/sleepycat/b/g/m;
    //   28: invokestatic 71	com/sleepycat/b/g/m:d	(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/g/q;
    //   31: invokestatic 74	com/sleepycat/b/g/m:a	(Lcom/sleepycat/b/g/m;JLcom/sleepycat/b/g/q;)Lcom/sleepycat/b/g/j;
    //   34: getfield 78	com/sleepycat/b/g/j:a	Ljava/io/RandomAccessFile;
    //   37: putfield 41	com/sleepycat/b/g/r:c	Ljava/io/RandomAccessFile;
    //   40: aload_0
    //   41: aload_0
    //   42: getfield 37	com/sleepycat/b/g/r:b	Lcom/sleepycat/b/g/m;
    //   45: lload_1
    //   46: aload_0
    //   47: getfield 37	com/sleepycat/b/g/r:b	Lcom/sleepycat/b/g/m;
    //   50: invokestatic 71	com/sleepycat/b/g/m:d	(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/g/q;
    //   53: invokestatic 74	com/sleepycat/b/g/m:a	(Lcom/sleepycat/b/g/m;JLcom/sleepycat/b/g/q;)Lcom/sleepycat/b/g/j;
    //   56: getfield 78	com/sleepycat/b/g/j:a	Ljava/io/RandomAccessFile;
    //   59: putfield 43	com/sleepycat/b/g/r:d	Ljava/io/RandomAccessFile;
    //   62: iload_3
    //   63: ifeq +10 -> 73
    //   66: aload_0
    //   67: getfield 48	com/sleepycat/b/g/r:e	Ljava/util/concurrent/locks/ReentrantLock;
    //   70: invokevirtual 81	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   73: aload_0
    //   74: getfield 41	com/sleepycat/b/g/r:c	Ljava/io/RandomAccessFile;
    //   77: areturn
    //   78: astore 4
    //   80: iload_3
    //   81: ifeq +10 -> 91
    //   84: aload_0
    //   85: getfield 48	com/sleepycat/b/g/r:e	Ljava/util/concurrent/locks/ReentrantLock;
    //   88: invokevirtual 81	java/util/concurrent/locks/ReentrantLock:unlock	()V
    //   91: aload 4
    //   93: athrow
    //   94: astore 4
    //   96: new 83	com/sleepycat/b/aa
    //   99: dup
    //   100: aload_0
    //   101: getfield 37	com/sleepycat/b/g/r:b	Lcom/sleepycat/b/g/m;
    //   104: invokestatic 86	com/sleepycat/b/g/m:c	(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/c/ad;
    //   107: getstatic 92	com/sleepycat/b/c/ac:m	Lcom/sleepycat/b/c/ac;
    //   110: aload 4
    //   112: invokespecial 95	com/sleepycat/b/aa:<init>	(Lcom/sleepycat/b/c/ad;Lcom/sleepycat/b/c/ac;Ljava/lang/Throwable;)V
    //   115: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	r
    //   0	116	1	paramLong	long
    //   0	116	3	paramBoolean	boolean
    //   78	14	4	localObject	Object
    //   94	17	4	localException	Exception
    // Exception table:
    //   from	to	target	type
    //   18	62	78	finally
    //   0	7	94	java/lang/Exception
    //   11	18	94	java/lang/Exception
    //   66	73	94	java/lang/Exception
    //   73	78	94	java/lang/Exception
    //   84	91	94	java/lang/Exception
    //   91	94	94	java/lang/Exception
  }
  
  private void b()
  {
    if ((!a) && (this.e.isHeldByCurrentThread())) {
      throw new AssertionError();
    }
    this.e.lock();
    try
    {
      c();
      return;
    }
    finally
    {
      this.e.unlock();
    }
  }
  
  /* Error */
  private void c()
  {
    // Byte code:
    //   0: getstatic 32	com/sleepycat/b/g/r:a	Z
    //   3: ifne +21 -> 24
    //   6: aload_0
    //   7: getfield 48	com/sleepycat/b/g/r:e	Ljava/util/concurrent/locks/ReentrantLock;
    //   10: invokevirtual 102	java/util/concurrent/locks/ReentrantLock:isHeldByCurrentThread	()Z
    //   13: ifne +11 -> 24
    //   16: new 104	java/lang/AssertionError
    //   19: dup
    //   20: invokespecial 105	java/lang/AssertionError:<init>	()V
    //   23: athrow
    //   24: aload_0
    //   25: getfield 56	com/sleepycat/b/g/r:f	[B
    //   28: astore_1
    //   29: aload_1
    //   30: monitorenter
    //   31: aload_0
    //   32: getfield 58	com/sleepycat/b/g/r:g	I
    //   35: ifne +6 -> 41
    //   38: aload_1
    //   39: monitorexit
    //   40: return
    //   41: aload_0
    //   42: aload_0
    //   43: getfield 62	com/sleepycat/b/g/r:i	J
    //   46: iconst_0
    //   47: invokespecial 98	com/sleepycat/b/g/r:a	(JZ)Ljava/io/RandomAccessFile;
    //   50: astore_2
    //   51: aload_2
    //   52: monitorenter
    //   53: aload_2
    //   54: aload_0
    //   55: getfield 112	com/sleepycat/b/g/r:h	J
    //   58: invokevirtual 118	java/io/RandomAccessFile:seek	(J)V
    //   61: aload_2
    //   62: aload_0
    //   63: getfield 56	com/sleepycat/b/g/r:f	[B
    //   66: iconst_0
    //   67: aload_0
    //   68: getfield 58	com/sleepycat/b/g/r:g	I
    //   71: invokevirtual 122	java/io/RandomAccessFile:write	([BII)V
    //   74: aload_0
    //   75: getfield 37	com/sleepycat/b/g/r:b	Lcom/sleepycat/b/g/m;
    //   78: getfield 126	com/sleepycat/b/g/m:P	Lcom/sleepycat/b/p/z;
    //   81: aload_0
    //   82: getfield 58	com/sleepycat/b/g/r:g	I
    //   85: i2l
    //   86: invokevirtual 130	com/sleepycat/b/p/z:b	(J)V
    //   89: aload_0
    //   90: getfield 37	com/sleepycat/b/g/r:b	Lcom/sleepycat/b/g/m;
    //   93: getfield 133	com/sleepycat/b/g/m:R	Lcom/sleepycat/b/p/z;
    //   96: invokevirtual 135	com/sleepycat/b/p/z:f	()V
    //   99: aload_0
    //   100: getfield 37	com/sleepycat/b/g/r:b	Lcom/sleepycat/b/g/m;
    //   103: getfield 138	com/sleepycat/b/g/m:A	Z
    //   106: ifeq +63 -> 169
    //   109: aload_2
    //   110: aload_0
    //   111: getfield 112	com/sleepycat/b/g/r:h	J
    //   114: invokevirtual 118	java/io/RandomAccessFile:seek	(J)V
    //   117: aload_2
    //   118: aload_0
    //   119: getfield 56	com/sleepycat/b/g/r:f	[B
    //   122: iconst_0
    //   123: aload_0
    //   124: getfield 58	com/sleepycat/b/g/r:g	I
    //   127: invokevirtual 142	java/io/RandomAccessFile:read	([BII)I
    //   130: pop
    //   131: aload_0
    //   132: getfield 58	com/sleepycat/b/g/r:g	I
    //   135: invokestatic 148	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   138: astore_3
    //   139: aload_3
    //   140: aload_0
    //   141: getfield 56	com/sleepycat/b/g/r:f	[B
    //   144: iconst_0
    //   145: aload_0
    //   146: getfield 58	com/sleepycat/b/g/r:g	I
    //   149: invokevirtual 152	java/nio/ByteBuffer:put	([BII)Ljava/nio/ByteBuffer;
    //   152: pop
    //   153: aload_3
    //   154: iconst_0
    //   155: invokevirtual 156	java/nio/ByteBuffer:position	(I)Ljava/nio/Buffer;
    //   158: pop
    //   159: aload_3
    //   160: aload_0
    //   161: getfield 112	com/sleepycat/b/g/r:h	J
    //   164: ldc -98
    //   166: invokestatic 161	com/sleepycat/b/g/m:a	(Ljava/nio/ByteBuffer;JLjava/lang/String;)V
    //   169: aload_2
    //   170: monitorexit
    //   171: aload_0
    //   172: iconst_0
    //   173: putfield 58	com/sleepycat/b/g/r:g	I
    //   176: aload_1
    //   177: monitorexit
    //   178: return
    //   179: astore_2
    //   180: aload_1
    //   181: monitorexit
    //   182: aload_2
    //   183: athrow
    //   184: astore_1
    //   185: new 163	com/sleepycat/b/at
    //   188: dup
    //   189: aload_0
    //   190: getfield 37	com/sleepycat/b/g/r:b	Lcom/sleepycat/b/g/m;
    //   193: invokestatic 86	com/sleepycat/b/g/m:c	(Lcom/sleepycat/b/g/m;)Lcom/sleepycat/b/c/ad;
    //   196: ldc -91
    //   198: aload_1
    //   199: invokespecial 168	com/sleepycat/b/at:<init>	(Lcom/sleepycat/b/c/ad;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   202: athrow
    //   203: astore_3
    //   204: aload_2
    //   205: monitorexit
    //   206: aload_3
    //   207: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	208	0	this	r
    //   184	15	1	localIOException	IOException
    //   179	26	2	localObject1	Object
    //   138	22	3	localByteBuffer	ByteBuffer
    //   203	4	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   31	40	179	finally
    //   41	53	179	finally
    //   171	178	179	finally
    //   180	182	179	finally
    //   206	208	179	finally
    //   24	31	184	java/io/IOException
    //   182	184	184	java/io/IOException
    //   53	169	203	finally
    //   169	171	203	finally
    //   204	206	203	finally
  }
  
  final void a()
  {
    RandomAccessFile localRandomAccessFile2 = null;
    this.e.lock();
    RandomAccessFile localRandomAccessFile1 = localRandomAccessFile2;
    try
    {
      if (this.c != null)
      {
        localRandomAccessFile1 = this.c;
        this.c = null;
      }
    }
    finally
    {
      label34:
      this.e.unlock();
    }
    try
    {
      localRandomAccessFile1.close();
      localRandomAccessFile1 = localRandomAccessFile2;
    }
    catch (IOException localIOException)
    {
      break label34;
      this.e.unlock();
    }
    if (this.d != null)
    {
      localRandomAccessFile2 = this.d;
      this.d = null;
      localRandomAccessFile2.close();
    }
    if (localRandomAccessFile1 != null) {
      throw localRandomAccessFile1;
    }
  }
  
  final boolean a(long paramLong1, byte[] paramArrayOfByte, long paramLong2, int paramInt1, int paramInt2)
  {
    if ((!a) && (this.e.isHeldByCurrentThread())) {
      throw new AssertionError();
    }
    int j = 0;
    if (j < 2)
    {
      for (;;)
      {
        try
        {
          if (this.i < paramLong1)
          {
            b();
            this.i = paramLong1;
          }
          synchronized (this.f)
          {
            if (m.b(this.b) - this.g < paramInt2)
            {
              k = 1;
              if (k == 0) {
                break label128;
              }
              this.b.S.f();
              throw ae.a;
            }
          }
        }
        catch (ae localae)
        {
          b();
          j += 1;
        }
        k = 0;
      }
      label128:
      if ((!a) && (this.i != paramLong1)) {
        throw new AssertionError();
      }
      int k = this.g;
      if (k == 0) {
        this.h = paramLong2;
      }
      if (k + this.h != paramLong2) {
        throw new aa(m.c(this.b), ac.m, "non-consecutive writes queued. qwPos=" + this.g + " write destOffset=" + paramLong2);
      }
      System.arraycopy(paramArrayOfByte, paramInt1, this.f, this.g, paramInt2);
      this.g += paramInt2;
      return true;
    }
    this.b.T.f();
    return false;
  }
  
  final boolean a(ByteBuffer paramByteBuffer, long paramLong1, long paramLong2)
  {
    int j = paramByteBuffer.position();
    int k = paramByteBuffer.limit();
    synchronized (this.f)
    {
      if (this.i != paramLong2) {
        return false;
      }
      if (this.g == 0) {
        return false;
      }
    }
    if ((paramLong1 < this.h) || (this.h + this.g <= paramLong1)) {
      return false;
    }
    j = Math.min((int)(this.g - (paramLong1 - this.h)), k - j);
    paramByteBuffer.put(this.f, (int)(paramLong1 - this.h), j);
    this.b.O.b(j);
    this.b.Q.f();
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */