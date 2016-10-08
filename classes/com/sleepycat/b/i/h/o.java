package com.sleepycat.b.i.h;

import com.sleepycat.b.i.c.b.x;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SocketChannel;

public class o
  implements ByteChannel
{
  public x a;
  protected final SocketChannel b;
  
  public o(SocketChannel paramSocketChannel)
  {
    this.b = paramSocketChannel;
    this.a = x.c;
  }
  
  public o(SocketChannel paramSocketChannel, x paramx)
  {
    this.b = paramSocketChannel;
    this.a = paramx;
  }
  
  public final SocketChannel a()
  {
    return this.b;
  }
  
  public void close()
  {
    this.b.close();
  }
  
  public boolean isOpen()
  {
    return this.b.isOpen();
  }
  
  public int read(ByteBuffer paramByteBuffer)
  {
    return this.b.read(paramByteBuffer);
  }
  
  public String toString()
  {
    if (this.a == null) {
      return this.b.toString();
    }
    return "(" + this.a + ")" + this.b;
  }
  
  public int write(ByteBuffer paramByteBuffer)
  {
    return this.b.write(paramByteBuffer);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\h\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */