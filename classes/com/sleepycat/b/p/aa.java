package com.sleepycat.b.p;

import com.sleepycat.b.g.a;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import java.nio.ByteBuffer;

public class aa
  extends a
{
  private aq a;
  private int b;
  
  public final int a()
  {
    return ar.a(this.a) + ar.a(this.b);
  }
  
  public final void a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    paramStringBuilder.append("<Matchpoint");
    paramStringBuilder.append("\" time=\"").append(this.a);
    paramStringBuilder.append("\" master=\"").append(this.b);
    paramStringBuilder.append("\">");
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    ar.a(paramByteBuffer, this.a);
    ar.b(paramByteBuffer, this.b);
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    this.a = ar.e(paramByteBuffer, false);
    this.b = ar.a(paramByteBuffer, false);
  }
  
  public final boolean a(at paramat)
  {
    if (!(paramat instanceof aa)) {}
    do
    {
      return false;
      paramat = (aa)paramat;
    } while ((!paramat.a.a(this.a)) || (paramat.b != this.b));
    return true;
  }
  
  public final long b()
  {
    return 0L;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */