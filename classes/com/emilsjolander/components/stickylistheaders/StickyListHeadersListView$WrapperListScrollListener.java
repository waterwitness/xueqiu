package com.emilsjolander.components.stickylistheaders;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class StickyListHeadersListView$WrapperListScrollListener
  implements AbsListView.OnScrollListener
{
  private StickyListHeadersListView$WrapperListScrollListener(StickyListHeadersListView paramStickyListHeadersListView) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (StickyListHeadersListView.access$700(this.this$0) != null) {
      StickyListHeadersListView.access$700(this.this$0).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
    StickyListHeadersListView.access$900(this.this$0, StickyListHeadersListView.access$800(this.this$0).getFixedFirstVisibleItem());
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (StickyListHeadersListView.access$700(this.this$0) != null) {
      StickyListHeadersListView.access$700(this.this$0).onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\emilsjolander\components\stickylistheaders\StickyListHeadersListView$WrapperListScrollListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */