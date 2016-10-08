package com.xueqiu.android.common.widget.ptr;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ScrollView;

public class PullToRefreshScrollView
  extends d<ScrollView>
{
  public PullToRefreshScrollView(Context paramContext)
  {
    super(paramContext);
  }
  
  public PullToRefreshScrollView(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }
  
  public PullToRefreshScrollView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected final boolean g()
  {
    return ((ScrollView)this.a).getScrollY() == 0;
  }
  
  protected final boolean h()
  {
    View localView = ((ScrollView)this.a).getChildAt(0);
    if (localView != null) {
      return ((ScrollView)this.a).getScrollY() >= localView.getHeight() - getHeight();
    }
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ptr\PullToRefreshScrollView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */