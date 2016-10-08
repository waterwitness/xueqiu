package rx.d.c.a;

import sun.misc.Unsafe;

abstract class o<E>
  extends k<E>
{
  protected static final long g;
  volatile long h;
  
  static
  {
    try
    {
      g = x.a.objectFieldOffset(o.class.getDeclaredField("h"));
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      throw new RuntimeException(localNoSuchFieldException);
    }
  }
  
  public o(int paramInt)
  {
    super(paramInt);
  }
  
  protected final void d(long paramLong)
  {
    x.a.putOrderedLong(this, g, paramLong);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\o.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */