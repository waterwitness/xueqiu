package com.xueqiu.android.stockchart.view;

import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;
import com.xueqiu.android.stockchart.a.d;

final class a
  extends ScaleGestureDetector.SimpleOnScaleGestureListener
{
  private a(EventView paramEventView) {}
  
  public final boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
  {
    if (!EventView.f(this.a).equals("kline")) {
      return false;
    }
    EventView.b(this.a);
    EventView.a(this.a, EventView.g(this.a) * paramScaleGestureDetector.getScaleFactor());
    EventView.a(this.a, Math.max(0.1F, Math.min(EventView.g(this.a), 5.0F)));
    if (EventView.h(this.a) != null) {
      EventView.h(this.a).a(paramScaleGestureDetector.getFocusX(), EventView.g(this.a));
    }
    return true;
  }
  
  public final boolean onScaleBegin(ScaleGestureDetector paramScaleGestureDetector)
  {
    return EventView.f(this.a).equals("kline");
  }
  
  public final void onScaleEnd(ScaleGestureDetector paramScaleGestureDetector)
  {
    if (!EventView.f(this.a).equals("kline")) {}
    do
    {
      return;
      super.onScaleEnd(paramScaleGestureDetector);
    } while (EventView.h(this.a) == null);
    EventView.h(this.a).a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\stockchart\view\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */