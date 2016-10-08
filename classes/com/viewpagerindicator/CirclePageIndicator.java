package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.support.v4.view.ViewPager;
import android.support.v4.view.at;
import android.support.v4.view.bd;
import android.support.v4.view.bx;
import android.support.v4.view.cp;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;

public class CirclePageIndicator
  extends View
  implements e
{
  private float a;
  private final Paint b = new Paint(1);
  private final Paint c = new Paint(1);
  private final Paint d = new Paint(1);
  private ViewPager e;
  private cp f;
  private int g;
  private int h;
  private float i;
  private int j;
  private int k;
  private boolean l;
  private boolean m;
  private int n;
  private float o = -1.0F;
  private int p = -1;
  private boolean q;
  
  public CirclePageIndicator(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public CirclePageIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, g.vpiCirclePageIndicatorStyle);
  }
  
  public CirclePageIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (isInEditMode()) {
      return;
    }
    Object localObject = getResources();
    int i1 = ((Resources)localObject).getColor(i.default_circle_indicator_page_color);
    int i2 = ((Resources)localObject).getColor(i.default_circle_indicator_fill_color);
    int i3 = ((Resources)localObject).getInteger(k.default_circle_indicator_orientation);
    int i4 = ((Resources)localObject).getColor(i.default_circle_indicator_stroke_color);
    ((Resources)localObject).getDimension(j.default_circle_indicator_stroke_width);
    float f1 = ((Resources)localObject).getDimension(j.default_circle_indicator_radius);
    boolean bool1 = ((Resources)localObject).getBoolean(h.default_circle_indicator_centered);
    boolean bool2 = ((Resources)localObject).getBoolean(h.default_circle_indicator_snap);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, l.CirclePageIndicator, paramInt, 0);
    this.l = paramAttributeSet.getBoolean(l.CirclePageIndicator_centered, bool1);
    this.k = paramAttributeSet.getInt(l.CirclePageIndicator_android_orientation, i3);
    this.b.setStyle(Paint.Style.FILL);
    this.b.setColor(paramAttributeSet.getColor(l.CirclePageIndicator_pageColor, i1));
    this.c.setStyle(Paint.Style.FILL);
    this.c.setColor(paramAttributeSet.getColor(l.CirclePageIndicator_strokeColor, i4));
    this.d.setStyle(Paint.Style.FILL);
    this.d.setColor(paramAttributeSet.getColor(l.CirclePageIndicator_fillColor, i2));
    this.a = paramAttributeSet.getDimension(l.CirclePageIndicator_radius, f1);
    this.m = paramAttributeSet.getBoolean(l.CirclePageIndicator_snap, bool2);
    localObject = paramAttributeSet.getDrawable(l.CirclePageIndicator_android_background);
    if (localObject != null) {
      setBackgroundDrawable((Drawable)localObject);
    }
    paramAttributeSet.recycle();
    this.n = bx.a(ViewConfiguration.get(paramContext));
  }
  
  private int c(int paramInt)
  {
    int i3 = View.MeasureSpec.getMode(paramInt);
    int i1 = View.MeasureSpec.getSize(paramInt);
    if ((i3 == 1073741824) || (this.e == null)) {
      paramInt = i1;
    }
    int i2;
    do
    {
      return paramInt;
      paramInt = this.e.getAdapter().b();
      float f1 = getPaddingLeft() + getPaddingRight();
      float f2 = paramInt * 2;
      float f3 = this.a;
      i2 = (int)((paramInt - 1) * this.a + (f1 + f2 * f3) + 1.0F);
      paramInt = i2;
    } while (i3 != Integer.MIN_VALUE);
    return Math.min(i2, i1);
  }
  
  private int d(int paramInt)
  {
    int i1 = View.MeasureSpec.getMode(paramInt);
    paramInt = View.MeasureSpec.getSize(paramInt);
    if (i1 == 1073741824) {
      return paramInt;
    }
    int i2 = (int)(2.0F * this.a + getPaddingTop() + getPaddingBottom() + 1.0F);
    if (i1 == Integer.MIN_VALUE) {
      return Math.min(i2, paramInt);
    }
    return i2;
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    this.g = paramInt1;
    this.i = paramFloat;
    invalidate();
    if (this.f != null) {
      this.f.a(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public final void b(int paramInt)
  {
    this.j = paramInt;
    if (this.f != null) {
      this.f.b(paramInt);
    }
  }
  
  public final void b_(int paramInt)
  {
    if ((this.m) || (this.j == 0))
    {
      this.g = paramInt;
      this.h = paramInt;
      invalidate();
    }
    if (this.f != null) {
      this.f.b_(paramInt);
    }
  }
  
  public int getFillColor()
  {
    return this.d.getColor();
  }
  
  public int getOrientation()
  {
    return this.k;
  }
  
  public int getPageColor()
  {
    return this.b.getColor();
  }
  
  public float getRadius()
  {
    return this.a;
  }
  
  public int getStrokeColor()
  {
    return this.c.getColor();
  }
  
  public float getStrokeWidth()
  {
    return this.c.getStrokeWidth();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.e == null) {}
    int i5;
    do
    {
      return;
      i5 = this.e.getAdapter().b();
    } while (i5 == 0);
    if (this.g >= i5)
    {
      setCurrentItem(i5 - 1);
      return;
    }
    int i4;
    int i3;
    int i2;
    int i1;
    float f6;
    float f1;
    float f3;
    float f2;
    float f4;
    label183:
    float f5;
    if (this.k == 0)
    {
      i4 = getWidth();
      i3 = getPaddingLeft();
      i2 = getPaddingRight();
      i1 = getPaddingTop();
      f6 = this.a * 3.0F;
      f1 = i1;
      f1 = this.a + f1;
      f3 = i3 + this.a;
      f2 = f3;
      if (this.l) {
        f2 = f3 + ((i4 - i3 - i2) / 2.0F - i5 * f6 / 2.0F);
      }
      f4 = this.a;
      f3 = f4;
      if (this.c.getStrokeWidth() > 0.0F) {
        f3 = f4 - this.c.getStrokeWidth() / 2.0F;
      }
      i1 = 0;
      if (i1 >= i5) {
        break label304;
      }
      f4 = i1 * f6 + f2;
      if (this.k != 0) {
        break label298;
      }
      f5 = f4;
      f4 = f1;
    }
    for (;;)
    {
      if (this.b.getAlpha() > 0) {
        paramCanvas.drawCircle(f5, f4, f3, this.b);
      }
      if (this.c.getAlpha() > 0) {
        paramCanvas.drawCircle(f5, f4, f3, this.c);
      }
      i1 += 1;
      break label183;
      i4 = getHeight();
      i3 = getPaddingTop();
      i2 = getPaddingBottom();
      i1 = getPaddingLeft();
      break;
      label298:
      f5 = f1;
    }
    label304:
    if (this.m)
    {
      i1 = this.h;
      f4 = i1 * f6;
      f3 = f4;
      if (!this.m) {
        f3 = f4 + this.i * f6;
      }
      if (this.k != 0) {
        break label390;
      }
      f3 = f2 + f3;
      f2 = f1;
      f1 = f3;
    }
    for (;;)
    {
      paramCanvas.drawCircle(f1, f2, this.a, this.d);
      return;
      i1 = this.g;
      break;
      label390:
      f2 += f3;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.k == 0)
    {
      setMeasuredDimension(c(paramInt1), d(paramInt2));
      return;
    }
    setMeasuredDimension(d(paramInt1), c(paramInt2));
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (a)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    this.g = paramParcelable.a;
    this.h = paramParcelable.a;
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    a locala = new a(super.onSaveInstanceState());
    locala.a = this.g;
    return locala;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 0;
    if (super.onTouchEvent(paramMotionEvent)) {}
    label317:
    do
    {
      do
      {
        float f1;
        float f2;
        do
        {
          do
          {
            do
            {
              return true;
              if ((this.e == null) || (this.e.getAdapter().b() == 0)) {
                return false;
              }
              i2 = paramMotionEvent.getAction() & 0xFF;
              switch (i2)
              {
              case 4: 
              default: 
                return true;
              case 0: 
                this.p = at.b(paramMotionEvent, 0);
                this.o = paramMotionEvent.getX();
                return true;
              case 2: 
                f1 = at.c(paramMotionEvent, at.a(paramMotionEvent, this.p));
                f2 = f1 - this.o;
                if ((!this.q) && (Math.abs(f2) > this.n)) {
                  this.q = true;
                }
                break;
              }
            } while (!this.q);
            this.o = f1;
          } while ((!this.e.a) && (!this.e.d()));
          this.e.a(f2);
          return true;
          if (this.q) {
            break label317;
          }
          i1 = this.e.getAdapter().b();
          int i3 = getWidth();
          f1 = i3 / 2.0F;
          f2 = i3 / 6.0F;
          if ((this.g <= 0) || (paramMotionEvent.getX() >= f1 - f2)) {
            break;
          }
        } while (i2 == 3);
        this.e.setCurrentItem(this.g - 1);
        return true;
        if ((this.g >= i1 - 1) || (paramMotionEvent.getX() <= f2 + f1)) {
          break;
        }
      } while (i2 == 3);
      this.e.setCurrentItem(this.g + 1);
      return true;
      this.q = false;
      this.p = -1;
    } while (!this.e.a);
    this.e.e();
    return true;
    i1 = at.b(paramMotionEvent);
    this.o = at.c(paramMotionEvent, i1);
    this.p = at.b(paramMotionEvent, i1);
    return true;
    int i2 = at.b(paramMotionEvent);
    if (at.b(paramMotionEvent, i2) == this.p)
    {
      if (i2 == 0) {
        i1 = 1;
      }
      this.p = at.b(paramMotionEvent, i1);
    }
    this.o = at.c(paramMotionEvent, at.a(paramMotionEvent, this.p));
    return true;
  }
  
  public void setCentered(boolean paramBoolean)
  {
    this.l = paramBoolean;
    invalidate();
  }
  
  public void setCurrentItem(int paramInt)
  {
    if (this.e == null) {
      throw new IllegalStateException("ViewPager has not been bound.");
    }
    this.e.setCurrentItem(paramInt);
    this.g = paramInt;
    invalidate();
  }
  
  public void setFillColor(int paramInt)
  {
    this.d.setColor(paramInt);
    invalidate();
  }
  
  public void setOnPageChangeListener(cp paramcp)
  {
    this.f = paramcp;
  }
  
  public void setOrientation(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Orientation must be either HORIZONTAL or VERTICAL.");
    }
    this.k = paramInt;
    requestLayout();
  }
  
  public void setPageColor(int paramInt)
  {
    this.b.setColor(paramInt);
    invalidate();
  }
  
  public void setRadius(float paramFloat)
  {
    this.a = paramFloat;
    invalidate();
  }
  
  public void setSnap(boolean paramBoolean)
  {
    this.m = paramBoolean;
    invalidate();
  }
  
  public void setStrokeColor(int paramInt)
  {
    this.c.setColor(paramInt);
    invalidate();
  }
  
  public void setStrokeWidth(float paramFloat)
  {
    this.c.setStrokeWidth(paramFloat);
    invalidate();
  }
  
  public void setViewPager(ViewPager paramViewPager)
  {
    if (this.e == paramViewPager) {
      return;
    }
    if (this.e != null) {
      this.e.setOnPageChangeListener(null);
    }
    if (paramViewPager.getAdapter() == null) {
      throw new IllegalStateException("ViewPager does not have adapter instance.");
    }
    this.e = paramViewPager;
    this.e.setOnPageChangeListener(this);
    invalidate();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\viewpagerindicator\CirclePageIndicator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */