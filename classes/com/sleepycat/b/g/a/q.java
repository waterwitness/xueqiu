package com.sleepycat.b.g.a;

import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.h;
import com.sleepycat.b.g.ae;
import com.sleepycat.b.g.af;
import com.sleepycat.b.g.at;
import java.nio.ByteBuffer;

public class q<T extends at>
  extends c<T>
  implements m
{
  public T c;
  
  public q(af paramaf, T paramT)
  {
    super.a(paramaf);
    this.c = paramT;
  }
  
  q(Class<T> paramClass)
  {
    super(paramClass);
  }
  
  public static <T extends at> q<T> a(af paramaf, T paramT)
  {
    return new q(paramaf, paramT);
  }
  
  public static <T extends at> q<T> b(Class<T> paramClass)
  {
    return new q(paramClass);
  }
  
  public h a()
  {
    return null;
  }
  
  public final StringBuilder a(StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    this.c.a(paramStringBuilder, paramBoolean);
    return paramStringBuilder;
  }
  
  public void a(ad paramad, ae paramae, ByteBuffer paramByteBuffer)
  {
    this.c = c.a(this.a);
    this.c.a(paramByteBuffer, paramae.f);
  }
  
  public final void a(StringBuilder paramStringBuilder) {}
  
  public final void a(ByteBuffer paramByteBuffer)
  {
    this.c.a(paramByteBuffer);
  }
  
  public final boolean a(m paramm)
  {
    return this.c.a((at)paramm.h());
  }
  
  public final int d_()
  {
    return this.c.a();
  }
  
  public final long i()
  {
    return this.c.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\g\a\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */