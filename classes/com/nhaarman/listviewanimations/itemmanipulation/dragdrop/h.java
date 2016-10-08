package com.nhaarman.listviewanimations.itemmanipulation.dragdrop;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;

final class h
  extends AnimatorListenerAdapter
  implements ValueAnimator.AnimatorUpdateListener
{
  @NonNull
  private final m b;
  @NonNull
  private final View c;
  
  private h(a parama, @NonNull m paramm, @NonNull View paramView)
  {
    this.b = paramm;
    this.c = paramView;
  }
  
  public final void onAnimationEnd(Animator paramAnimator)
  {
    this.c.setVisibility(0);
    a.g(this.a);
    a.a(this.a, null);
    a.h(this.a);
    a.i(this.a);
    a.a(this.a, false);
  }
  
  public final void onAnimationStart(Animator paramAnimator)
  {
    a.a(this.a, true);
  }
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    this.b.a(((Integer)paramValueAnimator.getAnimatedValue()).intValue());
    a.b(this.a).j().postInvalidate();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\nhaarman\listviewanimations\itemmanipulation\dragdrop\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */