package com.nhaarman.listviewanimations.itemmanipulation.dragdrop;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;

final class e
  implements i
{
  private e(a parama) {}
  
  public final void a(long paramLong, float paramFloat)
  {
    a.b(this.a).j().getViewTreeObserver().addOnPreDrawListener(new f(this, paramLong, paramFloat));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\dragdrop\e.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */