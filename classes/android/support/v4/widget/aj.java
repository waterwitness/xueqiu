package android.support.v4.widget;

import android.view.View;

final class aj
  extends as
{
  private aj(SlidingPaneLayout paramSlidingPaneLayout) {}
  
  public final void a(int paramInt)
  {
    if (SlidingPaneLayout.b(this.a).a == 0)
    {
      if (SlidingPaneLayout.c(this.a) == 0.0F)
      {
        this.a.a(SlidingPaneLayout.d(this.a));
        localSlidingPaneLayout = this.a;
        SlidingPaneLayout.d(this.a);
        localSlidingPaneLayout.sendAccessibilityEvent(32);
        SlidingPaneLayout.a(this.a, false);
      }
    }
    else {
      return;
    }
    SlidingPaneLayout localSlidingPaneLayout = this.a;
    SlidingPaneLayout.d(this.a);
    localSlidingPaneLayout.sendAccessibilityEvent(32);
    SlidingPaneLayout.a(this.a, true);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    SlidingPaneLayout.b(this.a).a(SlidingPaneLayout.d(this.a), paramInt2);
  }
  
  public final void a(View paramView, float paramFloat)
  {
    ak localak = (ak)paramView.getLayoutParams();
    int i;
    int j;
    if (SlidingPaneLayout.e(this.a))
    {
      i = this.a.getPaddingRight();
      j = localak.rightMargin + i;
      if (paramFloat >= 0.0F)
      {
        i = j;
        if (paramFloat == 0.0F)
        {
          i = j;
          if (SlidingPaneLayout.c(this.a) <= 0.5F) {}
        }
      }
      else
      {
        i = j + SlidingPaneLayout.f(this.a);
      }
      j = SlidingPaneLayout.d(this.a).getWidth();
      i = this.a.getWidth() - i - j;
    }
    for (;;)
    {
      SlidingPaneLayout.b(this.a).a(i, paramView.getTop());
      this.a.invalidate();
      return;
      i = this.a.getPaddingLeft();
      j = localak.leftMargin + i;
      if (paramFloat <= 0.0F)
      {
        i = j;
        if (paramFloat == 0.0F)
        {
          i = j;
          if (SlidingPaneLayout.c(this.a) <= 0.5F) {}
        }
      }
      else
      {
        i = j + SlidingPaneLayout.f(this.a);
      }
    }
  }
  
  public final void a(View paramView, int paramInt)
  {
    SlidingPaneLayout.a(this.a, paramInt);
    this.a.invalidate();
  }
  
  public final boolean a(View paramView)
  {
    if (SlidingPaneLayout.a(this.a)) {
      return false;
    }
    return ((ak)paramView.getLayoutParams()).b;
  }
  
  public final int b(View paramView, int paramInt)
  {
    paramView = (ak)SlidingPaneLayout.d(this.a).getLayoutParams();
    if (SlidingPaneLayout.e(this.a))
    {
      i = this.a.getWidth();
      j = this.a.getPaddingRight();
      i -= paramView.rightMargin + j + SlidingPaneLayout.d(this.a).getWidth();
      j = SlidingPaneLayout.f(this.a);
      return Math.max(Math.min(paramInt, i), i - j);
    }
    int i = this.a.getPaddingLeft();
    i = paramView.leftMargin + i;
    int j = SlidingPaneLayout.f(this.a);
    return Math.min(Math.max(paramInt, i), j + i);
  }
  
  public final void b(View paramView)
  {
    this.a.a();
  }
  
  public final int c(View paramView)
  {
    return SlidingPaneLayout.f(this.a);
  }
  
  public final int d(View paramView)
  {
    return paramView.getTop();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\aj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */