package it.sephiroth.android.library.imagezoom;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.OnScaleGestureListener;
import android.view.ViewConfiguration;

public class ImageViewTouch
  extends ImageViewTouchBase
{
  protected ScaleGestureDetector a;
  protected GestureDetector b;
  protected int c;
  protected float d;
  protected int e;
  protected GestureDetector.OnGestureListener f;
  protected ScaleGestureDetector.OnScaleGestureListener g;
  protected boolean h = true;
  protected boolean i = true;
  protected boolean j = true;
  private b y;
  private c z;
  
  public ImageViewTouch(Context paramContext)
  {
    super(paramContext);
  }
  
  public ImageViewTouch(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ImageViewTouch(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected final float a(float paramFloat1, float paramFloat2)
  {
    if (this.e == 1)
    {
      if (this.d * 2.0F + paramFloat1 <= paramFloat2) {
        return paramFloat1 + this.d;
      }
      this.e = -1;
      return paramFloat2;
    }
    this.e = 1;
    return 1.0F;
  }
  
  protected final void a(float paramFloat)
  {
    if (paramFloat < getMinScale()) {
      b(getMinScale());
    }
  }
  
  protected final void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super.a(paramContext, paramAttributeSet, paramInt);
    this.c = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    this.f = getGestureListener();
    this.g = getScaleListener();
    this.a = new ScaleGestureDetector(getContext(), this.g);
    this.b = new GestureDetector(getContext(), this.f, null, true);
    this.e = 1;
  }
  
  protected final void a(Drawable paramDrawable, Matrix paramMatrix, float paramFloat1, float paramFloat2)
  {
    super.a(paramDrawable, paramMatrix, paramFloat1, paramFloat2);
    this.d = (getMaxScale() / 3.0F);
  }
  
  public final boolean a(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    float f1 = paramMotionEvent2.getX();
    float f2 = paramMotionEvent1.getX();
    float f3 = paramMotionEvent2.getY();
    float f4 = paramMotionEvent1.getY();
    if ((Math.abs(paramFloat1) > 800.0F) || (Math.abs(paramFloat2) > 800.0F))
    {
      this.q = true;
      d((f1 - f2) / 2.0F, (f3 - f4) / 2.0F);
      invalidate();
      return true;
    }
    return false;
  }
  
  public final boolean b(float paramFloat1, float paramFloat2)
  {
    if (getScale() == 1.0F) {
      return false;
    }
    this.q = true;
    c(-paramFloat1, -paramFloat2);
    invalidate();
    return true;
  }
  
  public boolean getDoubleTapEnabled()
  {
    return this.h;
  }
  
  protected GestureDetector.OnGestureListener getGestureListener()
  {
    return new a(this);
  }
  
  protected ScaleGestureDetector.OnScaleGestureListener getScaleListener()
  {
    return new d(this);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    this.a.onTouchEvent(paramMotionEvent);
    if (!this.a.isInProgress()) {
      this.b.onTouchEvent(paramMotionEvent);
    }
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    }
    do
    {
      return true;
    } while (getScale() >= getMinScale());
    b(getMinScale());
    return true;
  }
  
  public void setDoubleTapEnabled(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }
  
  public void setDoubleTapListener(b paramb)
  {
    this.y = paramb;
  }
  
  public void setScaleEnabled(boolean paramBoolean)
  {
    this.i = paramBoolean;
  }
  
  public void setScrollEnabled(boolean paramBoolean)
  {
    this.j = paramBoolean;
  }
  
  public void setSingleTapListener(c paramc)
  {
    this.z = paramc;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\it\sephiroth\android\library\imagezoom\ImageViewTouch.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */