package android.support.v7.internal.view.menu;

import android.os.Build.VERSION;
import android.support.v4.c.a.b;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.HashMap;

abstract class l<T>
  extends m<T>
{
  HashMap<MenuItem, b> a;
  HashMap<SubMenu, SubMenu> b;
  
  l(T paramT)
  {
    super(paramT);
  }
  
  final b a(MenuItem paramMenuItem)
  {
    if (paramMenuItem != null)
    {
      if (this.a == null) {
        this.a = new HashMap();
      }
      b localb = (b)this.a.get(paramMenuItem);
      Object localObject = localb;
      if (localb == null) {
        if (Build.VERSION.SDK_INT < 16) {
          break label69;
        }
      }
      for (localObject = new z(paramMenuItem);; localObject = new u(paramMenuItem))
      {
        this.a.put(paramMenuItem, localObject);
        return (b)localObject;
        label69:
        if (Build.VERSION.SDK_INT < 14) {
          break;
        }
      }
      throw new UnsupportedOperationException();
    }
    return null;
  }
  
  final SubMenu a(SubMenu paramSubMenu)
  {
    if (paramSubMenu != null)
    {
      if (this.b == null) {
        this.b = new HashMap();
      }
      SubMenu localSubMenu = (SubMenu)this.b.get(paramSubMenu);
      Object localObject = localSubMenu;
      if (localSubMenu == null)
      {
        if (Build.VERSION.SDK_INT >= 14)
        {
          localObject = new ak(paramSubMenu);
          this.b.put(paramSubMenu, localObject);
        }
      }
      else {
        return (SubMenu)localObject;
      }
      throw new UnsupportedOperationException();
    }
    return null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */