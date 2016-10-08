package com.snowballfinance.message.io.c;

import com.snowballfinance.message.io.c;
import com.snowballfinance.message.io.logger.Logger;
import com.snowballfinance.message.io.logger.LoggerFactory;
import java.io.IOException;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.channels.SocketChannel;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import rx.c.f;

public class d
  extends com.snowballfinance.message.io.a
{
  protected static final ConcurrentHashMap<String, d> b = new ConcurrentHashMap();
  private static final Logger j = LoggerFactory.getLogger(d.class);
  protected String c;
  protected int d = 0;
  protected long e;
  protected volatile long f = 0L;
  protected final SocketChannel g;
  final rx.i.a<Boolean> h = rx.i.a.k();
  public final ConcurrentHashMap<Long, rx.i.a<Boolean>> i = new ConcurrentHashMap();
  private final long k;
  private AtomicBoolean l = new AtomicBoolean(true);
  private final rx.i.a<Boolean> m = rx.i.a.k();
  
  public d(SocketChannel paramSocketChannel)
  {
    this.g = paramSocketChannel;
    this.k = 1800000L;
  }
  
  public static com.snowballfinance.message.io.b b(com.snowballfinance.message.io.b paramb)
  {
    com.snowballfinance.message.io.b localb = new com.snowballfinance.message.io.b();
    localb.h = System.currentTimeMillis();
    localb.b = 1;
    localb.c = false;
    localb.f = false;
    localb.e = false;
    localb.a = paramb.a;
    return localb;
  }
  
  public final rx.a<Boolean> a()
  {
    this.m.c().d(new f() {});
  }
  
  public final rx.a<Boolean> a(final com.snowballfinance.message.io.b paramb)
  {
    if (this.g.isConnected()) {}
    for (;;)
    {
      try
      {
        byte[] arrayOfByte = new byte[c.a(paramb) + 12];
        arrayOfByte[0] = 32;
        arrayOfByte[0] = ((byte)(arrayOfByte[0] | 0x3));
        if (!paramb.f) {
          break label356;
        }
        n = 1;
        arrayOfByte[1] = ((byte)(n << 7));
        int i1 = arrayOfByte[1];
        if (!paramb.e) {
          break label362;
        }
        n = 1;
        arrayOfByte[1] = ((byte)((byte)(n << 6) | i1));
        arrayOfByte[2] = ((byte)(paramb.b << 4));
        i1 = arrayOfByte[2];
        if (!paramb.c) {
          break label368;
        }
        n = 1;
        arrayOfByte[2] = ((byte)((byte)(n << 3) | i1));
        arrayOfByte[2] = ((byte)(arrayOfByte[2] | (byte)(paramb.d & 0x7)));
        com.snowballfinance.message.io.d.a(arrayOfByte, 4, paramb.a);
        com.snowballfinance.message.io.d.a(arrayOfByte, 8, arrayOfByte.length);
        if (c.a(paramb) <= 0)
        {
          arrayOfByte[3] = 0;
          localObject2 = ByteBuffer.wrap(arrayOfByte);
          n = 0;
          if (((ByteBuffer)localObject2).hasRemaining())
          {
            n += this.g.write((ByteBuffer)localObject2);
            continue;
          }
        }
        else
        {
          localObject2 = paramb.g;
          arrayOfByte[3] = ((byte)com.snowballfinance.message.io.d.a((byte[])localObject2, 0, localObject2.length));
          System.arraycopy(localObject2, 0, arrayOfByte, 12, localObject2.length);
          continue;
        }
        if (n != localException.length) {
          break label338;
        }
      }
      catch (Exception localException)
      {
        if (j.isDebugEnabled()) {
          j.warn(String.format("write %s error.", new Object[] { paramb }), localException);
        }
        return rx.a.b(Boolean.valueOf(false));
      }
      if (!paramb.c) {
        return rx.a.b(Boolean.valueOf(true));
      }
      Object localObject2 = rx.i.a.k();
      synchronized (this.i)
      {
        this.i.put(Long.valueOf(paramb.a), localObject2);
        ((rx.i.a)localObject2).c(new rx.c.b() {});
        ??? = ((rx.i.a)localObject2).c();
        return (rx.a<Boolean>)???;
      }
      label338:
      ??? = rx.a.b(Boolean.valueOf(false));
      return (rx.a<Boolean>)???;
      return rx.a.b(Boolean.valueOf(false));
      label356:
      int n = 0;
      continue;
      label362:
      n = 0;
      continue;
      label368:
      n = 0;
    }
  }
  
  public final boolean a(int paramInt)
  {
    if (paramInt > 512) {}
    for (;;)
    {
      try
      {
        this.e = System.currentTimeMillis();
        notifyAll();
        return true;
      }
      finally {}
      this.d = paramInt;
    }
  }
  
  public final com.snowballfinance.message.io.b b(int paramInt)
  {
    com.snowballfinance.message.io.b localb = new com.snowballfinance.message.io.b();
    localb.h = System.currentTimeMillis();
    localb.b = paramInt;
    localb.c = true;
    localb.f = false;
    localb.e = false;
    long l1 = this.f;
    this.f = (l1 + 1L);
    if (l1 > 2147483647L) {
      this.f = 1L;
    }
    localb.a = this.f;
    return localb;
  }
  
  public final d b(final String paramString)
  {
    this.c = paramString;
    this.m.c(new rx.c.b() {});
    b.put(paramString, this);
    return this;
  }
  
  public final String b()
  {
    return this.c;
  }
  
  public final int c()
  {
    return this.d;
  }
  
  public final void d()
  {
    if (this.l.compareAndSet(true, false))
    {
      this.m.a(Boolean.valueOf(true));
      this.m.a();
      this.d = 32;
      this.h.a(Boolean.valueOf(false));
      this.h.a();
      if (!this.g.isOpen()) {}
    }
    try
    {
      this.g.close();
      return;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
  }
  
  public String toString()
  {
    return String.format("%s[UUID:%s, TS:%3$tT.%3$tL]", new Object[] { this.g.socket().getRemoteSocketAddress(), this.c, Long.valueOf(this.e) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\c\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */