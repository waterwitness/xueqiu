package com.xueqiu.android.common.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextMenu.ContextMenuInfo;
import android.widget.ListView;

public final class x
  extends SNBPullToRefreshListView
{
  public x(Context paramContext)
  {
    super(paramContext);
  }
  
  protected final ListView a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new y(this, paramContext, paramAttributeSet);
  }
  
  public final ContextMenu.ContextMenuInfo getContextMenuInfo()
  {
    return ((y)getRefreshableView()).getContextMenuInfo();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */