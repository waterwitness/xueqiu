package com.xueqiu.android.common.widget.ptr;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.View;
import android.widget.ListView;

public class PullToRefreshListView
  extends c<ListView>
{
  private b d;
  private b e;
  private boolean f = false;
  
  public PullToRefreshListView(Context paramContext)
  {
    super(paramContext);
    setDisableScrollingWhileRefreshing(false);
  }
  
  public PullToRefreshListView(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    setDisableScrollingWhileRefreshing(false);
  }
  
  public PullToRefreshListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setDisableScrollingWhileRefreshing(false);
  }
  
  public ListView a(Context paramContext, AttributeSet paramAttributeSet)
  {
    return new j(this, paramContext, paramAttributeSet);
  }
  
  public final void a(View paramView)
  {
    super.a(paramView);
    if ((getHeaderLayout() != null) && (paramView != null))
    {
      setDisableScrollingWhileRefreshing(true);
      return;
    }
    setDisableScrollingWhileRefreshing(false);
  }
  
  public void f()
  {
    if (this.f)
    {
      this.d.postDelayed(new Runnable()
      {
        public final void run()
        {
          PullToRefreshListView.a(PullToRefreshListView.this).setVisibility(8);
          PullToRefreshListView.a(PullToRefreshListView.this).a();
          PullToRefreshListView.b(PullToRefreshListView.this);
          PullToRefreshListView.this.setPullToRefreshEnabled(true);
        }
      }, 100L);
      return;
    }
    super.f();
  }
  
  public ContextMenu.ContextMenuInfo getContextMenuInfo()
  {
    return ((j)getRefreshableView()).getContextMenuInfo();
  }
  
  protected final void l()
  {
    int i = getHeaderHeight();
    b localb2;
    b localb1;
    switch (getCurrentMode())
    {
    default: 
      localb2 = getHeaderLayout();
      localb1 = this.d;
      i *= -1;
    }
    for (boolean bool = g();; bool = i())
    {
      if (!this.b)
      {
        localb2.setVisibility(0);
        if (bool) {
          setHeaderScroll(i);
        }
        localb1.setVisibility(8);
      }
      super.l();
      return;
      localb2 = getFooterLayout();
      localb1 = this.e;
    }
  }
  
  public final void m()
  {
    ((ListView)getRefreshableView()).setSelection(0);
    this.f = true;
    setPullToRefreshEnabled(false);
    this.d.setVisibility(0);
    this.d.c();
    this.c.a();
  }
  
  public void setPullLabel(String paramString)
  {
    super.setPullLabel(paramString);
    if (this.d != null) {
      this.d.setPullLabel(paramString);
    }
    if (this.e != null) {
      this.e.setPullLabel(paramString);
    }
  }
  
  protected void setRefreshingInternal(boolean paramBoolean)
  {
    super.setRefreshingInternal(false);
    b localb1;
    b localb2;
    int i;
    int j;
    switch (getCurrentMode())
    {
    default: 
      localb1 = getHeaderLayout();
      localb2 = this.d;
      i = getScrollY() + getHeaderHeight();
      j = 0;
    }
    while (!this.b)
    {
      if (paramBoolean) {
        setHeaderScroll(i);
      }
      localb1.setVisibility(4);
      localb2.setVisibility(0);
      localb2.c();
      if (paramBoolean)
      {
        ((ListView)this.a).setSelection(j);
        a(0);
      }
      return;
      localb1 = getFooterLayout();
      localb2 = this.e;
      j = ((ListView)this.a).getCount() - 1;
      i = getScrollY() - getHeaderHeight();
    }
    super.setRefreshingInternal(false);
  }
  
  public void setRefreshingLabel(String paramString)
  {
    super.setRefreshingLabel(paramString);
    if (this.d != null) {
      this.d.setRefreshingLabel(paramString);
    }
    if (this.e != null) {
      this.e.setRefreshingLabel(paramString);
    }
  }
  
  public void setReleaseLabel(String paramString)
  {
    super.setReleaseLabel(paramString);
    if (this.d != null) {
      this.d.setReleaseLabel(paramString);
    }
    if (this.e != null) {
      this.e.setReleaseLabel(paramString);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\ptr\PullToRefreshListView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */