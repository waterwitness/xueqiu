package com.sleepycat.b.n;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.p.aq;
import com.sleepycat.b.p.j;
import java.nio.ByteBuffer;

public abstract class ai
  implements at
{
  protected long a;
  protected aq b;
  public int c;
  private long d;
  
  public ai()
  {
    this.d = -1L;
  }
  
  ai(long paramLong1, long paramLong2, int paramInt)
  {
    this.a = paramLong1;
    this.b = new aq(System.currentTimeMillis());
    this.d = paramLong2;
    this.c = paramInt;
  }
  
  public int a()
  {
    return ar.a(this.a) + ar.a(this.b) + ar.a(this.d) + ar.a(this.c);
  }
  
  public void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<").append(c());
    paramStringBuilder.append(" id=\"").append(this.a);
    paramStringBuilder.append("\" time=\"").append(this.b);
    paramStringBuilder.append("\" master=\"").append(this.c);
    paramStringBuilder.append("\">");
    paramStringBuilder.append(j.g(this.d));
    paramStringBuilder.append("</").append(c()).append(">");
  }
  
  public void a(ByteBuffer paramByteBuffer)
  {
    ar.c(paramByteBuffer, this.a);
    ar.a(paramByteBuffer, this.b);
    ar.c(paramByteBuffer, this.d);
    ar.b(paramByteBuffer, this.c);
  }
  
  public void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 6) {}
    for (boolean bool = true;; bool = false)
    {
      this.a = ar.b(paramByteBuffer, bool);
      this.b = ar.e(paramByteBuffer, bool);
      this.d = ar.b(paramByteBuffer, bool);
      if (paramInt >= 6) {
        this.c = ar.a(paramByteBuffer, false);
      }
      return;
    }
  }
  
  public final long b()
  {
    return this.a;
  }
  
  protected abstract String c();
  
  public final long d()
  {
    return this.a;
  }
  
  public final aq e()
  {
    return this.b;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\ai.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */