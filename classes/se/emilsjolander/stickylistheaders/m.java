package se.emilsjolander.stickylistheaders;

import android.database.DataSetObserver;

final class m
  extends DataSetObserver
{
  private m(StickyListHeadersListView paramStickyListHeadersListView) {}
  
  public final void onChanged()
  {
    StickyListHeadersListView.d(this.a);
  }
  
  public final void onInvalidated()
  {
    StickyListHeadersListView.d(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\m.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */