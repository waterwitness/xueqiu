package android.support.v7.a;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.support.v7.b.c;
import android.support.v7.b.d;
import android.support.v7.b.j;
import android.support.v7.b.k;
import android.support.v7.internal.view.menu.ExpandedMenuView;
import android.support.v7.internal.view.menu.ae;
import android.support.v7.internal.view.menu.ah;
import android.support.v7.internal.view.menu.o;
import android.support.v7.internal.view.menu.p;
import android.support.v7.internal.view.menu.q;
import android.support.v7.internal.view.menu.t;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarView;
import android.support.v7.internal.widget.e;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;

class h
  extends g
  implements ae, q
{
  private static final int[] d = { c.homeAsUpIndicator };
  private ActionBarView e;
  private android.support.v7.internal.view.menu.n f;
  private p g;
  private android.support.v7.c.a h;
  private boolean i;
  private CharSequence j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private Bundle p;
  
  h(f paramf)
  {
    super(paramf);
  }
  
  private boolean l()
  {
    if (this.n) {
      return true;
    }
    if ((this.g == null) || (this.o))
    {
      if (this.g == null)
      {
        this.g = new p(j());
        this.g.a(this);
        if (this.g == null) {
          return false;
        }
      }
      if (this.e != null) {
        this.e.a(this.g, this);
      }
      this.g.d();
      if (!this.a.a(0, this.g))
      {
        this.g = null;
        if (this.e != null) {
          this.e.a(null, this);
        }
        return false;
      }
      this.o = false;
    }
    this.g.d();
    if (this.p != null)
    {
      this.g.b(this.p);
      this.p = null;
    }
    if (!this.a.a(0, null, this.g))
    {
      if (this.e != null) {
        this.e.a(null, this);
      }
      this.g.e();
      return false;
    }
    this.g.e();
    this.n = true;
    return true;
  }
  
  public a a()
  {
    k();
    return new n(this.a, this.a);
  }
  
  public final void a(int paramInt)
  {
    k();
    ViewGroup localViewGroup = (ViewGroup)this.a.findViewById(16908290);
    localViewGroup.removeAllViews();
    this.a.getLayoutInflater().inflate(paramInt, localViewGroup);
  }
  
  public final void a(p paramp)
  {
    if ((this.e != null) && (this.e.e()))
    {
      if (!this.e.d())
      {
        if (this.e.getVisibility() == 0) {
          this.e.a();
        }
        return;
      }
      this.e.c();
      return;
    }
    paramp.close();
  }
  
  public final void a(p paramp, boolean paramBoolean)
  {
    if (this.m) {
      return;
    }
    this.m = true;
    this.a.closeOptionsMenu();
    this.e.f();
    this.m = false;
  }
  
  public final void a(View paramView)
  {
    k();
    ViewGroup localViewGroup = (ViewGroup)this.a.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView);
  }
  
  public final void a(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    k();
    ViewGroup localViewGroup = (ViewGroup)this.a.findViewById(16908290);
    localViewGroup.removeAllViews();
    localViewGroup.addView(paramView, paramLayoutParams);
  }
  
  public final void a(CharSequence paramCharSequence)
  {
    if (this.e != null)
    {
      this.e.setWindowTitle(paramCharSequence);
      return;
    }
    this.j = paramCharSequence;
  }
  
  public final boolean a(int paramInt, Menu paramMenu)
  {
    if (paramInt != 0) {
      return this.a.a(paramInt, paramMenu);
    }
    return false;
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
    if (paramInt != 0) {
      return this.a.a(paramInt, paramView, paramMenu);
    }
    return false;
  }
  
  public final boolean a(MenuItem paramMenuItem)
  {
    return this.a.onMenuItemSelected(0, paramMenuItem);
  }
  
  public final View b(int paramInt)
  {
    Object localObject3 = null;
    Object localObject2 = null;
    Object localObject1 = localObject3;
    if (paramInt == 0)
    {
      localObject1 = localObject3;
      if (l())
      {
        localObject3 = this.a;
        localObject1 = localObject2;
        if (this.g != null)
        {
          if (this.f != null) {
            break label218;
          }
          localObject1 = ((Context)localObject3).obtainStyledAttributes(k.Theme);
          paramInt = ((TypedArray)localObject1).getResourceId(4, j.Theme_AppCompat_CompactMenu);
          ((TypedArray)localObject1).recycle();
          this.f = new android.support.v7.internal.view.menu.n(android.support.v7.b.h.abc_list_menu_item_layout, paramInt);
          this.f.g = this;
          this.g.a(this.f);
        }
      }
    }
    for (;;)
    {
      android.support.v7.internal.view.menu.n localn = this.f;
      localObject3 = new FrameLayout((Context)localObject3);
      if (localn.h == null) {
        localn.h = new o(localn);
      }
      localObject1 = localObject2;
      if (!localn.h.isEmpty())
      {
        if (localn.d == null)
        {
          localn.d = ((ExpandedMenuView)localn.b.inflate(android.support.v7.b.h.abc_expanded_menu_layout, (ViewGroup)localObject3, false));
          localn.d.setAdapter(localn.h);
          localn.d.setOnItemClickListener(localn);
        }
        localObject1 = localn.d;
      }
      localObject1 = (View)localObject1;
      return (View)localObject1;
      label218:
      this.f.b(false);
    }
  }
  
  public final void b(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    k();
    ((ViewGroup)this.a.findViewById(16908290)).addView(paramView, paramLayoutParams);
  }
  
  public final boolean b(p paramp)
  {
    return false;
  }
  
  public final void d()
  {
    if ((this.b) && (this.i))
    {
      n localn = (n)b();
      localn.f(android.support.v7.internal.view.a.a(localn.a).a());
    }
  }
  
  public final void e()
  {
    n localn = (n)b();
    if (localn != null) {
      localn.g(false);
    }
  }
  
  public final void f()
  {
    n localn = (n)b();
    if (localn != null) {
      localn.g(true);
    }
  }
  
  public final void g()
  {
    if (this.g != null)
    {
      Bundle localBundle = new Bundle();
      this.g.a(localBundle);
      if (localBundle.size() > 0) {
        this.p = localBundle;
      }
      this.g.d();
      this.g.clear();
    }
    this.o = true;
    if (this.e != null)
    {
      this.n = false;
      l();
    }
  }
  
  public final boolean h()
  {
    if (this.h != null) {
      this.h.a();
    }
    label81:
    label90:
    for (;;)
    {
      return true;
      if (this.e == null) {
        break;
      }
      Object localObject = this.e;
      int i1;
      if ((((ActionBarView)localObject).h != null) && (((ActionBarView)localObject).h.b != null))
      {
        i1 = 1;
        if (i1 == 0) {
          break;
        }
        localObject = this.e;
        if (((ActionBarView)localObject).h != null) {
          break label81;
        }
      }
      for (localObject = null;; localObject = ((ActionBarView)localObject).h.b)
      {
        if (localObject == null) {
          break label90;
        }
        ((t)localObject).collapseActionView();
        return true;
        i1 = 0;
        break;
      }
    }
    return false;
  }
  
  final void k()
  {
    int i2 = 0;
    TypedValue localTypedValue2 = null;
    boolean bool1;
    label125:
    Object localObject1;
    Object localObject2;
    label200:
    TypedArray localTypedArray;
    if (!this.i)
    {
      if (!this.b) {
        break label559;
      }
      if (!this.c) {
        break label520;
      }
      this.a.a(android.support.v7.b.h.abc_action_bar_decor_overlay);
      this.e = ((ActionBarView)this.a.findViewById(android.support.v7.b.f.action_bar));
      this.e.setWindowCallback(this.a);
      if (this.k) {
        this.e.g();
      }
      if (this.l) {
        this.e.h();
      }
      boolean bool2 = "splitActionBarWhenNarrow".equals(i());
      if (!bool2) {
        break label533;
      }
      bool1 = this.a.getResources().getBoolean(d.abc_split_action_bar_is_narrow);
      localObject1 = (ActionBarContainer)this.a.findViewById(android.support.v7.b.f.split_action_bar);
      if (localObject1 != null)
      {
        this.e.setSplitView((ActionBarContainer)localObject1);
        this.e.setSplitActionBar(bool1);
        this.e.setSplitWhenNarrow(bool2);
        localObject2 = (ActionBarContextView)this.a.findViewById(android.support.v7.b.f.action_context_bar);
        ((ActionBarContextView)localObject2).setSplitView((ActionBarContainer)localObject1);
        ((ActionBarContextView)localObject2).setSplitActionBar(bool1);
        ((ActionBarContextView)localObject2).setSplitWhenNarrow(bool2);
      }
      this.a.findViewById(16908290).setId(-1);
      this.a.findViewById(android.support.v7.b.f.action_bar_activity_content).setId(16908290);
      if (this.j != null)
      {
        this.e.setWindowTitle(this.j);
        this.j = null;
      }
      localTypedArray = this.a.obtainStyledAttributes(k.ActionBarWindow);
      if (!localTypedArray.hasValue(3)) {
        break label667;
      }
      localObject1 = new TypedValue();
      localTypedArray.getValue(3, (TypedValue)localObject1);
    }
    for (;;)
    {
      if (localTypedArray.hasValue(5))
      {
        localObject2 = new TypedValue();
        localTypedArray.getValue(5, (TypedValue)localObject2);
      }
      for (;;)
      {
        TypedValue localTypedValue1;
        if (localTypedArray.hasValue(6))
        {
          localTypedValue1 = new TypedValue();
          localTypedArray.getValue(6, localTypedValue1);
        }
        for (;;)
        {
          if (localTypedArray.hasValue(4))
          {
            localTypedValue2 = new TypedValue();
            localTypedArray.getValue(4, localTypedValue2);
          }
          DisplayMetrics localDisplayMetrics = this.a.getResources().getDisplayMetrics();
          if (localDisplayMetrics.widthPixels < localDisplayMetrics.heightPixels) {
            i2 = 1;
          }
          label400:
          int i1;
          if (i2 != 0)
          {
            if ((localObject2 == null) || (((TypedValue)localObject2).type == 0)) {
              break label651;
            }
            if (((TypedValue)localObject2).type != 5) {
              break label577;
            }
            i1 = (int)((TypedValue)localObject2).getDimension(localDisplayMetrics);
          }
          for (;;)
          {
            label428:
            if (i2 != 0)
            {
              label433:
              if ((localTypedValue1 == null) || (localTypedValue1.type == 0)) {
                break label645;
              }
              if (localTypedValue1.type != 5) {
                break label614;
              }
              i2 = (int)localTypedValue1.getDimension(localDisplayMetrics);
            }
            for (;;)
            {
              if ((i1 != -1) || (i2 != -1)) {
                this.a.getWindow().setLayout(i1, i2);
              }
              localTypedArray.recycle();
              this.i = true;
              this.a.getWindow().getDecorView().post(new Runnable()
              {
                public final void run()
                {
                  h.this.g();
                }
              });
              return;
              label520:
              this.a.a(android.support.v7.b.h.abc_action_bar_decor);
              break;
              label533:
              localObject1 = this.a.obtainStyledAttributes(k.ActionBarWindow);
              bool1 = ((TypedArray)localObject1).getBoolean(2, false);
              ((TypedArray)localObject1).recycle();
              break label125;
              label559:
              this.a.a(android.support.v7.b.h.abc_simple_decor);
              break label200;
              localObject2 = localObject1;
              break label400;
              label577:
              if (((TypedValue)localObject2).type != 6) {
                break label651;
              }
              i1 = (int)((TypedValue)localObject2).getFraction(localDisplayMetrics.widthPixels, localDisplayMetrics.widthPixels);
              break label428;
              localTypedValue1 = localTypedValue2;
              break label433;
              label614:
              if (localTypedValue1.type == 6) {
                i2 = (int)localTypedValue1.getFraction(localDisplayMetrics.heightPixels, localDisplayMetrics.heightPixels);
              } else {
                label645:
                i2 = -1;
              }
            }
            label651:
            i1 = -1;
          }
          localTypedValue1 = null;
        }
        localObject2 = null;
      }
      label667:
      localObject1 = null;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */