package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.v7.internal.view.menu.ad;
import android.support.v7.internal.view.menu.aj;
import android.support.v7.internal.view.menu.p;
import android.support.v7.internal.view.menu.t;
import android.view.View;
import android.widget.LinearLayout;

public final class e
  implements ad
{
  p a;
  public t b;
  
  private e(ActionBarView paramActionBarView) {}
  
  public final void a(Context paramContext, p paramp)
  {
    if ((this.a != null) && (this.b != null)) {
      this.a.b(this.b);
    }
    this.a = paramp;
  }
  
  public final void a(p paramp, boolean paramBoolean) {}
  
  public final boolean a(aj paramaj)
  {
    return false;
  }
  
  public final void b(boolean paramBoolean)
  {
    if (this.b != null)
    {
      if (this.a == null) {
        break label70;
      }
      int j = this.a.size();
      i = 0;
      if (i >= j) {
        break label70;
      }
      if ((android.support.v4.c.a.b)this.a.getItem(i) != this.b) {
        break label63;
      }
    }
    label63:
    label70:
    for (int i = 1;; i = 0)
    {
      if (i == 0) {
        c(this.b);
      }
      return;
      i += 1;
      break;
    }
  }
  
  public final boolean b(t paramt)
  {
    this.c.i = paramt.getActionView();
    ActionBarView.d(this.c).a(ActionBarView.c(this.c).getConstantState().newDrawable(this.c.getResources()));
    this.b = paramt;
    if (this.c.i.getParent() != this.c) {
      this.c.addView(this.c.i);
    }
    if (ActionBarView.d(this.c).getParent() != this.c) {
      this.c.addView(ActionBarView.d(this.c));
    }
    ActionBarView.e(this.c).setVisibility(8);
    if (ActionBarView.f(this.c) != null) {
      ActionBarView.f(this.c).setVisibility(8);
    }
    if (ActionBarView.g(this.c) != null) {
      ActionBarView.g(this.c).setVisibility(8);
    }
    if (ActionBarView.h(this.c) != null) {
      ActionBarView.h(this.c).setVisibility(8);
    }
    if (ActionBarView.i(this.c) != null) {
      ActionBarView.i(this.c).setVisibility(8);
    }
    this.c.requestLayout();
    paramt.d(true);
    if ((this.c.i instanceof android.support.v7.c.b)) {
      ((android.support.v7.c.b)this.c.i).a();
    }
    return true;
  }
  
  public final boolean c(t paramt)
  {
    if ((this.c.i instanceof android.support.v7.c.b)) {
      ((android.support.v7.c.b)this.c.i).b();
    }
    this.c.removeView(this.c.i);
    this.c.removeView(ActionBarView.d(this.c));
    this.c.i = null;
    if ((ActionBarView.j(this.c) & 0x2) != 0) {
      ActionBarView.e(this.c).setVisibility(0);
    }
    if ((ActionBarView.j(this.c) & 0x8) != 0)
    {
      if (ActionBarView.f(this.c) != null) {
        break label245;
      }
      ActionBarView.k(this.c);
    }
    for (;;)
    {
      if ((ActionBarView.g(this.c) != null) && (ActionBarView.l(this.c) == 2)) {
        ActionBarView.g(this.c).setVisibility(0);
      }
      if ((ActionBarView.h(this.c) != null) && (ActionBarView.l(this.c) == 1)) {
        ActionBarView.h(this.c).setVisibility(0);
      }
      if ((ActionBarView.i(this.c) != null) && ((ActionBarView.j(this.c) & 0x10) != 0)) {
        ActionBarView.i(this.c).setVisibility(0);
      }
      ActionBarView.d(this.c).a(null);
      this.b = null;
      this.c.requestLayout();
      paramt.d(false);
      return true;
      label245:
      ActionBarView.f(this.c).setVisibility(0);
    }
  }
  
  public final boolean h()
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */