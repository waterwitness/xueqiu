package com.xueqiu.android.trade.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;

public class EdgeScrollView
  extends ScrollView
{
  private c a;
  private boolean b = false;
  
  public EdgeScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.b = true;
    int i = getScrollX();
    int j = getScrollY();
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    scrollTo(i, j);
    this.b = false;
  }
  
  protected void onScrollChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onScrollChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((!this.b) && (getChildAt(getChildCount() - 1).getBottom() - (getHeight() + getScrollY()) == 0) && (this.a != null)) {
      this.a.n();
    }
  }
  
  public void setOnReachEdgeListener(c paramc)
  {
    this.a = paramc;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\view\EdgeScrollView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */