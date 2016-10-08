package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.KeyEvent;

public final class v
{
  static final z a = new w();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new y();
      return;
    }
  }
  
  public static boolean a(KeyEvent paramKeyEvent)
  {
    return a.b(paramKeyEvent.getMetaState());
  }
  
  public static boolean b(KeyEvent paramKeyEvent)
  {
    return a.c(paramKeyEvent.getMetaState());
  }
  
  public static void c(KeyEvent paramKeyEvent)
  {
    a.a(paramKeyEvent);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */