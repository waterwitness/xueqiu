package com.xueqiu.android.common.widget;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcelable;
import android.support.v4.content.g;
import android.text.Layout;
import android.text.Layout.Alignment;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.xueqiu.android.R.styleable;

public class SwitchButton
  extends CompoundButton
{
  private static int[] a = { 16842912, 16842910, 16842919 };
  private static int[] b = { -16842912, 16842910, 16842919 };
  private Paint A;
  private boolean B;
  private boolean C;
  private boolean D = false;
  private ObjectAnimator E;
  private float F;
  private RectF G;
  private float H;
  private float I;
  private float J;
  private int K;
  private int L;
  private Paint M;
  private CharSequence N;
  private CharSequence O;
  private TextPaint P;
  private Layout Q;
  private Layout R;
  private float S;
  private float T;
  private float U;
  private CompoundButton.OnCheckedChangeListener V;
  private Drawable c;
  private Drawable d;
  private ColorStateList e;
  private ColorStateList f;
  private float g;
  private float h;
  private RectF i;
  private float j;
  private long k;
  private boolean l;
  private int m;
  private PointF n;
  private int o;
  private int p;
  private int q;
  private int r;
  private int s;
  private Drawable t;
  private Drawable u;
  private RectF v;
  private RectF w;
  private RectF x;
  private RectF y;
  private RectF z;
  
  public SwitchButton(Context paramContext)
  {
    super(paramContext);
    a(null);
  }
  
  public SwitchButton(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }
  
  public SwitchButton(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }
  
  private Layout a(CharSequence paramCharSequence)
  {
    return new StaticLayout(paramCharSequence, this.P, (int)Math.ceil(Layout.getDesiredWidth(paramCharSequence, this.P)), Layout.Alignment.ALIGN_CENTER, 1.0F, 0.0F, false);
  }
  
  private void a()
  {
    int i2 = 1;
    float f2 = getPaddingTop() + Math.max(0.0F, this.i.top);
    float f3 = getPaddingLeft() + Math.max(0.0F, this.i.left);
    float f1 = f2;
    if (this.Q != null)
    {
      f1 = f2;
      if (this.R != null)
      {
        f1 = f2;
        if (this.i.top + this.i.bottom > 0.0F) {
          f1 = f2 + (getMeasuredHeight() - getPaddingBottom() - getPaddingTop() - this.n.y - this.i.top - this.i.bottom) / 2.0F;
        }
      }
    }
    if (this.B)
    {
      this.n.x = Math.max(this.n.x, this.c.getMinimumWidth());
      this.n.y = Math.max(this.n.y, this.c.getMinimumHeight());
    }
    this.v.set(f3, f1, this.n.x + f3, this.n.y + f1);
    f1 = this.v.left - this.i.left;
    f2 = Math.min(0.0F, (Math.max(this.n.x * this.j, this.n.x + this.S) - this.v.width() - this.S) / 2.0F);
    f3 = Math.min(0.0F, (this.v.height() + this.i.top + this.i.bottom - this.T) / 2.0F);
    this.w.set(f1 + f2, this.v.top - this.i.top + f3, f1 + this.i.left + Math.max(this.n.x * this.j, this.n.x + this.S) + this.i.right - f2, this.v.bottom + this.i.bottom - f3);
    this.x.set(this.v.left, 0.0F, this.w.right - this.i.right - this.v.width(), 0.0F);
    this.h = Math.min(Math.min(this.w.width(), this.w.height()) / 2.0F, this.h);
    if (this.d != null) {
      this.d.setBounds((int)this.w.left, (int)this.w.top, (int)Math.ceil(this.w.right), (int)Math.ceil(this.w.bottom));
    }
    float f4;
    float f5;
    if (this.Q != null)
    {
      f1 = this.w.left;
      f2 = (this.w.width() - this.v.width() - this.Q.getWidth()) / 2.0F;
      f3 = this.i.left;
      f4 = this.U;
      if (this.i.left > 0.0F)
      {
        i1 = 1;
        f1 = i1 * f4 + (f1 + f2 - f3);
        f2 = this.w.top + (this.w.height() - this.Q.getHeight()) / 2.0F;
        this.y.set(f1, f2, this.Q.getWidth() + f1, this.Q.getHeight() + f2);
      }
    }
    else if (this.R != null)
    {
      f1 = this.w.right;
      f2 = (this.w.width() - this.v.width() - this.R.getWidth()) / 2.0F;
      f3 = this.i.right;
      f4 = this.R.getWidth();
      f5 = this.U;
      if (this.i.right <= 0.0F) {
        break label820;
      }
    }
    label820:
    for (int i1 = i2;; i1 = -1)
    {
      f1 = f1 - f2 + f3 - f4 - i1 * f5;
      f2 = this.w.top + (this.w.height() - this.R.getHeight()) / 2.0F;
      this.z.set(f1, f2, this.R.getWidth() + f1, this.R.getHeight() + f2);
      return;
      i1 = -1;
      break;
    }
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    this.n.set(paramFloat1, paramFloat2);
    a();
    requestLayout();
  }
  
  private void a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    this.i.set(paramFloat1, paramFloat2, paramFloat3, paramFloat4);
    requestLayout();
  }
  
  private void a(AttributeSet paramAttributeSet)
  {
    this.K = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    this.L = (ViewConfiguration.getPressedStateDuration() + ViewConfiguration.getTapTimeout());
    this.A = new Paint(1);
    this.M = new Paint(1);
    this.M.setStyle(Paint.Style.STROKE);
    this.M.setStrokeWidth(getResources().getDisplayMetrics().density);
    this.P = getPaint();
    this.v = new RectF();
    this.w = new RectF();
    this.x = new RectF();
    this.n = new PointF();
    this.i = new RectF();
    this.y = new RectF();
    this.z = new RectF();
    this.E = ObjectAnimator.ofFloat(this, "process", new float[] { 0.0F, 0.0F }).setDuration(250L);
    this.E.setInterpolator(new AccelerateDecelerateInterpolator());
    this.G = new RectF();
    float f1 = getResources().getDisplayMetrics().density;
    float f10 = 2.0F * f1;
    f1 *= 20.0F;
    float f4 = f1 / 2.0F;
    Drawable localDrawable1 = null;
    ColorStateList localColorStateList = null;
    float f11 = 1.8F;
    int i2 = 250;
    boolean bool1 = true;
    int i1 = Integer.MIN_VALUE;
    String str1 = null;
    Object localObject = null;
    Drawable localDrawable2;
    float f2;
    float f9;
    float f8;
    float f7;
    float f6;
    float f3;
    float f5;
    String str2;
    if (paramAttributeSet == null)
    {
      paramAttributeSet = null;
      if (paramAttributeSet == null) {
        break label839;
      }
      localDrawable2 = paramAttributeSet.getDrawable(0);
      localObject = paramAttributeSet.getColorStateList(2);
      f2 = paramAttributeSet.getDimension(3, f10);
      f9 = paramAttributeSet.getDimension(6, f2);
      f8 = paramAttributeSet.getDimension(7, f2);
      f7 = paramAttributeSet.getDimension(4, f2);
      f6 = paramAttributeSet.getDimension(5, f2);
      f3 = paramAttributeSet.getDimension(8, f1);
      f2 = paramAttributeSet.getDimension(9, f1);
      f5 = paramAttributeSet.getDimension(10, Math.min(f3, f2) / 2.0F);
      f4 = paramAttributeSet.getDimension(11, f5 + f10);
      localDrawable1 = paramAttributeSet.getDrawable(12);
      localColorStateList = paramAttributeSet.getColorStateList(1);
      f1 = paramAttributeSet.getFloat(14, 1.8F);
      i2 = paramAttributeSet.getInteger(15, 250);
      bool1 = paramAttributeSet.getBoolean(13, true);
      i1 = paramAttributeSet.getColor(16, Integer.MIN_VALUE);
      str1 = paramAttributeSet.getString(17);
      str2 = paramAttributeSet.getString(18);
      f10 = paramAttributeSet.getDimension(19, f10);
      paramAttributeSet.recycle();
      paramAttributeSet = str2;
    }
    for (;;)
    {
      this.N = str1;
      this.O = paramAttributeSet;
      this.U = f10;
      this.c = localDrawable2;
      this.f = ((ColorStateList)localObject);
      if (this.c != null)
      {
        bool2 = true;
        label511:
        this.B = bool2;
        this.m = i1;
        if (this.m == Integer.MIN_VALUE) {
          this.m = 3309506;
        }
        if ((!this.B) && (this.f == null))
        {
          this.f = e.a(this.m);
          this.o = this.f.getDefaultColor();
        }
        f11 = f2;
        f10 = f3;
        if (this.B)
        {
          f10 = Math.max(f3, this.c.getMinimumWidth());
          f11 = Math.max(f2, this.c.getMinimumHeight());
        }
        this.n.set(f10, f11);
        this.d = localDrawable1;
        this.e = localColorStateList;
        if (this.d == null) {
          break label833;
        }
      }
      label833:
      for (boolean bool2 = true;; bool2 = false)
      {
        this.C = bool2;
        if ((!this.C) && (this.e == null))
        {
          this.e = e.b(this.m);
          this.p = this.e.getDefaultColor();
          this.q = this.e.getColorForState(a, this.p);
        }
        this.i.set(f9, f7, f8, f6);
        f2 = f1;
        if (this.i.width() >= 0.0F) {
          f2 = Math.max(f1, 1.0F);
        }
        this.j = f2;
        this.g = f5;
        this.h = f4;
        this.k = i2;
        this.l = bool1;
        this.E.setDuration(this.k);
        setFocusable(true);
        setClickable(true);
        if (isChecked()) {
          setProcess(1.0F);
        }
        return;
        paramAttributeSet = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.SwitchButton);
        break;
        bool2 = false;
        break label511;
      }
      label839:
      localDrawable2 = null;
      f3 = f1;
      str2 = null;
      f9 = 0.0F;
      f8 = 0.0F;
      f7 = 0.0F;
      f6 = 0.0F;
      f2 = f1;
      f5 = f4;
      paramAttributeSet = (AttributeSet)localObject;
      f1 = f11;
      localObject = str2;
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (this.E == null) {
      return;
    }
    if (this.E.isRunning()) {
      this.E.cancel();
    }
    this.E.setDuration(this.k);
    if (paramBoolean) {
      this.E.setFloatValues(new float[] { this.F, 1.0F });
    }
    for (;;)
    {
      this.E.start();
      return;
      this.E.setFloatValues(new float[] { this.F, 0.0F });
    }
  }
  
  private boolean getStatusBasedOnPos()
  {
    return getProcess() > 0.5F;
  }
  
  private void setDrawableState(Drawable paramDrawable)
  {
    if (paramDrawable != null)
    {
      paramDrawable.setState(getDrawableState());
      invalidate();
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    if ((!this.B) && (this.f != null))
    {
      this.o = this.f.getColorForState(getDrawableState(), this.o);
      if (!isChecked()) {
        break label147;
      }
    }
    label147:
    for (int[] arrayOfInt = b;; arrayOfInt = a)
    {
      ColorStateList localColorStateList = getTextColors();
      if (localColorStateList != null)
      {
        int i1 = localColorStateList.getDefaultColor();
        this.r = localColorStateList.getColorForState(a, i1);
        this.s = localColorStateList.getColorForState(b, i1);
      }
      if ((this.C) || (this.e == null)) {
        break label154;
      }
      this.p = this.e.getColorForState(getDrawableState(), this.p);
      this.q = this.e.getColorForState(arrayOfInt, this.p);
      return;
      setDrawableState(this.c);
      break;
    }
    label154:
    if (((this.d instanceof StateListDrawable)) && (this.l)) {
      this.d.setState(arrayOfInt);
    }
    for (this.u = this.d.getCurrent().mutate();; this.u = null)
    {
      setDrawableState(this.d);
      if (this.d == null) {
        break;
      }
      this.t = this.d.getCurrent().mutate();
      return;
    }
  }
  
  public long getAnimationDuration()
  {
    return this.k;
  }
  
  public ColorStateList getBackColor()
  {
    return this.e;
  }
  
  public Drawable getBackDrawable()
  {
    return this.d;
  }
  
  public float getBackMeasureRatio()
  {
    return this.j;
  }
  
  public float getBackRadius()
  {
    return this.h;
  }
  
  public PointF getBackSizeF()
  {
    return new PointF(this.w.width(), this.w.height());
  }
  
  public final float getProcess()
  {
    return this.F;
  }
  
  public ColorStateList getThumbColor()
  {
    return this.f;
  }
  
  public Drawable getThumbDrawable()
  {
    return this.c;
  }
  
  public float getThumbHeight()
  {
    return this.n.y;
  }
  
  public RectF getThumbMargin()
  {
    return this.i;
  }
  
  public float getThumbRadius()
  {
    return this.g;
  }
  
  public PointF getThumbSizeF()
  {
    return this.n;
  }
  
  public float getThumbWidth()
  {
    return this.n.x;
  }
  
  public int getTintColor()
  {
    return this.m;
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    float f1;
    int i1;
    label91:
    label108:
    RectF localRectF;
    label126:
    label160:
    int i2;
    if (this.C) {
      if ((this.l) && (this.t != null) && (this.u != null)) {
        if (isChecked())
        {
          f1 = getProcess();
          i1 = (int)(f1 * 255.0F);
          this.t.setAlpha(i1);
          this.t.draw(paramCanvas);
          this.u.setAlpha(255 - i1);
          this.u.draw(paramCanvas);
          if (getProcess() <= 0.5D) {
            break label693;
          }
          localObject = this.Q;
          if (getProcess() <= 0.5D) {
            break label701;
          }
          localRectF = this.y;
          if ((localObject != null) && (localRectF != null))
          {
            if (getProcess() < 0.75D) {
              break label710;
            }
            f1 = getProcess() * 4.0F - 3.0F;
            i2 = (int)(f1 * 255.0F);
            if (getProcess() <= 0.5D) {
              break label741;
            }
            i1 = this.r;
            label186:
            i2 = i2 * Color.alpha(i1) / 255;
            ((Layout)localObject).getPaint().setARGB(i2, Color.red(i1), Color.green(i1), Color.blue(i1));
            paramCanvas.save();
            paramCanvas.translate(localRectF.left, localRectF.top);
            ((Layout)localObject).draw(paramCanvas);
            paramCanvas.restore();
          }
          this.G.set(this.v);
          this.G.offset(this.F * this.x.width(), 0.0F);
          if (!this.B) {
            break label750;
          }
          this.c.setBounds((int)this.G.left, (int)this.G.top, (int)Math.ceil(this.G.right), (int)Math.ceil(this.G.bottom));
          this.c.draw(paramCanvas);
          label345:
          if (this.D)
          {
            this.M.setColor(Color.parseColor("#AA0000"));
            paramCanvas.drawRect(this.w, this.M);
            this.M.setColor(Color.parseColor("#0000FF"));
            paramCanvas.drawRect(this.G, this.M);
            this.M.setColor(Color.parseColor("#00CC00"));
            if (getProcess() <= 0.5D) {
              break label784;
            }
          }
        }
      }
    }
    label693:
    label701:
    label710:
    label741:
    label750:
    label784:
    for (Object localObject = this.y;; localObject = this.z)
    {
      paramCanvas.drawRect((RectF)localObject, this.M);
      return;
      f1 = 1.0F - getProcess();
      break;
      this.d.setAlpha(255);
      this.d.draw(paramCanvas);
      break label91;
      if (this.l)
      {
        if (isChecked()) {}
        for (f1 = getProcess();; f1 = 1.0F - getProcess())
        {
          i1 = (int)(f1 * 255.0F);
          i2 = Color.alpha(this.p) * i1 / 255;
          this.A.setARGB(i2, Color.red(this.p), Color.green(this.p), Color.blue(this.p));
          paramCanvas.drawRoundRect(this.w, this.h, this.h, this.A);
          i1 = (255 - i1) * Color.alpha(this.q) / 255;
          this.A.setARGB(i1, Color.red(this.q), Color.green(this.q), Color.blue(this.q));
          paramCanvas.drawRoundRect(this.w, this.h, this.h, this.A);
          this.A.setAlpha(255);
          break;
        }
      }
      this.A.setColor(this.p);
      paramCanvas.drawRoundRect(this.w, this.h, this.h, this.A);
      break label91;
      localObject = this.R;
      break label108;
      localRectF = this.z;
      break label126;
      if (getProcess() < 0.25D)
      {
        f1 = 1.0F - getProcess() * 4.0F;
        break label160;
      }
      f1 = 0.0F;
      break label160;
      i1 = this.s;
      break label186;
      this.A.setColor(this.o);
      paramCanvas.drawRoundRect(this.G, this.g, this.g, this.A);
      break label345;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if ((this.Q == null) && (this.N != null)) {
      this.Q = a(this.N);
    }
    if ((this.R == null) && (this.O != null)) {
      this.R = a(this.O);
    }
    int i2 = View.MeasureSpec.getSize(paramInt1);
    int i3 = View.MeasureSpec.getMode(paramInt1);
    int i1 = (int)Math.ceil(this.n.x * this.j);
    paramInt1 = i1;
    if (this.C) {
      paramInt1 = Math.max(i1, this.d.getMinimumWidth());
    }
    float f1;
    float f2;
    if (this.Q != null)
    {
      f1 = this.Q.getWidth();
      if (this.R == null) {
        break label453;
      }
      f2 = this.R.getWidth();
      label139:
      if (f1 == 0.0F)
      {
        i1 = paramInt1;
        if (f2 == 0.0F) {}
      }
      else
      {
        this.S = (Math.max(f1, f2) + this.U * 2.0F);
        f1 = paramInt1 - this.n.x;
        i1 = paramInt1;
        if (f1 < this.S) {
          i1 = (int)(paramInt1 + (this.S - f1));
        }
      }
      paramInt1 = Math.max(i1, (int)Math.ceil(i1 + this.i.left + this.i.right));
      i1 = Math.max(Math.max(paramInt1, getPaddingLeft() + paramInt1 + getPaddingRight()), getSuggestedMinimumWidth());
      if (i3 != 1073741824) {
        break label459;
      }
      paramInt1 = Math.max(i1, i2);
      label277:
      i2 = View.MeasureSpec.getMode(paramInt2);
      i3 = View.MeasureSpec.getSize(paramInt2);
      paramInt2 = (int)Math.ceil(Math.max(this.n.y, this.n.y + this.i.top + this.i.right));
      if (this.Q == null) {
        break label481;
      }
      f1 = this.Q.getHeight();
      label344:
      if (this.R == null) {
        break label486;
      }
      f2 = this.R.getHeight();
      label361:
      if ((f1 == 0.0F) && (f2 == 0.0F)) {
        break label514;
      }
      this.T = Math.max(f1, f2);
      paramInt2 = (int)Math.ceil(Math.max(paramInt2, this.T));
    }
    label453:
    label459:
    label481:
    label486:
    label514:
    for (;;)
    {
      paramInt2 = Math.max(paramInt2, getSuggestedMinimumHeight());
      i1 = Math.max(paramInt2, getPaddingTop() + paramInt2 + getPaddingBottom());
      if (i2 == 1073741824) {
        paramInt2 = Math.max(i1, i3);
      }
      for (;;)
      {
        setMeasuredDimension(paramInt1, paramInt2);
        return;
        f1 = 0.0F;
        break;
        f2 = 0.0F;
        break label139;
        paramInt1 = i1;
        if (i3 != Integer.MIN_VALUE) {
          break label277;
        }
        paramInt1 = Math.min(i1, i2);
        break label277;
        f1 = 0.0F;
        break label344;
        f2 = 0.0F;
        break label361;
        paramInt2 = i1;
        if (i2 == Integer.MIN_VALUE) {
          paramInt2 = Math.min(i1, i3);
        }
      }
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (at)paramParcelable;
    CharSequence localCharSequence1 = paramParcelable.a;
    CharSequence localCharSequence2 = paramParcelable.b;
    this.N = localCharSequence1;
    this.O = localCharSequence2;
    this.Q = null;
    this.R = null;
    requestLayout();
    super.onRestoreInstanceState(paramParcelable.getSuperState());
  }
  
  public Parcelable onSaveInstanceState()
  {
    at localat = new at(super.onSaveInstanceState());
    localat.a = this.N;
    localat.b = this.O;
    return localat;
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    if ((paramInt1 != paramInt3) || (paramInt2 != paramInt4)) {
      a();
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((!isEnabled()) || (!isClickable())) {
      return false;
    }
    int i1 = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getX();
    float f2 = this.H;
    float f3 = paramMotionEvent.getY();
    float f4 = this.I;
    switch (i1)
    {
    default: 
      return true;
    case 0: 
      ViewParent localViewParent = getParent();
      if (localViewParent != null) {
        localViewParent.requestDisallowInterceptTouchEvent(true);
      }
      this.H = paramMotionEvent.getX();
      this.I = paramMotionEvent.getY();
      this.J = this.H;
      setPressed(true);
      return true;
    case 2: 
      f1 = paramMotionEvent.getX();
      setProcess(getProcess() + (f1 - this.J) / this.x.width());
      this.J = f1;
      return true;
    }
    setPressed(false);
    boolean bool = getStatusBasedOnPos();
    float f5 = (float)(paramMotionEvent.getEventTime() - paramMotionEvent.getDownTime());
    if ((f1 - f2 < this.K) && (f3 - f4 < this.K) && (f5 < this.L))
    {
      performClick();
      return true;
    }
    if (bool != isChecked())
    {
      playSoundEffect(0);
      setChecked(bool);
      return true;
    }
    a(bool);
    return true;
  }
  
  public boolean performClick()
  {
    return super.performClick();
  }
  
  public void setAnimationDuration(long paramLong)
  {
    this.k = paramLong;
  }
  
  public void setBackColor(ColorStateList paramColorStateList)
  {
    this.e = paramColorStateList;
    if (this.e != null) {
      setBackDrawable(null);
    }
    invalidate();
  }
  
  public void setBackColorRes(int paramInt)
  {
    setBackColor(g.b(getContext(), paramInt));
  }
  
  public void setBackDrawable(Drawable paramDrawable)
  {
    this.d = paramDrawable;
    if (this.d != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.C = bool;
      a();
      refreshDrawableState();
      requestLayout();
      invalidate();
      return;
    }
  }
  
  public void setBackDrawableRes(int paramInt)
  {
    setBackDrawable(g.a(getContext(), paramInt));
  }
  
  public void setBackMeasureRatio(float paramFloat)
  {
    this.j = paramFloat;
    requestLayout();
  }
  
  public void setBackRadius(float paramFloat)
  {
    this.h = paramFloat;
    if (!this.C) {
      invalidate();
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    if (isChecked() != paramBoolean) {
      a(paramBoolean);
    }
    super.setChecked(paramBoolean);
  }
  
  public void setCheckedImmediately(boolean paramBoolean)
  {
    super.setChecked(paramBoolean);
    if ((this.E != null) && (this.E.isRunning())) {
      this.E.cancel();
    }
    if (paramBoolean) {}
    for (float f1 = 1.0F;; f1 = 0.0F)
    {
      setProcess(f1);
      invalidate();
      return;
    }
  }
  
  public void setCheckedImmediatelyNoEvent(boolean paramBoolean)
  {
    if (this.V == null)
    {
      setCheckedImmediately(paramBoolean);
      return;
    }
    super.setOnCheckedChangeListener(null);
    setCheckedImmediately(paramBoolean);
    setOnCheckedChangeListener(this.V);
  }
  
  public void setCheckedNoEvent(boolean paramBoolean)
  {
    if (this.V == null)
    {
      setChecked(paramBoolean);
      return;
    }
    super.setOnCheckedChangeListener(null);
    setChecked(paramBoolean);
    setOnCheckedChangeListener(this.V);
  }
  
  public void setDrawDebugRect(boolean paramBoolean)
  {
    this.D = paramBoolean;
    invalidate();
  }
  
  public void setFadeBack(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }
  
  public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    super.setOnCheckedChangeListener(paramOnCheckedChangeListener);
    this.V = paramOnCheckedChangeListener;
  }
  
  public final void setProcess(float paramFloat)
  {
    float f1;
    if (paramFloat > 1.0F) {
      f1 = 1.0F;
    }
    for (;;)
    {
      this.F = f1;
      invalidate();
      return;
      f1 = paramFloat;
      if (paramFloat < 0.0F) {
        f1 = 0.0F;
      }
    }
  }
  
  public void setThumbColor(ColorStateList paramColorStateList)
  {
    this.f = paramColorStateList;
    if (this.f != null) {
      setThumbDrawable(null);
    }
  }
  
  public void setThumbColorRes(int paramInt)
  {
    setThumbColor(g.b(getContext(), paramInt));
  }
  
  public void setThumbDrawable(Drawable paramDrawable)
  {
    this.c = paramDrawable;
    if (this.c != null) {}
    for (boolean bool = true;; bool = false)
    {
      this.B = bool;
      a();
      refreshDrawableState();
      requestLayout();
      invalidate();
      return;
    }
  }
  
  public void setThumbDrawableRes(int paramInt)
  {
    setThumbDrawable(g.a(getContext(), paramInt));
  }
  
  public void setThumbMargin(RectF paramRectF)
  {
    if (paramRectF == null)
    {
      a(0.0F, 0.0F, 0.0F, 0.0F);
      return;
    }
    a(paramRectF.left, paramRectF.top, paramRectF.right, paramRectF.bottom);
  }
  
  public void setThumbRadius(float paramFloat)
  {
    this.g = paramFloat;
    if (!this.B) {
      invalidate();
    }
  }
  
  public void setThumbSize(PointF paramPointF)
  {
    if (paramPointF == null)
    {
      float f1 = getResources().getDisplayMetrics().density * 20.0F;
      a(f1, f1);
      return;
    }
    a(paramPointF.x, paramPointF.y);
  }
  
  public void setTintColor(int paramInt)
  {
    this.m = paramInt;
    this.f = e.a(this.m);
    this.e = e.b(this.m);
    this.C = false;
    this.B = false;
    refreshDrawableState();
    invalidate();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\xueqiu\android\common\widget\SwitchButton.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */