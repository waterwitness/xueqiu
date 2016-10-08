package com.nhaarman.listviewanimations.itemmanipulation.dragdrop;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListAdapter;
import com.nhaarman.listviewanimations.itemmanipulation.DynamicListView;

public final class l
  implements j
{
  @NonNull
  private final DynamicListView a;
  
  public l(@NonNull DynamicListView paramDynamicListView)
  {
    this.a = paramDynamicListView;
  }
  
  public final int a()
  {
    return this.a.computeVerticalScrollOffset();
  }
  
  public final int a(int paramInt1, int paramInt2)
  {
    return this.a.pointToPosition(paramInt1, paramInt2);
  }
  
  public final int a(@NonNull View paramView)
  {
    return this.a.getPositionForView(paramView);
  }
  
  @Nullable
  public final View a(int paramInt)
  {
    return this.a.getChildAt(paramInt);
  }
  
  public final void a(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.a.setOnScrollListener(paramOnScrollListener);
  }
  
  public final int b()
  {
    return this.a.computeVerticalScrollExtent();
  }
  
  public final void b(int paramInt1, int paramInt2)
  {
    this.a.smoothScrollBy(paramInt1, paramInt2);
  }
  
  public final int c()
  {
    return this.a.computeVerticalScrollRange();
  }
  
  public final int d()
  {
    return this.a.getFirstVisiblePosition();
  }
  
  public final int e()
  {
    return this.a.getLastVisiblePosition();
  }
  
  public final int f()
  {
    return this.a.getCount();
  }
  
  public final int g()
  {
    return this.a.getChildCount();
  }
  
  public final int h()
  {
    return this.a.getHeaderViewsCount();
  }
  
  @Nullable
  public final ListAdapter i()
  {
    return this.a.getAdapter();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\dragdrop\l.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */