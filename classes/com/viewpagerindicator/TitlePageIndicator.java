package com.viewpagerindicator;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Typeface;
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
import java.util.ArrayList;

public class TitlePageIndicator
  extends View
  implements e
{
  private q A;
  private ViewPager a;
  private cp b;
  private int c = -1;
  private float d;
  private int e;
  private final Paint f = new Paint();
  private boolean g;
  private int h;
  private int i;
  private Path j = new Path();
  private final Rect k = new Rect();
  private final Paint l = new Paint();
  private o m;
  private p n;
  private final Paint o = new Paint();
  private float p;
  private float q;
  private float r;
  private float s;
  private float t;
  private float u;
  private float v;
  private int w;
  private float x = -1.0F;
  private int y = -1;
  private boolean z;
  
  public TitlePageIndicator(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (isInEditMode()) {
      return;
    }
    Object localObject = getResources();
    int i1 = ((Resources)localObject).getColor(i.default_title_indicator_footer_color);
    float f1 = ((Resources)localObject).getDimension(j.default_title_indicator_footer_line_height);
    int i2 = ((Resources)localObject).getInteger(k.default_title_indicator_footer_indicator_style);
    float f2 = ((Resources)localObject).getDimension(j.default_title_indicator_footer_indicator_height);
    float f3 = ((Resources)localObject).getDimension(j.default_title_indicator_footer_indicator_underline_padding);
    float f4 = ((Resources)localObject).getDimension(j.default_title_indicator_footer_padding);
    int i3 = ((Resources)localObject).getInteger(k.default_title_indicator_line_position);
    int i4 = ((Resources)localObject).getColor(i.default_title_indicator_selected_color);
    boolean bool = ((Resources)localObject).getBoolean(h.default_title_indicator_selected_bold);
    int i5 = ((Resources)localObject).getColor(i.default_title_indicator_text_color);
    float f5 = ((Resources)localObject).getDimension(j.default_title_indicator_text_size);
    float f6 = ((Resources)localObject).getDimension(j.default_title_indicator_title_padding);
    float f7 = ((Resources)localObject).getDimension(j.default_title_indicator_clip_padding);
    float f8 = ((Resources)localObject).getDimension(j.default_title_indicator_top_padding);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, l.TitlePageIndicator, paramInt, 0);
    this.v = paramAttributeSet.getDimension(l.TitlePageIndicator_footerLineHeight, f1);
    this.m = o.a(paramAttributeSet.getInteger(l.TitlePageIndicator_footerIndicatorStyle, i2));
    this.p = paramAttributeSet.getDimension(l.TitlePageIndicator_footerIndicatorHeight, f2);
    this.q = paramAttributeSet.getDimension(l.TitlePageIndicator_footerIndicatorUnderlinePadding, f3);
    this.r = paramAttributeSet.getDimension(l.TitlePageIndicator_footerPadding, f4);
    this.n = p.a(paramAttributeSet.getInteger(l.TitlePageIndicator_linePosition, i3));
    this.t = paramAttributeSet.getDimension(l.TitlePageIndicator_topPadding, f8);
    this.s = paramAttributeSet.getDimension(l.TitlePageIndicator_titlePadding, f6);
    this.u = paramAttributeSet.getDimension(l.TitlePageIndicator_clipPadding, f7);
    this.i = paramAttributeSet.getColor(l.TitlePageIndicator_selectedColor, i4);
    this.h = paramAttributeSet.getColor(l.TitlePageIndicator_android_textColor, i5);
    this.g = paramAttributeSet.getBoolean(l.TitlePageIndicator_selectedBold, bool);
    f1 = paramAttributeSet.getDimension(l.TitlePageIndicator_android_textSize, f5);
    paramInt = paramAttributeSet.getColor(l.TitlePageIndicator_footerColor, i1);
    this.f.setTextSize(f1);
    this.f.setAntiAlias(true);
    this.l.setStyle(Paint.Style.FILL_AND_STROKE);
    this.l.setStrokeWidth(this.v);
    this.l.setColor(paramInt);
    this.o.setStyle(Paint.Style.FILL_AND_STROKE);
    this.o.setColor(paramInt);
    localObject = paramAttributeSet.getDrawable(l.TitlePageIndicator_android_background);
    if (localObject != null) {
      setBackgroundDrawable((Drawable)localObject);
    }
    paramAttributeSet.recycle();
    this.w = bx.a(ViewConfiguration.get(paramContext));
  }
  
  private void a(Rect paramRect, float paramFloat, int paramInt)
  {
    paramRect.right = ((int)(paramInt - this.u));
    paramRect.left = ((int)(paramRect.right - paramFloat));
  }
  
  private void b(Rect paramRect, float paramFloat, int paramInt)
  {
    paramRect.left = ((int)(paramInt + this.u));
    paramRect.right = ((int)(this.u + paramFloat));
  }
  
  private CharSequence c(int paramInt)
  {
    CharSequence localCharSequence = this.a.getAdapter().b(paramInt);
    Object localObject = localCharSequence;
    if (localCharSequence == null) {
      localObject = "";
    }
    return (CharSequence)localObject;
  }
  
  public final void a(int paramInt1, float paramFloat, int paramInt2)
  {
    this.c = paramInt1;
    this.d = paramFloat;
    invalidate();
    if (this.b != null) {
      this.b.a(paramInt1, paramFloat, paramInt2);
    }
  }
  
  public final void b(int paramInt)
  {
    this.e = paramInt;
    if (this.b != null) {
      this.b.b(paramInt);
    }
  }
  
  public final void b_(int paramInt)
  {
    if (this.e == 0)
    {
      this.c = paramInt;
      invalidate();
    }
    if (this.b != null) {
      this.b.b_(paramInt);
    }
  }
  
  public float getClipPadding()
  {
    return this.u;
  }
  
  public int getFooterColor()
  {
    return this.l.getColor();
  }
  
  public float getFooterIndicatorHeight()
  {
    return this.p;
  }
  
  public float getFooterIndicatorPadding()
  {
    return this.r;
  }
  
  public o getFooterIndicatorStyle()
  {
    return this.m;
  }
  
  public float getFooterLineHeight()
  {
    return this.v;
  }
  
  public p getLinePosition()
  {
    return this.n;
  }
  
  public int getSelectedColor()
  {
    return this.i;
  }
  
  public int getTextColor()
  {
    return this.h;
  }
  
  public float getTextSize()
  {
    return this.f.getTextSize();
  }
  
  public float getTitlePadding()
  {
    return this.s;
  }
  
  public float getTopPadding()
  {
    return this.t;
  }
  
  public Typeface getTypeface()
  {
    return this.f.getTypeface();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (this.a == null) {}
    int i7;
    do
    {
      return;
      i7 = this.a.getAdapter().b();
    } while (i7 == 0);
    if ((this.c == -1) && (this.a != null)) {
      this.c = this.a.getCurrentItem();
    }
    Object localObject2 = this.f;
    Object localObject1 = new ArrayList();
    int i2 = this.a.getAdapter().b();
    int i3 = getWidth();
    int i4 = i3 / 2;
    int i1 = 0;
    Object localObject3;
    Object localObject4;
    int i5;
    while (i1 < i2)
    {
      localObject3 = new Rect();
      localObject4 = c(i1);
      ((Rect)localObject3).right = ((int)((Paint)localObject2).measureText((CharSequence)localObject4, 0, ((CharSequence)localObject4).length()));
      ((Rect)localObject3).bottom = ((int)(((Paint)localObject2).descent() - ((Paint)localObject2).ascent()));
      i5 = ((Rect)localObject3).right - ((Rect)localObject3).left;
      i6 = ((Rect)localObject3).bottom;
      i8 = ((Rect)localObject3).top;
      ((Rect)localObject3).left = ((int)(i4 - i5 / 2.0F + (i1 - this.c - this.d) * i3));
      ((Rect)localObject3).right = (i5 + ((Rect)localObject3).left);
      ((Rect)localObject3).top = 0;
      ((Rect)localObject3).bottom = (i6 - i8);
      ((ArrayList)localObject1).add(localObject3);
      i1 += 1;
    }
    int i8 = ((ArrayList)localObject1).size();
    if (this.c >= i8)
    {
      setCurrentItem(i8 - 1);
      return;
    }
    float f3 = getWidth() / 2.0F;
    int i10 = getLeft();
    float f2 = i10 + this.u;
    int i9 = getWidth();
    int i6 = getHeight();
    int i11 = i10 + i9;
    float f5 = i11 - this.u;
    i1 = this.c;
    if (this.d <= 0.5D)
    {
      f1 = this.d;
      if (f1 > 0.25F) {
        break label630;
      }
      i2 = 1;
      label378:
      if (f1 > 0.05F) {
        break label636;
      }
    }
    float f4;
    label630:
    label636:
    for (i3 = 1;; i3 = 0)
    {
      f4 = (0.25F - f1) / 0.25F;
      localObject2 = (Rect)((ArrayList)localObject1).get(this.c);
      f1 = ((Rect)localObject2).right - ((Rect)localObject2).left;
      if (((Rect)localObject2).left < f2) {
        b((Rect)localObject2, f1, i10);
      }
      if (((Rect)localObject2).right > f5) {
        a((Rect)localObject2, f1, i11);
      }
      if (this.c <= 0) {
        break label642;
      }
      i4 = this.c - 1;
      while (i4 >= 0)
      {
        localObject2 = (Rect)((ArrayList)localObject1).get(i4);
        if (((Rect)localObject2).left < f2)
        {
          i5 = ((Rect)localObject2).right - ((Rect)localObject2).left;
          b((Rect)localObject2, i5, i10);
          localObject3 = (Rect)((ArrayList)localObject1).get(i4 + 1);
          if (((Rect)localObject2).right + this.s > ((Rect)localObject3).left)
          {
            ((Rect)localObject2).left = ((int)(((Rect)localObject3).left - i5 - this.s));
            ((Rect)localObject2).right = (((Rect)localObject2).left + i5);
          }
        }
        i4 -= 1;
      }
      f1 = this.d;
      i1 += 1;
      f1 = 1.0F - f1;
      break;
      i2 = 0;
      break label378;
    }
    label642:
    if (this.c < i7 - 1)
    {
      i4 = this.c + 1;
      while (i4 < i7)
      {
        localObject2 = (Rect)((ArrayList)localObject1).get(i4);
        if (((Rect)localObject2).right > f5)
        {
          i5 = ((Rect)localObject2).right - ((Rect)localObject2).left;
          a((Rect)localObject2, i5, i11);
          localObject3 = (Rect)((ArrayList)localObject1).get(i4 - 1);
          if (((Rect)localObject2).left - this.s < ((Rect)localObject3).right)
          {
            ((Rect)localObject2).left = ((int)(((Rect)localObject3).right + this.s));
            ((Rect)localObject2).right = (((Rect)localObject2).left + i5);
          }
        }
        i4 += 1;
      }
    }
    int i12 = this.h >>> 24;
    i4 = 0;
    if (i4 < i7)
    {
      localObject2 = (Rect)((ArrayList)localObject1).get(i4);
      if (((((Rect)localObject2).left > i10) && (((Rect)localObject2).left < i11)) || ((((Rect)localObject2).right > i10) && (((Rect)localObject2).right < i11)))
      {
        if (i4 != i1) {
          break label1175;
        }
        i5 = 1;
        label871:
        localObject3 = c(i4);
        localObject4 = this.f;
        if ((i5 == 0) || (i3 == 0) || (!this.g)) {
          break label1181;
        }
      }
      label1175:
      label1181:
      for (boolean bool = true;; bool = false)
      {
        ((Paint)localObject4).setFakeBoldText(bool);
        this.f.setColor(this.h);
        if ((i5 != 0) && (i2 != 0)) {
          this.f.setAlpha(i12 - (int)(i12 * f4));
        }
        if (i4 < i8 - 1)
        {
          localObject4 = (Rect)((ArrayList)localObject1).get(i4 + 1);
          if (((Rect)localObject2).right + this.s > ((Rect)localObject4).left)
          {
            i13 = ((Rect)localObject2).right - ((Rect)localObject2).left;
            ((Rect)localObject2).left = ((int)(((Rect)localObject4).left - i13 - this.s));
            ((Rect)localObject2).right = (((Rect)localObject2).left + i13);
          }
        }
        int i13 = ((CharSequence)localObject3).length();
        f1 = ((Rect)localObject2).left;
        f2 = ((Rect)localObject2).bottom;
        paramCanvas.drawText((CharSequence)localObject3, 0, i13, f1, this.t + f2, this.f);
        if ((i5 != 0) && (i2 != 0))
        {
          this.f.setColor(this.i);
          this.f.setAlpha((int)((this.i >>> 24) * f4));
          i5 = ((CharSequence)localObject3).length();
          f1 = ((Rect)localObject2).left;
          f2 = ((Rect)localObject2).bottom;
          paramCanvas.drawText((CharSequence)localObject3, 0, i5, f1, this.t + f2, this.f);
        }
        i4 += 1;
        break;
        i5 = 0;
        break label871;
      }
    }
    f2 = this.v;
    float f1 = this.p;
    if (this.n == p.b)
    {
      i3 = 0;
      f2 = -f2;
      f1 = -f1;
    }
    for (;;)
    {
      this.j.reset();
      this.j.moveTo(0.0F, i3 - f2 / 2.0F);
      this.j.lineTo(i9, i3 - f2 / 2.0F);
      this.j.close();
      paramCanvas.drawPath(this.j, this.l);
      f2 = i3 - f2;
      switch (1.a[this.m.ordinal()])
      {
      default: 
        return;
      case 1: 
        this.j.reset();
        this.j.moveTo(f3, f2 - f1);
        this.j.lineTo(f3 + f1, f2);
        this.j.lineTo(f3 - f1, f2);
        this.j.close();
        paramCanvas.drawPath(this.j, this.o);
        return;
      }
      if ((i2 == 0) || (i1 >= i8)) {
        break;
      }
      localObject1 = (Rect)((ArrayList)localObject1).get(i1);
      f3 = ((Rect)localObject1).right + this.q;
      f5 = ((Rect)localObject1).left - this.q;
      f1 = f2 - f1;
      this.j.reset();
      this.j.moveTo(f5, f2);
      this.j.lineTo(f3, f2);
      this.j.lineTo(f3, f1);
      this.j.lineTo(f5, f1);
      this.j.close();
      this.o.setAlpha((int)(255.0F * f4));
      paramCanvas.drawPath(this.j, this.o);
      this.o.setAlpha(255);
      return;
      i3 = i6;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt1 = View.MeasureSpec.getSize(paramInt1);
    float f1;
    if (View.MeasureSpec.getMode(paramInt2) == 1073741824) {
      f1 = View.MeasureSpec.getSize(paramInt2);
    }
    for (;;)
    {
      setMeasuredDimension(paramInt1, (int)f1);
      return;
      this.k.setEmpty();
      this.k.bottom = ((int)(this.f.descent() - this.f.ascent()));
      float f2 = this.k.bottom - this.k.top + this.v + this.r + this.t;
      f1 = f2;
      if (this.m != o.a) {
        f1 = f2 + this.p;
      }
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (r)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    this.c = paramParcelable.a;
    requestLayout();
  }
  
  public Parcelable onSaveInstanceState()
  {
    r localr = new r(super.onSaveInstanceState());
    localr.a = this.c;
    return localr;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i1 = 0;
    if (super.onTouchEvent(paramMotionEvent)) {}
    label319:
    do
    {
      do
      {
        float f1;
        float f2;
        float f3;
        do
        {
          do
          {
            do
            {
              return true;
              if ((this.a == null) || (this.a.getAdapter().b() == 0)) {
                return false;
              }
              i2 = paramMotionEvent.getAction() & 0xFF;
              switch (i2)
              {
              case 4: 
              default: 
                return true;
              case 0: 
                this.y = at.b(paramMotionEvent, 0);
                this.x = paramMotionEvent.getX();
                return true;
              case 2: 
                f1 = at.c(paramMotionEvent, at.a(paramMotionEvent, this.y));
                f2 = f1 - this.x;
                if ((!this.z) && (Math.abs(f2) > this.w)) {
                  this.z = true;
                }
                break;
              }
            } while (!this.z);
            this.x = f1;
          } while ((!this.a.a) && (!this.a.d()));
          this.a.a(f2);
          return true;
          if (this.z) {
            break label319;
          }
          i1 = this.a.getAdapter().b();
          int i3 = getWidth();
          f1 = i3 / 2.0F;
          f2 = i3 / 6.0F;
          f3 = paramMotionEvent.getX();
          if (f3 >= f1 - f2) {
            break;
          }
          if (this.c <= 0) {
            break label319;
          }
        } while (i2 == 3);
        this.a.setCurrentItem(this.c - 1);
        return true;
        if ((f3 <= f2 + f1) || (this.c >= i1 - 1)) {
          break;
        }
      } while (i2 == 3);
      this.a.setCurrentItem(this.c + 1);
      return true;
      this.z = false;
      this.y = -1;
    } while (!this.a.a);
    this.a.e();
    return true;
    i1 = at.b(paramMotionEvent);
    this.x = at.c(paramMotionEvent, i1);
    this.y = at.b(paramMotionEvent, i1);
    return true;
    int i2 = at.b(paramMotionEvent);
    if (at.b(paramMotionEvent, i2) == this.y)
    {
      if (i2 == 0) {
        i1 = 1;
      }
      this.y = at.b(paramMotionEvent, i1);
    }
    this.x = at.c(paramMotionEvent, at.a(paramMotionEvent, this.y));
    return true;
  }
  
  public void setClipPadding(float paramFloat)
  {
    this.u = paramFloat;
    invalidate();
  }
  
  public void setCurrentItem(int paramInt)
  {
    if (this.a == null) {
      throw new IllegalStateException("ViewPager has not been bound.");
    }
    this.a.setCurrentItem(paramInt);
    this.c = paramInt;
    invalidate();
  }
  
  public void setFooterColor(int paramInt)
  {
    this.l.setColor(paramInt);
    this.o.setColor(paramInt);
    invalidate();
  }
  
  public void setFooterIndicatorHeight(float paramFloat)
  {
    this.p = paramFloat;
    invalidate();
  }
  
  public void setFooterIndicatorPadding(float paramFloat)
  {
    this.r = paramFloat;
    invalidate();
  }
  
  public void setFooterIndicatorStyle(o paramo)
  {
    this.m = paramo;
    invalidate();
  }
  
  public void setFooterLineHeight(float paramFloat)
  {
    this.v = paramFloat;
    this.l.setStrokeWidth(this.v);
    invalidate();
  }
  
  public void setLinePosition(p paramp)
  {
    this.n = paramp;
    invalidate();
  }
  
  public void setOnCenterItemClickListener(q paramq)
  {
    this.A = paramq;
  }
  
  public void setOnPageChangeListener(cp paramcp)
  {
    this.b = paramcp;
  }
  
  public void setSelectedBold(boolean paramBoolean)
  {
    this.g = paramBoolean;
    invalidate();
  }
  
  public void setSelectedColor(int paramInt)
  {
    this.i = paramInt;
    invalidate();
  }
  
  public void setTextColor(int paramInt)
  {
    this.f.setColor(paramInt);
    this.h = paramInt;
    invalidate();
  }
  
  public void setTextSize(float paramFloat)
  {
    this.f.setTextSize(paramFloat);
    invalidate();
  }
  
  public void setTitlePadding(float paramFloat)
  {
    this.s = paramFloat;
    invalidate();
  }
  
  public void setTopPadding(float paramFloat)
  {
    this.t = paramFloat;
    invalidate();
  }
  
  public void setTypeface(Typeface paramTypeface)
  {
    this.f.setTypeface(paramTypeface);
    invalidate();
  }
  
  public void setViewPager(ViewPager paramViewPager)
  {
    if (this.a == paramViewPager) {
      return;
    }
    if (this.a != null) {
      this.a.setOnPageChangeListener(null);
    }
    if (paramViewPager.getAdapter() == null) {
      throw new IllegalStateException("ViewPager does not have adapter instance.");
    }
    this.a = paramViewPager;
    this.a.setOnPageChangeListener(this);
    invalidate();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\viewpagerindicator\TitlePageIndicator.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */