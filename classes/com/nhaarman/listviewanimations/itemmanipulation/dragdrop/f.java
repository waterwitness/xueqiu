package com.nhaarman.listviewanimations.itemmanipulation.dragdrop;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class f
  implements ViewTreeObserver.OnPreDrawListener
{
  private final long c;
  private final float d;
  
  static
  {
    if (!a.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  f(e parame, long paramLong, float paramFloat)
  {
    this.c = paramLong;
    this.d = paramFloat;
  }
  
  public final boolean onPreDraw()
  {
    a.b(this.b.a).j().getViewTreeObserver().removeOnPreDrawListener(this);
    View localView = a.a(this.b.a, this.c);
    if (localView != null)
    {
      localView.setTranslationY(this.d);
      localView.animate().translationY(0.0F).start();
    }
    if ((!a) && (a.a(this.b.a) == null)) {
      throw new AssertionError();
    }
    a.a(this.b.a).setVisibility(0);
    a.a(this.b.a, a.a(this.b.a, a.c(this.b.a)));
    if ((!a) && (a.a(this.b.a) == null)) {
      throw new AssertionError();
    }
    a.a(this.b.a).setVisibility(4);
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\dragdrop\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */