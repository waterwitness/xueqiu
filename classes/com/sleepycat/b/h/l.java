package com.sleepycat.b.h;

import com.sleepycat.b.n.z;
import com.sleepycat.b.p.j;
import java.util.HashMap;
import java.util.Map;

public final class l
{
  public long a = -1L;
  public long b = -1L;
  public long c = -1L;
  public long d = -1L;
  public long e = -1L;
  public long f = -1L;
  public long g = -1L;
  public a h;
  public long i;
  public long j;
  public long k;
  public long l;
  public long m;
  public long n;
  public u o;
  public final Map<Long, z> p = new HashMap();
  
  private static void a(StringBuilder paramStringBuilder, String paramString, long paramLong)
  {
    if (paramLong != -1L) {
      paramStringBuilder.append(paramString).append(j.h(paramLong));
    }
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Recovery Info ");
    a(localStringBuilder, " firstActive=", this.c);
    a(localStringBuilder, " ckptStart=", this.d);
    a(localStringBuilder, " ckptEnd=", this.e);
    a(localStringBuilder, " lastUsed=", this.a);
    a(localStringBuilder, " nextAvail=", this.b);
    a(localStringBuilder, " useRoot=", this.f);
    localStringBuilder.append(this.h);
    localStringBuilder.append(" useMinReplicatedNodeId=").append(this.i);
    localStringBuilder.append(" useMaxNodeId=").append(this.j);
    localStringBuilder.append(" useMinReplicatedDbId=").append(this.k);
    localStringBuilder.append(" useMaxDbId=").append(this.l);
    localStringBuilder.append(" useMinReplicatedTxnId=").append(this.m);
    localStringBuilder.append(" useMaxTxnId=").append(this.n);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\h\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */