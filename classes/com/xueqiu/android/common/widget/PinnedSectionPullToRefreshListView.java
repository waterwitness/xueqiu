package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextMenu.ContextMenuInfo;
import android.widget.ListView;

public class PinnedSectionPullToRefreshListView
  extends SNBPullToRefreshListView
{
  public PinnedSectionPullToRefreshListView(Context paramContext)
  {
    super(paramContext);
  }
  
  public PinnedSectionPullToRefreshListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  protected final ListView a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new w(this, paramContext, paramAttributeSet);
  }
  
  public ContextMenu.ContextMenuInfo getContextMenuInfo()
  {
    return ((w)getRefreshableView()).getContextMenuInfo();
  }
  
  public void setShadowVisible(boolean paramBoolean)
  {
    ((w)getRefreshableView()).setShadowVisible(paramBoolean);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\PinnedSectionPullToRefreshListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */