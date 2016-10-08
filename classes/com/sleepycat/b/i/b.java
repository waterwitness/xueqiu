package com.sleepycat.b.i;

import com.sleepycat.b.bc;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.d;
import com.sleepycat.b.i.c.aj;
import com.sleepycat.b.i.c.b.aa;
import com.sleepycat.b.i.c.b.ag;
import com.sleepycat.b.i.c.b.ai;
import com.sleepycat.b.p.ac;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

public final class b
  implements bc
{
  private final d a;
  private final int b;
  
  public final long a(TimeUnit paramTimeUnit)
  {
    return ac.a(this.b, paramTimeUnit);
  }
  
  public final void a(ad paramad)
  {
    paramad = (aj)paramad;
    if (!this.a.a.equals(paramad.am.b())) {
      throw new IllegalArgumentException("Replication environment mismatch. The UUID associated with the commit token is: " + this.a.a + " but this replica environment has the UUID: " + paramad.am.b());
    }
    paramad.am.e.d.a(this.a.b, this);
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
      if (!(paramObject instanceof b)) {
        return false;
      }
      paramObject = (b)paramObject;
      if (this.a == null)
      {
        if (((b)paramObject).a != null) {
          return false;
        }
      }
      else if (!this.a.equals(((b)paramObject).a)) {
        return false;
      }
    } while (this.b == ((b)paramObject).b);
    return false;
  }
  
  public final int hashCode()
  {
    if (this.a == null) {}
    for (int i = 0;; i = this.a.hashCode()) {
      return (i + 31) * 31 + this.b;
    }
  }
  
  public final String toString()
  {
    return "CommitPointConsistencyPolicy commitToken=" + this.a;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */