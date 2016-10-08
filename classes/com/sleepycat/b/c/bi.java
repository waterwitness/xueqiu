package com.sleepycat.b.c;

import java.util.Collection;
import java.util.Iterator;

public abstract class bi<R, E>
{
  final Collection<E> a;
  
  public bi(Collection<E> paramCollection)
  {
    this.a = paramCollection;
  }
  
  protected abstract R a(E paramE);
  
  public final <S extends Collection<R>> S a(S paramS)
  {
    if (this.a == null) {}
    for (;;)
    {
      return paramS;
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext()) {
        paramS.add(a(localIterator.next()));
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\c\bi.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */