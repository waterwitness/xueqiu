package com.sleepycat.b.g;

import com.sleepycat.b.p.aq;
import java.nio.ByteBuffer;
import java.util.Calendar;

public class l
  implements at
{
  long a;
  long b;
  public int c;
  private aq d;
  
  public l() {}
  
  l(long paramLong1, long paramLong2)
  {
    this.a = paramLong1;
    this.b = paramLong2;
    this.d = new aq(Calendar.getInstance().getTimeInMillis());
    this.c = 8;
  }
  
  public final int a()
  {
    return 24;
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<FileHeader num=\"0x");
    paramStringBuilder.append(Long.toHexString(this.a));
    paramStringBuilder.append("\" lastEntryInPrevFileOffset=\"0x");
    paramStringBuilder.append(Long.toHexString(this.b));
    paramStringBuilder.append("\" logVersion=\"0x");
    paramStringBuilder.append(Integer.toHexString(this.c));
    paramStringBuilder.append("\" time=\"").append(this.d);
    paramStringBuilder.append("\"/>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.b(paramByteBuffer, this.d.getTime());
    ar.a(paramByteBuffer, this.a);
    ar.b(paramByteBuffer, this.b);
    ar.a(paramByteBuffer, this.c);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    this.d = ar.e(paramByteBuffer, true);
    this.a = ar.a(paramByteBuffer);
    this.b = ar.f(paramByteBuffer);
    this.c = ar.c(paramByteBuffer);
  }
  
  public final boolean a(at paramat)
  {
    return false;
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */