package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v4.view.j;
import android.support.v7.internal.view.a;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import java.util.ArrayList;

public final class c
  extends k
  implements android.support.v4.view.k
{
  public boolean a;
  public boolean b;
  g c;
  d d;
  e e;
  final h f = new h(this, (byte)0);
  int g;
  private View p;
  private boolean q;
  private int r;
  private int s;
  private int t;
  private boolean u;
  private boolean v;
  private boolean w;
  private int x;
  private final SparseBooleanArray y = new SparseBooleanArray();
  private View z;
  
  public c(Context paramContext)
  {
    super(paramContext, android.support.v7.b.h.abc_action_menu_layout, android.support.v7.b.h.abc_action_menu_item_layout);
  }
  
  public final af a(ViewGroup paramViewGroup)
  {
    paramViewGroup = super.a(paramViewGroup);
    ((ActionMenuView)paramViewGroup).setPresenter(this);
    return paramViewGroup;
  }
  
  public final View a(t paramt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramt.getActionView();
    if ((localView == null) || (paramt.g()))
    {
      localView = paramView;
      if (!(paramView instanceof ActionMenuItemView)) {
        localView = null;
      }
      localView = super.a(paramt, localView, paramViewGroup);
    }
    if (paramt.isActionViewExpanded()) {}
    for (int i = 8;; i = 0)
    {
      localView.setVisibility(i);
      paramt = (ActionMenuView)paramViewGroup;
      paramView = localView.getLayoutParams();
      if (!paramt.checkLayoutParams(paramView)) {
        localView.setLayoutParams(ActionMenuView.a(paramView));
      }
      return localView;
    }
  }
  
  public final void a()
  {
    if (!this.u) {
      this.t = this.i.getResources().getInteger(android.support.v7.b.g.abc_max_action_buttons);
    }
    if (this.j != null) {
      this.j.b(true);
    }
  }
  
  public final void a(int paramInt)
  {
    this.r = paramInt;
    this.v = true;
    this.w = true;
  }
  
  public final void a(Context paramContext, p paramp)
  {
    super.a(paramContext, paramp);
    paramp = paramContext.getResources();
    paramContext = a.a(paramContext);
    boolean bool;
    int i;
    if (!this.q)
    {
      if (Build.VERSION.SDK_INT >= 11)
      {
        bool = true;
        this.a = bool;
      }
    }
    else
    {
      if (!this.w) {
        this.r = (paramContext.a.getResources().getDisplayMetrics().widthPixels / 2);
      }
      if (!this.u) {
        this.t = paramContext.a.getResources().getInteger(android.support.v7.b.g.abc_max_action_buttons);
      }
      i = this.r;
      if (!this.a) {
        break label185;
      }
      if (this.p == null)
      {
        this.p = new f(this, this.h);
        int j = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.p.measure(j, j);
      }
      i -= this.p.getMeasuredWidth();
    }
    for (;;)
    {
      this.s = i;
      this.x = ((int)(56.0F * paramp.getDisplayMetrics().density));
      this.z = null;
      return;
      bool = false;
      break;
      label185:
      this.p = null;
    }
  }
  
  public final void a(p paramp, boolean paramBoolean)
  {
    e();
    super.a(paramp, paramBoolean);
  }
  
  public final void a(t paramt, ag paramag)
  {
    paramag.a(paramt);
    paramt = (ActionMenuView)this.n;
    ((ActionMenuItemView)paramag).setItemInvoker(paramt);
  }
  
  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.a(null);
      return;
    }
    this.j.a(false);
  }
  
  public final boolean a(aj paramaj)
  {
    if (!paramaj.hasVisibleItems()) {
      return false;
    }
    for (Object localObject = paramaj; ((aj)localObject).l != this.j; localObject = (aj)((aj)localObject).l) {}
    MenuItem localMenuItem = ((aj)localObject).getItem();
    ViewGroup localViewGroup = (ViewGroup)this.n;
    int i;
    if (localViewGroup != null)
    {
      int j = localViewGroup.getChildCount();
      i = 0;
      if (i < j)
      {
        localObject = localViewGroup.getChildAt(i);
        if ((!(localObject instanceof ag)) || (((ag)localObject).getItemData() != localMenuItem)) {}
      }
    }
    for (;;)
    {
      if ((localObject != null) || (this.p != null)) {
        break label124;
      }
      return false;
      i += 1;
      break;
      localObject = null;
    }
    label124:
    this.g = paramaj.getItem().getItemId();
    this.d = new d(this, paramaj);
    this.d.a();
    super.a(paramaj);
    return true;
  }
  
  public final boolean a(t paramt)
  {
    return paramt.d();
  }
  
  public final boolean a(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == this.p) {
      return false;
    }
    return super.a(paramViewGroup, paramInt);
  }
  
  public final void b()
  {
    this.t = Integer.MAX_VALUE;
    this.u = true;
  }
  
  public final void b(boolean paramBoolean)
  {
    int j = 1;
    int k = 0;
    super.b(paramBoolean);
    if (this.n == null) {
      return;
    }
    Object localObject;
    int i;
    if (this.j != null)
    {
      localObject = this.j;
      ((p)localObject).h();
      localObject = ((p)localObject).f;
      int m = ((ArrayList)localObject).size();
      i = 0;
      while (i < m)
      {
        j localj = ((t)((ArrayList)localObject).get(i)).e;
        if (localj != null) {
          localj.a(this);
        }
        i += 1;
      }
    }
    if (this.j != null)
    {
      localObject = this.j.i();
      i = k;
      if (this.a)
      {
        i = k;
        if (localObject != null)
        {
          i = ((ArrayList)localObject).size();
          if (i != 1) {
            break label252;
          }
          if (((t)((ArrayList)localObject).get(0)).isActionViewExpanded()) {
            break label246;
          }
          i = 1;
        }
      }
      label150:
      if (i == 0) {
        break label270;
      }
      if (this.p == null) {
        this.p = new f(this, this.h);
      }
      localObject = (ViewGroup)this.p.getParent();
      if (localObject != this.n)
      {
        if (localObject != null) {
          ((ViewGroup)localObject).removeView(this.p);
        }
        ((ActionMenuView)this.n).addView(this.p, ActionMenuView.a());
      }
    }
    for (;;)
    {
      ((ActionMenuView)this.n).setOverflowReserved(this.a);
      return;
      localObject = null;
      break;
      label246:
      i = 0;
      break label150;
      label252:
      if (i > 0) {}
      for (i = j;; i = 0) {
        break;
      }
      label270:
      if ((this.p != null) && (this.p.getParent() == this.n)) {
        ((ViewGroup)this.n).removeView(this.p);
      }
    }
  }
  
  public final boolean c()
  {
    if ((this.a) && (!g()) && (this.j != null) && (this.n != null) && (this.e == null))
    {
      this.e = new e(this, new g(this, this.i, this.j, this.p));
      ((View)this.n).post(this.e);
      super.a(null);
      return true;
    }
    return false;
  }
  
  public final boolean d()
  {
    if ((this.e != null) && (this.n != null))
    {
      ((View)this.n).removeCallbacks(this.e);
      this.e = null;
      return true;
    }
    g localg = this.c;
    if (localg != null)
    {
      localg.c();
      return true;
    }
    return false;
  }
  
  public final boolean e()
  {
    return d() | f();
  }
  
  public final boolean f()
  {
    if (this.d != null)
    {
      this.d.b();
      return true;
    }
    return false;
  }
  
  public final boolean g()
  {
    return (this.c != null) && (this.c.d());
  }
  
  public final boolean h()
  {
    ArrayList localArrayList = this.j.g();
    int i4 = localArrayList.size();
    int i = this.t;
    int i3 = this.s;
    int i5 = View.MeasureSpec.makeMeasureSpec(0, 0);
    ViewGroup localViewGroup = (ViewGroup)this.n;
    int k = 0;
    int m = 0;
    int n = 0;
    int j = 0;
    Object localObject1;
    if (j < i4)
    {
      localObject1 = (t)localArrayList.get(j);
      if (((t)localObject1).f())
      {
        k += 1;
        label83:
        if ((!this.b) || (!((t)localObject1).isActionViewExpanded())) {
          break label871;
        }
        i = 0;
      }
    }
    label322:
    label480:
    label555:
    label597:
    label680:
    label692:
    label698:
    label825:
    label859:
    label871:
    for (;;)
    {
      j += 1;
      break;
      if (((t)localObject1).e())
      {
        m += 1;
        break label83;
      }
      n = 1;
      break label83;
      j = i;
      if (this.a) {
        if (n == 0)
        {
          j = i;
          if (k + m <= i) {}
        }
        else
        {
          j = i - 1;
        }
      }
      j -= k;
      localObject1 = this.y;
      ((SparseBooleanArray)localObject1).clear();
      int i1;
      if (this.v)
      {
        i = i3 / this.x;
        k = this.x;
        m = this.x;
        i1 = i3 % k / i + m;
      }
      for (;;)
      {
        n = 0;
        int i2 = 0;
        k = i;
        i = j;
        m = i3;
        j = n;
        t localt;
        Object localObject2;
        if (i2 < i4)
        {
          localt = (t)localArrayList.get(i2);
          if (localt.f())
          {
            localObject2 = a(localt, this.z, localViewGroup);
            if (this.z == null) {
              this.z = ((View)localObject2);
            }
            if (this.v)
            {
              n = k - ActionMenuView.a((View)localObject2, i1, k, i5, 0);
              k = ((View)localObject2).getMeasuredWidth();
              if (j != 0) {
                break label859;
              }
              j = k;
            }
          }
        }
        for (;;)
        {
          i3 = localt.getGroupId();
          if (i3 != 0) {
            ((SparseBooleanArray)localObject1).put(i3, true);
          }
          localt.c(true);
          k = m - k;
          m = i;
          i = n;
          for (;;)
          {
            i3 = i2 + 1;
            n = k;
            i2 = m;
            k = i;
            m = n;
            i = i2;
            i2 = i3;
            break;
            ((View)localObject2).measure(i5, i5);
            n = k;
            break label322;
            if (localt.e())
            {
              int i6 = localt.getGroupId();
              boolean bool = ((SparseBooleanArray)localObject1).get(i6);
              int i7;
              if (((i > 0) || (bool)) && (m > 0) && ((!this.v) || (k > 0)))
              {
                i7 = 1;
                if (i7 == 0) {
                  break label825;
                }
                localObject2 = a(localt, this.z, localViewGroup);
                if (this.z == null) {
                  this.z = ((View)localObject2);
                }
                if (!this.v) {
                  break label680;
                }
                i3 = ActionMenuView.a((View)localObject2, i1, k, i5, 0);
                n = k - i3;
                k = n;
                if (i3 == 0)
                {
                  i7 = 0;
                  k = n;
                }
                i3 = ((View)localObject2).getMeasuredWidth();
                m -= i3;
                n = j;
                if (j == 0) {
                  n = i3;
                }
                if (!this.v) {
                  break label698;
                }
                if (m < 0) {
                  break label692;
                }
                j = 1;
                i7 &= j;
                j = k;
                k = n;
              }
              for (;;)
              {
                if ((i7 != 0) && (i6 != 0)) {
                  ((SparseBooleanArray)localObject1).put(i6, true);
                }
                for (;;)
                {
                  n = i;
                  if (i7 != 0) {
                    n = i - 1;
                  }
                  localt.c(i7);
                  i3 = k;
                  k = m;
                  m = n;
                  i = j;
                  j = i3;
                  break;
                  int i8 = 0;
                  break label480;
                  ((View)localObject2).measure(i5, i5);
                  break label555;
                  j = 0;
                  break label597;
                  if (m + n > 0) {}
                  for (j = 1;; j = 0)
                  {
                    i8 &= j;
                    j = k;
                    k = n;
                    break;
                  }
                  if (bool)
                  {
                    ((SparseBooleanArray)localObject1).put(i6, false);
                    i3 = 0;
                    while (i3 < i2)
                    {
                      localObject2 = (t)localArrayList.get(i3);
                      n = i;
                      if (((t)localObject2).getGroupId() == i6)
                      {
                        n = i;
                        if (((t)localObject2).d()) {
                          n = i + 1;
                        }
                        ((t)localObject2).c(false);
                      }
                      i3 += 1;
                      i = n;
                      continue;
                      return true;
                    }
                  }
                }
                n = k;
                k = j;
                j = n;
              }
            }
            n = i;
            i = k;
            k = m;
            m = n;
          }
        }
        i1 = 0;
        i = 0;
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */