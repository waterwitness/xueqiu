package rx.d.c.a;

import sun.misc.Unsafe;

public final class d<E>
  extends e<E>
{
  public d(int paramInt)
  {
    super(Math.max(2, paramInt));
  }
  
  public final boolean isEmpty()
  {
    return this.g == this.i;
  }
  
  public final boolean offer(E paramE)
  {
    if (paramE == null) {
      throw new NullPointerException("Null is not a valid element");
    }
    long[] arrayOfLong = this.e;
    long l3;
    do
    {
      long l1;
      long l2;
      do
      {
        l1 = this.i;
        l2 = d(l1);
        l3 = a(arrayOfLong, l2) - l1;
        if (l3 != 0L) {
          break;
        }
        l3 = l1 + 1L;
      } while (!x.a.compareAndSwapLong(this, h.h, l1, l3));
      a(a(l1), paramE);
      a(arrayOfLong, l2, l3);
      return true;
    } while (l3 >= 0L);
    return false;
  }
  
  public final E peek()
  {
    return (E)b(a(this.g));
  }
  
  public final E poll()
  {
    long[] arrayOfLong = this.e;
    long l3;
    do
    {
      long l1;
      long l2;
      do
      {
        l1 = this.g;
        l2 = d(l1);
        l3 = a(arrayOfLong, l2) - (1L + l1);
        if (l3 != 0L) {
          break;
        }
      } while (!x.a.compareAndSwapLong(this, e.f, l1, l1 + 1L));
      l3 = a(l1);
      Object localObject = b(l3);
      a(l3, null);
      a(arrayOfLong, l2, this.b + l1);
      return (E)localObject;
    } while (l3 >= 0L);
    return null;
  }
  
  public final int size()
  {
    long l2;
    for (long l1 = this.g;; l1 = l2)
    {
      long l3 = this.i;
      l2 = this.g;
      if (l1 == l2) {
        return (int)(l3 - l2);
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */