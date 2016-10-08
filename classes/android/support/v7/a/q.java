package android.support.v7.a;

import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;

final class q
  implements ActionMode.Callback
{
  private final ActionMode.Callback b;
  
  q(p paramp, ActionMode.Callback paramCallback)
  {
    this.b = paramCallback;
  }
  
  public final boolean onActionItemClicked(ActionMode paramActionMode, MenuItem paramMenuItem)
  {
    return this.b.onActionItemClicked(paramActionMode, paramMenuItem);
  }
  
  public final boolean onCreateActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    boolean bool = this.b.onCreateActionMode(paramActionMode, paramMenu);
    if (bool)
    {
      this.a.e = paramActionMode;
      paramActionMode = this.a;
      if (!paramActionMode.c)
      {
        paramActionMode.c = true;
        paramActionMode.f();
      }
    }
    return bool;
  }
  
  public final void onDestroyActionMode(ActionMode paramActionMode)
  {
    this.b.onDestroyActionMode(paramActionMode);
    paramActionMode = this.a;
    if (paramActionMode.c)
    {
      paramActionMode.c = false;
      paramActionMode.f();
    }
    this.a.e = null;
  }
  
  public final boolean onPrepareActionMode(ActionMode paramActionMode, Menu paramMenu)
  {
    return this.b.onPrepareActionMode(paramActionMode, paramMenu);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\a\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */