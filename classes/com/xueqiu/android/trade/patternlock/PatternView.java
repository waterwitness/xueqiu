package com.xueqiu.android.trade.patternlock;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.accessibility.AccessibilityManager;
import com.xueqiu.android.R.styleable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class PatternView
  extends View
{
  private final Rect A = new Rect();
  private int B;
  private int C;
  private int D;
  private final Matrix E = new Matrix();
  private final Matrix F = new Matrix();
  private final PorterDuffColorFilter G;
  private final PorterDuffColorFilter H;
  private final PorterDuffColorFilter I;
  private final PorterDuffColorFilter J;
  private final g[][] a;
  private boolean b = false;
  private Paint c = new Paint();
  private Paint d = new Paint();
  private i e;
  private ArrayList<f> f = new ArrayList(9);
  private boolean[][] g = (boolean[][])Array.newInstance(Boolean.TYPE, new int[] { 3, 3 });
  private float h = -1.0F;
  private float i = -1.0F;
  private long j;
  private h k = h.a;
  private boolean l = true;
  private boolean m = false;
  private boolean n = false;
  private float o = 0.1F;
  private final int p = 128;
  private float q = 0.6F;
  private float r;
  private float s;
  private final Bitmap t;
  private final Bitmap u;
  private final Bitmap v;
  private final Bitmap w;
  private final Bitmap x;
  private final Path y = new Path();
  private final Rect z = new Rect();
  
  public PatternView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public PatternView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772413);
  }
  
  public PatternView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    setClickable(true);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.PatternView, paramInt, 0);
    this.D = paramContext.getInt(0, 0);
    paramInt = paramContext.getColor(3, 0);
    int i1 = paramContext.getColor(1, 0);
    int i2 = paramContext.getColor(2, 0);
    int i3 = paramContext.getColor(4, 0);
    this.G = new PorterDuffColorFilter(paramInt, PorterDuff.Mode.SRC_ATOP);
    this.H = new PorterDuffColorFilter(i1, PorterDuff.Mode.SRC_ATOP);
    this.I = new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
    this.J = new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_ATOP);
    paramInt = paramContext.getColor(5, i1);
    this.d.setAntiAlias(true);
    this.d.setDither(true);
    this.d.setColor(paramInt);
    this.d.setAlpha(128);
    this.d.setStyle(Paint.Style.STROKE);
    this.d.setStrokeJoin(Paint.Join.ROUND);
    this.d.setStrokeCap(Paint.Cap.ROUND);
    this.t = a(paramContext, 6);
    this.u = a(paramContext, 7);
    this.v = a(paramContext, 8);
    this.w = a(paramContext, 9);
    this.x = a(paramContext, 10);
    paramAttributeSet = this.t;
    Bitmap localBitmap1 = this.u;
    Bitmap localBitmap2 = this.v;
    Bitmap localBitmap3 = this.w;
    paramInt = 0;
    while (paramInt < 4)
    {
      Bitmap localBitmap4 = new Bitmap[] { paramAttributeSet, localBitmap1, localBitmap2, localBitmap3 }[paramInt];
      this.B = Math.max(this.B, localBitmap4.getWidth());
      this.C = Math.max(this.C, localBitmap4.getHeight());
      paramInt += 1;
    }
    paramContext.recycle();
    this.c.setAntiAlias(true);
    this.c.setDither(true);
    this.c.setFilterBitmap(true);
    this.a = ((g[][])Array.newInstance(g.class, new int[] { 3, 3 }));
    paramInt = 0;
    while (paramInt < 3)
    {
      i1 = 0;
      while (i1 < 3)
      {
        this.a[paramInt][i1] = new g();
        i1 += 1;
      }
      paramInt += 1;
    }
  }
  
  private float a(int paramInt)
  {
    return getPaddingLeft() + paramInt * this.r + this.r / 2.0F;
  }
  
  private static int a(int paramInt1, int paramInt2)
  {
    int i2 = View.MeasureSpec.getSize(paramInt1);
    int i1 = paramInt2;
    switch (View.MeasureSpec.getMode(paramInt1))
    {
    default: 
      i1 = i2;
    case 0: 
      return i1;
    }
    return Math.max(i2, paramInt2);
  }
  
  private Bitmap a(TypedArray paramTypedArray, int paramInt)
  {
    return BitmapFactory.decodeResource(getContext().getResources(), paramTypedArray.getResourceId(paramInt, 0));
  }
  
  private f a(float paramFloat1, float paramFloat2)
  {
    int i4 = 0;
    int i3 = -1;
    Object localObject1 = null;
    Object localObject2 = null;
    float f1 = this.s;
    float f2 = f1 * this.q;
    float f3 = getPaddingTop();
    float f4 = (f1 - f2) / 2.0F;
    int i1 = 0;
    int i2;
    label83:
    f localf;
    if (i1 < 3)
    {
      float f5 = i1 * f1 + (f4 + f3);
      if ((paramFloat2 >= f5) && (paramFloat2 <= f5 + f2))
      {
        i2 = i1;
        if (i2 >= 0) {
          break label336;
        }
        localf = null;
        label91:
        if (localf != null)
        {
          ArrayList localArrayList = this.f;
          localObject1 = localObject2;
          if (!localArrayList.isEmpty())
          {
            localObject1 = (f)localArrayList.get(localArrayList.size() - 1);
            int i6 = localf.a - ((f)localObject1).a;
            int i5 = localf.b - ((f)localObject1).b;
            i4 = ((f)localObject1).a;
            i2 = ((f)localObject1).b;
            i1 = i4;
            if (Math.abs(i6) == 2)
            {
              i1 = i4;
              if (Math.abs(i5) != 1)
              {
                i4 = ((f)localObject1).a;
                if (i6 <= 0) {
                  break label458;
                }
                i1 = 1;
                label212:
                i1 += i4;
              }
            }
            if ((Math.abs(i5) != 2) || (Math.abs(i6) == 1)) {
              break label464;
            }
            i4 = ((f)localObject1).b;
            i2 = i3;
            if (i5 > 0) {
              i2 = 1;
            }
            i2 = i4 + i2;
          }
        }
      }
    }
    label336:
    label366:
    label427:
    label458:
    label464:
    for (;;)
    {
      localObject1 = f.a(i1, i2);
      if ((localObject1 != null) && (this.g[localObject1.a][localObject1.b] == 0)) {
        a((f)localObject1);
      }
      a(localf);
      performHapticFeedback(1);
      localObject1 = localf;
      return (f)localObject1;
      i1 += 1;
      break;
      i2 = -1;
      break label83;
      paramFloat2 = this.r;
      f1 = this.q * paramFloat2;
      f2 = getPaddingLeft();
      f3 = (paramFloat2 - f1) / 2.0F;
      i1 = i4;
      if (i1 < 3)
      {
        f4 = i1 * paramFloat2 + (f2 + f3);
        if ((paramFloat1 < f4) || (paramFloat1 > f4 + f1)) {}
      }
      for (;;)
      {
        if (i1 >= 0) {
          break label427;
        }
        localf = null;
        break;
        i1 += 1;
        break label366;
        i1 = -1;
      }
      if (this.g[i2][i1] != 0)
      {
        localf = null;
        break label91;
      }
      localf = f.a(i2, i1);
      break label91;
      i1 = -1;
      break label212;
    }
  }
  
  private void a(f paramf)
  {
    this.g[paramf.a][paramf.b] = 1;
    this.f.add(paramf);
  }
  
  private float b(int paramInt)
  {
    return getPaddingTop() + paramInt * this.s + this.s / 2.0F;
  }
  
  private boolean b()
  {
    return (this.m) && (this.k == h.a);
  }
  
  private void c()
  {
    if (this.e != null) {
      this.e.w();
    }
  }
  
  private void d()
  {
    if (this.e != null) {
      this.e.x();
    }
  }
  
  private void e()
  {
    int i1 = 0;
    while (i1 < 3)
    {
      int i2 = 0;
      while (i2 < 3)
      {
        this.g[i1][i2] = 0;
        i2 += 1;
      }
      i1 += 1;
    }
  }
  
  final void a()
  {
    this.f.clear();
    e();
    this.k = h.a;
    invalidate();
  }
  
  public g[][] getCellStates()
  {
    return this.a;
  }
  
  public h getDisplayMode()
  {
    return this.k;
  }
  
  protected int getSuggestedMinimumHeight()
  {
    return this.B * 3;
  }
  
  protected int getSuggestedMinimumWidth()
  {
    return this.B * 3;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    ArrayList localArrayList = this.f;
    int i4 = localArrayList.size();
    boolean[][] arrayOfBoolean = this.g;
    int i2;
    int i3;
    int i1;
    float f1;
    float f2;
    float f3;
    float f4;
    float f5;
    Path localPath;
    int i5;
    int i6;
    if (this.k == h.b)
    {
      i2 = (int)(SystemClock.elapsedRealtime() - this.j) % ((i4 + 1) * 700);
      i3 = i2 / 700;
      e();
      i1 = 0;
      while (i1 < i3)
      {
        localObject1 = (f)localArrayList.get(i1);
        arrayOfBoolean[localObject1.a][localObject1.b] = 1;
        i1 += 1;
      }
      if ((i3 > 0) && (i3 < i4))
      {
        i1 = 1;
        if (i1 != 0)
        {
          f1 = i2 % 700 / 700.0F;
          localObject1 = (f)localArrayList.get(i3 - 1);
          f2 = a(((f)localObject1).b);
          f3 = b(((f)localObject1).a);
          localObject1 = (f)localArrayList.get(i3);
          f4 = a(((f)localObject1).b);
          f5 = b(((f)localObject1).a);
          this.h = (f2 + (f4 - f2) * f1);
          this.i = ((f5 - f3) * f1 + f3);
        }
        invalidate();
      }
    }
    else
    {
      f1 = this.r;
      f2 = this.s;
      f3 = this.o;
      this.d.setStrokeWidth(f3 * f1 * 0.5F);
      localPath = this.y;
      localPath.rewind();
      i5 = getPaddingTop();
      i6 = getPaddingLeft();
      i1 = 0;
    }
    label314:
    float f7;
    float f8;
    float f6;
    Object localObject2;
    Object localObject3;
    int i7;
    float f9;
    float f10;
    for (;;)
    {
      if (i1 >= 3) {
        break label813;
      }
      f3 = i5;
      f4 = i1;
      i2 = 0;
      if (i2 < 3)
      {
        f7 = i6;
        f8 = i2;
        f5 = this.a[i1][i2].a;
        this.c.setAlpha((int)(this.a[i1][i2].c * 255.0F));
        f6 = this.a[i1][i2].b;
        f7 = (int)(f7 + f8 * f1);
        f8 = (int)(f3 + f4 * f2);
        int i14 = arrayOfBoolean[i1][i2];
        localObject1 = null;
        if ((i14 == 0) || (b()))
        {
          localObject2 = this.v;
          localObject3 = this.G;
        }
        for (;;)
        {
          i7 = this.B;
          i3 = this.C;
          f9 = this.r;
          f10 = this.s;
          i7 = (int)((f9 - i7) / 2.0F);
          i3 = (int)((f10 - i3) / 2.0F);
          f9 = Math.min(this.r / this.B, 1.0F);
          f10 = Math.min(this.s / this.C, 1.0F);
          this.F.setTranslate(f7 + i7, f8 + f6 + i3);
          this.F.preTranslate(this.B / 2, this.C / 2);
          this.F.preScale(f9 * f5, f5 * f10);
          this.F.preTranslate(-this.B / 2, -this.C / 2);
          this.c.setColorFilter((ColorFilter)localObject3);
          paramCanvas.drawBitmap((Bitmap)localObject2, this.F, this.c);
          if (localObject1 != null)
          {
            this.c.setColorFilter((ColorFilter)localObject3);
            paramCanvas.drawBitmap((Bitmap)localObject1, this.F, this.c);
          }
          i2 += 1;
          break label314;
          i1 = 0;
          break;
          if (this.n)
          {
            localObject2 = this.w;
            localObject1 = this.u;
            localObject3 = this.H;
          }
          else if (this.k == h.c)
          {
            localObject2 = this.w;
            localObject1 = this.t;
            localObject3 = this.I;
          }
          else
          {
            if ((this.k != h.a) && (this.k != h.b)) {
              break label776;
            }
            localObject2 = this.w;
            localObject1 = this.t;
            localObject3 = this.J;
          }
        }
        label776:
        throw new IllegalStateException("unknown display mode " + this.k);
      }
      i1 += 1;
    }
    label813:
    this.c.setAlpha(255);
    if (!b()) {
      i1 = 1;
    }
    while (i1 != 0)
    {
      i2 = 0;
      for (;;)
      {
        if (i2 < i4 - 1)
        {
          localObject2 = (f)localArrayList.get(i2);
          localObject3 = (f)localArrayList.get(i2 + 1);
          if (arrayOfBoolean[localObject3.a][localObject3.b] != 0)
          {
            f3 = i6;
            f4 = ((f)localObject2).b;
            f5 = i5;
            f6 = ((f)localObject2).a;
            f7 = this.a[localObject2.a][localObject2.b].b;
            if (this.n)
            {
              this.c.setColorFilter(this.H);
              i3 = ((f)localObject3).a;
              i7 = ((f)localObject2).a;
              int i8 = ((f)localObject3).b;
              int i9 = ((f)localObject2).b;
              int i10 = ((int)this.r - this.B) / 2;
              int i11 = ((int)this.s - this.C) / 2;
              int i12 = this.B;
              int i13 = this.C;
              f8 = (float)Math.toDegrees((float)Math.atan2(i3 - i7, i8 - i9));
              f9 = Math.min(this.r / this.B, 1.0F);
              f10 = Math.min(this.s / this.C, 1.0F);
              this.E.setTranslate(f4 * f1 + f3 + i10, f7 + (f5 + f6 * f2) + i11);
              this.E.preTranslate(this.B / 2, this.C / 2);
              this.E.preScale(f9, f10);
              this.E.preTranslate(-this.B / 2, -this.C / 2);
              this.E.preRotate(f8 + 90.0F, i12 / 2.0F, i13 / 2.0F);
              this.E.preTranslate((i12 - this.x.getWidth()) / 2.0F, 0.0F);
              paramCanvas.drawBitmap(this.x, this.E, this.c);
              i2 += 1;
              continue;
              i1 = 0;
              break;
            }
            label1262:
            Paint localPaint;
            if (this.k != h.c)
            {
              i3 = 1;
              localPaint = this.c;
              if (i3 == 0) {
                break label1296;
              }
            }
            label1296:
            for (localObject1 = this.J;; localObject1 = this.I)
            {
              localPaint.setColorFilter((ColorFilter)localObject1);
              break;
              i3 = 0;
              break label1262;
            }
          }
        }
      }
    }
    if (i1 != 0)
    {
      i1 = 0;
      i2 = 0;
      if (i1 < i4)
      {
        localObject1 = (f)localArrayList.get(i1);
        if (arrayOfBoolean[localObject1.a][localObject1.b] != 0)
        {
          i2 = 1;
          f1 = a(((f)localObject1).b);
          f2 = b(((f)localObject1).a);
          f2 = this.a[localObject1.a][localObject1.b].b + f2;
          if (i1 == 0) {
            localPath.moveTo(f1, f2);
          }
          for (;;)
          {
            i1 += 1;
            break;
            localPath.lineTo(f1, f2);
          }
        }
      }
      if (((this.n) || (this.k == h.b)) && (i2 != 0)) {
        localPath.lineTo(this.h, this.i);
      }
      if (this.n)
      {
        this.d.setColorFilter(this.H);
        paramCanvas.drawPath(localPath, this.d);
      }
    }
    else
    {
      return;
    }
    if (this.k != h.c)
    {
      i1 = 1;
      label1506:
      localObject2 = this.d;
      if (i1 == 0) {
        break label1540;
      }
    }
    label1540:
    for (Object localObject1 = this.J;; localObject1 = this.I)
    {
      ((Paint)localObject2).setColorFilter((ColorFilter)localObject1);
      break;
      i1 = 0;
      break label1506;
    }
  }
  
  @SuppressLint({"NewApi"})
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i1;
    if ((Build.VERSION.SDK_INT >= 14) && (((AccessibilityManager)getContext().getSystemService("accessibility")).isTouchExplorationEnabled()))
    {
      i1 = paramMotionEvent.getAction();
      switch (i1)
      {
      }
    }
    for (;;)
    {
      onTouchEvent(paramMotionEvent);
      paramMotionEvent.setAction(i1);
      return super.onHoverEvent(paramMotionEvent);
      paramMotionEvent.setAction(0);
      continue;
      paramMotionEvent.setAction(2);
      continue;
      paramMotionEvent.setAction(1);
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = getSuggestedMinimumWidth();
    int i2 = getSuggestedMinimumHeight();
    i1 = a(paramInt1, i1);
    paramInt1 = a(paramInt2, i2);
    switch (this.D)
    {
    default: 
      paramInt2 = i1;
    }
    for (;;)
    {
      setMeasuredDimension(paramInt2, paramInt1);
      return;
      paramInt1 = Math.min(i1, paramInt1);
      paramInt2 = paramInt1;
      continue;
      paramInt1 = Math.min(i1, paramInt1);
      paramInt2 = i1;
      continue;
      paramInt2 = Math.min(i1, paramInt1);
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (j)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    h localh = h.a;
    Object localObject = e.a(paramParcelable.a);
    this.f.clear();
    this.f.addAll((Collection)localObject);
    e();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      f localf = (f)((Iterator)localObject).next();
      this.g[localf.a][localf.b] = 1;
    }
    setDisplayMode(localh);
    this.k = h.values()[paramParcelable.b];
    this.l = paramParcelable.c;
    this.m = paramParcelable.d;
  }
  
  protected Parcelable onSaveInstanceState()
  {
    return new j(super.onSaveInstanceState(), e.a(this.f), this.k.ordinal(), this.l, this.m, (byte)0);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.r = ((paramInt1 - getPaddingLeft() - getPaddingRight()) / 3.0F);
    this.s = ((paramInt2 - getPaddingTop() - getPaddingBottom()) / 3.0F);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!this.l) || (!isEnabled())) {
      return false;
    }
    float f1;
    float f2;
    float f3;
    float f4;
    float f5;
    float f6;
    int i2;
    int i1;
    switch (paramMotionEvent.getAction())
    {
    default: 
      return false;
    case 0: 
      a();
      f1 = paramMotionEvent.getX();
      f2 = paramMotionEvent.getY();
      paramMotionEvent = a(f1, f2);
      if (paramMotionEvent != null)
      {
        this.n = true;
        this.k = h.a;
        c();
      }
      for (;;)
      {
        if (paramMotionEvent != null)
        {
          f3 = a(paramMotionEvent.b);
          f4 = b(paramMotionEvent.a);
          f5 = this.r / 2.0F;
          f6 = this.s / 2.0F;
          invalidate((int)(f3 - f5), (int)(f4 - f6), (int)(f3 + f5), (int)(f4 + f6));
        }
        this.h = f1;
        this.i = f2;
        return true;
        if (this.n)
        {
          this.n = false;
          d();
        }
      }
    case 1: 
      if (!this.f.isEmpty())
      {
        this.n = false;
        if (this.e != null) {
          this.e.a(this.f);
        }
        invalidate();
      }
      return true;
    case 2: 
      float f7 = this.r * this.o * 0.5F;
      int i3 = paramMotionEvent.getHistorySize();
      this.A.setEmpty();
      i2 = 0;
      i1 = 0;
      if (i1 < i3 + 1) {
        if (i1 < i3)
        {
          f1 = paramMotionEvent.getHistoricalX(i1);
          label292:
          if (i1 >= i3) {
            break label608;
          }
          f2 = paramMotionEvent.getHistoricalY(i1);
          label306:
          f localf1 = a(f1, f2);
          int i4 = this.f.size();
          if ((localf1 != null) && (i4 == 1))
          {
            this.n = true;
            c();
          }
          f3 = Math.abs(f1 - this.h);
          f4 = Math.abs(f2 - this.i);
          if ((f3 > 0.0F) || (f4 > 0.0F)) {
            i2 = 1;
          }
          if ((this.n) && (i4 > 0))
          {
            f localf2 = (f)this.f.get(i4 - 1);
            f3 = a(localf2.b);
            f6 = b(localf2.a);
            f5 = Math.min(f3, f1) - f7;
            f4 = Math.max(f3, f1) + f7;
            f3 = Math.min(f6, f2) - f7;
            f6 = Math.max(f6, f2) + f7;
            if (localf1 == null) {
              break label691;
            }
            f2 = this.r * 0.5F;
            float f8 = this.s * 0.5F;
            float f10 = a(localf1.b);
            float f9 = b(localf1.a);
            f1 = Math.min(f10 - f2, f5);
            f4 = Math.max(f2 + f10, f4);
            f2 = Math.min(f9 - f8, f3);
            f3 = Math.max(f9 + f8, f6);
          }
        }
      }
      break;
    }
    for (;;)
    {
      this.A.union(Math.round(f1), Math.round(f2), Math.round(f4), Math.round(f3));
      i1 += 1;
      break;
      f1 = paramMotionEvent.getX();
      break label292;
      label608:
      f2 = paramMotionEvent.getY();
      break label306;
      this.h = paramMotionEvent.getX();
      this.i = paramMotionEvent.getY();
      if (i2 != 0)
      {
        this.z.union(this.A);
        invalidate(this.z);
        this.z.set(this.A);
      }
      return true;
      if (this.n)
      {
        this.n = false;
        a();
        d();
      }
      return true;
      label691:
      f2 = f3;
      f3 = f6;
      f1 = f5;
    }
  }
  
  public void setDisplayMode(h paramh)
  {
    this.k = paramh;
    if (paramh == h.b)
    {
      if (this.f.size() == 0) {
        throw new IllegalStateException("you must have a pattern to animate if you want to set the display mode to animate");
      }
      this.j = SystemClock.elapsedRealtime();
      paramh = (f)this.f.get(0);
      this.h = a(paramh.b);
      this.i = b(paramh.a);
      e();
    }
    invalidate();
  }
  
  public void setInStealthMode(boolean paramBoolean)
  {
    this.m = paramBoolean;
  }
  
  public void setInputEnabled(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }
  
  public void setOnPatternListener(i parami)
  {
    this.e = parami;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\trade\patternlock\PatternView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */