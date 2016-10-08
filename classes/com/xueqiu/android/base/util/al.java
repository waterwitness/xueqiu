package com.xueqiu.android.base.util;

import android.app.Activity;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.WindowManager;

public final class al
  implements GestureDetector.OnGestureListener
{
  private Activity a;
  private int b;
  private int c;
  
  public al(Activity paramActivity)
  {
    this.a = paramActivity;
    this.b = this.a.getResources().getDimensionPixelSize(2131230920);
    this.c = this.a.getResources().getDimensionPixelSize(2131230921);
  }
  
  public final boolean onDown(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    try
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      this.a.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      int i = localDisplayMetrics.widthPixels;
      if ((paramMotionEvent1.getX() < paramMotionEvent2.getX()) && (paramMotionEvent2.getX() - paramMotionEvent1.getX() > this.b) && ((paramMotionEvent2.getX() - paramMotionEvent1.getX()) / i > 0.2D) && (Math.abs((paramMotionEvent2.getY() - paramMotionEvent1.getY()) / (paramMotionEvent2.getX() - paramMotionEvent1.getX())) < 0.5D) && (Math.abs(paramFloat1) > this.c)) {
        if ((this.a instanceof am)) {
          ((am)this.a).x_();
        } else {
          this.a.onBackPressed();
        }
      }
    }
    catch (Exception paramMotionEvent1)
    {
      v.c("SwipeBackListener", "", paramMotionEvent1);
    }
    return false;
    return true;
  }
  
  public final void onLongPress(MotionEvent paramMotionEvent) {}
  
  public final boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    return false;
  }
  
  public final void onShowPress(MotionEvent paramMotionEvent) {}
  
  public final boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return false;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\base\util\al.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */