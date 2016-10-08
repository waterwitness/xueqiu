package se.emilsjolander.stickylistheaders;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

final class r
  implements AbsListView.OnScrollListener
{
  private r(StickyListHeadersListView paramStickyListHeadersListView) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (StickyListHeadersListView.e(this.a) != null) {
      StickyListHeadersListView.e(this.a).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
    StickyListHeadersListView.a(this.a, StickyListHeadersListView.f(this.a).a());
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (StickyListHeadersListView.e(this.a) != null) {
      StickyListHeadersListView.e(this.a).onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\r.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */