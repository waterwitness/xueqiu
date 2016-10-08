package com.snowballfinance.message.io.c;

import com.snowballfinance.message.io.d;
import com.snowballfinance.message.io.logger.Logger;
import com.snowballfinance.message.io.logger.LoggerFactory;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Set;

public final class i
  extends Thread
{
  protected final Logger a = LoggerFactory.getLogger(getClass());
  rx.i.c<com.snowballfinance.message.io.b> b = rx.i.c.k();
  private SocketChannel c;
  private com.snowballfinance.message.io.a.b d;
  private Selector e;
  private boolean f = false;
  
  public i(SocketChannel paramSocketChannel)
  {
    super("ReadThread");
    this.c = paramSocketChannel;
    this.d = new com.snowballfinance.message.io.a.b(ByteBuffer.allocate(524288));
    this.e = Selector.open();
    paramSocketChannel.register(this.e, 1);
  }
  
  public final void interrupt()
  {
    super.interrupt();
    this.f = false;
  }
  
  public final void run()
  {
    int i;
    int j;
    try
    {
      while (this.f) {
        if (this.e.select() > 0)
        {
          Iterator localIterator = this.e.selectedKeys().iterator();
          Object localObject1;
          do
          {
            if (!localIterator.hasNext()) {
              break;
            }
            localObject1 = (SelectionKey)localIterator.next();
            localIterator.remove();
          } while ((!((SelectionKey)localObject1).isValid()) || (!((SelectionKey)localObject1).isReadable()));
          i = Integer.MAX_VALUE;
          while ((this.d.d > 0) && (i > 0))
          {
            k = this.d.d;
            int m = this.d.b;
            localObject1 = this.c;
            localb = this.d;
            j = localb.c + localb.d;
            ByteBuffer localByteBuffer = localb.a;
            i = j;
            if (j > localb.b) {
              i = localb.b;
            }
            localByteBuffer.limit(i);
            localb.a.position(localb.c);
            j = ((SocketChannel)localObject1).read(localb.a);
            if (j > 0)
            {
              localObject1 = this.d;
              ((com.snowballfinance.message.io.a.a)localObject1).b(((com.snowballfinance.message.io.a.a)localObject1).b() - j);
              if (j > 0) {
                ((com.snowballfinance.message.io.a.a)localObject1).a((((com.snowballfinance.message.io.a.a)localObject1).a() + j) % ((com.snowballfinance.message.io.a.a)localObject1).c());
              }
            }
            i = j;
            if (j >= k)
            {
              if (this.a.isDebugEnabled()) {
                this.a.debug(String.format("increase buffer to %d.", new Object[] { Integer.valueOf(m * 2) }));
              }
              this.d = com.snowballfinance.message.io.d.a.a(this.d, m * 2);
              i = j;
            }
          }
        }
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      this.b.a(localThrowable);
    }
    label315:
    com.snowballfinance.message.io.a.b localb = this.d;
    int k = localb.b - localb.d;
    Object localObject2;
    long l;
    if (k >= 12)
    {
      localObject2 = new byte[12];
      i = localb.d;
      j = localb.c;
      localb.a((byte[])localObject2, 12);
      localb.d = i;
      localb.c = j;
      l = d.a((byte[])localObject2, 8);
      if (k >= (int)l)
      {
        k = localb.b;
        j = (j + i) % k;
        if ((localb.a.hasArray()) && (j + l <= k))
        {
          localObject2 = com.snowballfinance.message.io.b.c.a(localb.a.array(), j);
          localb.d = ((int)(i + l));
        }
      }
    }
    for (;;)
    {
      if (localObject2 != null)
      {
        this.b.a(localObject2);
        break label315;
        localObject2 = new byte[(int)l];
        localb.a((byte[])localObject2, (int)l);
        localObject2 = com.snowballfinance.message.io.b.c.a((byte[])localObject2, 0);
        continue;
      }
      if ((this.d.b - this.d.d < 524288) && (this.d.b > 524288))
      {
        if (this.a.isDebugEnabled()) {
          this.a.debug(String.format("decrease buffer to %d.", new Object[] { Integer.valueOf(524288) }));
        }
        this.d = com.snowballfinance.message.io.d.a.a(this.d, 524288);
      }
      if (this.d.d > 0) {
        break;
      }
      throw new com.snowballfinance.message.io.b.a("too large fragment!");
      localObject2 = null;
    }
  }
  
  public final void start()
  {
    try
    {
      super.start();
      this.f = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\c\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */