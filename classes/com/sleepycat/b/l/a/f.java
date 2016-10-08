package com.sleepycat.b.l.a;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.h;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.l.w;
import java.nio.ByteBuffer;

public class f
  implements at
{
  private long a;
  private byte[] b;
  private byte[] c;
  private final h d = new h();
  private boolean e;
  
  public final int a()
  {
    throw aa.b();
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<INDupDeleteEntry node=\"").append(this.a);
    paramStringBuilder.append("\">");
    paramStringBuilder.append(w.a(this.b, 0));
    paramStringBuilder.append(w.a(this.c, 0));
    this.d.a(paramStringBuilder, paramBoolean);
    paramStringBuilder.append("</INDupDeleteEntry>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    throw aa.b();
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    boolean bool2 = true;
    if (paramInt < 6)
    {
      bool1 = true;
      this.a = ar.b(paramByteBuffer, bool1);
      this.b = ar.c(paramByteBuffer, bool1);
      this.c = ar.c(paramByteBuffer, bool1);
      this.d.a(paramByteBuffer, paramInt);
      if (paramInt < 6) {
        break label67;
      }
    }
    label67:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.e = bool1;
      return;
      bool1 = false;
      break;
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


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\a\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */