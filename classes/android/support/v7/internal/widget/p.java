package android.support.v7.internal.widget;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;
import android.widget.Adapter;

final class p
  extends DataSetObserver
{
  private Parcelable b = null;
  
  p(o paramo) {}
  
  public final void onChanged()
  {
    this.a.v = true;
    this.a.B = this.a.A;
    this.a.A = this.a.c().getCount();
    if ((this.a.c().hasStableIds()) && (this.b != null) && (this.a.B == 0) && (this.a.A > 0))
    {
      o.a(this.a, this.b);
      this.b = null;
    }
    o localo;
    for (;;)
    {
      this.a.d();
      this.a.requestLayout();
      return;
      localo = this.a;
      if (localo.getChildCount() > 0)
      {
        localo.p = true;
        localo.o = localo.r;
        if (localo.y < 0) {
          break;
        }
        localView = localo.getChildAt(localo.y - localo.k);
        localo.n = localo.x;
        localo.m = localo.w;
        if (localView != null) {
          localo.l = localView.getTop();
        }
        localo.q = 0;
      }
    }
    View localView = localo.getChildAt(0);
    Adapter localAdapter = localo.c();
    if ((localo.k >= 0) && (localo.k < localAdapter.getCount())) {}
    for (localo.n = localAdapter.getItemId(localo.k);; localo.n = -1L)
    {
      localo.m = localo.k;
      if (localView != null) {
        localo.l = localView.getTop();
      }
      localo.q = 1;
      break;
    }
  }
  
  public final void onInvalidated()
  {
    this.a.v = true;
    if (this.a.c().hasStableIds()) {
      this.b = o.a(this.a);
    }
    this.a.B = this.a.A;
    this.a.A = 0;
    this.a.y = -1;
    this.a.z = Long.MIN_VALUE;
    this.a.w = -1;
    this.a.x = Long.MIN_VALUE;
    this.a.p = false;
    this.a.d();
    this.a.requestLayout();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\p.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */