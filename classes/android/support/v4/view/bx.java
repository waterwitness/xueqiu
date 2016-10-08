package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewConfiguration;

public final class bx
{
  static final cc a = new by();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new cb();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new ca();
      return;
    }
    if (Build.VERSION.SDK_INT >= 8)
    {
      a = new bz();
      return;
    }
  }
  
  public static int a(ViewConfiguration paramViewConfiguration)
  {
    return a.a(paramViewConfiguration);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\bx.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */