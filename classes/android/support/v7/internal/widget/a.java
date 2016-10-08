package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v7.b.d;
import android.support.v7.b.k;
import android.support.v7.internal.view.menu.ActionMenuView;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;

abstract class a
  extends ViewGroup
{
  protected ActionMenuView a;
  protected android.support.v7.internal.view.menu.c b;
  protected ActionBarContainer c;
  protected boolean d;
  protected boolean e;
  protected int f;
  
  a(Context paramContext)
  {
    super(paramContext);
  }
  
  a(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected static int a(View paramView, int paramInt1, int paramInt2)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, Integer.MIN_VALUE), paramInt2);
    return Math.max(0, paramInt1 - paramView.getMeasuredWidth() + 0);
  }
  
  protected static int a(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    paramInt2 = (paramInt3 - j) / 2 + paramInt2;
    paramView.layout(paramInt1, paramInt2, paramInt1 + i, j + paramInt2);
    return i;
  }
  
  protected static int b(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    paramInt2 = (paramInt3 - j) / 2 + paramInt2;
    paramView.layout(paramInt1 - i, paramInt2, paramInt1, j + paramInt2);
    return i;
  }
  
  public boolean a()
  {
    if (this.b != null) {
      return this.b.c();
    }
    return false;
  }
  
  public void b()
  {
    post(new Runnable()
    {
      public final void run()
      {
        a.this.a();
      }
    });
  }
  
  public boolean c()
  {
    if (this.b != null) {
      return this.b.d();
    }
    return false;
  }
  
  public boolean d()
  {
    if (this.b != null) {
      return this.b.g();
    }
    return false;
  }
  
  public boolean e()
  {
    return (this.b != null) && (this.b.a);
  }
  
  public void f()
  {
    if (this.b != null) {
      this.b.e();
    }
  }
  
  public int getAnimatedVisibility()
  {
    return getVisibility();
  }
  
  public int getContentHeight()
  {
    return this.f;
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    paramConfiguration = getContext().obtainStyledAttributes(null, k.ActionBar, android.support.v7.b.c.actionBarStyle, 0);
    setContentHeight(paramConfiguration.getLayoutDimension(0, 0));
    paramConfiguration.recycle();
    if (this.e) {
      setSplitActionBar(getContext().getResources().getBoolean(d.abc_split_action_bar_is_narrow));
    }
    if (this.b != null) {
      this.b.a();
    }
  }
  
  public void setContentHeight(int paramInt)
  {
    this.f = paramInt;
    requestLayout();
  }
  
  public void setSplitActionBar(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  public void setSplitView(ActionBarContainer paramActionBarContainer)
  {
    this.c = paramActionBarContainer;
  }
  
  public void setSplitWhenNarrow(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }
  
  public void setVisibility(int paramInt)
  {
    if (paramInt != getVisibility()) {
      super.setVisibility(paramInt);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */