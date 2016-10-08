package com.sleepycat.b.l;

import com.sleepycat.b.c.ao;
import com.sleepycat.b.d.b;
import java.util.concurrent.atomic.AtomicLong;

public final class n
  extends l
{
  private final byte[] b;
  private final short c;
  
  static
  {
    if (!l.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public n(int paramInt, short paramShort)
  {
    if ((!a) && (paramShort >= 255)) {
      throw new AssertionError();
    }
    this.c = ((short)(paramShort + 1));
    this.b = new byte[this.c * paramInt];
    paramShort = 0;
    while (paramShort < paramInt)
    {
      l locall = a(paramShort, null);
      if ((!a) && (locall != this)) {
        throw new AssertionError();
      }
      paramShort += 1;
    }
  }
  
  private byte[] b(int paramInt)
  {
    int i = paramInt * this.c;
    Object localObject;
    if (this.b[i] == Byte.MAX_VALUE)
    {
      localObject = null;
      return (byte[])localObject;
    }
    int j = this.b[i] + 128;
    byte[] arrayOfByte = new byte[j];
    paramInt = 1;
    for (;;)
    {
      localObject = arrayOfByte;
      if (paramInt > j) {
        break;
      }
      arrayOfByte[(paramInt - 1)] = this.b[(i + paramInt)];
      paramInt += 1;
    }
  }
  
  public final l a(int paramInt, byte[] paramArrayOfByte)
  {
    int i = paramInt * this.c;
    if (paramArrayOfByte == null) {
      this.b[i] = Byte.MAX_VALUE;
    }
    for (;;)
    {
      return this;
      if (paramArrayOfByte.length >= this.c)
      {
        int j = this.b.length / this.c;
        m localm = new m(j);
        i = 0;
        while (i < j)
        {
          l locall = localm.a(i, b(i));
          if ((!a) && (locall != localm)) {
            throw new AssertionError();
          }
          i += 1;
        }
        return localm.a(paramInt, paramArrayOfByte);
      }
      this.b[i] = ((byte)(paramArrayOfByte.length - 128));
      paramInt = 1;
      while (paramInt <= paramArrayOfByte.length)
      {
        this.b[(i + paramInt)] = paramArrayOfByte[(paramInt - 1)];
        paramInt += 1;
      }
    }
  }
  
  final void a(boolean paramBoolean, b paramb)
  {
    if (paramBoolean)
    {
      paramb.o.incrementAndGet();
      return;
    }
    paramb.o.decrementAndGet();
  }
  
  public final long b()
  {
    return ao.C + ao.a(this.b.length);
  }
  
  public final boolean c()
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */