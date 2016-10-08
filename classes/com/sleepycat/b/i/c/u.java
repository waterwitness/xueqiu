package com.sleepycat.b.i.c;

import com.sleepycat.b.p.au;

public final class u
{
  public final au a;
  public final long b;
  
  public u(au paramau, long paramLong)
  {
    this.a = paramau;
    this.b = paramLong;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (getClass() != paramObject.getClass()) {
        return false;
      }
      paramObject = (u)paramObject;
      if (this.a == null)
      {
        if (((u)paramObject).a != null) {
          return false;
        }
      }
      else if (!this.a.a(((u)paramObject).a)) {
        return false;
      }
    } while (this.b == ((u)paramObject).b);
    return false;
  }
  
  public final int hashCode()
  {
    if (this.a == null) {}
    for (int i = 0;; i = this.a.hashCode()) {
      return (i + 31) * 31 + (int)(this.b ^ this.b >>> 32);
    }
  }
  
  public final String toString()
  {
    return String.format("LocalCBVLSN:%,d at:%tc", new Object[] { Long.valueOf(this.a.c), Long.valueOf(this.b) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */