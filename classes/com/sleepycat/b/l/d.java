package com.sleepycat.b.l;

import com.sleepycat.b.c.h;

public final class d
{
  protected byte[] a;
  public long b;
  public h c;
  
  d(long paramLong, h paramh, byte[] paramArrayOfByte)
  {
    this.b = paramLong;
    this.c = paramh;
    this.a = paramArrayOfByte;
  }
  
  public final byte[] a()
  {
    return this.a;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof d)) {
        return false;
      }
    } while (((d)paramObject).b == this.b);
    return false;
  }
  
  public final int hashCode()
  {
    return (int)this.b;
  }
  
  public final String toString()
  {
    return "idKey=" + w.a(this.a) + " nodeId = " + this.b + " db=" + this.c;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */