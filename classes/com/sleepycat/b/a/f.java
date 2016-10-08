package com.sleepycat.b.a;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import java.nio.ByteBuffer;

public final class f
  implements at, Cloneable
{
  public int a;
  public int b;
  public int c;
  public int d;
  public int e;
  public int f;
  public int g;
  public int h;
  
  private f c()
  {
    try
    {
      f localf = (f)super.clone();
      return localf;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new IllegalStateException(localCloneNotSupportedException);
    }
  }
  
  public final int a()
  {
    return ar.a(this.a) + ar.a(this.b) + ar.a(this.c) + ar.a(this.d) + ar.a(this.e) + ar.a(this.f) + ar.a(this.g) + ar.a(this.h);
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<summary totalINCount=\"");
    paramStringBuilder.append(this.a);
    paramStringBuilder.append("\" totalINSize=\"");
    paramStringBuilder.append(this.b);
    paramStringBuilder.append("\" totalLNCount=\"");
    paramStringBuilder.append(this.c);
    paramStringBuilder.append("\" totalLNSize=\"");
    paramStringBuilder.append(this.d);
    paramStringBuilder.append("\" obsoleteINCount=\"");
    paramStringBuilder.append(this.e);
    paramStringBuilder.append("\" obsoleteLNCount=\"");
    paramStringBuilder.append(this.f);
    paramStringBuilder.append("\" obsoleteLNSize=\"");
    paramStringBuilder.append(this.g);
    paramStringBuilder.append("\" obsoleteLNSizeCounted=\"");
    paramStringBuilder.append(this.h);
    paramStringBuilder.append("\"/>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.b(paramByteBuffer, this.a);
    ar.b(paramByteBuffer, this.b);
    ar.b(paramByteBuffer, this.c);
    ar.b(paramByteBuffer, this.d);
    ar.b(paramByteBuffer, this.e);
    ar.b(paramByteBuffer, this.f);
    ar.b(paramByteBuffer, this.g);
    ar.b(paramByteBuffer, this.h);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    this.a = ar.d(paramByteBuffer);
    this.b = ar.d(paramByteBuffer);
    this.c = ar.d(paramByteBuffer);
    this.d = ar.d(paramByteBuffer);
    this.e = ar.d(paramByteBuffer);
    this.f = ar.d(paramByteBuffer);
    this.g = ar.d(paramByteBuffer);
    this.h = ar.d(paramByteBuffer);
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  public final long b()
  {
    return 0L;
  }
  
  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    a(localStringBuilder, true);
    return localStringBuilder.toString();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */