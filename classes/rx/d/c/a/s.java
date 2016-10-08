package rx.d.c.a;

import sun.misc.Unsafe;

abstract class s<E>
  extends u<E>
{
  private static final long j;
  protected long f;
  
  static
  {
    try
    {
      j = x.a.objectFieldOffset(s.class.getDeclaredField("f"));
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      throw new RuntimeException(localNoSuchFieldException);
    }
  }
  
  public s(int paramInt)
  {
    super(paramInt);
  }
  
  protected final long a()
  {
    return x.a.getLongVolatile(this, j);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */