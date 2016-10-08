package com.xueqiu.android.common.widget.ptr;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.FrameLayout;

public abstract class c<T extends AbsListView>
  extends d<T>
  implements AbsListView.OnScrollListener
{
  private int d = -1;
  private AbsListView.OnScrollListener e;
  private f f;
  private View g;
  private FrameLayout h;
  
  public c(Context paramContext)
  {
    super(paramContext);
    ((AbsListView)this.a).setOnScrollListener(this);
  }
  
  public c(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    ((AbsListView)this.a).setOnScrollListener(this);
  }
  
  public c(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    ((AbsListView)this.a).setOnScrollListener(this);
  }
  
  protected final boolean g()
  {
    if (((AbsListView)this.a).getCount() == 0) {
      return true;
    }
    if (((AbsListView)this.a).getFirstVisiblePosition() == 0)
    {
      View localView = ((AbsListView)this.a).getChildAt(0);
      if (localView != null) {
        return localView.getTop() >= ((AbsListView)this.a).getTop();
      }
    }
    return false;
  }
  
  public abstract ContextMenu.ContextMenuInfo getContextMenuInfo();
  
  protected AbsListView.OnScrollListener getScrollListener()
  {
    return this.e;
  }
  
  protected final boolean h()
  {
    return i();
  }
  
  public final boolean i()
  {
    int j = ((AbsListView)this.a).getCount();
    int i = ((AbsListView)this.a).getLastVisiblePosition();
    if (j == 0) {
      return true;
    }
    if (i == j - 1)
    {
      j = ((AbsListView)this.a).getFirstVisiblePosition();
      View localView = ((AbsListView)this.a).getChildAt(i - j);
      if (localView != null) {
        return localView.getBottom() <= ((AbsListView)this.a).getBottom();
      }
    }
    return false;
  }
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((this.f != null) && (paramInt2 > 0) && (paramInt1 + paramInt2 == paramInt3) && (paramInt1 != this.d))
    {
      this.d = paramInt1;
      this.f.a();
    }
    if (this.e != null) {
      this.e.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (this.e != null) {
      this.e.onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
  
  public final void setEmptyView(View paramView)
  {
    if (this.g != null) {
      this.h.removeView(this.g);
    }
    if (paramView != null)
    {
      ViewParent localViewParent = paramView.getParent();
      if ((localViewParent != null) && ((localViewParent instanceof ViewGroup))) {
        ((ViewGroup)localViewParent).removeView(paramView);
      }
      this.h.addView(paramView, -1, -1);
    }
    if ((this.a instanceof a))
    {
      ((a)this.a).a(paramView);
      return;
    }
    ((AbsListView)this.a).setEmptyView(paramView);
  }
  
  public final void setOnLastItemVisibleListener(f paramf)
  {
    this.f = paramf;
  }
  
  public void setOnScrollListener(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.e = paramOnScrollListener;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ptr\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */