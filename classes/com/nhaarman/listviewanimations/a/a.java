package com.nhaarman.listviewanimations.a;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;

public final class a
  implements d
{
  @NonNull
  private final AbsListView a;
  
  public a(@NonNull AbsListView paramAbsListView)
  {
    this.a = paramAbsListView;
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
  
  public final void b(int paramInt1, int paramInt2)
  {
    this.a.smoothScrollBy(paramInt1, paramInt2);
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
    int i = 0;
    if ((this.a instanceof ListView)) {
      i = ((ListView)this.a).getHeaderViewsCount();
    }
    return i;
  }
  
  public final ListAdapter i()
  {
    return (ListAdapter)this.a.getAdapter();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\a\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */