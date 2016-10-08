package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.annotation.ColorInt;
import android.support.annotation.DrawableRes;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.at;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import java.util.ArrayList;

public class SlidingPaneLayout
  extends ViewGroup
{
  static final an a = new ao();
  private int b = -858993460;
  private int c;
  private Drawable d;
  private Drawable e;
  private final int f;
  private boolean g;
  private View h;
  private float i;
  private float j;
  private int k;
  private boolean l;
  private int m;
  private float n;
  private float o;
  private al p;
  private final ar q;
  private boolean r;
  private boolean s = true;
  private final Rect t = new Rect();
  private final ArrayList<ai> u = new ArrayList();
  
  static
  {
    int i1 = Build.VERSION.SDK_INT;
    if (i1 >= 17)
    {
      a = new aq();
      return;
    }
    if (i1 >= 16)
    {
      a = new ap();
      return;
    }
  }
  
  public SlidingPaneLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    float f1 = paramContext.getResources().getDisplayMetrics().density;
    this.f = ((int)(32.0F * f1 + 0.5F));
    ViewConfiguration.get(paramContext);
    setWillNotDraw(false);
    ViewCompat.a(this, new ah(this));
    ViewCompat.c(this, 1);
    this.q = ar.a(this, 0.5F, new aj(this, (byte)0));
    this.q.h = (f1 * 400.0F);
  }
  
  private void a(View paramView, float paramFloat, int paramInt)
  {
    ak localak = (ak)paramView.getLayoutParams();
    if ((paramFloat > 0.0F) && (paramInt != 0))
    {
      i1 = (int)(((0xFF000000 & paramInt) >>> 24) * paramFloat);
      if (localak.d == null) {
        localak.d = new Paint();
      }
      localak.d.setColorFilter(new PorterDuffColorFilter(i1 << 24 | 0xFFFFFF & paramInt, PorterDuff.Mode.SRC_OVER));
      if (ViewCompat.g(paramView) != 2) {
        ViewCompat.a(paramView, 2, localak.d);
      }
      c(paramView);
    }
    while (ViewCompat.g(paramView) == 0)
    {
      int i1;
      return;
    }
    if (localak.d != null) {
      localak.d.setColorFilter(null);
    }
    paramView = new ai(this, paramView);
    this.u.add(paramView);
    ViewCompat.a(this, paramView);
  }
  
  private boolean a(float paramFloat)
  {
    if (!this.g) {
      return false;
    }
    boolean bool = c();
    ak localak = (ak)this.h.getLayoutParams();
    int i2;
    int i3;
    if (bool)
    {
      i1 = getPaddingRight();
      i2 = localak.rightMargin;
      i3 = this.h.getWidth();
    }
    for (int i1 = (int)(getWidth() - (i2 + i1 + this.k * paramFloat + i3)); this.q.a(this.h, i1, this.h.getTop()); i1 = (int)(localak.leftMargin + i1 + this.k * paramFloat))
    {
      a();
      ViewCompat.d(this);
      return true;
      i1 = getPaddingLeft();
    }
    return false;
  }
  
  private void b(float paramFloat)
  {
    boolean bool = c();
    Object localObject = (ak)this.h.getLayoutParams();
    int i1;
    label43:
    int i2;
    if (((ak)localObject).c) {
      if (bool)
      {
        i1 = ((ak)localObject).rightMargin;
        if (i1 > 0) {
          break label174;
        }
        i1 = 1;
        int i5 = getChildCount();
        i2 = 0;
        label52:
        if (i2 >= i5) {
          return;
        }
        localObject = getChildAt(i2);
        if (localObject != this.h)
        {
          int i3 = (int)((1.0F - this.j) * this.m);
          this.j = paramFloat;
          int i4 = i3 - (int)((1.0F - paramFloat) * this.m);
          i3 = i4;
          if (bool) {
            i3 = -i4;
          }
          ((View)localObject).offsetLeftAndRight(i3);
          if (i1 != 0) {
            if (!bool) {
              break label180;
            }
          }
        }
      }
    }
    label174:
    label180:
    for (float f1 = this.j - 1.0F;; f1 = 1.0F - this.j)
    {
      a((View)localObject, f1, this.c);
      i2 += 1;
      break label52;
      i1 = ((ak)localObject).leftMargin;
      break;
      i1 = 0;
      break label43;
    }
  }
  
  private boolean b()
  {
    boolean bool = false;
    if ((this.s) || (a(0.0F)))
    {
      this.r = false;
      bool = true;
    }
    return bool;
  }
  
  private void c(View paramView)
  {
    a.a(this, paramView);
  }
  
  private boolean c()
  {
    return ViewCompat.h(this) == 1;
  }
  
  final void a()
  {
    int i2 = getChildCount();
    int i1 = 0;
    while (i1 < i2)
    {
      View localView = getChildAt(i1);
      if (localView.getVisibility() == 4) {
        localView.setVisibility(0);
      }
      i1 += 1;
    }
  }
  
  final void a(View paramView)
  {
    boolean bool = c();
    int i1;
    int i2;
    label32:
    int i3;
    label64:
    int i6;
    int i5;
    int i4;
    label93:
    int i7;
    label102:
    Object localObject;
    if (bool)
    {
      i1 = getWidth() - getPaddingRight();
      if (!bool) {
        break label239;
      }
      i2 = getPaddingLeft();
      int i9 = getPaddingTop();
      int i10 = getHeight();
      int i11 = getPaddingBottom();
      if (paramView == null) {
        break label296;
      }
      if (!ViewCompat.j(paramView)) {
        break label253;
      }
      i3 = 1;
      if (i3 == 0) {
        break label296;
      }
      i6 = paramView.getLeft();
      i5 = paramView.getRight();
      i4 = paramView.getTop();
      i3 = paramView.getBottom();
      int i12 = getChildCount();
      i7 = 0;
      if (i7 >= i12) {
        return;
      }
      localObject = getChildAt(i7);
      if (localObject == paramView) {
        return;
      }
      if (!bool) {
        break label311;
      }
      i8 = i2;
      label130:
      int i13 = Math.max(i8, ((View)localObject).getLeft());
      int i14 = Math.max(i9, ((View)localObject).getTop());
      if (!bool) {
        break label317;
      }
      i8 = i1;
      label160:
      i8 = Math.min(i8, ((View)localObject).getRight());
      int i15 = Math.min(i10 - i11, ((View)localObject).getBottom());
      if ((i13 < i6) || (i14 < i4) || (i8 > i5) || (i15 > i3)) {
        break label324;
      }
    }
    label239:
    label253:
    label296:
    label311:
    label317:
    label324:
    for (int i8 = 4;; i8 = 0)
    {
      ((View)localObject).setVisibility(i8);
      i7 += 1;
      break label102;
      i1 = getPaddingLeft();
      break;
      i2 = getWidth() - getPaddingRight();
      break label32;
      if (Build.VERSION.SDK_INT < 18)
      {
        localObject = paramView.getBackground();
        if (localObject != null)
        {
          if (((Drawable)localObject).getOpacity() == -1)
          {
            i3 = 1;
            break label64;
          }
          i3 = 0;
          break label64;
        }
      }
      i3 = 0;
      break label64;
      i3 = 0;
      i4 = 0;
      i5 = 0;
      i6 = 0;
      break label93;
      i8 = i1;
      break label130;
      i8 = i2;
      break label160;
    }
  }
  
  final boolean b(View paramView)
  {
    if (paramView == null) {
      return false;
    }
    paramView = (ak)paramView.getLayoutParams();
    return (this.g) && (paramView.c) && (this.i > 0.0F);
  }
  
  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    return ((paramLayoutParams instanceof ak)) && (super.checkLayoutParams(paramLayoutParams));
  }
  
  public void computeScroll()
  {
    if (this.q.c())
    {
      if (!this.g) {
        this.q.b();
      }
    }
    else {
      return;
    }
    ViewCompat.d(this);
  }
  
  public void draw(Canvas paramCanvas)
  {
    super.draw(paramCanvas);
    Drawable localDrawable;
    if (c())
    {
      localDrawable = this.e;
      if (getChildCount() <= 1) {
        break label48;
      }
    }
    label48:
    for (View localView = getChildAt(1);; localView = null)
    {
      if ((localView != null) && (localDrawable != null)) {
        break label53;
      }
      return;
      localDrawable = this.d;
      break;
    }
    label53:
    int i3 = localView.getTop();
    int i4 = localView.getBottom();
    int i5 = localDrawable.getIntrinsicWidth();
    int i2;
    int i1;
    if (c())
    {
      i2 = localView.getRight();
      i1 = i2 + i5;
    }
    for (;;)
    {
      localDrawable.setBounds(i2, i3, i1, i4);
      localDrawable.draw(paramCanvas);
      return;
      i1 = localView.getLeft();
      i2 = i1 - i5;
    }
  }
  
  protected boolean drawChild(Canvas paramCanvas, View paramView, long paramLong)
  {
    ak localak = (ak)paramView.getLayoutParams();
    int i1 = paramCanvas.save(2);
    if ((this.g) && (!localak.b) && (this.h != null))
    {
      paramCanvas.getClipBounds(this.t);
      if (!c()) {
        break label168;
      }
      this.t.left = Math.max(this.t.left, this.h.getRight());
    }
    boolean bool;
    for (;;)
    {
      paramCanvas.clipRect(this.t);
      if (Build.VERSION.SDK_INT >= 11) {
        break label225;
      }
      if ((!localak.c) || (this.i <= 0.0F)) {
        break label237;
      }
      if (!paramView.isDrawingCacheEnabled()) {
        paramView.setDrawingCacheEnabled(true);
      }
      Bitmap localBitmap = paramView.getDrawingCache();
      if (localBitmap == null) {
        break;
      }
      paramCanvas.drawBitmap(localBitmap, paramView.getLeft(), paramView.getTop(), localak.d);
      bool = false;
      paramCanvas.restoreToCount(i1);
      return bool;
      label168:
      this.t.right = Math.min(this.t.right, this.h.getLeft());
    }
    Log.e("SlidingPaneLayout", "drawChild: child view " + paramView + " returned null drawing cache");
    for (;;)
    {
      label225:
      bool = super.drawChild(paramCanvas, paramView, paramLong);
      break;
      label237:
      if (paramView.isDrawingCacheEnabled()) {
        paramView.setDrawingCacheEnabled(false);
      }
    }
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ak();
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ak(getContext(), paramAttributeSet);
  }
  
  protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams instanceof ViewGroup.MarginLayoutParams)) {
      return new ak((ViewGroup.MarginLayoutParams)paramLayoutParams);
    }
    return new ak(paramLayoutParams);
  }
  
  @ColorInt
  public int getCoveredFadeColor()
  {
    return this.c;
  }
  
  public int getParallaxDistance()
  {
    return this.m;
  }
  
  @ColorInt
  public int getSliderFadeColor()
  {
    return this.b;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    this.s = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.s = true;
    int i2 = this.u.size();
    int i1 = 0;
    while (i1 < i2)
    {
      ((ai)this.u.get(i1)).run();
      i1 += 1;
    }
    this.u.clear();
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    int i1 = at.a(paramMotionEvent);
    if ((!this.g) && (i1 == 0) && (getChildCount() > 1))
    {
      View localView = getChildAt(1);
      if (localView != null) {
        if (ar.b(localView, (int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())) {
          break label104;
        }
      }
    }
    label104:
    for (boolean bool1 = true;; bool1 = false)
    {
      this.r = bool1;
      if ((this.g) && ((!this.l) || (i1 == 0))) {
        break;
      }
      this.q.a();
      bool1 = super.onInterceptTouchEvent(paramMotionEvent);
      return bool1;
    }
    if ((i1 == 3) || (i1 == 1))
    {
      this.q.a();
      return false;
    }
    switch (i1)
    {
    }
    label160:
    float f1;
    float f2;
    do
    {
      for (i1 = 0;; i1 = 1)
      {
        if (!this.q.a(paramMotionEvent))
        {
          bool1 = bool2;
          if (i1 == 0) {
            break;
          }
        }
        return true;
        this.l = false;
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        this.n = f1;
        this.o = f2;
        if ((!ar.b(this.h, (int)f1, (int)f2)) || (!b(this.h))) {
          break label160;
        }
      }
      f2 = paramMotionEvent.getX();
      f1 = paramMotionEvent.getY();
      f2 = Math.abs(f2 - this.n);
      f1 = Math.abs(f1 - this.o);
    } while ((f2 <= this.q.b) || (f1 <= f2));
    this.q.a();
    this.l = true;
    return false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = c();
    label35:
    label46:
    int i4;
    float f1;
    label82:
    label93:
    ak localak;
    int i6;
    int i2;
    int i1;
    if (bool)
    {
      this.q.j = 2;
      int i3 = paramInt3 - paramInt1;
      if (!bool) {
        break label352;
      }
      paramInt1 = getPaddingRight();
      if (!bool) {
        break label360;
      }
      paramInt3 = getPaddingLeft();
      int i5 = getPaddingTop();
      i4 = getChildCount();
      if (this.s)
      {
        if ((!this.g) || (!this.r)) {
          break label369;
        }
        f1 = 1.0F;
        this.i = f1;
      }
      paramInt4 = 0;
      paramInt2 = paramInt1;
      if (paramInt4 >= i4) {
        break label442;
      }
      View localView = getChildAt(paramInt4);
      if (localView.getVisibility() == 8) {
        break label551;
      }
      localak = (ak)localView.getLayoutParams();
      i6 = localView.getMeasuredWidth();
      i2 = 0;
      if (!localak.b) {
        break label390;
      }
      i1 = localak.leftMargin;
      int i7 = localak.rightMargin;
      i7 = Math.min(paramInt1, i3 - paramInt3 - this.f) - paramInt2 - (i1 + i7);
      this.k = i7;
      if (!bool) {
        break label375;
      }
      i1 = localak.rightMargin;
      label202:
      if (paramInt2 + i1 + i7 + i6 / 2 <= i3 - paramInt3) {
        break label385;
      }
      paramBoolean = true;
      label224:
      localak.c = paramBoolean;
      i7 = (int)(i7 * this.i);
      paramInt2 += i1 + i7;
      this.i = (i7 / this.k);
      i1 = i2;
      if (!bool) {
        break label426;
      }
      i2 = i3 - paramInt2 + i1;
      i1 = i2 - i6;
      label287:
      localView.layout(i1, i5, i2, localView.getMeasuredHeight() + i5);
      i1 = localView.getWidth() + paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = i1;
    }
    for (;;)
    {
      i1 = paramInt4 + 1;
      paramInt4 = paramInt1;
      paramInt1 = paramInt2;
      paramInt2 = paramInt4;
      paramInt4 = i1;
      break label93;
      this.q.j = 1;
      break;
      label352:
      paramInt1 = getPaddingLeft();
      break label35;
      label360:
      paramInt3 = getPaddingRight();
      break label46;
      label369:
      f1 = 0.0F;
      break label82;
      label375:
      i1 = localak.leftMargin;
      break label202;
      label385:
      paramBoolean = false;
      break label224;
      label390:
      if ((this.g) && (this.m != 0)) {}
      for (paramInt2 = (int)((1.0F - this.i) * this.m);; paramInt2 = 0)
      {
        i1 = paramInt2;
        paramInt2 = paramInt1;
        break;
        label426:
        i1 = paramInt2 - i1;
        i2 = i1 + i6;
        break label287;
        label442:
        if (this.s)
        {
          if (!this.g) {
            break label517;
          }
          if (this.m != 0) {
            b(this.i);
          }
          if (((ak)this.h.getLayoutParams()).c) {
            a(this.h, this.i, this.b);
          }
        }
        for (;;)
        {
          a(this.h);
          this.s = false;
          return;
          label517:
          paramInt1 = 0;
          while (paramInt1 < i4)
          {
            a(getChildAt(paramInt1), 0.0F, this.b);
            paramInt1 += 1;
          }
        }
      }
      label551:
      i1 = paramInt2;
      paramInt2 = paramInt1;
      paramInt1 = i1;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i3 = View.MeasureSpec.getMode(paramInt1);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    int i2 = View.MeasureSpec.getMode(paramInt2);
    paramInt1 = View.MeasureSpec.getSize(paramInt2);
    if (i3 != 1073741824) {
      if (isInEditMode())
      {
        if ((i3 == Integer.MIN_VALUE) || (i3 != 0)) {
          break label1085;
        }
        i1 = i2;
        i2 = 300;
      }
    }
    for (;;)
    {
      label93:
      boolean bool1;
      int i7;
      int i8;
      int i6;
      float f1;
      label145:
      View localView;
      ak localak;
      int i4;
      switch (i1)
      {
      default: 
        paramInt1 = 0;
        i3 = -1;
        bool1 = false;
        i7 = i2 - getPaddingLeft() - getPaddingRight();
        i8 = getChildCount();
        if (i8 > 2) {
          Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.h = null;
        i6 = 0;
        paramInt2 = i7;
        f1 = 0.0F;
        if (i6 < i8)
        {
          localView = getChildAt(i6);
          localak = (ak)localView.getLayoutParams();
          if (localView.getVisibility() == 8)
          {
            localak.c = false;
            i4 = paramInt2;
            paramInt2 = paramInt1;
            paramInt1 = i4;
          }
        }
        break;
      }
      for (;;)
      {
        i6 += 1;
        i4 = paramInt2;
        paramInt2 = paramInt1;
        paramInt1 = i4;
        break label145;
        throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
        if (i2 != 0) {
          break label1085;
        }
        if (isInEditMode())
        {
          if (i2 != 0) {
            break label1085;
          }
          paramInt2 = Integer.MIN_VALUE;
          i2 = i1;
          paramInt1 = 300;
          i1 = paramInt2;
          break;
        }
        throw new IllegalStateException("Height must not be UNSPECIFIED");
        paramInt1 = paramInt1 - getPaddingTop() - getPaddingBottom();
        i3 = paramInt1;
        break label93;
        i3 = getPaddingTop();
        i4 = getPaddingBottom();
        paramInt2 = 0;
        i3 = paramInt1 - i3 - i4;
        paramInt1 = paramInt2;
        break label93;
        float f2 = f1;
        if (localak.a > 0.0F)
        {
          f2 = f1 + localak.a;
          if (localak.width == 0) {}
        }
        else
        {
          i4 = localak.leftMargin + localak.rightMargin;
          label380:
          int i5;
          label400:
          int i9;
          if (localak.width == -2)
          {
            i4 = View.MeasureSpec.makeMeasureSpec(i7 - i4, Integer.MIN_VALUE);
            if (localak.height != -2) {
              break label542;
            }
            i5 = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
            localView.measure(i4, i5);
            i5 = localView.getMeasuredWidth();
            i9 = localView.getMeasuredHeight();
            i4 = paramInt1;
            if (i1 == Integer.MIN_VALUE)
            {
              i4 = paramInt1;
              if (i9 > paramInt1) {
                i4 = Math.min(i9, i3);
              }
            }
            paramInt1 = paramInt2 - i5;
            if (paramInt1 >= 0) {
              break label580;
            }
          }
          label542:
          label580:
          for (boolean bool2 = true;; bool2 = false)
          {
            localak.b = bool2;
            if (localak.b) {
              this.h = localView;
            }
            f1 = f2;
            bool1 = bool2 | bool1;
            paramInt2 = i4;
            break;
            if (localak.width == -1)
            {
              i4 = View.MeasureSpec.makeMeasureSpec(i7 - i4, 1073741824);
              break label380;
            }
            i4 = View.MeasureSpec.makeMeasureSpec(localak.width, 1073741824);
            break label380;
            if (localak.height == -1)
            {
              i5 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
              break label400;
            }
            i5 = View.MeasureSpec.makeMeasureSpec(localak.height, 1073741824);
            break label400;
          }
          if ((bool1) || (f1 > 0.0F))
          {
            i6 = i7 - this.f;
            i4 = 0;
            if (i4 < i8)
            {
              localView = getChildAt(i4);
              if (localView.getVisibility() != 8)
              {
                localak = (ak)localView.getLayoutParams();
                if (localView.getVisibility() != 8)
                {
                  if ((localak.width != 0) || (localak.a <= 0.0F)) {
                    break label771;
                  }
                  i1 = 1;
                  label675:
                  if (i1 == 0) {
                    break label777;
                  }
                  i5 = 0;
                  label683:
                  if ((!bool1) || (localView == this.h)) {
                    break label841;
                  }
                  if ((localak.width < 0) && ((i5 > i6) || (localak.a > 0.0F)))
                  {
                    if (i1 == 0) {
                      break label825;
                    }
                    if (localak.height != -2) {
                      break label787;
                    }
                    i1 = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
                    label747:
                    localView.measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), i1);
                  }
                }
              }
              for (;;)
              {
                i4 += 1;
                break;
                label771:
                i1 = 0;
                break label675;
                label777:
                i5 = localView.getMeasuredWidth();
                break label683;
                label787:
                if (localak.height == -1)
                {
                  i1 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                  break label747;
                }
                i1 = View.MeasureSpec.makeMeasureSpec(localak.height, 1073741824);
                break label747;
                label825:
                i1 = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
                break label747;
                label841:
                if (localak.a > 0.0F)
                {
                  if (localak.width == 0) {
                    if (localak.height == -2) {
                      i1 = View.MeasureSpec.makeMeasureSpec(i3, Integer.MIN_VALUE);
                    }
                  }
                  for (;;)
                  {
                    if (!bool1) {
                      break label987;
                    }
                    i9 = localak.leftMargin;
                    i9 = i7 - (localak.rightMargin + i9);
                    int i10 = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
                    if (i5 == i9) {
                      break;
                    }
                    localView.measure(i10, i1);
                    break;
                    if (localak.height == -1)
                    {
                      i1 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                    }
                    else
                    {
                      i1 = View.MeasureSpec.makeMeasureSpec(localak.height, 1073741824);
                      continue;
                      i1 = View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824);
                    }
                  }
                  label987:
                  i9 = Math.max(0, paramInt2);
                  localView.measure(View.MeasureSpec.makeMeasureSpec((int)(localak.a * i9 / f1) + i5, 1073741824), i1);
                }
              }
            }
          }
          setMeasuredDimension(i2, getPaddingTop() + paramInt1 + getPaddingBottom());
          this.g = bool1;
          if ((this.q.a != 0) && (!bool1)) {
            this.q.b();
          }
          return;
        }
        i4 = paramInt1;
        f1 = f2;
        paramInt1 = paramInt2;
        paramInt2 = i4;
      }
      label1085:
      paramInt2 = i2;
      i2 = i1;
      i1 = paramInt2;
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (am)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    if (paramParcelable.a) {
      if ((this.s) || (a(1.0F))) {
        this.r = true;
      }
    }
    for (;;)
    {
      this.r = paramParcelable.a;
      return;
      b();
    }
  }
  
  protected Parcelable onSaveInstanceState()
  {
    am localam = new am(super.onSaveInstanceState());
    boolean bool;
    if (this.g) {
      if ((!this.g) || (this.i == 1.0F)) {
        bool = true;
      }
    }
    for (;;)
    {
      localam.a = bool;
      return localam;
      bool = false;
      continue;
      bool = this.r;
    }
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if (paramInt1 != paramInt3) {
      this.s = true;
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.g) {
      return super.onTouchEvent(paramMotionEvent);
    }
    this.q.b(paramMotionEvent);
    switch (paramMotionEvent.getAction() & 0xFF)
    {
    }
    for (;;)
    {
      return true;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      this.n = f1;
      this.o = f2;
      continue;
      if (b(this.h))
      {
        f1 = paramMotionEvent.getX();
        f2 = paramMotionEvent.getY();
        float f3 = f1 - this.n;
        float f4 = f2 - this.o;
        int i1 = this.q.b;
        if ((f3 * f3 + f4 * f4 < i1 * i1) && (ar.b(this.h, (int)f1, (int)f2))) {
          b();
        }
      }
    }
  }
  
  public void requestChildFocus(View paramView1, View paramView2)
  {
    super.requestChildFocus(paramView1, paramView2);
    if ((!isInTouchMode()) && (!this.g)) {
      if (paramView1 != this.h) {
        break label36;
      }
    }
    label36:
    for (boolean bool = true;; bool = false)
    {
      this.r = bool;
      return;
    }
  }
  
  public void setCoveredFadeColor(@ColorInt int paramInt)
  {
    this.c = paramInt;
  }
  
  public void setPanelSlideListener(al paramal)
  {
    this.p = paramal;
  }
  
  public void setParallaxDistance(int paramInt)
  {
    this.m = paramInt;
    requestLayout();
  }
  
  @Deprecated
  public void setShadowDrawable(Drawable paramDrawable)
  {
    setShadowDrawableLeft(paramDrawable);
  }
  
  public void setShadowDrawableLeft(Drawable paramDrawable)
  {
    this.d = paramDrawable;
  }
  
  public void setShadowDrawableRight(Drawable paramDrawable)
  {
    this.e = paramDrawable;
  }
  
  @Deprecated
  public void setShadowResource(@DrawableRes int paramInt)
  {
    setShadowDrawable(getResources().getDrawable(paramInt));
  }
  
  public void setShadowResourceLeft(int paramInt)
  {
    setShadowDrawableLeft(getResources().getDrawable(paramInt));
  }
  
  public void setShadowResourceRight(int paramInt)
  {
    setShadowDrawableRight(getResources().getDrawable(paramInt));
  }
  
  public void setSliderFadeColor(@ColorInt int paramInt)
  {
    this.b = paramInt;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\SlidingPaneLayout.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */