package rx.d.c.a;

import java.util.Iterator;
import sun.misc.Unsafe;

public abstract class a<E>
  extends b<E>
{
  protected static final int a = Integer.getInteger("sparse.shift", 0).intValue();
  private static final long e;
  private static final int f;
  protected final int b;
  protected final long c;
  protected final E[] d;
  
  static
  {
    int i = x.a.arrayIndexScale(Object[].class);
    if (4 == i) {}
    for (f = a + 2;; f = a + 3)
    {
      e = x.a.arrayBaseOffset(Object[].class) + (32 << f - a);
      return;
      if (8 != i) {
        break;
      }
    }
    throw new IllegalStateException("Unknown pointer size");
  }
  
  public a(int paramInt)
  {
    this.b = (1 << 32 - Integer.numberOfLeadingZeros(paramInt - 1));
    this.c = (this.b - 1);
    this.d = ((Object[])new Object[(this.b << a) + 64]);
  }
  
  protected static E a(E[] paramArrayOfE, long paramLong)
  {
    return (E)x.a.getObject(paramArrayOfE, paramLong);
  }
  
  protected static void a(E[] paramArrayOfE, long paramLong, E paramE)
  {
    x.a.putObject(paramArrayOfE, paramLong, paramE);
  }
  
  protected static E b(E[] paramArrayOfE, long paramLong)
  {
    return (E)x.a.getObjectVolatile(paramArrayOfE, paramLong);
  }
  
  protected static void b(E[] paramArrayOfE, long paramLong, E paramE)
  {
    x.a.putOrderedObject(paramArrayOfE, paramLong, paramE);
  }
  
  protected final long a(long paramLong)
  {
    return e + ((this.c & paramLong) << f);
  }
  
  protected final void a(long paramLong, E paramE)
  {
    a(this.d, paramLong, paramE);
  }
  
  protected final E b(long paramLong)
  {
    return (E)a(this.d, paramLong);
  }
  
  protected final E c(long paramLong)
  {
    return (E)b(this.d, paramLong);
  }
  
  public Iterator<E> iterator()
  {
    throw new UnsupportedOperationException();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */