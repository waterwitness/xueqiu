package it.sephiroth.android.library.imagezoom;

import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;

public final class d
  extends ScaleGestureDetector.SimpleOnScaleGestureListener
{
  protected boolean a = false;
  
  public d(ImageViewTouch paramImageViewTouch) {}
  
  public final boolean onScale(ScaleGestureDetector paramScaleGestureDetector)
  {
    float f1 = paramScaleGestureDetector.getCurrentSpan();
    float f2 = paramScaleGestureDetector.getPreviousSpan();
    float f3 = this.b.getScale();
    float f4 = paramScaleGestureDetector.getScaleFactor();
    if (this.b.i)
    {
      if ((!this.a) || (f1 - f2 == 0.0F)) {
        break label120;
      }
      this.b.q = true;
      f1 = Math.min(this.b.getMaxScale(), Math.max(f3 * f4, this.b.getMinScale() - 0.1F));
      this.b.a(f1, paramScaleGestureDetector.getFocusX(), paramScaleGestureDetector.getFocusY());
      this.b.e = 1;
      this.b.invalidate();
    }
    label120:
    while (this.a) {
      return true;
    }
    this.a = true;
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\it\sephiroth\android\library\imagezoom\d.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */