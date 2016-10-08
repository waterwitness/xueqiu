package android.support.v7.internal.view.menu;

import android.graphics.drawable.Drawable;
import android.support.v4.c.a.c;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

final class ak
  extends ai
  implements c
{
  ak(SubMenu paramSubMenu)
  {
    super(paramSubMenu);
  }
  
  public final void clearHeader()
  {
    ((SubMenu)this.c).clearHeader();
  }
  
  public final MenuItem getItem()
  {
    return a(((SubMenu)this.c).getItem());
  }
  
  public final SubMenu setHeaderIcon(int paramInt)
  {
    ((SubMenu)this.c).setHeaderIcon(paramInt);
    return this;
  }
  
  public final SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    ((SubMenu)this.c).setHeaderIcon(paramDrawable);
    return this;
  }
  
  public final SubMenu setHeaderTitle(int paramInt)
  {
    ((SubMenu)this.c).setHeaderTitle(paramInt);
    return this;
  }
  
  public final SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    ((SubMenu)this.c).setHeaderTitle(paramCharSequence);
    return this;
  }
  
  public final SubMenu setHeaderView(View paramView)
  {
    ((SubMenu)this.c).setHeaderView(paramView);
    return this;
  }
  
  public final SubMenu setIcon(int paramInt)
  {
    ((SubMenu)this.c).setIcon(paramInt);
    return this;
  }
  
  public final SubMenu setIcon(Drawable paramDrawable)
  {
    ((SubMenu)this.c).setIcon(paramDrawable);
    return this;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\ak.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */