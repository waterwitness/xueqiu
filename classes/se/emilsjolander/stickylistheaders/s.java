package se.emilsjolander.stickylistheaders;

import android.graphics.Canvas;
import android.os.Build.VERSION;

final class s
  implements v
{
  private s(StickyListHeadersListView paramStickyListHeadersListView) {}
  
  public final void a(Canvas paramCanvas)
  {
    if (Build.VERSION.SDK_INT < 8) {
      StickyListHeadersListView.a(this.a, StickyListHeadersListView.f(this.a).a());
    }
    if (StickyListHeadersListView.a(this.a) != null)
    {
      if (StickyListHeadersListView.g(this.a))
      {
        paramCanvas.save();
        paramCanvas.clipRect(0, StickyListHeadersListView.h(this.a), this.a.getRight(), this.a.getBottom());
        StickyListHeadersListView.a(this.a, paramCanvas, StickyListHeadersListView.a(this.a));
        paramCanvas.restore();
      }
    }
    else {
      return;
    }
    StickyListHeadersListView.b(this.a, paramCanvas, StickyListHeadersListView.a(this.a));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */