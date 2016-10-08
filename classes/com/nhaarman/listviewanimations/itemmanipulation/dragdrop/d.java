package com.nhaarman.listviewanimations.itemmanipulation.dragdrop;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class d
  implements ViewTreeObserver.OnPreDrawListener
{
  private final View b;
  private final long c;
  private final float d;
  
  d(c paramc, View paramView, long paramLong, float paramFloat)
  {
    this.b = paramView;
    this.c = paramLong;
    this.d = paramFloat;
  }
  
  public final boolean onPreDraw()
  {
    a.b(this.a.b).j().getViewTreeObserver().removeOnPreDrawListener(this);
    View localView = a.a(this.a.b, this.c);
    if (localView != null)
    {
      localView.setTranslationY(this.d);
      localView.animate().translationY(0.0F).start();
    }
    this.b.setVisibility(0);
    if (a.a(this.a.b) != null) {
      a.a(this.a.b).setVisibility(4);
    }
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\dragdrop\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */