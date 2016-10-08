package android.support.v4.view;

import android.os.Bundle;
import android.support.v4.view.a.ac;
import android.support.v4.view.a.f;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;

final class cn
  extends a
{
  cn(ViewPager paramViewPager) {}
  
  private boolean a()
  {
    return (ViewPager.b(this.b) != null) && (ViewPager.b(this.b).b() > 1);
  }
  
  public final void a(View paramView, f paramf)
  {
    super.a(paramView, paramf);
    paramf.b(ViewPager.class.getName());
    paramf.i(a());
    if (this.b.canScrollHorizontally(1)) {
      paramf.a(4096);
    }
    if (this.b.canScrollHorizontally(-1)) {
      paramf.a(8192);
    }
  }
  
  public final boolean a(View paramView, int paramInt, Bundle paramBundle)
  {
    if (super.a(paramView, paramInt, paramBundle)) {
      return true;
    }
    switch (paramInt)
    {
    default: 
      return false;
    case 4096: 
      if (this.b.canScrollHorizontally(1))
      {
        this.b.setCurrentItem(ViewPager.c(this.b) + 1);
        return true;
      }
      return false;
    }
    if (this.b.canScrollHorizontally(-1))
    {
      this.b.setCurrentItem(ViewPager.c(this.b) - 1);
      return true;
    }
    return false;
  }
  
  public final void d(View paramView, AccessibilityEvent paramAccessibilityEvent)
  {
    super.d(paramView, paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ViewPager.class.getName());
    paramView = ac.a();
    paramView.a(a());
    if ((paramAccessibilityEvent.getEventType() == 4096) && (ViewPager.b(this.b) != null))
    {
      paramView.a(ViewPager.b(this.b).b());
      paramView.b(ViewPager.c(this.b));
      paramView.c(ViewPager.c(this.b));
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\cn.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */