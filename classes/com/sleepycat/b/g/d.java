package com.sleepycat.b.g;

import com.sleepycat.b.p.b;
import com.sleepycat.b.p.j;
import java.nio.ByteBuffer;
import java.util.zip.Checksum;

public final class d
{
  private Checksum a = b.a();
  
  public final void a()
  {
    this.a.reset();
  }
  
  final void a(long paramLong1, long paramLong2)
  {
    if (paramLong1 != this.a.getValue()) {
      throw new c("Location " + j.h(paramLong2) + " expected " + paramLong1 + " got " + this.a.getValue());
    }
  }
  
  public final void a(long paramLong1, long paramLong2, long paramLong3)
  {
    if (paramLong1 != this.a.getValue())
    {
      paramLong2 = j.a(paramLong2, paramLong3);
      throw new c("Location " + j.h(paramLong2) + " expected " + paramLong1 + " got " + this.a.getValue());
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramByteBuffer == null) {
      throw new c("null buffer given to checksum validation, probably  result of 0's in log file.");
    }
    int i = paramByteBuffer.position();
    a(paramByteBuffer.array(), i + paramByteBuffer.arrayOffset(), paramInt);
  }
  
  public final void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    this.a.update(paramArrayOfByte, paramInt1, paramInt2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */