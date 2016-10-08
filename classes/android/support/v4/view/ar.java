package android.support.v4.view;

import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;

final class ar
  implements MenuItem.OnActionExpandListener
{
  private as a;
  
  public ar(as paramas)
  {
    this.a = paramas;
  }
  
  public final boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    return this.a.b(paramMenuItem);
  }
  
  public final boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    return this.a.a(paramMenuItem);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */