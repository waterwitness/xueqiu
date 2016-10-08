package com.sleepycat.b.l.a;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.g.at;
import com.sleepycat.b.l.y;
import java.nio.ByteBuffer;

public final class d
  extends y
{
  private int a = 0;
  
  public final boolean T()
  {
    return true;
  }
  
  public final int a()
  {
    throw aa.b();
  }
  
  protected final af a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2) {
      return af.i;
    }
    return af.j;
  }
  
  public final String a(int paramInt, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (paramBoolean)
    {
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder.append("<dupCountLN>");
      localStringBuilder.append('\n');
    }
    localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
    localStringBuilder.append("<count v=\"").append(this.a).append("\"/>\n");
    localStringBuilder.append(super.a(paramInt, false));
    if (paramBoolean)
    {
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder.append("</dupCountLN>");
    }
    return localStringBuilder.toString();
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
      this.a = ar.a(paramByteBuffer, bool);
      return;
    }
  }
  
  public final boolean a(at paramat)
  {
    return false;
  }
  
  protected final void b(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    super.b(paramStringBuilder, paramBoolean);
    paramStringBuilder.append("<count v=\"").append(this.a).append("\"/>");
  }
  
  public final String d()
  {
    return "<dupCountLN>";
  }
  
  public final String e()
  {
    return "</dupCountLN>";
  }
  
  public final boolean i()
  {
    return false;
  }
  
  public final String toString()
  {
    return a(0, true);
  }
  
  public final long v_()
  {
    return ao.v;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */