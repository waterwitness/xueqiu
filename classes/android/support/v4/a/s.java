package android.support.v4.a;

import android.support.annotation.CallSuper;
import android.support.v4.view.ViewCompat;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;

class s
  implements Animation.AnimationListener
{
  private Animation.AnimationListener a = null;
  private boolean b = false;
  private View c = null;
  
  public s(View paramView, Animation paramAnimation)
  {
    if ((paramView == null) || (paramAnimation == null)) {
      return;
    }
    this.c = paramView;
  }
  
  public s(View paramView, Animation paramAnimation, Animation.AnimationListener paramAnimationListener)
  {
    if ((paramView == null) || (paramAnimation == null)) {
      return;
    }
    this.a = paramAnimationListener;
    this.c = paramView;
  }
  
  @CallSuper
  public void onAnimationEnd(Animation paramAnimation)
  {
    if ((this.c != null) && (this.b)) {
      this.c.post(new Runnable()
      {
        public final void run()
        {
          ViewCompat.a(s.a(s.this), 0, null);
        }
      });
    }
    if (this.a != null) {
      this.a.onAnimationEnd(paramAnimation);
    }
  }
  
  public void onAnimationRepeat(Animation paramAnimation)
  {
    if (this.a != null) {
      this.a.onAnimationRepeat(paramAnimation);
    }
  }
  
  @CallSuper
  public void onAnimationStart(Animation paramAnimation)
  {
    if (this.c != null)
    {
      this.b = r.a(this.c, paramAnimation);
      if (this.b) {
        this.c.post(new Runnable()
        {
          public final void run()
          {
            ViewCompat.a(s.a(s.this), 2, null);
          }
        });
      }
    }
    if (this.a != null) {
      this.a.onAnimationStart(paramAnimation);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\a\s.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */