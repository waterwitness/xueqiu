package com.sleepycat.b.n;

import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.q.a;
import java.nio.ByteBuffer;

public class ak
  extends ai
  implements at
{
  public a d;
  
  public final int a()
  {
    return ar.a(this.a) + ar.a(this.b) + ar.a(this.d);
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<TxnPrepare");
    paramStringBuilder.append(" id=\"").append(this.a);
    paramStringBuilder.append("\" time=\"").append(this.b);
    paramStringBuilder.append("\">");
    paramStringBuilder.append(this.d);
    paramStringBuilder.append("</TxnPrepare>");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.c(paramByteBuffer, this.a);
    ar.a(paramByteBuffer, this.b);
    ar.a(paramByteBuffer, this.d);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    if (paramInt < 6) {}
    for (boolean bool = true;; bool = false)
    {
      this.a = ar.b(paramByteBuffer, bool);
      this.b = ar.e(paramByteBuffer, bool);
      this.d = ar.i(paramByteBuffer);
      return;
    }
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  protected final String c()
  {
    return "TxnPrepare";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */