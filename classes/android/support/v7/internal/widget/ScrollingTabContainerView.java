package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.support.v7.a.e;
import android.support.v7.b.c;
import android.support.v7.b.h;
import android.support.v7.internal.view.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public final class ScrollingTabContainerView
  extends HorizontalScrollView
  implements q
{
  Runnable a;
  int b;
  int c;
  private LinearLayout d;
  private ag e;
  private boolean f;
  private final LayoutInflater g;
  private int h;
  private int i;
  
  public ScrollingTabContainerView(Context paramContext)
  {
    super(paramContext);
    this.g = LayoutInflater.from(paramContext);
    setHorizontalScrollBarEnabled(false);
    paramContext = a.a(paramContext);
    setContentHeight(paramContext.b());
    this.c = paramContext.c();
    this.d = ((LinearLayout)this.g.inflate(h.abc_action_bar_tabbar, this, false));
    addView(this.d, new ViewGroup.LayoutParams(-2, -1));
  }
  
  private boolean a()
  {
    return (this.e != null) && (this.e.getParent() == this);
  }
  
  private boolean b()
  {
    if (!a()) {
      return false;
    }
    removeView(this.e);
    addView(this.d, new ViewGroup.LayoutParams(-2, -1));
    setTabSelected(this.e.w);
    return false;
  }
  
  public final void a(int paramInt)
  {
    final View localView = this.d.getChildAt(paramInt);
    if (this.a != null) {
      removeCallbacks(this.a);
    }
    this.a = new Runnable()
    {
      public final void run()
      {
        int i = localView.getLeft();
        int j = (ScrollingTabContainerView.this.getWidth() - localView.getWidth()) / 2;
        ScrollingTabContainerView.this.smoothScrollTo(i - j, 0);
        ScrollingTabContainerView.this.a = null;
      }
    };
    post(this.a);
  }
  
  public final void a(View paramView, int paramInt)
  {
    ((ScrollingTabContainerView.TabView)paramView).getTab().e();
  }
  
  public final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.a != null) {
      post(this.a);
    }
  }
  
  protected final void onConfigurationChanged(Configuration paramConfiguration)
  {
    paramConfiguration = a.a(getContext());
    setContentHeight(paramConfiguration.b());
    this.c = paramConfiguration.c();
  }
  
  public final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.a != null) {
      removeCallbacks(this.a);
    }
  }
  
  public final void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = 1;
    int j = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    if (j == 1073741824)
    {
      bool = true;
      setFillViewport(bool);
      int k = this.d.getChildCount();
      if ((k <= 1) || ((j != 1073741824) && (j != Integer.MIN_VALUE))) {
        break label330;
      }
      if (k <= 2) {
        break label317;
      }
      this.b = ((int)(View.MeasureSpec.getSize(paramInt1) * 0.4F));
      label72:
      this.b = Math.min(this.b, this.c);
      label87:
      j = View.MeasureSpec.makeMeasureSpec(this.h, 1073741824);
      if ((bool) || (!this.f)) {
        break label338;
      }
      label110:
      if (paramInt2 == 0) {
        break label351;
      }
      this.d.measure(0, j);
      if (this.d.getMeasuredWidth() <= View.MeasureSpec.getSize(paramInt1)) {
        break label343;
      }
      if (!a())
      {
        if (this.e == null)
        {
          ag localag = new ag(getContext(), c.actionDropDownStyle);
          localag.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
          localag.b(this);
          this.e = localag;
        }
        removeView(this.d);
        addView(this.e, new ViewGroup.LayoutParams(-2, -1));
        if (this.e.a == null) {
          this.e.a(new af(this, (byte)0));
        }
        if (this.a != null)
        {
          removeCallbacks(this.a);
          this.a = null;
        }
        this.e.a(this.i);
      }
    }
    for (;;)
    {
      paramInt2 = getMeasuredWidth();
      super.onMeasure(paramInt1, j);
      paramInt1 = getMeasuredWidth();
      if ((bool) && (paramInt2 != paramInt1)) {
        setTabSelected(this.i);
      }
      return;
      bool = false;
      break;
      label317:
      this.b = (View.MeasureSpec.getSize(paramInt1) / 2);
      break label72;
      label330:
      this.b = -1;
      break label87;
      label338:
      paramInt2 = 0;
      break label110;
      label343:
      b();
      continue;
      label351:
      b();
    }
  }
  
  public final void setAllowCollapse(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }
  
  public final void setContentHeight(int paramInt)
  {
    this.h = paramInt;
    requestLayout();
  }
  
  public final void setTabSelected(int paramInt)
  {
    this.i = paramInt;
    int k = this.d.getChildCount();
    int j = 0;
    if (j < k)
    {
      View localView = this.d.getChildAt(j);
      if (j == paramInt) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        if (bool) {
          a(paramInt);
        }
        j += 1;
        break;
      }
    }
    if ((this.e != null) && (paramInt >= 0)) {
      this.e.a(paramInt);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\ScrollingTabContainerView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */