package com.sleepycat.b.h;

import com.sleepycat.b.c.h;

public final class e
{
  h a;
  long b;
  boolean c;
  byte[] d;
  
  public e(h paramh, long paramLong, boolean paramBoolean, byte[] paramArrayOfByte)
  {
    this.a = paramh;
    this.b = paramLong;
    this.c = paramBoolean;
    this.d = paramArrayOfByte;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof e)) {}
    do
    {
      return false;
      paramObject = (e)paramObject;
    } while (this.b != ((e)paramObject).b);
    return true;
  }
  
  public final int hashCode()
  {
    return (int)this.b;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("db=").append(this.a);
    localStringBuilder.append(" nodeId=").append(this.b);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */