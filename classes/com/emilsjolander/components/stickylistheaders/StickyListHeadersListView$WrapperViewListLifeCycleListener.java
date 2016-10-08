package com.emilsjolander.components.stickylistheaders;

import android.graphics.Canvas;
import android.os.Build.VERSION;

class StickyListHeadersListView$WrapperViewListLifeCycleListener
  implements WrapperViewList.LifeCycleListener
{
  private StickyListHeadersListView$WrapperViewListLifeCycleListener(StickyListHeadersListView paramStickyListHeadersListView) {}
  
  public void onDispatchDrawOccurred(Canvas paramCanvas)
  {
    if (Build.VERSION.SDK_INT < 8) {
      StickyListHeadersListView.access$900(this.this$0, StickyListHeadersListView.access$800(this.this$0).getFixedFirstVisibleItem());
    }
    if (StickyListHeadersListView.access$300(this.this$0) != null)
    {
      if (StickyListHeadersListView.access$1000(this.this$0))
      {
        paramCanvas.save();
        paramCanvas.clipRect(0, StickyListHeadersListView.access$1100(this.this$0), this.this$0.getRight(), this.this$0.getBottom());
        StickyListHeadersListView.access$1200(this.this$0, paramCanvas, StickyListHeadersListView.access$300(this.this$0), 0L);
        paramCanvas.restore();
      }
    }
    else {
      return;
    }
    StickyListHeadersListView.access$1300(this.this$0, paramCanvas, StickyListHeadersListView.access$300(this.this$0), 0L);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\emilsjolander\components\stickylistheaders\StickyListHeadersListView$WrapperViewListLifeCycleListener.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */