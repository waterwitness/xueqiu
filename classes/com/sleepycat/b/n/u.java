package com.sleepycat.b.n;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.p.aq;
import com.sleepycat.b.p.j;
import java.nio.ByteBuffer;

public class u
  implements at
{
  public long a;
  public long b;
  private aq c;
  
  public u() {}
  
  public u(long paramLong1, long paramLong2)
  {
    this.a = paramLong1;
    this.b = paramLong2;
    this.c = new aq(System.currentTimeMillis());
  }
  
  public final int a()
  {
    return ar.a(this.a) + ar.a(this.b) + ar.a(this.c);
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append(" matchpointLSN=");
    paramStringBuilder.append(j.h(this.a));
    paramStringBuilder.append(" rollbackStartLSN=");
    paramStringBuilder.append(j.h(this.b));
    paramStringBuilder.append(" time=").append(this.c);
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.c(paramByteBuffer, this.a);
    ar.c(paramByteBuffer, this.b);
    ar.a(paramByteBuffer, this.c);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    this.a = ar.g(paramByteBuffer);
    this.b = ar.g(paramByteBuffer);
    this.c = ar.e(paramByteBuffer, false);
  }
  
  public final boolean a(at paramat)
  {
    if (!(paramat instanceof u)) {}
    do
    {
      return false;
      paramat = (u)paramat;
    } while ((this.b != paramat.b) || (this.a != paramat.a) || (!this.c.a(paramat.c)));
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */