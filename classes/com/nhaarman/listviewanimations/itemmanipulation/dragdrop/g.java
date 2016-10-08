package com.nhaarman.listviewanimations.itemmanipulation.dragdrop;

import android.content.res.Resources;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListAdapter;

public final class g
  implements AbsListView.OnScrollListener
{
  public float a = 1.0F;
  private final int d;
  private int e = -1;
  private int f = -1;
  private int g;
  private int h;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      return;
    }
  }
  
  g(a parama)
  {
    this.d = ((int)TypedValue.applyDimension(1, 3.0F, a.b(parama).j().getResources().getDisplayMetrics()));
  }
  
  final void a()
  {
    if ((a.d(this.c) == null) || (a.e(this.c))) {}
    int i;
    int j;
    int k;
    int m;
    int n;
    int i1;
    int i2;
    do
    {
      return;
      Rect localRect = a.d(this.c).getBounds();
      i = a.b(this.c).a();
      j = a.b(this.c).j().getHeight();
      k = a.b(this.c).b();
      m = a.b(this.c).c();
      n = localRect.top;
      i1 = localRect.height();
      i2 = (int)Math.max(1.0F, this.d * this.a);
      if ((n <= 0) && (i > 0))
      {
        a.b(this.c).b(-i2, 0);
        return;
      }
    } while ((i1 + n < j) || (i + k >= m));
    a.b(this.c).b(i2, 0);
  }
  
  public final void onScroll(@NonNull AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    long l2 = -1L;
    this.g = paramInt1;
    this.h = (paramInt1 + paramInt2);
    if (this.e == -1)
    {
      paramInt1 = this.g;
      this.e = paramInt1;
      if (this.f != -1) {
        break label95;
      }
    }
    label95:
    for (paramInt1 = this.h;; paramInt1 = this.f)
    {
      this.f = paramInt1;
      if (a.d(this.c) == null) {
        break label145;
      }
      if ((b) || (a.a(this.c) != null)) {
        break label103;
      }
      throw new AssertionError();
      paramInt1 = this.e;
      break;
    }
    label103:
    float f1 = a.a(this.c).getY();
    paramAbsListView = a.d(this.c);
    paramAbsListView.c += paramAbsListView.a - f1;
    paramAbsListView.a = f1;
    label145:
    if (!a.e(this.c))
    {
      if ((a.d(this.c) != null) && (a.f(this.c) != null) && (this.g < this.e)) {
        break label234;
      }
      if ((a.d(this.c) != null) && (a.f(this.c) != null) && (this.h > this.f)) {
        break label344;
      }
    }
    for (;;)
    {
      this.e = this.g;
      this.f = this.h;
      return;
      label234:
      paramInt1 = a.b(this.c, a.c(this.c));
      if (paramInt1 == -1) {
        break;
      }
      if (paramInt1 - 1 - a.b(this.c).h() >= 0) {}
      for (long l1 = a.f(this.c).getItemId(paramInt1 - 1 - a.b(this.c).h());; l1 = -1L)
      {
        paramAbsListView = a.a(this.c, l1);
        if (paramAbsListView == null) {
          break;
        }
        a.a(this.c, paramAbsListView, l1, -paramAbsListView.getHeight());
        break;
      }
      label344:
      paramInt1 = a.b(this.c, a.c(this.c));
      if (paramInt1 != -1)
      {
        l1 = l2;
        if (paramInt1 + 1 - a.b(this.c).h() < a.f(this.c).getCount()) {
          l1 = a.f(this.c).getItemId(paramInt1 + 1 - a.b(this.c).h());
        }
        paramAbsListView = a.a(this.c, l1);
        if (paramAbsListView != null) {
          a.a(this.c, paramAbsListView, l1, paramAbsListView.getHeight());
        }
      }
    }
  }
  
  public final void onScrollStateChanged(@NonNull AbsListView paramAbsListView, int paramInt)
  {
    if ((paramInt == 0) && (a.d(this.c) != null)) {
      a();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\dragdrop\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */