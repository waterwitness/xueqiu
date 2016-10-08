package android.support.v7.internal.view.menu;

import android.os.Build.VERSION;
import android.view.MenuItem;

public final class ah
{
  public static MenuItem a(MenuItem paramMenuItem)
  {
    Object localObject;
    if (Build.VERSION.SDK_INT >= 16) {
      localObject = new z(paramMenuItem);
    }
    do
    {
      return (MenuItem)localObject;
      localObject = paramMenuItem;
    } while (Build.VERSION.SDK_INT < 14);
    return new u(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */