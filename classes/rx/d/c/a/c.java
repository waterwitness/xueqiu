package rx.d.c.a;

import sun.misc.Unsafe;

public abstract class c<E>
  extends a<E>
{
  private static final long f;
  private static final int g;
  protected final long[] e = new long[(this.b << a) + 64];
  
  static
  {
    if (8 == x.a.arrayIndexScale(long[].class))
    {
      g = a + 3;
      f = x.a.arrayBaseOffset(long[].class) + (32 << g - a);
      return;
    }
    throw new IllegalStateException("Unexpected long[] element size");
  }
  
  public c(int paramInt)
  {
    super(paramInt);
    for (long l = 0L; l < this.b; l += 1L) {
      a(this.e, d(l), l);
    }
  }
  
  protected static long a(long[] paramArrayOfLong, long paramLong)
  {
    return x.a.getLongVolatile(paramArrayOfLong, paramLong);
  }
  
  protected static void a(long[] paramArrayOfLong, long paramLong1, long paramLong2)
  {
    x.a.putOrderedLong(paramArrayOfLong, paramLong1, paramLong2);
  }
  
  protected final long d(long paramLong)
  {
    return f + ((this.c & paramLong) << g);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */