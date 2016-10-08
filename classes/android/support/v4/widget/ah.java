package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.a;
import android.support.v4.view.a.f;
import android.support.v4.view.a.k;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;

final class ah
  extends a
{
  private final Rect c = new Rect();
  
  ah(SlidingPaneLayout paramSlidingPaneLayout) {}
  
  private boolean b(View paramView)
  {
    return this.b.b(paramView);
  }
  
  public final void a(View paramView, f paramf)
  {
    f localf = f.a(paramf);
    super.a(paramView, localf);
    Rect localRect = this.c;
    localf.a(localRect);
    paramf.b(localRect);
    localf.c(localRect);
    paramf.d(localRect);
    paramf.c(localf.d());
    paramf.a(localf.j());
    paramf.b(localf.k());
    paramf.c(localf.l());
    paramf.h(localf.i());
    paramf.f(localf.g());
    paramf.a(localf.b());
    paramf.b(localf.c());
    paramf.d(localf.e());
    paramf.e(localf.f());
    paramf.g(localf.h());
    paramf.a(localf.a());
    int i = f.a.r(localf.b);
    f.a.b(paramf.b, i);
    localf.m();
    paramf.b(SlidingPaneLayout.class.getName());
    paramf.a(paramView);
    paramView = ViewCompat.i(paramView);
    if ((paramView instanceof View)) {
      paramf.c((View)paramView);
    }
    int j = this.b.getChildCount();
    i = 0;
    while (i < j)
    {
      paramView = this.b.getChildAt(i);
      if ((!b(paramView)) && (paramView.getVisibility() == 0))
      {
        ViewCompat.c(paramView, 1);
        paramf.b(paramView);
      }
      i += 1;
    }
  }
  
  public final boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (!b(paramView)) {
      return super.a(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
  
  public final void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\ah.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */