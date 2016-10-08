package rx.d.c.a;

import sun.misc.Unsafe;

abstract class w<E>
  extends t<E>
{
  static final long g;
  protected long h;
  protected long i;
  
  static
  {
    try
    {
      g = x.a.objectFieldOffset(w.class.getDeclaredField("h"));
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      throw new RuntimeException(localNoSuchFieldException);
    }
  }
  
  public w(int paramInt)
  {
    super(paramInt);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */