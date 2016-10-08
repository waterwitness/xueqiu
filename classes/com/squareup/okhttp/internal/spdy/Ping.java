package com.squareup.okhttp.internal.spdy;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public final class Ping
{
  private final CountDownLatch latch = new CountDownLatch(1);
  private long received = -1L;
  private long sent = -1L;
  
  final void cancel()
  {
    if ((this.received != -1L) || (this.sent == -1L)) {
      throw new IllegalStateException();
    }
    this.received = (this.sent - 1L);
    this.latch.countDown();
  }
  
  final void receive()
  {
    if ((this.received != -1L) || (this.sent == -1L)) {
      throw new IllegalStateException();
    }
    this.received = System.nanoTime();
    this.latch.countDown();
  }
  
  public final long roundTripTime()
  {
    this.latch.await();
    return this.received - this.sent;
  }
  
  public final long roundTripTime(long paramLong, TimeUnit paramTimeUnit)
  {
    if (this.latch.await(paramLong, paramTimeUnit)) {
      return this.received - this.sent;
    }
    return -2L;
  }
  
  final void send()
  {
    if (this.sent != -1L) {
      throw new IllegalStateException();
    }
    this.sent = System.nanoTime();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\squareup\okhttp\internal\spdy\Ping.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */