package com.sleepycat.b.i;

import com.sleepycat.b.bc;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.c.b.ag;
import com.sleepycat.b.i.c.b.ai;
import com.sleepycat.b.i.c.b.ak;
import com.sleepycat.b.p.ac;
import com.sleepycat.b.p.z;
import java.util.concurrent.TimeUnit;

public final class ae
  implements bc
{
  public final int a;
  private final int b;
  
  public ae(long paramLong1, TimeUnit paramTimeUnit1, long paramLong2, TimeUnit paramTimeUnit2)
  {
    this.a = ac.a(paramLong1, paramTimeUnit1);
    this.b = ac.a(paramLong2, paramTimeUnit2);
  }
  
  public final long a(TimeUnit paramTimeUnit)
  {
    return ac.a(this.b, paramTimeUnit);
  }
  
  public final void a(ad paramad)
  {
    paramad = ((aj)paramad).am.e.d;
    long l2 = paramad.a();
    TimeUnit localTimeUnit = TimeUnit.MILLISECONDS;
    long l1 = ac.a(this.a, localTimeUnit);
    if (l2 > l1)
    {
      l2 = System.currentTimeMillis();
      paramad.a(paramad.i.a(Long.valueOf(l1)), this);
      paramad.e.f();
      paramad.f.b(System.currentTimeMillis() - l2);
    }
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
      paramObject = (ae)paramObject;
      if (this.a != ((ae)paramObject).a) {
        return false;
      }
    } while (this.b == ((ae)paramObject).b);
    return false;
  }
  
  public final int hashCode()
  {
    return (this.a + 31) * 31 + this.b;
  }
  
  public final String toString()
  {
    return "TimeConsistencyPolicy permissibleLag=" + this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */