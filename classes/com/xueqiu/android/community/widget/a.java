package com.xueqiu.android.community.widget;

import android.os.SystemClock;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.Interpolator;
import android.widget.FrameLayout;

final class a
  implements Runnable
{
  long a;
  boolean b = true;
  float c;
  long d;
  
  a(PullToZoomListView paramPullToZoomListView) {}
  
  public final void run()
  {
    if ((!this.b) && (this.c > 1.0D))
    {
      float f1 = ((float)SystemClock.currentThreadTimeMillis() - (float)this.d) / (float)this.a;
      float f2 = this.c;
      float f3 = this.c;
      f1 = f2 - PullToZoomListView.a().getInterpolation(f1) * (f3 - 1.0F);
      ViewGroup.LayoutParams localLayoutParams = PullToZoomListView.a(this.e).getLayoutParams();
      if (f1 > 1.0F)
      {
        localLayoutParams.height = PullToZoomListView.b(this.e);
        localLayoutParams.height = ((int)(f1 * PullToZoomListView.b(this.e)));
        PullToZoomListView.a(this.e).setLayoutParams(localLayoutParams);
        this.e.post(this);
      }
    }
    else
    {
      return;
    }
    this.b = true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\community\widget\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */