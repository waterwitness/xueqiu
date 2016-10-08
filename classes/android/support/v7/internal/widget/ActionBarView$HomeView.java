package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v7.b.f;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import java.util.List;

class ActionBarView$HomeView
  extends FrameLayout
{
  ImageView a;
  int b;
  Drawable c;
  private ImageView d;
  private int e;
  
  public ActionBarView$HomeView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarView$HomeView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public final int a()
  {
    if (this.a.getVisibility() == 8) {
      return this.e;
    }
    return 0;
  }
  
  public final void a(int paramInt)
  {
    this.b = paramInt;
    ImageView localImageView = this.a;
    if (paramInt != 0) {}
    for (Drawable localDrawable = getResources().getDrawable(paramInt);; localDrawable = this.c)
    {
      localImageView.setImageDrawable(localDrawable);
      return;
    }
  }
  
  public final void a(Drawable paramDrawable)
  {
    this.d.setImageDrawable(paramDrawable);
  }
  
  public final void a(boolean paramBoolean)
  {
    ImageView localImageView = this.a;
    if (paramBoolean) {}
    for (int i = 0;; i = 8)
    {
      localImageView.setVisibility(i);
      return;
    }
  }
  
  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    CharSequence localCharSequence = getContentDescription();
    if (!TextUtils.isEmpty(localCharSequence)) {
      paramAccessibilityEvent.getText().add(localCharSequence);
    }
    return true;
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    if (this.b != 0) {
      a(this.b);
    }
  }
  
  protected void onFinishInflate()
  {
    this.a = ((ImageView)findViewById(f.up));
    this.d = ((ImageView)findViewById(f.home));
    this.c = this.a.getDrawable();
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = 0;
    int j = (paramInt4 - paramInt2) / 2;
    paramInt2 = i;
    paramInt4 = paramInt1;
    if (this.a.getVisibility() != 8)
    {
      localLayoutParams = (FrameLayout.LayoutParams)this.a.getLayoutParams();
      paramInt4 = this.a.getMeasuredHeight();
      paramInt2 = this.a.getMeasuredWidth();
      i = j - paramInt4 / 2;
      this.a.layout(0, i, paramInt2, paramInt4 + i);
      paramInt4 = localLayoutParams.leftMargin;
      paramInt2 = localLayoutParams.rightMargin + (paramInt4 + paramInt2);
      paramInt4 = paramInt1 + paramInt2;
    }
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)this.d.getLayoutParams();
    paramInt1 = this.d.getMeasuredHeight();
    i = this.d.getMeasuredWidth();
    paramInt3 = (paramInt3 - paramInt4) / 2;
    paramInt2 += Math.max(localLayoutParams.leftMargin, paramInt3 - i / 2);
    paramInt3 = Math.max(localLayoutParams.topMargin, j - paramInt1 / 2);
    this.d.layout(paramInt2, paramInt3, i + paramInt2, paramInt1 + paramInt3);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    measureChildWithMargins(this.a, paramInt1, 0, paramInt2, 0);
    FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)this.a.getLayoutParams();
    this.e = (localLayoutParams.leftMargin + this.a.getMeasuredWidth() + localLayoutParams.rightMargin);
    int i;
    int j;
    int k;
    int m;
    if (this.a.getVisibility() == 8)
    {
      i = 0;
      j = localLayoutParams.topMargin;
      k = this.a.getMeasuredHeight();
      m = localLayoutParams.bottomMargin;
      measureChildWithMargins(this.d, paramInt1, i, paramInt2, 0);
      localLayoutParams = (FrameLayout.LayoutParams)this.d.getLayoutParams();
      i += localLayoutParams.leftMargin + this.d.getMeasuredWidth() + localLayoutParams.rightMargin;
      int n = localLayoutParams.topMargin;
      int i1 = this.d.getMeasuredHeight();
      j = Math.max(j + k + m, localLayoutParams.bottomMargin + (n + i1));
      i1 = View.MeasureSpec.getMode(paramInt1);
      n = View.MeasureSpec.getMode(paramInt2);
      m = View.MeasureSpec.getSize(paramInt1);
      k = View.MeasureSpec.getSize(paramInt2);
      paramInt1 = m;
      switch (i1)
      {
      default: 
        paramInt1 = i;
      case 1073741824: 
        label223:
        paramInt2 = k;
        switch (n)
        {
        }
        break;
      }
    }
    for (paramInt2 = j;; paramInt2 = Math.min(j, k))
    {
      setMeasuredDimension(paramInt1, paramInt2);
      return;
      i = this.e;
      break;
      paramInt1 = Math.min(i, m);
      break label223;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\ActionBarView$HomeView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */