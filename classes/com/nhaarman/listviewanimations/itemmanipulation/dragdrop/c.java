package com.nhaarman.listviewanimations.itemmanipulation.dragdrop;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;

final class c
  implements i
{
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  private c(a parama) {}
  
  public final void a(long paramLong, float paramFloat)
  {
    if ((!a) && (a.a(this.b) == null)) {
      throw new AssertionError();
    }
    a.b(this.b).j().getViewTreeObserver().addOnPreDrawListener(new d(this, a.a(this.b), paramLong, paramFloat));
    a.a(this.b, a.a(this.b, a.c(this.b)));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\dragdrop\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */