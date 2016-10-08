package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import com.nhaarman.listviewanimations.itemmanipulation.DynamicListView;
import com.xueqiu.android.common.widget.ptr.a;

final class y
  extends DynamicListView
  implements a
{
  public y(x paramx, Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public final void a(View paramView)
  {
    super.setEmptyView(paramView);
  }
  
  public final ContextMenu.ContextMenuInfo getContextMenuInfo()
  {
    return super.getContextMenuInfo();
  }
  
  public final boolean performItemClick(View paramView, int paramInt, long paramLong)
  {
    if ((paramInt + 1 > getHeaderViewsCount()) && (paramInt + 1 <= getCount() - getFooterViewsCount())) {
      return super.performItemClick(paramView, paramInt, paramLong);
    }
    return false;
  }
  
  public final void setEmptyView(View paramView)
  {
    super.setEmptyView(paramView);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\y.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */