package com.sleepycat.b.n;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.p.aq;
import com.sleepycat.b.p.au;
import com.sleepycat.b.p.j;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class v
  implements at
{
  public au a;
  public long b;
  public Set<Long> c;
  private aq d;
  
  public v() {}
  
  public v(au paramau, long paramLong, Set<Long> paramSet)
  {
    this.a = paramau;
    this.b = paramLong;
    this.c = paramSet;
    this.d = new aq(System.currentTimeMillis());
  }
  
  public final int a()
  {
    int i = ar.a(this.a.c);
    int j = ar.a(this.b);
    int k = ar.a(this.d);
    int m = ar.a(this.c.size());
    Iterator localIterator = this.c.iterator();
    for (i = i + j + k + m; localIterator.hasNext(); i = ar.a(((Long)localIterator.next()).longValue()) + i) {}
    return i;
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append(" matchpointVLSN=").append(this.a.c);
    paramStringBuilder.append(" matchpointLSN=");
    paramStringBuilder.append(j.h(this.b));
    ArrayList localArrayList = new ArrayList(this.c);
    Collections.sort(localArrayList);
    paramStringBuilder.append(" activeTxnIds=").append(localArrayList);
    paramStringBuilder.append("\" time=\"").append(this.d);
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.c(paramByteBuffer, this.a.c);
    ar.c(paramByteBuffer, this.b);
    ar.a(paramByteBuffer, this.d);
    ar.b(paramByteBuffer, this.c.size());
    Iterator localIterator = this.c.iterator();
    while (localIterator.hasNext()) {
      ar.c(paramByteBuffer, ((Long)localIterator.next()).longValue());
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    paramInt = 0;
    this.a = new au(ar.g(paramByteBuffer));
    this.b = ar.g(paramByteBuffer);
    this.d = ar.e(paramByteBuffer, false);
    int i = ar.d(paramByteBuffer);
    this.c = new HashSet(i);
    while (paramInt < i)
    {
      this.c.add(Long.valueOf(ar.g(paramByteBuffer)));
      paramInt += 1;
    }
  }
  
  public final boolean a(at paramat)
  {
    if (!(paramat instanceof v)) {}
    do
    {
      return false;
      paramat = (v)paramat;
    } while ((!this.a.a(paramat.a)) || (this.b != paramat.b) || (!this.d.a(paramat.d)) || (!this.c.equals(paramat.c)));
    return true;
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    a(localStringBuilder, true);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */