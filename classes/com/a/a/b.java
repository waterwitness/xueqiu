package com.a.a;

import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;

final class b
  implements ValueAnimator.AnimatorUpdateListener
{
  b(a parama) {}
  
  public final void onAnimationUpdate(ValueAnimator paramValueAnimator)
  {
    float f = ((Float)paramValueAnimator.getAnimatedValue()).floatValue();
    this.a.a.a(f, this.a.a.getCurrentYOffset());
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\a\a\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */