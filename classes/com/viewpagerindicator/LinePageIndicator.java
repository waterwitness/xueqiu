package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
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

public class LinePageIndicator
  extends View
  implements e
{
  private final Paint a = new Paint(1);
  private final Paint b = new Paint(1);
  private ViewPager c;
  private cp d;
  private int e;
  private boolean f;
  private float g;
  private float h;
  private int i;
  private float j = -1.0F;
  private int k = -1;
  private boolean l;
  
  public LinePageIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (isInEditMode()) {
      return;
    }
    Object localObject = getResources();
    int m = ((Resources)localObject).getColor(i.default_line_indicator_selected_color);
    int n = ((Resources)localObject).getColor(i.default_line_indicator_unselected_color);
    float f1 = ((Resources)localObject).getDimension(j.default_line_indicator_line_width);
    float f2 = ((Resources)localObject).getDimension(j.default_line_indicator_gap_width);
    float f3 = ((Resources)localObject).getDimension(j.default_line_indicator_stroke_width);
    boolean bool = ((Resources)localObject).getBoolean(h.default_line_indicator_centered);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, l.LinePageIndicator, paramInt, 0);
    this.f = paramAttributeSet.getBoolean(l.LinePageIndicator_centered, bool);
    this.g = paramAttributeSet.getDimension(l.LinePageIndicator_lineWidth, f1);
    this.h = paramAttributeSet.getDimension(l.LinePageIndicator_gapWidth, f2);
    setStrokeWidth(paramAttributeSet.getDimension(l.LinePageIndicator_strokeWidth, f3));
    this.a.setColor(paramAttributeSet.getColor(l.LinePageIndicator_unselectedColor, n));
    this.b.setColor(paramAttributeSet.getColor(l.LinePageIndicator_selectedColor, m));
    localObject = paramAttributeSet.getDrawable(l.LinePageIndicator_android_background);
    if (localObject != null) {
      setBackgroundDrawable((Drawable)localObject);
    }
    paramAttributeSet.recycle();
    this.i = bx.a(ViewConfiguration.get(paramContext));
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.d != null) {
      this.d.a(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public final void b(int paramInt)
  {
    if (this.d != null) {
      this.d.b(paramInt);
    }
  }
  
  public final void b_(int paramInt)
  {
    this.e = paramInt;
    invalidate();
    if (this.d != null) {
      this.d.b_(paramInt);
    }
  }
  
  public float getGapWidth()
  {
    return this.h;
  }
  
  public float getLineWidth()
  {
    return this.g;
  }
  
  public int getSelectedColor()
  {
    return this.b.getColor();
  }
  
  public float getStrokeWidth()
  {
    return this.b.getStrokeWidth();
  }
  
  public int getUnselectedColor()
  {
    return this.a.getColor();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.c == null) {}
    int n;
    do
    {
      return;
      n = this.c.getAdapter().b();
    } while (n == 0);
    if (this.e >= n)
    {
      setCurrentItem(n - 1);
      return;
    }
    float f2 = this.g + this.h;
    float f4 = n;
    float f5 = this.h;
    float f3 = getPaddingTop();
    float f1 = getPaddingLeft();
    float f6 = getPaddingRight();
    f3 += (getHeight() - f3 - getPaddingBottom()) / 2.0F;
    if (this.f) {
      f1 += (getWidth() - f1 - f6) / 2.0F - (f4 * f2 - f5) / 2.0F;
    }
    for (;;)
    {
      int m = 0;
      label145:
      if (m < n)
      {
        f4 = f1 + m * f2;
        f5 = this.g;
        if (m != this.e) {
          break label208;
        }
      }
      label208:
      for (Paint localPaint = this.b;; localPaint = this.a)
      {
        paramCanvas.drawLine(f4, f3, f4 + f5, f3, localPaint);
        m += 1;
        break label145;
        break;
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int m = View.MeasureSpec.getMode(paramInt1);
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    float f1;
    if ((m == 1073741824) || (this.c == null))
    {
      f1 = paramInt1;
      paramInt1 = (int)Math.ceil(f1);
      m = View.MeasureSpec.getMode(paramInt2);
      paramInt2 = View.MeasureSpec.getSize(paramInt2);
      if (m != 1073741824) {
        break label144;
      }
      f1 = paramInt2;
    }
    for (;;)
    {
      setMeasuredDimension(paramInt1, (int)Math.ceil(f1));
      return;
      int n = this.c.getAdapter().b();
      f1 = getPaddingLeft() + getPaddingRight();
      float f2 = n;
      float f3 = this.g;
      f2 = (n - 1) * this.h + (f1 + f2 * f3);
      f1 = f2;
      if (m != Integer.MIN_VALUE) {
        break;
      }
      f1 = Math.min(f2, paramInt1);
      break;
      label144:
      f2 = this.b.getStrokeWidth() + getPaddingTop() + getPaddingBottom();
      f1 = f2;
      if (m == Integer.MIN_VALUE) {
        f1 = Math.min(f2, paramInt2);
      }
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (d)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    this.e = paramParcelable.a;
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    d locald = new d(super.onSaveInstanceState());
    locald.a = this.e;
    return locald;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int m = 0;
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
              if ((this.c == null) || (this.c.getAdapter().b() == 0)) {
                return false;
              }
              n = paramMotionEvent.getAction() & 0xFF;
              switch (n)
              {
              case 4: 
              default: 
                return true;
              case 0: 
                this.k = at.b(paramMotionEvent, 0);
                this.j = paramMotionEvent.getX();
                return true;
              case 2: 
                f1 = at.c(paramMotionEvent, at.a(paramMotionEvent, this.k));
                f2 = f1 - this.j;
                if ((!this.l) && (Math.abs(f2) > this.i)) {
                  this.l = true;
                }
                break;
              }
            } while (!this.l);
            this.j = f1;
          } while ((!this.c.a) && (!this.c.d()));
          this.c.a(f2);
          return true;
          if (this.l) {
            break label317;
          }
          m = this.c.getAdapter().b();
          int i1 = getWidth();
          f1 = i1 / 2.0F;
          f2 = i1 / 6.0F;
          if ((this.e <= 0) || (paramMotionEvent.getX() >= f1 - f2)) {
            break;
          }
        } while (n == 3);
        this.c.setCurrentItem(this.e - 1);
        return true;
        if ((this.e >= m - 1) || (paramMotionEvent.getX() <= f2 + f1)) {
          break;
        }
      } while (n == 3);
      this.c.setCurrentItem(this.e + 1);
      return true;
      this.l = false;
      this.k = -1;
    } while (!this.c.a);
    this.c.e();
    return true;
    m = at.b(paramMotionEvent);
    this.j = at.c(paramMotionEvent, m);
    this.k = at.b(paramMotionEvent, m);
    return true;
    int n = at.b(paramMotionEvent);
    if (at.b(paramMotionEvent, n) == this.k)
    {
      if (n == 0) {
        m = 1;
      }
      this.k = at.b(paramMotionEvent, m);
    }
    this.j = at.c(paramMotionEvent, at.a(paramMotionEvent, this.k));
    return true;
  }
  
  public void setCentered(boolean paramBoolean)
  {
    this.f = paramBoolean;
    invalidate();
  }
  
  public void setCurrentItem(int paramInt)
  {
    if (this.c == null) {
      throw new IllegalStateException("ViewPager has not been bound.");
    }
    this.c.setCurrentItem(paramInt);
    this.e = paramInt;
    invalidate();
  }
  
  public void setGapWidth(float paramFloat)
  {
    this.h = paramFloat;
    invalidate();
  }
  
  public void setLineWidth(float paramFloat)
  {
    this.g = paramFloat;
    invalidate();
  }
  
  public void setOnPageChangeListener(cp paramcp)
  {
    this.d = paramcp;
  }
  
  public void setSelectedColor(int paramInt)
  {
    this.b.setColor(paramInt);
    invalidate();
  }
  
  public void setStrokeWidth(float paramFloat)
  {
    this.b.setStrokeWidth(paramFloat);
    this.a.setStrokeWidth(paramFloat);
    invalidate();
  }
  
  public void setUnselectedColor(int paramInt)
  {
    this.a.setColor(paramInt);
    invalidate();
  }
  
  public void setViewPager(ViewPager paramViewPager)
  {
    if (this.c == paramViewPager) {
      return;
    }
    if (this.c != null) {
      this.c.setOnPageChangeListener(null);
    }
    if (paramViewPager.getAdapter() == null) {
      throw new IllegalStateException("ViewPager does not have adapter instance.");
    }
    this.c = paramViewPager;
    this.c.setOnPageChangeListener(this);
    invalidate();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\viewpagerindicator\LinePageIndicator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */