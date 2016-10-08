package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.text.TextUtils.TruncateAt;
import android.util.TypedValue;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;

final class n
  extends FrameLayout
{
  TextView a;
  int b;
  
  public n(TabPageIndicator paramTabPageIndicator, Context paramContext)
  {
    super(paramContext);
    this.a = new TextView(paramContext, null, g.vpiTabPageIndicatorStyle);
    this.a.setEllipsize(TextUtils.TruncateAt.END);
    float f = TypedValue.applyDimension(1, 40.0F, paramContext.getResources().getDisplayMetrics());
    this.a.setMinimumWidth((int)f);
    paramContext = new FrameLayout.LayoutParams(-2, -2);
    paramContext.gravity = 17;
    paramContext.setMargins(TabPageIndicator.d(paramTabPageIndicator), 0, TabPageIndicator.d(paramTabPageIndicator), 0);
    addView(this.a, paramContext);
  }
  
  public final void setSelected(boolean paramBoolean)
  {
    super.setSelected(paramBoolean);
    if (paramBoolean)
    {
      this.a.setTypeface(Typeface.DEFAULT_BOLD);
      return;
    }
    this.a.setTypeface(Typeface.DEFAULT);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\viewpagerindicator\n.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */