package rx.d.c.a;

public final class i<E>
  extends m<E>
{
  public i(int paramInt)
  {
    super(paramInt);
  }
  
  public final boolean isEmpty()
  {
    return this.f == this.h;
  }
  
  public final boolean offer(E paramE)
  {
    if (paramE == null) {
      throw new NullPointerException("Null is not a valid element");
    }
    Object[] arrayOfObject = this.d;
    long l1 = this.h;
    long l2 = a(l1);
    if (b(arrayOfObject, l2) != null)
    {
      if ((int)(l1 - this.f) == this.b) {
        return false;
      }
      while (b(arrayOfObject, l2) != null) {}
    }
    a(arrayOfObject, l2, paramE);
    d(1L + l1);
    return true;
  }
  
  public final E peek()
  {
    return (E)c(a(this.f));
  }
  
  public final E poll()
  {
    long l1 = this.i;
    long l2;
    do
    {
      l2 = this.f;
      if (l2 >= l1)
      {
        long l3 = this.h;
        if (l2 >= l3) {
          return null;
        }
        this.i = l3;
      }
    } while (!a(l2, 1L + l2));
    l1 = a(l2);
    Object[] arrayOfObject = this.d;
    Object localObject = a(arrayOfObject, l1);
    b(arrayOfObject, l1, null);
    return (E)localObject;
  }
  
  public final int size()
  {
    long l2;
    for (long l1 = this.f;; l1 = l2)
    {
      long l3 = this.h;
      l2 = this.f;
      if (l1 == l2) {
        return (int)(l3 - l2);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */