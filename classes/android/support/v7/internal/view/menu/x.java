package android.support.v7.internal.view.menu;

import android.support.v4.view.ap;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;

final class x
  extends m<ap>
  implements MenuItem.OnActionExpandListener
{
  x(u paramu, ap paramap)
  {
    super(paramap);
  }
  
  public final boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    return ((ap)this.c).b(this.a.a(paramMenuItem));
  }
  
  public final boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    return ((ap)this.c).a(this.a.a(paramMenuItem));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */