package com.sleepycat.b.n;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.h;
import com.sleepycat.b.c.i;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.l.w;

public final class ae
  implements Comparable<ae>
{
  private final i a;
  private final byte[] b;
  
  public ae(i parami, k<?> paramk)
  {
    this(parami, paramk.k());
  }
  
  private ae(i parami, byte[] paramArrayOfByte)
  {
    this.a = parami;
    this.b = paramArrayOfByte;
  }
  
  private int a(ae paramae)
  {
    int i = this.a.a.a(paramae.a.a);
    if (i != 0) {
      return i;
    }
    return w.a(this.b, paramae.b, this.a.p);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof ae)) {}
    while (a((ae)paramObject) != 0) {
      return false;
    }
    return true;
  }
  
  public final int hashCode()
  {
    throw aa.c("Hashing not supported");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\ae.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */