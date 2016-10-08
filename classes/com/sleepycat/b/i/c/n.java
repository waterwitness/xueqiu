package com.sleepycat.b.i.c;

import com.sleepycat.b.bc;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.c.b.ag;
import com.sleepycat.b.i.c.b.ai;
import com.sleepycat.b.p.ac;
import com.sleepycat.b.p.au;
import java.util.concurrent.TimeUnit;

public final class n
  implements bc
{
  private final au a;
  private final int b;
  
  public n(au paramau, long paramLong, TimeUnit paramTimeUnit)
  {
    this.a = paramau;
    this.b = ac.a(paramLong, paramTimeUnit);
  }
  
  public final long a(TimeUnit paramTimeUnit)
  {
    return ac.a(this.b, paramTimeUnit);
  }
  
  public final void a(ad paramad)
  {
    ((aj)paramad).am.e.d.a(this.a.c, this);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (n)paramObject;
        if (this.a != null) {
          break;
        }
      } while (((n)paramObject).a == null);
      return false;
    } while (this.a.a(((n)paramObject).a));
    return false;
  }
  
  public final int hashCode()
  {
    if (this.a == null) {}
    for (int i = 0;; i = this.a.hashCode()) {
      return i + 31;
    }
  }
  
  public final String toString()
  {
    return "PointConsistencyPolicy targetVLSN=" + this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\c\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */