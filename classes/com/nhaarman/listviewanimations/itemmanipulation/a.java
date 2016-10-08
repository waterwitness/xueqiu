package com.nhaarman.listviewanimations.itemmanipulation;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.nhaarman.listviewanimations.itemmanipulation.b.a.b;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;

final class a
  implements AbsListView.OnScrollListener
{
  final Collection<AbsListView.OnScrollListener> a = new HashSet();
  
  private a(DynamicListView paramDynamicListView) {}
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((AbsListView.OnScrollListener)localIterator.next()).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext()) {
      ((AbsListView.OnScrollListener)localIterator.next()).onScrollStateChanged(paramAbsListView, paramInt);
    }
    if ((paramInt == 1) && ((DynamicListView.a(this.b) instanceof b))) {
      ((b)DynamicListView.a(this.b)).c();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */