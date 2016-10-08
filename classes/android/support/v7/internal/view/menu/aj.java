package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public final class aj
  extends p
  implements SubMenu
{
  p l;
  private t m;
  
  public aj(Context paramContext, p paramp, t paramt)
  {
    super(paramContext);
    this.l = paramp;
    this.m = paramt;
  }
  
  public final String a()
  {
    if (this.m != null) {}
    for (int i = this.m.getItemId(); i == 0; i = 0) {
      return null;
    }
    return super.a() + ":" + i;
  }
  
  public final void a(q paramq)
  {
    this.l.a(paramq);
  }
  
  public final boolean a(p paramp, MenuItem paramMenuItem)
  {
    return (super.a(paramp, paramMenuItem)) || (this.l.a(paramp, paramMenuItem));
  }
  
  public final boolean a(t paramt)
  {
    return this.l.a(paramt);
  }
  
  public final boolean b()
  {
    return this.l.b();
  }
  
  public final boolean b(t paramt)
  {
    return this.l.b(paramt);
  }
  
  public final boolean c()
  {
    return this.l.c();
  }
  
  public final void clearHeader() {}
  
  public final MenuItem getItem()
  {
    return this.m;
  }
  
  public final p j()
  {
    return this.l;
  }
  
  public final SubMenu setHeaderIcon(int paramInt)
  {
    super.a(this.a.getResources().getDrawable(paramInt));
    return this;
  }
  
  public final SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    super.a(paramDrawable);
    return this;
  }
  
  public final SubMenu setHeaderTitle(int paramInt)
  {
    super.a(this.a.getResources().getString(paramInt));
    return this;
  }
  
  public final SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    super.a(paramCharSequence);
    return this;
  }
  
  public final SubMenu setHeaderView(View paramView)
  {
    super.a(null, null, paramView);
    return this;
  }
  
  public final SubMenu setIcon(int paramInt)
  {
    this.m.setIcon(paramInt);
    return this;
  }
  
  public final SubMenu setIcon(Drawable paramDrawable)
  {
    this.m.setIcon(paramDrawable);
    return this;
  }
  
  public final void setQwertyMode(boolean paramBoolean)
  {
    this.l.setQwertyMode(paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */