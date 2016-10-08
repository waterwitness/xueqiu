package com.sleepycat.b.l.a;

import com.sleepycat.b.aa;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.ar;
import com.sleepycat.b.l.ac;
import com.sleepycat.b.l.e;
import com.sleepycat.b.l.j;
import com.sleepycat.b.l.w;
import java.io.PrintStream;
import java.nio.ByteBuffer;

public final class b
  extends j
{
  e a = new e();
  private byte[] b;
  
  public b()
  {
    a(null, w.b, 0, 0);
  }
  
  protected final long M()
  {
    long l1 = 0L;
    long l4 = super.M();
    long l3;
    if (this.a != null)
    {
      l3 = ao.a(this.a.c.length);
      l2 = l3;
      if (this.a.a != null) {
        l1 = this.a.a.v_();
      }
    }
    for (long l2 = l3;; l2 = 0L)
    {
      System.out.format("DIN: %d dkey: %d ln: %d %n", new Object[] { Long.valueOf(l4), Long.valueOf(l2), Long.valueOf(l1) });
      return l4 + l2 + l1;
    }
  }
  
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
    if (paramBoolean)
    {
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
      localStringBuilder.append("<din>");
      localStringBuilder.append('\n');
    }
    localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
    localStringBuilder.append("<dupkey>");
    String str;
    if (this.b == null)
    {
      str = "";
      localStringBuilder.append(str);
      localStringBuilder.append("</dupkey>");
      localStringBuilder.append('\n');
      if (this.a != null) {
        break label191;
      }
      localStringBuilder.append("                                                                                                                                ".substring(0, paramInt + 2));
      localStringBuilder.append("<dupCountLN/>");
    }
    for (;;)
    {
      localStringBuilder.append('\n');
      localStringBuilder.append(super.a(paramInt, false));
      if (paramBoolean)
      {
        localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
        localStringBuilder.append("</din>");
      }
      return localStringBuilder.toString();
      str = w.a(this.b, 0);
      break;
      label191:
      localStringBuilder.append(this.a.a(paramInt + 4));
    }
  }
  
  protected final void a(StringBuilder paramStringBuilder)
  {
    super.a(paramStringBuilder);
    paramStringBuilder.append(w.a(this.b, 0));
    if (this.a != null) {
      this.a.a(paramStringBuilder, true);
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    throw aa.b();
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    int i = 1;
    boolean bool;
    if (paramInt < 6)
    {
      bool = true;
      super.a(paramByteBuffer, paramInt);
      this.b = ar.c(paramByteBuffer, bool);
      if ((paramByteBuffer.get() & 0x1) == 0) {
        break label56;
      }
    }
    for (;;)
    {
      if (i == 0) {
        break label61;
      }
      this.a.a(paramByteBuffer, paramInt);
      return;
      bool = false;
      break;
      label56:
      i = 0;
    }
    label61:
    this.a = null;
  }
  
  public final long c()
  {
    long l2 = super.c();
    long l1 = l2;
    if (this.a != null)
    {
      l2 += ao.a(this.a.c.length);
      l1 = l2;
      if (this.a.a != null) {
        l1 = l2 + this.a.a.v_();
      }
    }
    return l1;
  }
  
  protected final boolean j()
  {
    return true;
  }
  
  protected final long n()
  {
    return ao.E;
  }
  
  public final String toString()
  {
    return a(0, true);
  }
  
  public final String v()
  {
    return "<din>";
  }
  
  public final String w()
  {
    return "</din>";
  }
  
  public final af y()
  {
    return af.n;
  }
  
  public final String z()
  {
    return "DIN";
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */