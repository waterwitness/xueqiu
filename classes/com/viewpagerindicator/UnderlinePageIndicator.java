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
import android.view.ViewConfiguration;

public class UnderlinePageIndicator
  extends View
  implements e
{
  private final Paint a = new Paint(1);
  private boolean b;
  private int c;
  private int d;
  private int e;
  private ViewPager f;
  private cp g;
  private int h;
  private int i;
  private float j;
  private int k;
  private float l = -1.0F;
  private int m = -1;
  private boolean n;
  private final Runnable o = new Runnable()
  {
    public final void run()
    {
      if (!UnderlinePageIndicator.a(UnderlinePageIndicator.this)) {}
      int i;
      do
      {
        return;
        i = Math.max(UnderlinePageIndicator.b(UnderlinePageIndicator.this).getAlpha() - UnderlinePageIndicator.c(UnderlinePageIndicator.this), 0);
        UnderlinePageIndicator.b(UnderlinePageIndicator.this).setAlpha(i);
        UnderlinePageIndicator.this.invalidate();
      } while (i <= 0);
      UnderlinePageIndicator.this.postDelayed(this, 30L);
    }
  };
  
  public UnderlinePageIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (isInEditMode()) {
      return;
    }
    Object localObject = getResources();
    boolean bool = ((Resources)localObject).getBoolean(h.default_underline_indicator_fades);
    int i1 = ((Resources)localObject).getInteger(k.default_underline_indicator_fade_delay);
    int i2 = ((Resources)localObject).getInteger(k.default_underline_indicator_fade_length);
    int i3 = ((Resources)localObject).getColor(i.default_underline_indicator_selected_color);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, l.UnderlinePageIndicator, paramInt, 0);
    setFades(paramAttributeSet.getBoolean(l.UnderlinePageIndicator_fades, bool));
    setSelectedColor(paramAttributeSet.getColor(l.UnderlinePageIndicator_selectedColor, i3));
    setFadeDelay(paramAttributeSet.getInteger(l.UnderlinePageIndicator_fadeDelay, i1));
    setFadeLength(paramAttributeSet.getInteger(l.UnderlinePageIndicator_fadeLength, i2));
    localObject = paramAttributeSet.getDrawable(l.UnderlinePageIndicator_android_background);
    if (localObject != null) {
      setBackgroundDrawable((Drawable)localObject);
    }
    paramAttributeSet.recycle();
    this.k = bx.a(ViewConfiguration.get(paramContext));
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    this.i = paramInt1;
    this.j = paramFloat;
    if (this.b)
    {
      if (paramInt2 <= 0) {
        break label64;
      }
      removeCallbacks(this.o);
      this.a.setAlpha(255);
    }
    for (;;)
    {
      invalidate();
      if (this.g != null) {
        this.g.a(paramInt1, paramFloat, paramInt2);
      }
      return;
      label64:
      if (this.h != 1) {
        postDelayed(this.o, this.c);
      }
    }
  }
  
  public final void b(int paramInt)
  {
    this.h = paramInt;
    if (this.g != null) {
      this.g.b(paramInt);
    }
  }
  
  public final void b_(int paramInt)
  {
    if (this.h == 0)
    {
      this.i = paramInt;
      this.j = 0.0F;
      invalidate();
      this.o.run();
    }
    if (this.g != null) {
      this.g.b_(paramInt);
    }
  }
  
  public int getFadeDelay()
  {
    return this.c;
  }
  
  public int getFadeLength()
  {
    return this.d;
  }
  
  public boolean getFades()
  {
    return this.b;
  }
  
  public int getSelectedColor()
  {
    return this.a.getColor();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.f == null) {}
    int i1;
    do
    {
      return;
      i1 = this.f.getAdapter().b();
    } while (i1 == 0);
    if (this.i >= i1)
    {
      setCurrentItem(i1 - 1);
      return;
    }
    int i2 = getPaddingLeft();
    float f1 = (getWidth() - i2 - getPaddingRight()) / (i1 * 1.0F);
    float f2 = i2 + (this.i + this.j) * f1;
    paramCanvas.drawRect(f2, getPaddingTop(), f2 + f1, getHeight() - getPaddingBottom(), this.a);
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (s)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    this.i = paramParcelable.a;
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    s locals = new s(super.onSaveInstanceState());
    locals.a = this.i;
    return locals;
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
              if ((this.f == null) || (this.f.getAdapter().b() == 0)) {
                return false;
              }
              i2 = paramMotionEvent.getAction() & 0xFF;
              switch (i2)
              {
              case 4: 
              default: 
                return true;
              case 0: 
                this.m = at.b(paramMotionEvent, 0);
                this.l = paramMotionEvent.getX();
                return true;
              case 2: 
                f1 = at.c(paramMotionEvent, at.a(paramMotionEvent, this.m));
                f2 = f1 - this.l;
                if ((!this.n) && (Math.abs(f2) > this.k)) {
                  this.n = true;
                }
                break;
              }
            } while (!this.n);
            this.l = f1;
          } while ((!this.f.a) && (!this.f.d()));
          this.f.a(f2);
          return true;
          if (this.n) {
            break label317;
          }
          i1 = this.f.getAdapter().b();
          int i3 = getWidth();
          f1 = i3 / 2.0F;
          f2 = i3 / 6.0F;
          if ((this.i <= 0) || (paramMotionEvent.getX() >= f1 - f2)) {
            break;
          }
        } while (i2 == 3);
        this.f.setCurrentItem(this.i - 1);
        return true;
        if ((this.i >= i1 - 1) || (paramMotionEvent.getX() <= f2 + f1)) {
          break;
        }
      } while (i2 == 3);
      this.f.setCurrentItem(this.i + 1);
      return true;
      this.n = false;
      this.m = -1;
    } while (!this.f.a);
    this.f.e();
    return true;
    i1 = at.b(paramMotionEvent);
    this.l = at.c(paramMotionEvent, i1);
    this.m = at.b(paramMotionEvent, i1);
    return true;
    int i2 = at.b(paramMotionEvent);
    if (at.b(paramMotionEvent, i2) == this.m)
    {
      if (i2 == 0) {
        i1 = 1;
      }
      this.m = at.b(paramMotionEvent, i1);
    }
    this.l = at.c(paramMotionEvent, at.a(paramMotionEvent, this.m));
    return true;
  }
  
  public void setCurrentItem(int paramInt)
  {
    if (this.f == null) {
      throw new IllegalStateException("ViewPager has not been bound.");
    }
    this.f.setCurrentItem(paramInt);
    this.i = paramInt;
    invalidate();
  }
  
  public void setFadeDelay(int paramInt)
  {
    this.c = paramInt;
  }
  
  public void setFadeLength(int paramInt)
  {
    this.d = paramInt;
    this.e = (255 / (this.d / 30));
  }
  
  public void setFades(boolean paramBoolean)
  {
    if (paramBoolean != this.b)
    {
      this.b = paramBoolean;
      if (paramBoolean) {
        post(this.o);
      }
    }
    else
    {
      return;
    }
    removeCallbacks(this.o);
    this.a.setAlpha(255);
    invalidate();
  }
  
  public void setOnPageChangeListener(cp paramcp)
  {
    this.g = paramcp;
  }
  
  public void setSelectedColor(int paramInt)
  {
    this.a.setColor(paramInt);
    invalidate();
  }
  
  public void setViewPager(ViewPager paramViewPager)
  {
    if (this.f == paramViewPager) {
      return;
    }
    if (this.f != null) {
      this.f.setOnPageChangeListener(null);
    }
    if (paramViewPager.getAdapter() == null) {
      throw new IllegalStateException("ViewPager does not have adapter instance.");
    }
    this.f = paramViewPager;
    this.f.setOnPageChangeListener(this);
    invalidate();
    post(new Runnable()
    {
      public final void run()
      {
        if (UnderlinePageIndicator.a(UnderlinePageIndicator.this)) {
          UnderlinePageIndicator.this.post(UnderlinePageIndicator.d(UnderlinePageIndicator.this));
        }
      }
    });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\viewpagerindicator\UnderlinePageIndicator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */