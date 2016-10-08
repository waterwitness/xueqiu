package android.support.v7.internal.view.menu;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

final class y
  extends m<MenuItem.OnMenuItemClickListener>
  implements MenuItem.OnMenuItemClickListener
{
  y(u paramu, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    super(paramOnMenuItemClickListener);
  }
  
  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnMenuItemClickListener)this.c).onMenuItemClick(this.a.a(paramMenuItem));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */