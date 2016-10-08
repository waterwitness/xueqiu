package android.support.v4.view;

import android.view.MenuItem;

final class an
  extends am
{
  public final MenuItem a(MenuItem paramMenuItem, final ap paramap)
  {
    if (paramap == null) {
      return aq.a(paramMenuItem, null);
    }
    aq.a(paramMenuItem, new as()
    {
      public final boolean a(MenuItem paramAnonymousMenuItem)
      {
        return paramap.a(paramAnonymousMenuItem);
      }
      
      public final boolean b(MenuItem paramAnonymousMenuItem)
      {
        return paramap.b(paramAnonymousMenuItem);
      }
    });
  }
  
  public final boolean b(MenuItem paramMenuItem)
  {
    return paramMenuItem.expandActionView();
  }
  
  public final boolean c(MenuItem paramMenuItem)
  {
    return paramMenuItem.collapseActionView();
  }
  
  public final boolean d(MenuItem paramMenuItem)
  {
    return paramMenuItem.isActionViewExpanded();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\an.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */