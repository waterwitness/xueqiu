package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.a;
import android.support.v4.view.a.g;
import android.support.v4.view.r;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

final class f
  extends a
{
  private final Rect c = new Rect();
  
  f(DrawerLayout paramDrawerLayout) {}
  
  public final void a(View paramView, android.support.v4.view.a.f paramf)
  {
    if (DrawerLayout.b()) {
      super.a(paramView, paramf);
    }
    for (;;)
    {
      paramf.b(DrawerLayout.class.getName());
      paramf.a(false);
      paramf.b(false);
      paramf.a(g.a);
      paramf.a(g.b);
      return;
      Object localObject1 = android.support.v4.view.a.f.a(paramf);
      super.a(paramView, (android.support.v4.view.a.f)localObject1);
      paramf.a(paramView);
      Object localObject2 = ViewCompat.i(paramView);
      if ((localObject2 instanceof View)) {
        paramf.c((View)localObject2);
      }
      localObject2 = this.c;
      ((android.support.v4.view.a.f)localObject1).a((Rect)localObject2);
      paramf.b((Rect)localObject2);
      ((android.support.v4.view.a.f)localObject1).c((Rect)localObject2);
      paramf.d((Rect)localObject2);
      paramf.c(((android.support.v4.view.a.f)localObject1).d());
      paramf.a(((android.support.v4.view.a.f)localObject1).j());
      paramf.b(((android.support.v4.view.a.f)localObject1).k());
      paramf.c(((android.support.v4.view.a.f)localObject1).l());
      paramf.h(((android.support.v4.view.a.f)localObject1).i());
      paramf.f(((android.support.v4.view.a.f)localObject1).g());
      paramf.a(((android.support.v4.view.a.f)localObject1).b());
      paramf.b(((android.support.v4.view.a.f)localObject1).c());
      paramf.d(((android.support.v4.view.a.f)localObject1).e());
      paramf.e(((android.support.v4.view.a.f)localObject1).f());
      paramf.g(((android.support.v4.view.a.f)localObject1).h());
      paramf.a(((android.support.v4.view.a.f)localObject1).a());
      ((android.support.v4.view.a.f)localObject1).m();
      paramView = (ViewGroup)paramView;
      int j = paramView.getChildCount();
      int i = 0;
      while (i < j)
      {
        localObject1 = paramView.getChildAt(i);
        if (DrawerLayout.f((View)localObject1)) {
          paramf.b((View)localObject1);
        }
        i += 1;
      }
    }
  }
  
  public final boolean a(ViewGroup paramViewGroup, View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if ((DrawerLayout.b()) || (DrawerLayout.f(paramView))) {
      return super.a(paramViewGroup, paramView, paramAccessibilityEvent);
    }
    return false;
  }
  
  public final boolean b(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    if (paramAccessibilityEvent.getEventType() == 32)
    {
      paramAccessibilityEvent = paramAccessibilityEvent.getText();
      paramView = DrawerLayout.a(this.b);
      int i;
      if (paramView != null)
      {
        i = this.b.c(paramView);
        paramView = this.b;
        i = r.a(i, ViewCompat.h(paramView));
        if (i != 3) {
          break label73;
        }
        paramView = paramView.e;
      }
      for (;;)
      {
        if (paramView != null) {
          paramAccessibilityEvent.add(paramView);
        }
        return true;
        label73:
        if (i == 5) {
          paramView = paramView.f;
        } else {
          paramView = null;
        }
      }
    }
    return super.b(paramView, paramAccessibilityEvent);
  }
  
  public final void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(DrawerLayout.class.getName());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */