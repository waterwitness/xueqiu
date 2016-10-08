package com.sleepycat.b.p;

import com.sleepycat.b.aa;
import java.util.Iterator;
import java.util.NoSuchElementException;

final class as<T>
  implements Iterator<T>
{
  final ar<T> a;
  final T b;
  final T c;
  boolean d;
  boolean e;
  
  as(ar<T> paramar, T paramT1, T paramT2)
  {
    this.a = paramar;
    this.b = paramT1;
    this.c = paramT2;
    if (paramT1 == null)
    {
      bool1 = true;
      this.d = bool1;
      if (paramT2 != null) {
        break label56;
      }
    }
    label56:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      this.e = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public final boolean hasNext()
  {
    return (!this.d) || (!this.e);
  }
  
  public final T next()
  {
    if (!this.d)
    {
      this.d = true;
      return (T)this.b;
    }
    if (!this.e)
    {
      this.e = true;
      return (T)this.c;
    }
    throw new NoSuchElementException();
  }
  
  public final void remove()
  {
    if ((this.e) && (this.c != null))
    {
      ar.a(this.a);
      return;
    }
    if ((this.d) && (this.b != null))
    {
      ar.b(this.a);
      return;
    }
    aa.a(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\sleepycat\b\p\as.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */