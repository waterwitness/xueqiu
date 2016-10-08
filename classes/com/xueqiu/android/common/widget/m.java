package com.xueqiu.android.common.widget;

import android.content.Context;
import android.support.v7.internal.view.menu.ab;
import android.support.v7.internal.view.menu.ae;
import android.support.v7.internal.view.menu.p;
import android.support.v7.internal.view.menu.q;
import android.view.MenuItem;
import android.view.View;

public final class m
  implements ae, q
{
  public Context a;
  public p b;
  public ab c;
  public n d;
  private View e;
  
  public m(Context paramContext, View paramView)
  {
    this.a = paramContext;
    this.b = new p(paramContext);
    this.b.a(this);
    this.e = paramView;
    this.c = new ab(paramContext, this.b, paramView);
    this.c.c = this;
    this.c.d = true;
  }
  
  public final void a(p paramp) {}
  
  public final void a(p paramp, boolean paramBoolean) {}
  
  public final boolean a(MenuItem paramMenuItem)
  {
    if (this.d != null) {
      return this.d.a(paramMenuItem);
    }
    return false;
  }
  
  public final boolean b(p paramp)
  {
    boolean bool = true;
    if (paramp == null) {
      bool = false;
    }
    while (!paramp.hasVisibleItems()) {
      return bool;
    }
    new ab(this.a, paramp, this.e).a();
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */