package rx.d.c.a;

import sun.misc.Unsafe;

abstract class j<E>
  extends l<E>
{
  protected static final long e;
  volatile long f;
  
  static
  {
    try
    {
      e = x.a.objectFieldOffset(j.class.getDeclaredField("f"));
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      throw new RuntimeException(localNoSuchFieldException);
    }
  }
  
  public j(int paramInt)
  {
    super(paramInt);
  }
  
  protected final boolean a(long paramLong1, long paramLong2)
  {
    return x.a.compareAndSwapLong(this, e, paramLong1, paramLong2);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */