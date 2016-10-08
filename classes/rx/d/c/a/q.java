package rx.d.c.a;

import sun.misc.Unsafe;

public final class q<E>
  extends v<E>
{
  public q(int paramInt)
  {
    super(paramInt);
  }
  
  public final boolean offer(E paramE)
  {
    if (paramE == null) {
      throw new NullPointerException("Null is not a valid element");
    }
    Object[] arrayOfObject = this.d;
    if (this.h >= this.i)
    {
      if (b(arrayOfObject, a(this.h + this.e)) != null) {
        return false;
      }
      this.i = (this.h + this.e);
    }
    long l = a(this.h);
    this.h += 1L;
    b(arrayOfObject, l, paramE);
    return true;
  }
  
  public final E peek()
  {
    return (E)c(a(this.f));
  }
  
  public final E poll()
  {
    long l = a(this.f);
    Object[] arrayOfObject = this.d;
    Object localObject = b(arrayOfObject, l);
    if (localObject == null) {
      return null;
    }
    this.f += 1L;
    b(arrayOfObject, l, null);
    return (E)localObject;
  }
  
  public final int size()
  {
    long l2;
    for (long l1 = a();; l1 = l2)
    {
      long l3 = x.a.getLongVolatile(this, w.g);
      l2 = a();
      if (l1 == l2) {
        return (int)(l3 - l2);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */