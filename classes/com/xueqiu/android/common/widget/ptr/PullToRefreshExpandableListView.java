package com.xueqiu.android.common.widget.ptr;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextMenu.ContextMenuInfo;
import android.widget.ExpandableListView;

public class PullToRefreshExpandableListView
  extends c<ExpandableListView>
{
  public PullToRefreshExpandableListView(Context paramContext)
  {
    super(paramContext);
  }
  
  public PullToRefreshExpandableListView(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }
  
  public PullToRefreshExpandableListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ContextMenu.ContextMenuInfo getContextMenuInfo()
  {
    return ((i)getRefreshableView()).getContextMenuInfo();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ptr\PullToRefreshExpandableListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */