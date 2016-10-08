package it.sephiroth.android.library.imagezoom;

import android.util.Log;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;

public final class a
  extends GestureDetector.SimpleOnGestureListener
{
  public a(ImageViewTouch paramImageViewTouch) {}
  
  public final boolean onDoubleTap(MotionEvent paramMotionEvent)
  {
    Log.i("ImageViewTouchBase", "onDoubleTap. double tap enabled? " + this.a.h);
    if (this.a.h)
    {
      this.a.q = true;
      float f = this.a.getScale();
      f = this.a.a(f, this.a.getMaxScale());
      f = Math.min(this.a.getMaxScale(), Math.max(f, this.a.getMinScale()));
      this.a.a(f, paramMotionEvent.getX(), paramMotionEvent.getY(), 200.0F);
      this.a.invalidate();
    }
    return super.onDoubleTap(paramMotionEvent);
  }
  
  public final boolean onDown(MotionEvent paramMotionEvent)
  {
    return true;
  }
  
  public final boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (!this.a.j) {}
    while ((paramMotionEvent1.getPointerCount() > 1) || (paramMotionEvent2.getPointerCount() > 1) || (this.a.a.isInProgress()) || (this.a.getScale() == 1.0F)) {
      return false;
    }
    return this.a.a(paramMotionEvent1, paramMotionEvent2, paramFloat1, paramFloat2);
  }
  
  public final void onLongPress(MotionEvent paramMotionEvent)
  {
    if ((this.a.isLongClickable()) && (!this.a.a.isInProgress()))
    {
      this.a.setPressed(true);
      this.a.performLongClick();
    }
  }
  
  public final boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    if (!this.a.j) {}
    while ((paramMotionEvent1 == null) || (paramMotionEvent2 == null) || (paramMotionEvent1.getPointerCount() > 1) || (paramMotionEvent2.getPointerCount() > 1) || (this.a.a.isInProgress())) {
      return false;
    }
    return this.a.b(paramFloat1, paramFloat2);
  }
  
  public final boolean onSingleTapConfirmed(MotionEvent paramMotionEvent)
  {
    if (ImageViewTouch.a(this.a) != null) {
      ImageViewTouch.a(this.a).a();
    }
    return true;
  }
  
  public final boolean onSingleTapUp(MotionEvent paramMotionEvent)
  {
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\it\sephiroth\android\library\imagezoom\a.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */