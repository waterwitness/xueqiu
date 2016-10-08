package android.support.v7.internal.view.menu;

import android.support.v4.view.j;
import android.support.v4.view.l;
import android.view.ActionProvider.VisibilityListener;
import android.view.MenuItem;
import android.view.View;

final class aa
  extends v
  implements l
{
  ActionProvider.VisibilityListener c;
  
  public aa(z paramz, j paramj)
  {
    super(paramz, paramj);
  }
  
  public final boolean isVisible()
  {
    return true;
  }
  
  public final View onCreateActionView(MenuItem paramMenuItem)
  {
    return this.a.c();
  }
  
  public final boolean overridesItemVisibility()
  {
    return false;
  }
  
  public final void refreshVisibility() {}
  
  public final void setVisibilityListener(ActionProvider.VisibilityListener paramVisibilityListener)
  {
    this.c = paramVisibilityListener;
    j localj = this.a;
    if (paramVisibilityListener != null) {}
    for (paramVisibilityListener = this;; paramVisibilityListener = null)
    {
      localj.a(paramVisibilityListener);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */