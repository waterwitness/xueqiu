package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.LayoutInflater;

public final class aa
{
  static final ab a = new ac();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new ae();
      return;
    }
    if (i >= 11)
    {
      a = new ad();
      return;
    }
  }
  
  public static void a(LayoutInflater paramLayoutInflater, aj paramaj)
  {
    a.a(paramLayoutInflater, paramaj);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */