package android.support.v4.a;

import android.os.Build.VERSION;

public final class ar
{
  private static final ay a = new bb();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      a = new ba();
      return;
    }
    if (Build.VERSION.SDK_INT >= 20)
    {
      a = new az();
      return;
    }
    if (Build.VERSION.SDK_INT >= 19)
    {
      a = new bg();
      return;
    }
    if (Build.VERSION.SDK_INT >= 16)
    {
      a = new bf();
      return;
    }
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new be();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new bd();
      return;
    }
    if (Build.VERSION.SDK_INT >= 9)
    {
      a = new bc();
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */