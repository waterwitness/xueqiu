package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.b.c;
import android.support.v7.b.e;
import android.support.v7.b.h;
import android.support.v7.internal.widget.ListPopupWindow;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.PopupWindow.OnDismissListener;

public class ab
  implements ad, View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  static final int b = h.abc_popup_menu_item_layout;
  private Context a;
  public ae c;
  public boolean d;
  private LayoutInflater e;
  private ListPopupWindow f;
  private p g;
  private int h;
  private View i;
  private boolean j;
  private ViewTreeObserver k;
  private ac l;
  private ViewGroup m;
  
  public ab(Context paramContext, p paramp, View paramView)
  {
    this(paramContext, paramp, paramView, false);
  }
  
  public ab(Context paramContext, p paramp, View paramView, boolean paramBoolean)
  {
    this.a = paramContext;
    this.e = LayoutInflater.from(paramContext);
    this.g = paramp;
    this.j = paramBoolean;
    paramContext = paramContext.getResources();
    this.h = Math.max(paramContext.getDisplayMetrics().widthPixels / 2, paramContext.getDimensionPixelSize(e.abc_config_prefDialogWidth));
    this.i = paramView;
    paramp.a(this);
  }
  
  public final void a()
  {
    if (!b()) {
      throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
    }
  }
  
  public final void a(Context paramContext, p paramp) {}
  
  public final void a(p paramp, boolean paramBoolean)
  {
    if (paramp != this.g) {}
    do
    {
      return;
      c();
    } while (this.c == null);
    this.c.a(paramp, paramBoolean);
  }
  
  public final boolean a(aj paramaj)
  {
    ab localab;
    int n;
    if (paramaj.hasVisibleItems())
    {
      localab = new ab(this.a, paramaj, this.i, false);
      localab.c = this.c;
      int i1 = paramaj.size();
      n = 0;
      if (n >= i1) {
        break label121;
      }
      MenuItem localMenuItem = paramaj.getItem(n);
      if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null)) {}
    }
    label121:
    for (boolean bool = true;; bool = false)
    {
      localab.d = bool;
      if (localab.b())
      {
        if (this.c != null) {
          this.c.b(paramaj);
        }
        return true;
        n += 1;
        break;
      }
      return false;
    }
  }
  
  public final void b(boolean paramBoolean)
  {
    if (this.l != null) {
      this.l.notifyDataSetChanged();
    }
  }
  
  public final boolean b()
  {
    int i3 = 0;
    this.f = new ListPopupWindow(this.a, null, c.popupMenuStyle);
    this.f.a(this);
    this.f.h = this;
    this.l = new ac(this, this.g);
    this.f.a(this.l);
    this.f.a();
    View localView = this.i;
    int n;
    ListPopupWindow localListPopupWindow;
    ac localac;
    int i4;
    int i5;
    int i1;
    int i2;
    if (localView != null) {
      if (this.k == null)
      {
        n = 1;
        this.k = localView.getViewTreeObserver();
        if (n != 0) {
          this.k.addOnGlobalLayoutListener(this);
        }
        this.f.g = localView;
        localListPopupWindow = this.f;
        localac = this.l;
        i4 = View.MeasureSpec.makeMeasureSpec(0, 0);
        i5 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int i6 = localac.getCount();
        i1 = 0;
        localView = null;
        i2 = 0;
        n = i3;
        label164:
        if (i1 >= i6) {
          break label266;
        }
        i3 = localac.getItemViewType(i1);
        if (i3 == n) {
          break label306;
        }
        localView = null;
        n = i3;
      }
    }
    label266:
    label306:
    for (;;)
    {
      if (this.m == null) {
        this.m = new FrameLayout(this.a);
      }
      localView = localac.getView(i1, localView, this.m);
      localView.measure(i4, i5);
      i2 = Math.max(i2, localView.getMeasuredWidth());
      i1 += 1;
      break label164;
      n = 0;
      break;
      return false;
      localListPopupWindow.b(Math.min(i2, this.h));
      this.f.d();
      this.f.b();
      this.f.b.setOnKeyListener(this);
      return true;
    }
  }
  
  public final boolean b(t paramt)
  {
    return false;
  }
  
  public final void c()
  {
    if (d()) {
      this.f.c();
    }
  }
  
  public final boolean c(t paramt)
  {
    return false;
  }
  
  public final boolean d()
  {
    return (this.f != null) && (this.f.a.isShowing());
  }
  
  public final boolean h()
  {
    return false;
  }
  
  public void onDismiss()
  {
    this.f = null;
    this.g.close();
    if (this.k != null)
    {
      if (!this.k.isAlive()) {
        this.k = this.i.getViewTreeObserver();
      }
      this.k.removeGlobalOnLayoutListener(this);
      this.k = null;
    }
  }
  
  public void onGlobalLayout()
  {
    if (d())
    {
      View localView = this.i;
      if ((localView != null) && (localView.isShown())) {
        break label28;
      }
      c();
    }
    label28:
    while (!d()) {
      return;
    }
    this.f.b();
  }
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = this.l;
    ac.a(paramAdapterView).a(paramAdapterView.a(paramInt), 0);
  }
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      c();
      return true;
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\ab.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */