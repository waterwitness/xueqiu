package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.graphics.drawable.shapes.Shape;
import android.os.Parcelable;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;

public final class ac
  extends View
{
  private static final int[] f = { 16843062, 16843063, 16843064, 16843065, 16843066, 16843067, 16843068, 16843069, 16843070, 16843071, 16843039, 16843072, 16843040, 16843073 };
  int a = 24;
  int b = 48;
  int c = 24;
  int d = 48;
  Bitmap e;
  private int g = 0;
  private int h = 0;
  private int i = 100;
  private int j = 1;
  private int k = 4000;
  private boolean l = false;
  private boolean m = false;
  private Transformation n;
  private AlphaAnimation o;
  private Drawable p;
  private Drawable q;
  private Drawable r;
  private boolean s;
  private Interpolator t;
  private ad u;
  private long v = Thread.currentThread().getId();
  private boolean w;
  private long x;
  private boolean y;
  
  public ac(Context paramContext, int paramInt)
  {
    super(paramContext, null, 0);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(null, f, 0, paramInt);
    this.s = true;
    setMax(localTypedArray.getInt(0, this.i));
    setProgress(localTypedArray.getInt(1, this.g));
    setSecondaryProgress(localTypedArray.getInt(2, this.h));
    boolean bool2 = localTypedArray.getBoolean(3, this.l);
    this.m = localTypedArray.getBoolean(4, this.m);
    Drawable localDrawable = localTypedArray.getDrawable(5);
    if (localDrawable != null) {
      setIndeterminateDrawable(a(localDrawable));
    }
    localDrawable = localTypedArray.getDrawable(6);
    if (localDrawable != null) {
      setProgressDrawable(a(localDrawable, false));
    }
    this.k = localTypedArray.getInt(7, this.k);
    this.j = localTypedArray.getInt(8, this.j);
    this.a = localTypedArray.getDimensionPixelSize(9, this.a);
    this.b = localTypedArray.getDimensionPixelSize(10, this.b);
    this.c = localTypedArray.getDimensionPixelSize(11, this.c);
    this.d = localTypedArray.getDimensionPixelSize(12, this.d);
    paramInt = localTypedArray.getResourceId(13, 17432587);
    if (paramInt > 0) {
      setInterpolator(AnimationUtils.loadInterpolator(paramContext, paramInt));
    }
    localTypedArray.recycle();
    this.s = false;
    if ((this.m) || (bool2)) {
      bool1 = true;
    }
    setIndeterminate(bool1);
  }
  
  private Drawable a(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if ((paramDrawable instanceof AnimationDrawable))
    {
      paramDrawable = (AnimationDrawable)paramDrawable;
      int i2 = paramDrawable.getNumberOfFrames();
      localObject = new AnimationDrawable();
      ((AnimationDrawable)localObject).setOneShot(paramDrawable.isOneShot());
      int i1 = 0;
      while (i1 < i2)
      {
        Drawable localDrawable = a(paramDrawable.getFrame(i1), true);
        localDrawable.setLevel(10000);
        ((AnimationDrawable)localObject).addFrame(localDrawable, paramDrawable.getDuration(i1));
        i1 += 1;
      }
      ((AnimationDrawable)localObject).setLevel(10000);
    }
    return (Drawable)localObject;
  }
  
  private Drawable a(Drawable paramDrawable, boolean paramBoolean)
  {
    int i2 = 0;
    if ((paramDrawable instanceof LayerDrawable))
    {
      paramDrawable = (LayerDrawable)paramDrawable;
      int i3 = paramDrawable.getNumberOfLayers();
      localObject = new Drawable[i3];
      int i1 = 0;
      if (i1 < i3)
      {
        int i4 = paramDrawable.getId(i1);
        Drawable localDrawable = paramDrawable.getDrawable(i1);
        if ((i4 == 16908301) || (i4 == 16908303)) {}
        for (paramBoolean = true;; paramBoolean = false)
        {
          localObject[i1] = a(localDrawable, paramBoolean);
          i1 += 1;
          break;
        }
      }
      localObject = new LayerDrawable((Drawable[])localObject);
      i1 = i2;
      while (i1 < i3)
      {
        ((LayerDrawable)localObject).setId(i1, paramDrawable.getId(i1));
        i1 += 1;
      }
    }
    do
    {
      return (Drawable)localObject;
      localObject = paramDrawable;
    } while (!(paramDrawable instanceof BitmapDrawable));
    Object localObject = ((BitmapDrawable)paramDrawable).getBitmap();
    if (this.e == null) {
      this.e = ((Bitmap)localObject);
    }
    paramDrawable = new ShapeDrawable(getDrawableShape());
    localObject = new BitmapShader((Bitmap)localObject, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
    paramDrawable.getPaint().setShader((Shader)localObject);
    if (paramBoolean) {
      return new ClipDrawable(paramDrawable, 3, 1);
    }
    return paramDrawable;
  }
  
  private void a()
  {
    if (getVisibility() != 0) {
      return;
    }
    if ((this.p instanceof Animatable))
    {
      this.w = true;
      this.o = null;
    }
    for (;;)
    {
      postInvalidate();
      return;
      if (this.t == null) {
        this.t = new LinearInterpolator();
      }
      this.n = new Transformation();
      this.o = new AlphaAnimation(0.0F, 1.0F);
      this.o.setRepeatMode(this.j);
      this.o.setRepeatCount(-1);
      this.o.setDuration(this.k);
      this.o.setInterpolator(this.t);
      this.o.setStartTime(-1L);
    }
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    for (;;)
    {
      Object localObject2;
      try
      {
        float f1;
        if (this.i > 0)
        {
          f1 = paramInt2 / this.i;
          localObject2 = this.r;
          if (localObject2 != null)
          {
            Drawable localDrawable = null;
            if (!(localObject2 instanceof LayerDrawable)) {
              break label83;
            }
            localDrawable = ((LayerDrawable)localObject2).findDrawableByLayerId(paramInt1);
            break label83;
            ((Drawable)localObject2).setLevel(paramInt1);
          }
        }
        else
        {
          f1 = 0.0F;
          continue;
        }
        invalidate();
        continue;
        paramInt1 = (int)(f1 * 10000.0F);
      }
      finally {}
      label83:
      if (localObject1 != null) {
        localObject2 = localObject1;
      }
    }
  }
  
  private void b()
  {
    this.o = null;
    this.n = null;
    if ((this.p instanceof Animatable))
    {
      ((Animatable)this.p).stop();
      this.w = false;
    }
    postInvalidate();
  }
  
  private void b(int paramInt1, int paramInt2)
  {
    for (;;)
    {
      try
      {
        if (this.v == Thread.currentThread().getId())
        {
          a(paramInt1, paramInt2);
          return;
        }
        if (this.u != null)
        {
          ad localad1 = this.u;
          this.u = null;
          localad1.a = paramInt1;
          localad1.b = paramInt2;
          localad1.c = false;
          post(localad1);
        }
        else
        {
          ad localad2 = new ad(this, paramInt1, paramInt2);
        }
      }
      finally {}
    }
  }
  
  private void c()
  {
    int[] arrayOfInt = getDrawableState();
    if ((this.q != null) && (this.q.isStateful())) {
      this.q.setState(arrayOfInt);
    }
    if ((this.p != null) && (this.p.isStateful())) {
      this.p.setState(arrayOfInt);
    }
  }
  
  private void c(int paramInt1, int paramInt2)
  {
    int i2 = paramInt1 - getPaddingRight() - getPaddingLeft();
    int i1 = paramInt2 - getPaddingBottom() - getPaddingTop();
    int i3;
    float f1;
    float f2;
    if (this.p != null) {
      if ((this.m) && (!(this.p instanceof AnimationDrawable)))
      {
        i3 = this.p.getIntrinsicWidth();
        int i4 = this.p.getIntrinsicHeight();
        f1 = i3 / i4;
        f2 = paramInt1 / paramInt2;
        if (f1 != f2) {
          if (f2 > f1)
          {
            paramInt2 = (int)(f1 * paramInt2);
            i3 = (paramInt1 - paramInt2) / 2;
            paramInt2 += i3;
            paramInt1 = i1;
            i2 = 0;
            i1 = i3;
            this.p.setBounds(i1, i2, paramInt2, paramInt1);
          }
        }
      }
    }
    for (;;)
    {
      if (this.q != null) {
        this.q.setBounds(0, 0, paramInt2, paramInt1);
      }
      return;
      f2 = paramInt1;
      paramInt1 = (int)(1.0F / f1 * f2);
      i1 = (paramInt2 - paramInt1) / 2;
      paramInt2 = i2;
      paramInt1 += i1;
      i2 = i1;
      i1 = 0;
      break;
      i3 = 0;
      paramInt2 = i2;
      paramInt1 = i1;
      i2 = 0;
      i1 = i3;
      break;
      paramInt1 = i1;
      paramInt2 = i2;
    }
  }
  
  private void setProgress$2563266(int paramInt)
  {
    try
    {
      boolean bool = this.l;
      if (bool) {
        return;
      }
      if (paramInt < 0) {
        paramInt = 0;
      }
      for (;;)
      {
        int i1 = paramInt;
        if (paramInt > this.i) {
          i1 = this.i;
        }
        if (i1 == this.g) {
          break;
        }
        this.g = i1;
        b(16908301, this.g);
        break;
      }
    }
    finally {}
  }
  
  protected final void drawableStateChanged()
  {
    super.drawableStateChanged();
    c();
  }
  
  final Shape getDrawableShape()
  {
    return new RoundRectShape(new float[] { 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F }, null, null);
  }
  
  public final Drawable getIndeterminateDrawable()
  {
    return this.p;
  }
  
  public final Interpolator getInterpolator()
  {
    return this.t;
  }
  
  public final int getMax()
  {
    try
    {
      int i1 = this.i;
      return i1;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public final int getProgress()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 83	android/support/v7/internal/widget/ac:l	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +9 -> 17
    //   11: iconst_0
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 79	android/support/v7/internal/widget/ac:g	I
    //   21: istore_2
    //   22: goto -9 -> 13
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	ac
    //   25	4	1	localObject	Object
    //   12	10	2	i1	int
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   17	22	25	finally
  }
  
  public final Drawable getProgressDrawable()
  {
    return this.q;
  }
  
  /* Error */
  public final int getSecondaryProgress()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 83	android/support/v7/internal/widget/ac:l	Z
    //   6: istore_3
    //   7: iload_3
    //   8: ifeq +9 -> 17
    //   11: iconst_0
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: aload_0
    //   18: getfield 81	android/support/v7/internal/widget/ac:h	I
    //   21: istore_2
    //   22: goto -9 -> 13
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	ac
    //   25	4	1	localObject	Object
    //   12	10	2	i1	int
    //   6	2	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   17	22	25	finally
  }
  
  public final void invalidateDrawable(Drawable paramDrawable)
  {
    if (!this.y)
    {
      if (verifyDrawable(paramDrawable))
      {
        paramDrawable = paramDrawable.getBounds();
        int i1 = getScrollX() + getPaddingLeft();
        int i2 = getScrollY() + getPaddingTop();
        invalidate(paramDrawable.left + i1, paramDrawable.top + i2, i1 + paramDrawable.right, paramDrawable.bottom + i2);
      }
    }
    else {
      return;
    }
    super.invalidateDrawable(paramDrawable);
  }
  
  protected final void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.l) {
      a();
    }
  }
  
  protected final void onDetachedFromWindow()
  {
    if (this.l) {
      b();
    }
    if (this.u != null) {
      removeCallbacks(this.u);
    }
    super.onDetachedFromWindow();
  }
  
  /* Error */
  protected final void onDraw(android.graphics.Canvas paramCanvas)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: aload_1
    //   4: invokespecial 446	android/view/View:onDraw	(Landroid/graphics/Canvas;)V
    //   7: aload_0
    //   8: getfield 312	android/support/v7/internal/widget/ac:r	Landroid/graphics/drawable/Drawable;
    //   11: astore_3
    //   12: aload_3
    //   13: ifnull +144 -> 157
    //   16: aload_1
    //   17: invokevirtual 451	android/graphics/Canvas:save	()I
    //   20: pop
    //   21: aload_1
    //   22: aload_0
    //   23: invokevirtual 356	android/support/v7/internal/widget/ac:getPaddingLeft	()I
    //   26: i2f
    //   27: aload_0
    //   28: invokevirtual 362	android/support/v7/internal/widget/ac:getPaddingTop	()I
    //   31: i2f
    //   32: invokevirtual 454	android/graphics/Canvas:translate	(FF)V
    //   35: aload_0
    //   36: invokevirtual 457	android/support/v7/internal/widget/ac:getDrawingTime	()J
    //   39: lstore 4
    //   41: aload_0
    //   42: getfield 276	android/support/v7/internal/widget/ac:o	Landroid/view/animation/AlphaAnimation;
    //   45: ifnull +75 -> 120
    //   48: aload_0
    //   49: getfield 276	android/support/v7/internal/widget/ac:o	Landroid/view/animation/AlphaAnimation;
    //   52: lload 4
    //   54: aload_0
    //   55: getfield 289	android/support/v7/internal/widget/ac:n	Landroid/view/animation/Transformation;
    //   58: invokevirtual 461	android/view/animation/AlphaAnimation:getTransformation	(JLandroid/view/animation/Transformation;)Z
    //   61: pop
    //   62: aload_0
    //   63: getfield 289	android/support/v7/internal/widget/ac:n	Landroid/view/animation/Transformation;
    //   66: invokevirtual 465	android/view/animation/Transformation:getAlpha	()F
    //   69: fstore_2
    //   70: aload_0
    //   71: iconst_1
    //   72: putfield 397	android/support/v7/internal/widget/ac:y	Z
    //   75: aload_3
    //   76: fload_2
    //   77: ldc_w 319
    //   80: fmul
    //   81: f2i
    //   82: invokevirtual 190	android/graphics/drawable/Drawable:setLevel	(I)Z
    //   85: pop
    //   86: aload_0
    //   87: iconst_0
    //   88: putfield 397	android/support/v7/internal/widget/ac:y	Z
    //   91: invokestatic 470	android/os/SystemClock:uptimeMillis	()J
    //   94: aload_0
    //   95: getfield 472	android/support/v7/internal/widget/ac:x	J
    //   98: lsub
    //   99: ldc2_w 473
    //   102: lcmp
    //   103: iflt +17 -> 120
    //   106: aload_0
    //   107: invokestatic 470	android/os/SystemClock:uptimeMillis	()J
    //   110: putfield 472	android/support/v7/internal/widget/ac:x	J
    //   113: aload_0
    //   114: ldc2_w 473
    //   117: invokevirtual 477	android/support/v7/internal/widget/ac:postInvalidateDelayed	(J)V
    //   120: aload_3
    //   121: aload_1
    //   122: invokevirtual 480	android/graphics/drawable/Drawable:draw	(Landroid/graphics/Canvas;)V
    //   125: aload_1
    //   126: invokevirtual 483	android/graphics/Canvas:restore	()V
    //   129: aload_0
    //   130: getfield 274	android/support/v7/internal/widget/ac:w	Z
    //   133: ifeq +24 -> 157
    //   136: aload_3
    //   137: instanceof 272
    //   140: ifeq +17 -> 157
    //   143: aload_3
    //   144: checkcast 272	android/graphics/drawable/Animatable
    //   147: invokeinterface 486 1 0
    //   152: aload_0
    //   153: iconst_0
    //   154: putfield 274	android/support/v7/internal/widget/ac:w	Z
    //   157: aload_0
    //   158: monitorexit
    //   159: return
    //   160: astore_1
    //   161: aload_0
    //   162: iconst_0
    //   163: putfield 397	android/support/v7/internal/widget/ac:y	Z
    //   166: aload_1
    //   167: athrow
    //   168: astore_1
    //   169: aload_0
    //   170: monitorexit
    //   171: aload_1
    //   172: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	173	0	this	ac
    //   0	173	1	paramCanvas	android.graphics.Canvas
    //   69	8	2	f1	float
    //   11	133	3	localDrawable	Drawable
    //   39	14	4	l1	long
    // Exception table:
    //   from	to	target	type
    //   70	86	160	finally
    //   2	12	168	finally
    //   16	70	168	finally
    //   86	120	168	finally
    //   120	157	168	finally
    //   161	168	168	finally
  }
  
  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = 0;
    for (;;)
    {
      try
      {
        Drawable localDrawable = this.r;
        if (localDrawable != null)
        {
          i2 = Math.max(this.a, Math.min(this.b, localDrawable.getIntrinsicWidth()));
          i1 = Math.max(this.c, Math.min(this.d, localDrawable.getIntrinsicHeight()));
          c();
          int i3 = getPaddingLeft();
          int i4 = getPaddingRight();
          int i5 = getPaddingTop();
          int i6 = getPaddingBottom();
          setMeasuredDimension(resolveSize(i2 + (i3 + i4), paramInt1), resolveSize(i1 + (i5 + i6), paramInt2));
          return;
        }
      }
      finally {}
      int i2 = 0;
    }
  }
  
  public final void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (ae)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    setProgress(paramParcelable.a);
    setSecondaryProgress(paramParcelable.b);
  }
  
  public final Parcelable onSaveInstanceState()
  {
    ae localae = new ae(super.onSaveInstanceState());
    localae.a = this.g;
    localae.b = this.h;
    return localae;
  }
  
  protected final void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    c(paramInt1, paramInt2);
  }
  
  protected final void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if (this.l)
    {
      if ((paramInt == 8) || (paramInt == 4)) {
        b();
      }
    }
    else {
      return;
    }
    a();
  }
  
  public final void postInvalidate()
  {
    if (!this.s) {
      super.postInvalidate();
    }
  }
  
  /* Error */
  public final void setIndeterminate(boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 85	android/support/v7/internal/widget/ac:m	Z
    //   6: ifeq +10 -> 16
    //   9: aload_0
    //   10: getfield 83	android/support/v7/internal/widget/ac:l	Z
    //   13: ifne +32 -> 45
    //   16: iload_1
    //   17: aload_0
    //   18: getfield 83	android/support/v7/internal/widget/ac:l	Z
    //   21: if_icmpeq +24 -> 45
    //   24: aload_0
    //   25: iload_1
    //   26: putfield 83	android/support/v7/internal/widget/ac:l	Z
    //   29: iload_1
    //   30: ifeq +18 -> 48
    //   33: aload_0
    //   34: aload_0
    //   35: getfield 270	android/support/v7/internal/widget/ac:p	Landroid/graphics/drawable/Drawable;
    //   38: putfield 312	android/support/v7/internal/widget/ac:r	Landroid/graphics/drawable/Drawable;
    //   41: aload_0
    //   42: invokespecial 434	android/support/v7/internal/widget/ac:a	()V
    //   45: aload_0
    //   46: monitorexit
    //   47: return
    //   48: aload_0
    //   49: aload_0
    //   50: getfield 343	android/support/v7/internal/widget/ac:q	Landroid/graphics/drawable/Drawable;
    //   53: putfield 312	android/support/v7/internal/widget/ac:r	Landroid/graphics/drawable/Drawable;
    //   56: aload_0
    //   57: invokespecial 437	android/support/v7/internal/widget/ac:b	()V
    //   60: goto -15 -> 45
    //   63: astore_2
    //   64: aload_0
    //   65: monitorexit
    //   66: aload_2
    //   67: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	ac
    //   0	68	1	paramBoolean	boolean
    //   63	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	16	63	finally
    //   16	29	63	finally
    //   33	45	63	finally
    //   48	60	63	finally
  }
  
  public final void setIndeterminateDrawable(Drawable paramDrawable)
  {
    if (paramDrawable != null) {
      paramDrawable.setCallback(this);
    }
    this.p = paramDrawable;
    if (this.l)
    {
      this.r = paramDrawable;
      postInvalidate();
    }
  }
  
  public final void setInterpolator(Interpolator paramInterpolator)
  {
    this.t = paramInterpolator;
  }
  
  public final void setMax(int paramInt)
  {
    int i1 = paramInt;
    if (paramInt < 0) {
      i1 = 0;
    }
    try
    {
      if (i1 != this.i)
      {
        this.i = i1;
        postInvalidate();
        if (this.g > i1) {
          this.g = i1;
        }
        b(16908301, this.g);
      }
      return;
    }
    finally {}
  }
  
  public final void setProgress(int paramInt)
  {
    try
    {
      setProgress$2563266(paramInt);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public final void setProgressDrawable(Drawable paramDrawable)
  {
    if ((this.q != null) && (paramDrawable != this.q)) {
      this.q.setCallback(null);
    }
    for (int i1 = 1;; i1 = 0)
    {
      if (paramDrawable != null)
      {
        paramDrawable.setCallback(this);
        int i2 = paramDrawable.getMinimumHeight();
        if (this.d < i2)
        {
          this.d = i2;
          requestLayout();
        }
      }
      this.q = paramDrawable;
      if (!this.l)
      {
        this.r = paramDrawable;
        postInvalidate();
      }
      if (i1 != 0)
      {
        c(getWidth(), getHeight());
        c();
        a(16908301, this.g);
        a(16908303, this.h);
      }
      return;
    }
  }
  
  public final void setSecondaryProgress(int paramInt)
  {
    try
    {
      boolean bool = this.l;
      if (bool) {
        return;
      }
      if (paramInt < 0) {
        paramInt = 0;
      }
      for (;;)
      {
        int i1 = paramInt;
        if (paramInt > this.i) {
          i1 = this.i;
        }
        if (i1 == this.h) {
          break;
        }
        this.h = i1;
        b(16908303, this.h);
        break;
      }
    }
    finally {}
  }
  
  public final void setVisibility(int paramInt)
  {
    if (getVisibility() != paramInt)
    {
      super.setVisibility(paramInt);
      if (this.l)
      {
        if ((paramInt != 8) && (paramInt != 4)) {
          break label36;
        }
        b();
      }
    }
    return;
    label36:
    a();
  }
  
  protected final boolean verifyDrawable(Drawable paramDrawable)
  {
    return (paramDrawable == this.q) || (paramDrawable == this.p) || (super.verifyDrawable(paramDrawable));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */