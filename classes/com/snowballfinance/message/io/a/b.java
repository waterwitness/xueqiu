package com.snowballfinance.message.io.a;

import java.nio.ByteBuffer;

public final class b
  implements a
{
  public final ByteBuffer a;
  public final int b;
  public int c = 0;
  public int d = -1;
  
  public b(ByteBuffer paramByteBuffer)
  {
    this.b = paramByteBuffer.capacity();
    this.d = this.b;
    this.a = paramByteBuffer;
  }
  
  public final int a()
  {
    return this.c;
  }
  
  public final int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = (this.c + this.d) % this.b;
    int j = this.b - i;
    this.a.limit(this.b);
    this.a.position(i);
    if (j >= paramInt) {
      this.a.get(paramArrayOfByte, 0, paramInt);
    }
    for (;;)
    {
      this.d += paramInt;
      return paramInt;
      this.a.get(paramArrayOfByte, 0, j);
      this.a.position(0);
      this.a.get(paramArrayOfByte, j + 0, paramInt - j);
    }
  }
  
  public final a a(int paramInt)
  {
    this.c = paramInt;
    return this;
  }
  
  public final int b()
  {
    return this.d;
  }
  
  public final a b(int paramInt)
  {
    this.d = paramInt;
    return this;
  }
  
  public final int c()
  {
    return this.b;
  }
  
  public final String toString()
  {
    return "CycleChunkBuffer [position=" + this.c + ", remaining=" + this.d + ", capacity=" + this.b + "]";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\snowballfinance\message\io\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */