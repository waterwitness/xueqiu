package com.d.a.b.f;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.d.a.b.f;

public final class c
  implements AbsListView.OnScrollListener
{
  private f a;
  private final boolean b;
  private final boolean c;
  private final AbsListView.OnScrollListener d;
  
  public c(f paramf, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramf, paramBoolean1, paramBoolean2, null);
  }
  
  public c(f paramf, boolean paramBoolean1, boolean paramBoolean2, AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.a = paramf;
    this.b = paramBoolean1;
    this.c = paramBoolean2;
    this.d = paramOnScrollListener;
  }
  
  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.d != null) {
      this.d.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    switch (paramInt)
    {
    }
    for (;;)
    {
      if (this.d != null) {
        this.d.onScrollStateChanged(paramAbsListView, paramInt);
      }
      return;
      this.a.g();
      continue;
      if (this.b)
      {
        this.a.f();
        continue;
        if (this.c) {
          this.a.f();
        }
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\d\a\b\f\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */