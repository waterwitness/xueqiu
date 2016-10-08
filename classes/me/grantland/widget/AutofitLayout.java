package me.grantland.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.TextView;
import java.util.WeakHashMap;

public class AutofitLayout
  extends FrameLayout
{
  private boolean a;
  private float b;
  private float c;
  private WeakHashMap<View, a> d = new WeakHashMap();
  
  public AutofitLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (paramAttributeSet != null)
    {
      paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, e.AutofitTextView, paramInt, 0);
      bool = paramContext.getBoolean(e.AutofitTextView_sizeToFit, true);
      i = paramContext.getDimensionPixelSize(e.AutofitTextView_minTextSize, -1);
      f = paramContext.getFloat(e.AutofitTextView_precision, -1.0F);
      paramContext.recycle();
    }
    this.a = bool;
    this.b = i;
    this.c = f;
  }
  
  public void addView(View paramView, int paramInt, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.addView(paramView, paramInt, paramLayoutParams);
    paramView = (TextView)paramView;
    paramLayoutParams = a.a(paramView, null, 0).a(this.a);
    if (this.c > 0.0F) {
      paramLayoutParams.a(this.c);
    }
    if (this.b > 0.0F) {
      paramLayoutParams.a(0, this.b);
    }
    this.d.put(paramView, paramLayoutParams);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\me\grantland\widget\AutofitLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */