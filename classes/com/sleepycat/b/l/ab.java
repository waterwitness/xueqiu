package com.sleepycat.b.l;

import com.sleepycat.b.c.h;
import com.sleepycat.b.c.i;
import com.sleepycat.b.g.a.k;
import com.sleepycat.b.g.a.o;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.at;
import com.sleepycat.b.g.av;
import com.sleepycat.b.n.z;
import java.nio.ByteBuffer;

public final class ab
  extends y
{
  public h a;
  private boolean b;
  
  public ab()
  {
    this.a = new h();
  }
  
  public ab(h paramh)
  {
    super(new byte[0]);
    this.a = paramh;
    this.b = false;
  }
  
  public final int a()
  {
    return super.a() + this.a.a() + 1;
  }
  
  final k<?> a(af paramaf, i parami, byte[] paramArrayOfByte, long paramLong, boolean paramBoolean, z paramz, av paramav)
  {
    return new o(paramaf, this, parami.a, paramArrayOfByte, paramLong, paramBoolean, paramz, paramav);
  }
  
  protected final af a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2) {
      return af.e;
    }
    return af.f;
  }
  
  public final String a(int paramInt, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(super.a(paramInt, paramBoolean));
    localStringBuilder.append('\n');
    localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
    localStringBuilder.append("<deleted val=\"").append(Boolean.toString(this.b));
    localStringBuilder.append("\">");
    localStringBuilder.append('\n');
    localStringBuilder.append("                                                                                                                                ".substring(0, paramInt));
    localStringBuilder.append("<id val=\"").append(this.a);
    localStringBuilder.append("\">");
    localStringBuilder.append('\n');
    return localStringBuilder.toString();
  }
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    super.a(paramByteBuffer);
    this.a.a(paramByteBuffer);
    if (this.b) {}
    for (int i = 1;; i = 0)
    {
      paramByteBuffer.put((byte)i);
      return;
    }
  }
  
  public final void a(ByteBuffer paramByteBuffer, int paramInt)
  {
    super.a(paramByteBuffer, paramInt);
    this.a.a(paramByteBuffer, paramInt);
    if ((paramByteBuffer.get() & 0x1) != 0) {}
    for (boolean bool = true;; bool = false)
    {
      this.b = bool;
      return;
    }
  }
  
  public final boolean a(at paramat)
  {
    if (!(paramat instanceof ab)) {}
    do
    {
      return false;
      paramat = (ab)paramat;
    } while ((!super.a(paramat)) || (!this.a.equals(paramat.a)) || (this.b != paramat.b));
    return true;
  }
  
  protected final void b(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    this.a.a(paramStringBuilder, true);
  }
  
  public final String d()
  {
    return "<nameLN>";
  }
  
  public final String e()
  {
    return "</nameLN>";
  }
  
  final void h()
  {
    this.b = true;
  }
  
  public final boolean i()
  {
    return this.b;
  }
  
  public final String toString()
  {
    return a(0, true);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */