package rx.d.c.a;

import sun.misc.Unsafe;

abstract class e<E>
  extends g<E>
{
  static final long f;
  volatile long g;
  
  static
  {
    try
    {
      f = x.a.objectFieldOffset(e.class.getDeclaredField("g"));
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      throw new RuntimeException(localNoSuchFieldException);
    }
  }
  
  public e(int paramInt)
  {
    super(paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */