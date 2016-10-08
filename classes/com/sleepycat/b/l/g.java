package com.sleepycat.b.l;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import java.nio.ByteBuffer;

public final class g
  implements at
{
  public byte[] a;
  long b;
  byte c;
  
  public g()
  {
    this.b = -1L;
  }
  
  g(byte[] paramArrayOfByte, long paramLong, byte paramByte)
  {
    this.a = paramArrayOfByte;
    this.b = paramLong;
    this.c = paramByte;
  }
  
  public final int a()
  {
    return ar.a(this.a) + ar.a(this.b) + 1;
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append(w.a(this.a, 0));
    paramStringBuilder.append(com.sleepycat.b.p.j.g(this.b));
    j.a(paramStringBuilder, this.c);
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.a(paramByteBuffer, this.a);
    ar.c(paramByteBuffer, this.b);
    paramByteBuffer.put(this.c);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 6) {}
    for (boolean bool = true;; bool = false)
    {
      this.a = ar.c(paramByteBuffer, bool);
      this.b = ar.b(paramByteBuffer, bool);
      this.c = paramByteBuffer.get();
      return;
    }
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final long b()
  {
    return 0L;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */