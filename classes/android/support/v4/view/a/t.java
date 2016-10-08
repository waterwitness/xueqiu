package android.support.v4.view.a;

import android.os.Build.VERSION;
import java.util.List;

public final class t
{
  private static final u b = new x();
  public final Object a;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 19)
    {
      b = new w();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      b = new v();
      return;
    }
  }
  
  public t()
  {
    this.a = b.a(this);
  }
  
  public t(Object paramObject)
  {
    this.a = paramObject;
  }
  
  public static f a()
  {
    return null;
  }
  
  public static boolean b()
  {
    return false;
  }
  
  public static List<f> c()
  {
    return null;
  }
  
  public static f d()
  {
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\a\t.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */