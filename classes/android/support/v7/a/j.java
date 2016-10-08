package android.support.v7.a;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v7.internal.view.b;
import android.support.v7.internal.view.menu.ah;
import android.support.v7.internal.view.menu.ai;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;

class j
  extends g
{
  Menu d;
  
  j(f paramf)
  {
    super(paramf);
  }
  
  public a a()
  {
    return new r(this.a, this.a);
  }
  
  b a(Context paramContext, ActionMode paramActionMode)
  {
    return new b(paramContext, paramActionMode);
  }
  
  public final void a(int paramInt)
  {
    this.a.a(paramInt);
  }
  
  public final void a(Bundle paramBundle)
  {
    if ("splitActionBarWhenNarrow".equals(i())) {
      this.a.getWindow().setUiOptions(1, 1);
    }
    super.a(paramBundle);
    if (this.b) {
      this.a.requestWindowFeature(8);
    }
    if (this.c) {
      this.a.requestWindowFeature(9);
    }
    paramBundle = this.a.getWindow();
    paramBundle.setCallback(new k(this, paramBundle.getCallback()));
  }
  
  public final void a(ActionMode paramActionMode)
  {
    a(j(), paramActionMode);
  }
  
  public final void a(View paramView)
  {
    this.a.a(paramView);
  }
  
  public final void a(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    this.a.a(paramView, paramLayoutParams);
  }
  
  public final void a(CharSequence paramCharSequence) {}
  
  public final boolean a(int paramInt, Menu paramMenu)
  {
    if ((paramInt == 0) || (paramInt == 8))
    {
      if (this.d == null)
      {
        Object localObject = paramMenu;
        if (Build.VERSION.SDK_INT >= 14) {
          localObject = new ai(paramMenu);
        }
        this.d = ((Menu)localObject);
      }
      return this.a.a(paramInt, this.d);
    }
    return this.a.a(paramInt, paramMenu);
  }
  
  public final boolean a(int paramInt, MenuItem paramMenuItem)
  {
    MenuItem localMenuItem = paramMenuItem;
    if (paramInt == 0) {
      localMenuItem = ah.a(paramMenuItem);
    }
    return this.a.a(paramInt, localMenuItem);
  }
  
  public final boolean a(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) || (paramInt == 8)) {
      return this.a.a(paramInt, paramView, this.d);
    }
    return this.a.a(paramInt, paramView, paramMenu);
  }
  
  public final View b(int paramInt)
  {
    return null;
  }
  
  public final void b(ActionMode paramActionMode)
  {
    a(j(), paramActionMode);
  }
  
  public final void b(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    this.a.b(paramView, paramLayoutParams);
  }
  
  public final void d() {}
  
  public final void e() {}
  
  public final void f() {}
  
  public final void g()
  {
    this.d = null;
  }
  
  public final boolean h()
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\a\j.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */