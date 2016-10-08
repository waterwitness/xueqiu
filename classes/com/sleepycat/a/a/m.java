package com.sleepycat.a.a;

import com.sleepycat.c.d;
import com.sleepycat.c.e;
import com.sleepycat.c.f;

public class m
  extends d
{
  public m() {}
  
  public m(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }
  
  public final m a(int paramInt)
  {
    d(paramInt ^ 0x80);
    return this;
  }
  
  public final m a(long paramLong)
  {
    c(0x8000000000000000 ^ paramLong);
    return this;
  }
  
  public final m a(String paramString)
  {
    if (paramString != null)
    {
      paramString = paramString.toCharArray();
      if (paramString.length != 0)
      {
        int i = f.a(paramString);
        e(i);
        f.a(paramString, this.b, this.a, paramString.length);
        f(i);
      }
    }
    for (;;)
    {
      d(0);
      return this;
      d(-1);
    }
  }
  
  public final m a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      d(i);
      return this;
    }
  }
  
  public final m b(int paramInt)
  {
    b(0x80000000 ^ paramInt);
    return this;
  }
  
  public final m b(long paramLong)
  {
    d((byte)(int)(paramLong >>> 24));
    d((byte)(int)(paramLong >>> 16));
    d((byte)(int)(paramLong >>> 8));
    d((byte)(int)paramLong);
    return this;
  }
  
  public final m c(int paramInt)
  {
    e(5);
    int i = this.a;
    f(e.a(this.b, i, paramInt) - i);
    return this;
  }
  
  final m c(long paramLong)
  {
    d((byte)(int)(paramLong >>> 56));
    d((byte)(int)(paramLong >>> 48));
    d((byte)(int)(paramLong >>> 40));
    d((byte)(int)(paramLong >>> 32));
    d((byte)(int)(paramLong >>> 24));
    d((byte)(int)(paramLong >>> 16));
    d((byte)(int)(paramLong >>> 8));
    d((byte)(int)paramLong);
    return this;
  }
  
  public final m d(long paramLong)
  {
    e(9);
    int i = this.a;
    f(e.a(this.b, i, paramLong) - i);
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\a\a\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */