package rx.d.c.a;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

public final class x
{
  public static final Unsafe a;
  
  static
  {
    try
    {
      Object localObject1 = Unsafe.class.getDeclaredField("theUnsafe");
      ((Field)localObject1).setAccessible(true);
      localObject1 = (Unsafe)((Field)localObject1).get(null);
      a = (Unsafe)localObject1;
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject2 = null;
      }
    }
  }
  
  public static final boolean a()
  {
    return a != null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\rx\d\c\a\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */