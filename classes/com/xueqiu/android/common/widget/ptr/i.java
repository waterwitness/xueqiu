package com.xueqiu.android.common.widget.ptr;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.ExpandableListView;

final class i
  extends ExpandableListView
  implements a
{
  public i(PullToRefreshExpandableListView paramPullToRefreshExpandableListView, Context paramContext, AttributeSet paramAttributeSet)
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
  
  public final void setEmptyView(View paramView)
  {
    this.a.setEmptyView(paramView);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ptr\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */