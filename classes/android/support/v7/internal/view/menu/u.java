package android.support.v7.internal.view.menu;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ap;
import android.support.v4.view.j;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import java.lang.reflect.Method;

public class u
  extends l<MenuItem>
  implements android.support.v4.c.a.b
{
  public Method d;
  private final boolean e;
  private boolean f;
  
  u(MenuItem paramMenuItem)
  {
    this(paramMenuItem, true);
  }
  
  u(MenuItem paramMenuItem, boolean paramBoolean)
  {
    super(paramMenuItem);
    this.f = paramMenuItem.isVisible();
    this.e = paramBoolean;
  }
  
  public final android.support.v4.c.a.b a(ap paramap)
  {
    MenuItem localMenuItem = (MenuItem)this.c;
    if (paramap != null) {}
    for (paramap = new x(this, paramap);; paramap = null)
    {
      localMenuItem.setOnActionExpandListener(paramap);
      return null;
    }
  }
  
  public final android.support.v4.c.a.b a(j paramj)
  {
    MenuItem localMenuItem = (MenuItem)this.c;
    if (paramj != null) {}
    for (paramj = b(paramj);; paramj = null)
    {
      localMenuItem.setActionProvider(paramj);
      return this;
    }
  }
  
  final boolean a()
  {
    if (this.f) {
      ((MenuItem)this.c).getActionProvider();
    }
    return false;
  }
  
  v b(j paramj)
  {
    return new v(this, paramj);
  }
  
  public boolean collapseActionView()
  {
    return ((MenuItem)this.c).collapseActionView();
  }
  
  public boolean expandActionView()
  {
    return ((MenuItem)this.c).expandActionView();
  }
  
  public ActionProvider getActionProvider()
  {
    return ((MenuItem)this.c).getActionProvider();
  }
  
  public View getActionView()
  {
    View localView2 = ((MenuItem)this.c).getActionView();
    View localView1 = localView2;
    if ((localView2 instanceof w)) {
      localView1 = (View)((w)localView2).a;
    }
    return localView1;
  }
  
  public char getAlphabeticShortcut()
  {
    return ((MenuItem)this.c).getAlphabeticShortcut();
  }
  
  public int getGroupId()
  {
    return ((MenuItem)this.c).getGroupId();
  }
  
  public Drawable getIcon()
  {
    return ((MenuItem)this.c).getIcon();
  }
  
  public Intent getIntent()
  {
    return ((MenuItem)this.c).getIntent();
  }
  
  public int getItemId()
  {
    return ((MenuItem)this.c).getItemId();
  }
  
  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return ((MenuItem)this.c).getMenuInfo();
  }
  
  public char getNumericShortcut()
  {
    return ((MenuItem)this.c).getNumericShortcut();
  }
  
  public int getOrder()
  {
    return ((MenuItem)this.c).getOrder();
  }
  
  public SubMenu getSubMenu()
  {
    return a(((MenuItem)this.c).getSubMenu());
  }
  
  public CharSequence getTitle()
  {
    return ((MenuItem)this.c).getTitle();
  }
  
  public CharSequence getTitleCondensed()
  {
    return ((MenuItem)this.c).getTitleCondensed();
  }
  
  public boolean hasSubMenu()
  {
    return ((MenuItem)this.c).hasSubMenu();
  }
  
  public boolean isActionViewExpanded()
  {
    return ((MenuItem)this.c).isActionViewExpanded();
  }
  
  public boolean isCheckable()
  {
    return ((MenuItem)this.c).isCheckable();
  }
  
  public boolean isChecked()
  {
    return ((MenuItem)this.c).isChecked();
  }
  
  public boolean isEnabled()
  {
    return ((MenuItem)this.c).isEnabled();
  }
  
  public boolean isVisible()
  {
    return ((MenuItem)this.c).isVisible();
  }
  
  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    ((MenuItem)this.c).setActionProvider(paramActionProvider);
    if ((paramActionProvider != null) && (this.e)) {
      a();
    }
    return this;
  }
  
  public MenuItem setActionView(int paramInt)
  {
    ((MenuItem)this.c).setActionView(paramInt);
    View localView = ((MenuItem)this.c).getActionView();
    if ((localView instanceof android.support.v7.c.b)) {
      ((MenuItem)this.c).setActionView(new w(localView));
    }
    return this;
  }
  
  public MenuItem setActionView(View paramView)
  {
    Object localObject = paramView;
    if ((paramView instanceof android.support.v7.c.b)) {
      localObject = new w(paramView);
    }
    ((MenuItem)this.c).setActionView((View)localObject);
    return this;
  }
  
  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    ((MenuItem)this.c).setAlphabeticShortcut(paramChar);
    return this;
  }
  
  public MenuItem setCheckable(boolean paramBoolean)
  {
    ((MenuItem)this.c).setCheckable(paramBoolean);
    return this;
  }
  
  public MenuItem setChecked(boolean paramBoolean)
  {
    ((MenuItem)this.c).setChecked(paramBoolean);
    return this;
  }
  
  public MenuItem setEnabled(boolean paramBoolean)
  {
    ((MenuItem)this.c).setEnabled(paramBoolean);
    return this;
  }
  
  public MenuItem setIcon(int paramInt)
  {
    ((MenuItem)this.c).setIcon(paramInt);
    return this;
  }
  
  public MenuItem setIcon(Drawable paramDrawable)
  {
    ((MenuItem)this.c).setIcon(paramDrawable);
    return this;
  }
  
  public MenuItem setIntent(Intent paramIntent)
  {
    ((MenuItem)this.c).setIntent(paramIntent);
    return this;
  }
  
  public MenuItem setNumericShortcut(char paramChar)
  {
    ((MenuItem)this.c).setNumericShortcut(paramChar);
    return this;
  }
  
  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    ((MenuItem)this.c).setOnActionExpandListener(paramOnActionExpandListener);
    return this;
  }
  
  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    MenuItem localMenuItem = (MenuItem)this.c;
    if (paramOnMenuItemClickListener != null) {}
    for (paramOnMenuItemClickListener = new y(this, paramOnMenuItemClickListener);; paramOnMenuItemClickListener = null)
    {
      localMenuItem.setOnMenuItemClickListener(paramOnMenuItemClickListener);
      return this;
    }
  }
  
  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    ((MenuItem)this.c).setShortcut(paramChar1, paramChar2);
    return this;
  }
  
  public void setShowAsAction(int paramInt)
  {
    ((MenuItem)this.c).setShowAsAction(paramInt);
  }
  
  public MenuItem setShowAsActionFlags(int paramInt)
  {
    ((MenuItem)this.c).setShowAsActionFlags(paramInt);
    return this;
  }
  
  public MenuItem setTitle(int paramInt)
  {
    ((MenuItem)this.c).setTitle(paramInt);
    return this;
  }
  
  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    ((MenuItem)this.c).setTitle(paramCharSequence);
    return this;
  }
  
  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    ((MenuItem)this.c).setTitleCondensed(paramCharSequence);
    return this;
  }
  
  public MenuItem setVisible(boolean paramBoolean)
  {
    if (this.e)
    {
      this.f = paramBoolean;
      a();
    }
    return ((MenuItem)this.c).setVisible(paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\u.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */