package com.sleepycat.b.l;

import com.sleepycat.b.a.g;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.i;
import com.sleepycat.b.c.p;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.at;
import com.sleepycat.b.n.a;
import com.sleepycat.b.n.h;
import com.sleepycat.b.n.m;
import com.sleepycat.b.n.o;
import com.sleepycat.b.n.q;
import java.nio.ByteBuffer;
import java.util.concurrent.atomic.AtomicInteger;

public final class aa
  extends y
{
  public final i a;
  public boolean b;
  
  public aa()
  {
    this.a = new i();
  }
  
  public aa(i parami)
  {
    super(new byte[0]);
    this.a = parami;
    this.b = false;
  }
  
  public final int a()
  {
    return super.a() + this.a.a() + 1;
  }
  
  protected final af a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean2) {
      return af.c;
    }
    return af.d;
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
    localStringBuilder.append(this.a.a(paramInt));
    return localStringBuilder.toString();
  }
  
  public final void a(i parami, long paramLong)
  {
    this.a.a(parami.c);
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
    return false;
  }
  
  protected final void b(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    this.a.a(paramStringBuilder, paramBoolean);
  }
  
  final boolean c(long paramLong)
  {
    boolean bool2 = false;
    Object localObject1 = this.a.c;
    a locala = a.a((ad)localObject1);
    localObject1 = ((ad)localObject1).q.e;
    boolean bool1 = bool2;
    try
    {
      if (locala.b(paramLong, o.b, false, (i)localObject1).a != h.f)
      {
        boolean bool3 = n();
        bool1 = bool2;
        if (bool3) {
          bool1 = true;
        }
      }
      return bool1;
    }
    finally
    {
      locala.a_(true);
    }
  }
  
  public final String d()
  {
    return "<mapLN>";
  }
  
  public final String e()
  {
    return "</mapLN>";
  }
  
  final void h()
  {
    this.b = true;
    this.a.b.a(null, true);
  }
  
  public final boolean i()
  {
    return this.b;
  }
  
  final boolean n()
  {
    if (this.a.c.j)
    {
      if (this.a.j.get() > 0)
      {
        i = 1;
        if (i != 0) {
          break label75;
        }
        ah localah = this.a.b;
        if ((localah.b == null) || (localah.b.a == null)) {
          break label70;
        }
      }
      label70:
      for (int i = 1;; i = 0)
      {
        if (i != 0) {
          break label75;
        }
        return true;
        i = 0;
        break;
      }
    }
    label75:
    return false;
  }
  
  public final void o()
  {
    this.a.l.a();
  }
  
  public final String toString()
  {
    return a(0, true);
  }
  
  public final long v_()
  {
    return ao.s;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\l\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */