package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.v7.a.e;
import android.support.v7.b.c;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;

public class ScrollingTabContainerView$TabView
  extends LinearLayout
{
  e a;
  ScrollingTabContainerView b;
  private TextView c;
  private ImageView d;
  private View e;
  
  public ScrollingTabContainerView$TabView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public final void a()
  {
    Object localObject1 = this.a;
    Object localObject2 = ((e)localObject1).d();
    if (localObject2 != null)
    {
      localObject1 = ((View)localObject2).getParent();
      if (localObject1 != this)
      {
        if (localObject1 != null) {
          ((ViewGroup)localObject1).removeView((View)localObject2);
        }
        addView((View)localObject2);
      }
      this.e = ((View)localObject2);
      if (this.c != null) {
        this.c.setVisibility(8);
      }
      if (this.d != null)
      {
        this.d.setVisibility(8);
        this.d.setImageDrawable(null);
      }
    }
    label329:
    label354:
    for (;;)
    {
      return;
      if (this.e != null)
      {
        removeView(this.e);
        this.e = null;
      }
      Object localObject3 = ((e)localObject1).b();
      localObject2 = ((e)localObject1).c();
      if (localObject3 != null)
      {
        Object localObject4;
        if (this.d == null)
        {
          localObject4 = new ImageView(getContext());
          LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
          localLayoutParams.gravity = 16;
          ((ImageView)localObject4).setLayoutParams(localLayoutParams);
          addView((View)localObject4, 0);
          this.d = ((ImageView)localObject4);
        }
        this.d.setImageDrawable((Drawable)localObject3);
        this.d.setVisibility(0);
        if (localObject2 == null) {
          break label329;
        }
        if (this.c == null)
        {
          localObject3 = new CompatTextView(getContext(), null, c.actionBarTabTextStyle);
          ((TextView)localObject3).setEllipsize(TextUtils.TruncateAt.END);
          localObject4 = new LinearLayout.LayoutParams(-2, -2);
          ((LinearLayout.LayoutParams)localObject4).gravity = 16;
          ((TextView)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
          addView((View)localObject3);
          this.c = ((TextView)localObject3);
        }
        this.c.setText((CharSequence)localObject2);
        this.c.setVisibility(0);
      }
      for (;;)
      {
        if (this.d == null) {
          break label354;
        }
        this.d.setContentDescription(((e)localObject1).f());
        return;
        if (this.d == null) {
          break;
        }
        this.d.setVisibility(8);
        this.d.setImageDrawable(null);
        break;
        if (this.c != null)
        {
          this.c.setVisibility(8);
          this.c.setText(null);
        }
      }
    }
  }
  
  public e getTab()
  {
    return this.a;
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.b != null) {}
    for (paramInt1 = this.b.b;; paramInt1 = 0)
    {
      if ((paramInt1 > 0) && (getMeasuredWidth() > paramInt1)) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(paramInt1, 1073741824), paramInt2);
      }
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\ScrollingTabContainerView$TabView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */