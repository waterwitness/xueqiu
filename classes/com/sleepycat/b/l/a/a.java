package com.sleepycat.b.l.a;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.l.w;
import java.nio.ByteBuffer;

public final class a
  extends com.sleepycat.b.l.a
  implements at
{
  private byte[] q;
  
  public final boolean T()
  {
    return true;
  }
  
  public final int a()
  {
    throw aa.b();
  }
  
  public final String a(int paramInt, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
    localStringBuilder.append("<dbin>");
    localStringBuilder.append('\n');
    localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
    localStringBuilder.append("<dupkey>");
    if (this.q == null) {}
    for (String str = "";; str = w.a(this.q, 0))
    {
      localStringBuilder.append(str);
      localStringBuilder.append("</dupkey>");
      localStringBuilder.append('\n');
      localStringBuilder.append(super.a(paramInt, false));
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder.append("</dbin>");
      return localStringBuilder.toString();
    }
  }
  
  protected final void a(StringBuilder paramStringBuilder)
  {
    super.a(paramStringBuilder);
    paramStringBuilder.append(w.a(this.q, 0));
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    throw aa.b();
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    super.a(paramByteBuffer, paramInt);
    if (paramInt < 6) {}
    for (boolean bool = true;; bool = false)
    {
      this.q = ar.c(paramByteBuffer, bool);
      return;
    }
  }
  
  protected final boolean j()
  {
    return true;
  }
  
  protected final long n()
  {
    return ao.F;
  }
  
  public final String v()
  {
    return "<dbin>";
  }
  
  public final String w()
  {
    return "</dbin>";
  }
  
  public final af y()
  {
    return af.o;
  }
  
  public final String z()
  {
    return "DBIN";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */