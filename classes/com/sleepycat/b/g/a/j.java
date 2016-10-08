package com.sleepycat.b.g.a;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.h;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.ar;
import java.nio.ByteBuffer;

public final class j<T extends com.sleepycat.b.l.j>
  extends c<T>
  implements i, m
{
  public T c;
  public h d;
  private long e;
  private long f;
  
  public j(T paramT)
  {
    super.a(paramT.y());
    this.c = paramT;
    this.d = paramT.i.a;
    this.e = paramT.m;
    this.f = paramT.h();
  }
  
  private j(Class<T> paramClass)
  {
    super(paramClass);
  }
  
  public static <T extends com.sleepycat.b.l.j> j<T> b(Class<T> paramClass)
  {
    return new j(paramClass);
  }
  
  public final h a()
  {
    return this.d;
  }
  
  public final StringBuilder a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    this.c.a(paramStringBuilder, paramBoolean);
    this.d.a(paramStringBuilder, paramBoolean);
    if (this.e != -1L)
    {
      paramStringBuilder.append("<prevFullLsn>");
      paramStringBuilder.append(com.sleepycat.b.p.j.h(this.e));
      paramStringBuilder.append("</prevFullLsn>");
    }
    if (this.f != -1L)
    {
      paramStringBuilder.append("<prevDeltaLsn>");
      paramStringBuilder.append(com.sleepycat.b.p.j.h(this.f));
      paramStringBuilder.append("</prevDeltaLsn>");
    }
    return paramStringBuilder;
  }
  
  public final void a(ad paramad, ae paramae, ByteBuffer paramByteBuffer)
  {
    int j = paramae.f;
    int i;
    if (j >= 6)
    {
      i = 1;
      if (i != 0)
      {
        this.d = new h();
        this.d.a(paramByteBuffer, j);
        this.e = ar.b(paramByteBuffer, false);
        if (j >= 8) {
          this.f = ar.g(paramByteBuffer);
        }
      }
      this.c = ((com.sleepycat.b.l.j)c.a(this.a));
      this.c.a(paramByteBuffer, j);
      if (i == 0)
      {
        this.d = new h();
        this.d.a(paramByteBuffer, j);
      }
      if (j > 0) {
        break label135;
      }
      this.e = -1L;
    }
    label135:
    do
    {
      return;
      i = 0;
      break;
      if (j == 1)
      {
        long l = ar.a(paramByteBuffer);
        if (l == 4294967295L)
        {
          this.e = -1L;
          return;
        }
        this.e = com.sleepycat.b.p.j.a(l, 0);
        return;
      }
    } while (i != 0);
    this.e = ar.b(paramByteBuffer, true);
  }
  
  public final void a(StringBuilder paramStringBuilder) {}
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    this.d.a(paramByteBuffer);
    ar.c(paramByteBuffer, this.e);
    ar.c(paramByteBuffer, this.f);
    this.c.a(paramByteBuffer);
  }
  
  public final boolean a(m paramm)
  {
    return false;
  }
  
  public final long b()
  {
    return this.e;
  }
  
  public final com.sleepycat.b.l.j b(com.sleepycat.b.c.i parami)
  {
    return this.c;
  }
  
  public final long c()
  {
    return this.f;
  }
  
  public final int d_()
  {
    return this.c.a() + this.d.a() + ar.a(this.e) + ar.a(this.f);
  }
  
  public final Object h()
  {
    return this.c;
  }
  
  public final long i()
  {
    return 0L;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */