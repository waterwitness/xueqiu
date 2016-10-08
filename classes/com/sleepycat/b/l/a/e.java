package com.sleepycat.b.l.a;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.h;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.l.w;
import java.nio.ByteBuffer;

public class e
  implements at
{
  private long a;
  private byte[] b;
  private final h c = new h();
  
  public final int a()
  {
    throw aa.b();
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<INDeleteEntry node=\"").append(this.a);
    paramStringBuilder.append("\">");
    paramStringBuilder.append(w.a(this.b, 0));
    this.c.a(paramStringBuilder, paramBoolean);
    paramStringBuilder.append("</INDeleteEntry>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    throw aa.b();
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 6) {}
    for (boolean bool = true;; bool = false)
    {
      this.a = ar.b(paramByteBuffer, bool);
      this.b = ar.c(paramByteBuffer, bool);
      this.c.a(paramByteBuffer, paramInt);
      return;
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
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */