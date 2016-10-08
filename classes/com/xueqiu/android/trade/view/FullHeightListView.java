package com.xueqiu.android.trade.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;

public class FullHeightListView
  extends d
{
  public FullHeightListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, View.MeasureSpec.makeMeasureSpec(16777215, Integer.MIN_VALUE));
    getLayoutParams().height = getMeasuredHeight();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\view\FullHeightListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */