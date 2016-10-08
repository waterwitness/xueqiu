package android.support.v7.internal.view.menu;

import android.support.v4.view.j;
import android.support.v4.view.l;
import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

class v
  extends ActionProvider
{
  final j a;
  
  public v(final u paramu, j paramj)
  {
    super(paramj.a());
    this.a = paramj;
    if (u.a(paramu)) {
      this.a.a(new l() {});
    }
  }
  
  public boolean hasSubMenu()
  {
    return false;
  }
  
  public View onCreateActionView()
  {
    if (u.a(this.b)) {
      this.b.a();
    }
    return this.a.b();
  }
  
  public boolean onPerformDefaultAction()
  {
    return false;
  }
  
  public void onPrepareSubMenu(SubMenu paramSubMenu)
  {
    this.b.a(paramSubMenu);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\v.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */