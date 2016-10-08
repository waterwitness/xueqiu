package com.sleepycat.b;

import com.sleepycat.b.p.au;
import java.io.Serializable;
import java.util.UUID;

public final class d
  implements Serializable, Comparable<d>
{
  public final UUID a;
  public final long b;
  
  public d(UUID paramUUID, long paramLong)
  {
    if (paramUUID == null) {
      throw aa.c("The UUID must not be null");
    }
    if (paramLong == au.a.c) {
      throw aa.c("The vlsn must not be null");
    }
    this.a = paramUUID;
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
      if (!(paramObject instanceof d)) {
        return false;
      }
      paramObject = (d)paramObject;
      if (this.a == null)
      {
        if (((d)paramObject).a != null) {
          return false;
        }
      }
      else if (!this.a.equals(((d)paramObject).a)) {
        return false;
      }
    } while (this.b == ((d)paramObject).b);
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
    return "UUID: " + this.a + " VLSN: " + this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */