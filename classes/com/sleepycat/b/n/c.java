package com.sleepycat.b.n;

import com.sleepycat.b.an;
import com.sleepycat.b.c.ad;
import com.sleepycat.b.c.ao;
import com.sleepycat.b.c.i;
import com.sleepycat.b.p.ai;
import java.util.Set;

public final class c
  extends l
{
  private final l n;
  
  public c(ad paramad, l paraml)
  {
    super(paramad);
    this.n = paraml;
  }
  
  final an a(boolean paramBoolean, q paramq, long paramLong1, o paramo, h paramh, e parame, long paramLong2, long paramLong3, long paramLong4, i parami)
  {
    if (paramq.l_()) {
      return this.n.a(paramBoolean, paramq, paramLong1, paramo, paramh, parame, paramLong2, paramLong3, paramLong4, parami);
    }
    return null;
  }
  
  public final f a(Long paramLong, q paramq, o paramo)
  {
    if (paramq.l_()) {
      return this.n.a(paramLong, paramq, paramo);
    }
    return null;
  }
  
  final f a(Long paramLong, q paramq, o paramo, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramq.l_()) {
      return this.n.a(paramLong, paramq, paramo, paramBoolean1, paramBoolean2);
    }
    return new f(null, h.a, true);
  }
  
  public final o a(Long paramLong, q paramq)
  {
    return this.n.a(paramLong, paramq);
  }
  
  final Set<q> a(long paramLong, q paramq)
  {
    return this.n.a(paramLong, paramq);
  }
  
  public final Set<j> a(Long paramLong)
  {
    return this.n.a(paramLong);
  }
  
  final void a(ai paramai, boolean paramBoolean)
  {
    this.n.a(paramai, paramBoolean);
  }
  
  final boolean a(Long paramLong, q paramq, o paramo, boolean paramBoolean, ao paramao)
  {
    if (paramq.l_()) {
      return this.n.a(paramLong, paramq, paramo, paramBoolean, paramao);
    }
    return true;
  }
  
  final void b(long paramLong, q paramq)
  {
    if (paramq.l_()) {
      this.n.b(paramLong, paramq);
    }
  }
  
  public final boolean b(Long paramLong)
  {
    return this.n.b(paramLong);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */