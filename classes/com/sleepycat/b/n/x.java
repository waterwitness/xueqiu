package com.sleepycat.b.n;

import com.sleepycat.b.c.ao;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class x
  extends j
  implements e
{
  static
  {
    if (!x.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  public x()
  {
    super(null, null);
  }
  
  public final f a(o paramo, q paramq, boolean paramBoolean1, boolean paramBoolean2, ao paramao, int paramInt)
  {
    if ((this.a != null) && (this.a != paramq)) {
      return new i(new j(this)).a(paramo, paramq, paramBoolean1, paramBoolean2, paramao, paramInt);
    }
    if (this.a == null)
    {
      this.a = paramq;
      this.b = paramo;
      paramo = h.a;
    }
    for (;;)
    {
      return new f(this, paramo, false);
      paramo = this.b.b(paramo);
      if (paramo.g != null)
      {
        paramq = paramo.g;
        if ((!c) && (paramq == null)) {
          throw new AssertionError();
        }
        this.b = paramq;
        if (paramo.h)
        {
          paramo = h.c;
          continue;
        }
      }
      paramo = h.e;
    }
  }
  
  public final o a(q paramq)
  {
    if (paramq != this.a) {
      return null;
    }
    return this.b;
  }
  
  public final List<j> a()
  {
    return Collections.emptyList();
  }
  
  public final void a(q paramq, ao paramao, int paramInt) {}
  
  public final boolean a(q paramq, o paramo)
  {
    if (paramq == this.a)
    {
      if (paramo == this.b) {}
      while ((this.b != null) && (!this.b.b(paramo).h)) {
        return true;
      }
      return false;
    }
    return false;
  }
  
  public final Set<j> b()
  {
    HashSet localHashSet = new HashSet();
    if (this.a != null) {
      localHashSet.add(this);
    }
    return localHashSet;
  }
  
  public final Set<q> b(q paramq, ao paramao, int paramInt)
  {
    paramao = null;
    if (paramq == this.a)
    {
      this.a = null;
      this.b = null;
      paramao = Collections.emptySet();
    }
    return paramao;
  }
  
  public final void b(q paramq)
  {
    if (this.b.h) {
      if (this.b != o.d) {
        break label30;
      }
    }
    label30:
    for (paramq = o.c;; paramq = o.a)
    {
      this.b = paramq;
      return;
    }
  }
  
  public final int c()
  {
    return 0;
  }
  
  public final void c(q paramq, ao paramao, int paramInt)
  {
    if ((this.a != paramq) && (this.a.r))
    {
      this.a.u();
      this.a = null;
    }
  }
  
  public final int d()
  {
    if (this.a == null) {
      return 0;
    }
    return 1;
  }
  
  public final boolean e()
  {
    return true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(" ThinLockAddr:").append(System.identityHashCode(this));
    localStringBuilder.append(" Owner:");
    if (d() == 0) {
      localStringBuilder.append(" (none)");
    }
    for (;;)
    {
      localStringBuilder.append(" Waiters: (none)");
      return localStringBuilder.toString();
      localStringBuilder.append(this.a);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\n\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */