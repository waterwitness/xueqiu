package com.sleepycat.b.p;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import java.io.Serializable;
import java.nio.ByteBuffer;

public class au
  implements at, Serializable, Comparable<au>
{
  public static final au a = new au(-1L);
  public static final au b = new au(1L);
  public long c;
  
  public au() {}
  
  public au(long paramLong)
  {
    this.c = paramLong;
  }
  
  public final int a()
  {
    return 8;
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<vlsn v=\"").append(this).append("\">");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.b(paramByteBuffer, this.c);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    this.c = ar.f(paramByteBuffer);
  }
  
  public final boolean a(at paramat)
  {
    if (!(paramat instanceof au)) {}
    while (this.c != ((au)paramat).c) {
      return false;
    }
    return true;
  }
  
  public final boolean a(au paramau)
  {
    return (paramau != null) && (paramau.c == this.c);
  }
  
  public final int b(au paramau)
  {
    if ((this.c == a.c) && (paramau.c == a.c)) {}
    long l;
    do
    {
      return 0;
      if (this.c == a.c) {
        return -1;
      }
      if (paramau.c == a.c) {
        return 1;
      }
      l = paramau.c;
      if (this.c - l > 0L) {
        return 1;
      }
    } while (this.c == l);
    return -1;
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public final boolean c()
  {
    return this.c == a.c;
  }
  
  public final au d()
  {
    if (c()) {
      return b;
    }
    return new au(this.c + 1L);
  }
  
  public final au e()
  {
    if ((c()) || (this.c == 1L)) {
      return a;
    }
    return new au(this.c - 1L);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    while ((!(paramObject instanceof au)) || (((au)paramObject).c != this.c)) {
      return false;
    }
    return true;
  }
  
  public int hashCode()
  {
    return Long.valueOf(this.c).hashCode();
  }
  
  public String toString()
  {
    return String.format("%,d", new Object[] { Long.valueOf(this.c) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\au.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */