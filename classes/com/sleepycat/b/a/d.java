package com.sleepycat.b.a;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class d
  implements at
{
  final List<ab> a;
  long b;
  int c;
  
  public d()
  {
    this.a = new ArrayList();
    this.b = -1L;
    this.c = 0;
  }
  
  public d(List<ab> paramList, long paramLong, int paramInt)
  {
    this.a = paramList;
    this.b = paramLong;
    this.c = paramInt;
  }
  
  public final int a()
  {
    int i = ar.a(this.b);
    int j = ar.a(this.c);
    int k = ar.a(this.a.size());
    Iterator localIterator = this.a.iterator();
    ab localab;
    int m;
    for (i = i + j + k; localIterator.hasNext(); i = ar.a(localab.d) + (i + j + k + m))
    {
      localab = (ab)localIterator.next();
      j = ar.a(localab.a);
      k = ar.a(localab.b);
      m = ar.a(localab.c);
    }
    return i;
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<CleanerLogSummary endFileNumAtLastAdjustment=\"0x").append(Long.toHexString(this.b));
    paramStringBuilder.append("\" initialAdjustments=\"").append(this.c);
    paramStringBuilder.append("\" recentLNSizesAndCounts=\"");
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      ab localab = (ab)localIterator.next();
      paramStringBuilder.append("Cor:");
      paramStringBuilder.append(localab.a);
      paramStringBuilder.append('/');
      paramStringBuilder.append(localab.b);
      paramStringBuilder.append("-Est:");
      paramStringBuilder.append(localab.c);
      paramStringBuilder.append('/');
      paramStringBuilder.append(localab.d);
      paramStringBuilder.append(' ');
    }
    paramStringBuilder.append("\">");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.c(paramByteBuffer, this.b);
    ar.b(paramByteBuffer, this.c);
    ar.b(paramByteBuffer, this.a.size());
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      ab localab = (ab)localIterator.next();
      ar.b(paramByteBuffer, localab.a);
      ar.b(paramByteBuffer, localab.b);
      ar.b(paramByteBuffer, localab.c);
      ar.b(paramByteBuffer, localab.d);
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    this.b = ar.g(paramByteBuffer);
    this.c = ar.d(paramByteBuffer);
    int i = ar.d(paramByteBuffer);
    paramInt = 0;
    while (paramInt < i)
    {
      int j = ar.d(paramByteBuffer);
      int k = ar.d(paramByteBuffer);
      int m = ar.d(paramByteBuffer);
      int n = ar.d(paramByteBuffer);
      this.a.add(new ab(j, k, m, n));
      paramInt += 1;
    }
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof d)) {}
    do
    {
      return false;
      paramObject = (d)paramObject;
    } while ((this.b != ((d)paramObject).b) || (this.c != ((d)paramObject).c) || (!this.a.equals(((d)paramObject).a)));
    return true;
  }
  
  public final int hashCode()
  {
    return (int)(this.b + this.c);
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    a(localStringBuilder, false);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */