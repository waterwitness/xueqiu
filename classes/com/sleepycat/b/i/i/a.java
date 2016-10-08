package com.sleepycat.b.i.i;

import com.sleepycat.a.a.l;
import com.sleepycat.a.a.m;
import com.sleepycat.b.aa;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;

final class a
  extends c
{
  private long f;
  private long g;
  
  a(au paramau, long paramLong1, long paramLong2)
  {
    super(j.d(paramLong1), 0, 1, 1, paramau);
    this.f = paramLong1;
    this.g = paramLong2;
    this.c = true;
  }
  
  static a a(l paraml)
  {
    return new a(new au(paraml.j()), paraml.j(), paraml.j());
  }
  
  public final long a(au paramau)
  {
    try
    {
      long l = this.g;
      return l;
    }
    finally
    {
      paramau = finally;
      throw paramau;
    }
  }
  
  final void a(m paramm)
  {
    paramm.d(this.a.c);
    paramm.d(this.f);
    paramm.d(this.g);
  }
  
  final boolean a()
  {
    return true;
  }
  
  final boolean a(au paramau, long paramLong)
  {
    try
    {
      throw aa.c("Shouldn't be called");
    }
    finally {}
  }
  
  final long b()
  {
    return j.d(this.f);
  }
  
  final long b(au paramau)
  {
    try
    {
      long l = this.f;
      return l;
    }
    finally
    {
      paramau = finally;
      throw paramau;
    }
  }
  
  final void b(au paramau, long paramLong)
  {
    throw aa.c("Shouldn't be called");
  }
  
  final long c()
  {
    return j.d(this.g);
  }
  
  public final long c(au paramau)
  {
    return -1L;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder("<GhostBucket vlsn=");
    localStringBuilder.append(this.a);
    localStringBuilder.append(" firstLsn=");
    localStringBuilder.append(j.h(this.f));
    localStringBuilder.append(" lastLsn=").append(j.h(this.g));
    localStringBuilder.append("/>");
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\i\i\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */