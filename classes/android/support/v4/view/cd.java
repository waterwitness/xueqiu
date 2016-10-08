package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup;

public final class cd
{
  static final cg a = new cj();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new ci();
      return;
    }
    if (i >= 18)
    {
      a = new ch();
      return;
    }
    if (i >= 14)
    {
      a = new cf();
      return;
    }
    if (i >= 11)
    {
      a = new ce();
      return;
    }
  }
  
  public static void a(ViewGroup paramViewGroup)
  {
    a.a(paramViewGroup);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\cd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */