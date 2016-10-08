package com.sleepycat.b.c;

import com.sleepycat.b.aa;
import com.sleepycat.b.g.a;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import java.nio.ByteBuffer;

public final class h
  extends a
  implements Comparable<h>
{
  public long a;
  
  public h() {}
  
  public h(long paramLong)
  {
    this.a = paramLong;
  }
  
  public final int a()
  {
    return ar.a(this.a);
  }
  
  public final int a(h paramh)
  {
    if (paramh == null) {
      throw aa.c("null arg");
    }
    if (this.a == paramh.a) {
      return 0;
    }
    if (this.a > paramh.a) {
      return 1;
    }
    return -1;
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<dbId id=\"");
    paramStringBuilder.append(this.a);
    paramStringBuilder.append("\"/>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.c(paramByteBuffer, this.a);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 6)
    {
      this.a = ar.c(paramByteBuffer);
      return;
    }
    this.a = ar.g(paramByteBuffer);
  }
  
  public final boolean a(at paramat)
  {
    if (!(paramat instanceof h)) {}
    while (this.a != ((h)paramat).a) {
      return false;
    }
    return true;
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof h)) {
        return false;
      }
    } while (((h)paramObject).a == this.a);
    return false;
  }
  
  public final int hashCode()
  {
    return (int)this.a;
  }
  
  public final String toString()
  {
    return Long.toString(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */