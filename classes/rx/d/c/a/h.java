package rx.d.c.a;

import sun.misc.Unsafe;

abstract class h<E>
  extends f<E>
{
  static final long h;
  volatile long i;
  
  static
  {
    try
    {
      h = x.a.objectFieldOffset(h.class.getDeclaredField("i"));
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      throw new RuntimeException(localNoSuchFieldException);
    }
  }
  
  public h(int paramInt)
  {
    super(paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */