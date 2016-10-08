package it.sephiroth.android.library.imagezoom;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import it.sephiroth.android.library.a.b;

public abstract class ImageViewTouchBase
  extends ImageView
{
  private float a = -1.0F;
  private float b = -1.0F;
  private boolean c;
  private boolean d;
  private int e = -1;
  private int f = -1;
  private PointF g = new PointF();
  private boolean h;
  private boolean i;
  private f j;
  protected b k = new it.sephiroth.android.library.a.a();
  protected Matrix l = new Matrix();
  protected Matrix m = new Matrix();
  protected Matrix n;
  protected Handler o = new Handler();
  protected Runnable p = null;
  protected boolean q = false;
  protected final Matrix r = new Matrix();
  protected final float[] s = new float[9];
  protected int t = e.a;
  protected final int u = 200;
  protected RectF v = new RectF();
  protected RectF w = new RectF();
  protected RectF x = new RectF();
  private g y;
  
  public ImageViewTouchBase(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ImageViewTouchBase(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ImageViewTouchBase(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt);
  }
  
  private float a(int paramInt)
  {
    if (paramInt == e.b) {
      return 1.0F;
    }
    if (paramInt == e.c) {
      return Math.min(1.0F, 1.0F / d(this.l));
    }
    return 1.0F / d(this.l);
  }
  
  private void a(float paramFloat1, float paramFloat2)
  {
    if ((paramFloat1 != 0.0F) || (paramFloat2 != 0.0F))
    {
      this.m.postTranslate(paramFloat1, paramFloat2);
      setImageMatrix(getImageViewMatrix());
    }
  }
  
  private Matrix b(Matrix paramMatrix)
  {
    this.r.set(this.l);
    this.r.postConcat(paramMatrix);
    return this.r;
  }
  
  private RectF c(Matrix paramMatrix)
  {
    Drawable localDrawable = getDrawable();
    if (localDrawable == null) {
      return null;
    }
    paramMatrix = b(paramMatrix);
    this.v.set(0.0F, 0.0F, localDrawable.getIntrinsicWidth(), localDrawable.getIntrinsicHeight());
    paramMatrix.mapRect(this.v);
    return this.v;
  }
  
  private void c(float paramFloat)
  {
    float f1 = paramFloat;
    if (paramFloat > getMaxScale()) {
      f1 = getMaxScale();
    }
    paramFloat = f1;
    if (f1 < getMinScale()) {
      paramFloat = getMinScale();
    }
    PointF localPointF = getCenter();
    a(paramFloat, localPointF.x, localPointF.y);
  }
  
  private float d(Matrix paramMatrix)
  {
    paramMatrix.getValues(this.s);
    return this.s[0];
  }
  
  protected final RectF a(Matrix paramMatrix)
  {
    if (getDrawable() == null) {
      return new RectF(0.0F, 0.0F, 0.0F, 0.0F);
    }
    this.w.set(0.0F, 0.0F, 0.0F, 0.0F);
    paramMatrix = c(paramMatrix);
    float f1 = paramMatrix.height();
    float f2 = paramMatrix.width();
    int i1 = this.f;
    if (f1 < i1) {
      f1 = (i1 - f1) / 2.0F - paramMatrix.top;
    }
    for (;;)
    {
      i1 = this.e;
      if (f2 < i1) {
        f2 = (i1 - f2) / 2.0F - paramMatrix.left;
      }
      for (;;)
      {
        this.w.set(f2, f1, 0.0F, 0.0F);
        return this.w;
        if (paramMatrix.top > 0.0F)
        {
          f1 = -paramMatrix.top;
          break;
        }
        if (paramMatrix.bottom >= i1) {
          break label205;
        }
        f1 = this.f - paramMatrix.bottom;
        break;
        if (paramMatrix.left > 0.0F) {
          f2 = -paramMatrix.left;
        } else if (paramMatrix.right < i1) {
          f2 = i1 - paramMatrix.right;
        } else {
          f2 = 0.0F;
        }
      }
      label205:
      f1 = 0.0F;
    }
  }
  
  protected final void a()
  {
    if (getDrawable() == null) {}
    RectF localRectF;
    do
    {
      return;
      localRectF = a(this.m);
    } while ((localRectF.left == 0.0F) && (localRectF.top == 0.0F));
    a(localRectF.left, localRectF.top);
  }
  
  protected final void a(double paramDouble1, double paramDouble2)
  {
    RectF localRectF1 = getBitmapRect();
    this.x.set((float)paramDouble1, (float)paramDouble2, 0.0F, 0.0F);
    RectF localRectF2 = this.x;
    if (localRectF1 != null)
    {
      if ((localRectF1.top >= 0.0F) && (localRectF1.bottom <= this.f)) {
        localRectF2.top = 0.0F;
      }
      if ((localRectF1.left >= 0.0F) && (localRectF1.right <= this.e)) {
        localRectF2.left = 0.0F;
      }
      if ((localRectF1.top + localRectF2.top >= 0.0F) && (localRectF1.bottom > this.f)) {
        localRectF2.top = ((int)(0.0F - localRectF1.top));
      }
      if ((localRectF1.bottom + localRectF2.top <= this.f + 0) && (localRectF1.top < 0.0F)) {
        localRectF2.top = ((int)(this.f + 0 - localRectF1.bottom));
      }
      if (localRectF1.left + localRectF2.left >= 0.0F) {
        localRectF2.left = ((int)(0.0F - localRectF1.left));
      }
      if (localRectF1.right + localRectF2.left <= this.e + 0) {
        localRectF2.left = ((int)(this.e + 0 - localRectF1.right));
      }
    }
    a(this.x.left, this.x.top);
    a();
  }
  
  protected void a(float paramFloat) {}
  
  protected final void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = paramFloat1;
    if (paramFloat1 > getMaxScale()) {
      f1 = getMaxScale();
    }
    paramFloat1 = f1 / getScale();
    this.m.postScale(paramFloat1, paramFloat1, paramFloat2, paramFloat3);
    setImageMatrix(getImageViewMatrix());
    getScale();
    a();
  }
  
  protected final void a(final float paramFloat1, float paramFloat2, float paramFloat3, final float paramFloat4)
  {
    float f1 = paramFloat1;
    if (paramFloat1 > getMaxScale()) {
      f1 = getMaxScale();
    }
    final long l1 = System.currentTimeMillis();
    paramFloat1 = getScale();
    Object localObject = new Matrix(this.m);
    ((Matrix)localObject).postScale(f1, f1, paramFloat2, paramFloat3);
    localObject = a((Matrix)localObject);
    float f2 = ((RectF)localObject).left;
    float f3 = ((RectF)localObject).top;
    this.o.post(new Runnable()
    {
      public final void run()
      {
        long l = System.currentTimeMillis();
        float f1 = Math.min(paramFloat4, (float)(l - l1));
        float f2 = (float)ImageViewTouchBase.this.k.b(f1, paramFloat1, paramFloat4);
        ImageViewTouchBase.this.a(f2 + this.d, this.e, this.f);
        if (f1 < paramFloat4)
        {
          ImageViewTouchBase.this.o.post(this);
          return;
        }
        ImageViewTouchBase.this.a(ImageViewTouchBase.this.getScale());
        ImageViewTouchBase.this.a();
      }
    });
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    setScaleType(ImageView.ScaleType.MATRIX);
  }
  
  protected void a(Drawable paramDrawable, Matrix paramMatrix, float paramFloat1, float paramFloat2)
  {
    if (paramDrawable != null)
    {
      super.setImageDrawable(paramDrawable);
      if ((paramFloat1 == -1.0F) || (paramFloat2 == -1.0F)) {
        break label161;
      }
      paramFloat1 = Math.min(paramFloat1, paramFloat2);
      paramFloat2 = Math.max(paramFloat1, paramFloat2);
      this.b = paramFloat1;
      this.a = paramFloat2;
      this.d = true;
      this.c = true;
      if ((this.t == e.b) || (this.t == e.c))
      {
        if (this.b >= 1.0F)
        {
          this.d = false;
          this.b = -1.0F;
        }
        if (this.a <= 1.0F)
        {
          this.c = true;
          this.a = -1.0F;
        }
      }
    }
    for (;;)
    {
      if (paramMatrix != null) {
        this.n = new Matrix(paramMatrix);
      }
      this.i = true;
      requestLayout();
      return;
      this.l.reset();
      super.setImageDrawable(null);
      break;
      label161:
      this.b = -1.0F;
      this.a = -1.0F;
      this.d = false;
      this.c = false;
    }
  }
  
  public final void b(float paramFloat)
  {
    PointF localPointF = getCenter();
    a(paramFloat, localPointF.x, localPointF.y, 50.0F);
  }
  
  public final void b(final Drawable paramDrawable, final Matrix paramMatrix, final float paramFloat1, final float paramFloat2)
  {
    if (getWidth() <= 0)
    {
      this.p = new Runnable()
      {
        public final void run()
        {
          ImageViewTouchBase.this.b(paramDrawable, paramMatrix, paramFloat1, paramFloat2);
        }
      };
      return;
    }
    a(paramDrawable, paramMatrix, paramFloat1, paramFloat2);
  }
  
  public final void c(float paramFloat1, float paramFloat2)
  {
    a(paramFloat1, paramFloat2);
  }
  
  protected final void d(float paramFloat1, float paramFloat2)
  {
    double d1 = paramFloat1;
    final double d2 = paramFloat2;
    final long l1 = System.currentTimeMillis();
    this.o.post(new Runnable()
    {
      double a = 0.0D;
      double b = 0.0D;
      
      public final void run()
      {
        long l = System.currentTimeMillis();
        double d1 = Math.min(this.c, l - l1);
        double d2 = ImageViewTouchBase.this.k.a(d1, d2, this.c);
        double d3 = ImageViewTouchBase.this.k.a(d1, this.f, this.c);
        ImageViewTouchBase.this.a(d2 - this.a, d3 - this.b);
        this.a = d2;
        this.b = d3;
        if (d1 < this.c) {
          ImageViewTouchBase.this.o.post(this);
        }
        RectF localRectF;
        do
        {
          return;
          localRectF = ImageViewTouchBase.this.a(ImageViewTouchBase.this.m);
        } while ((localRectF.left == 0.0F) && (localRectF.top == 0.0F));
        ImageViewTouchBase.this.c(localRectF.left, localRectF.top);
      }
    });
  }
  
  public float getBaseScale()
  {
    return d(this.l);
  }
  
  public RectF getBitmapRect()
  {
    return c(this.m);
  }
  
  protected PointF getCenter()
  {
    return this.g;
  }
  
  public Matrix getDisplayMatrix()
  {
    return new Matrix(this.m);
  }
  
  public int getDisplayType$ecfe546()
  {
    return this.t;
  }
  
  public Matrix getImageViewMatrix()
  {
    return b(this.m);
  }
  
  public float getMaxScale()
  {
    Drawable localDrawable;
    if (this.a == -1.0F)
    {
      localDrawable = getDrawable();
      if (localDrawable != null) {
        break label31;
      }
    }
    label31:
    for (float f1 = 1.0F;; f1 = Math.max(localDrawable.getIntrinsicWidth() / this.e, localDrawable.getIntrinsicHeight() / this.f) * 8.0F)
    {
      this.a = f1;
      return this.a;
    }
  }
  
  public float getMinScale()
  {
    float f1 = 1.0F;
    if (this.b == -1.0F) {
      if (getDrawable() != null) {
        break label29;
      }
    }
    for (;;)
    {
      this.b = f1;
      return this.b;
      label29:
      f1 = Math.min(1.0F, 1.0F / d(this.l));
    }
  }
  
  @SuppressLint({"Override"})
  public float getRotation()
  {
    return 0.0F;
  }
  
  public float getScale()
  {
    return d(this.m);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    int i2 = 0;
    int i1 = 0;
    if (paramBoolean)
    {
      i2 = this.e;
      i1 = this.f;
      this.e = (paramInt3 - paramInt1);
      this.f = (paramInt4 - paramInt2);
      i2 = this.e - i2;
      i1 = this.f - i1;
      this.g.x = (this.e / 2.0F);
      this.g.y = (this.f / 2.0F);
    }
    Object localObject = this.p;
    if (localObject != null)
    {
      this.p = null;
      ((Runnable)localObject).run();
    }
    localObject = getDrawable();
    float f1;
    float f3;
    Matrix localMatrix;
    float f4;
    float f5;
    float f6;
    float f7;
    float f8;
    if (localObject != null) {
      if ((paramBoolean) || (this.h) || (this.i))
      {
        a(this.t);
        f1 = d(this.l);
        f2 = getScale();
        f3 = Math.min(1.0F, 1.0F / f1);
        localMatrix = this.l;
        f4 = this.e;
        f5 = this.f;
        f6 = ((Drawable)localObject).getIntrinsicWidth();
        f7 = ((Drawable)localObject).getIntrinsicHeight();
        localMatrix.reset();
        if ((f6 <= f4) && (f7 <= f5)) {
          break label435;
        }
        f8 = Math.min(f4 / f6, f5 / f7);
        localMatrix.postScale(f8, f8);
        localMatrix.postTranslate((f4 - f6 * f8) / 2.0F, (f5 - f7 * f8) / 2.0F);
        f4 = d(this.l);
        if ((!this.i) && (!this.h)) {
          break label509;
        }
        if (this.n == null) {
          break label489;
        }
        this.m.set(this.n);
        this.n = null;
        f1 = getScale();
        label343:
        setImageMatrix(getImageViewMatrix());
        f2 = f1;
        if (f1 != getScale()) {
          label365:
          c(f1);
        }
      }
    }
    label435:
    label489:
    label509:
    label633:
    label639:
    for (float f2 = f1;; f2 = 1.0F)
    {
      this.q = false;
      if ((f2 > getMaxScale()) || (f2 < getMinScale())) {
        c(f2);
      }
      a();
      if (this.h) {
        this.h = false;
      }
      if (this.i) {
        this.i = false;
      }
      do
      {
        return;
        f8 = Math.min(f4 / f6, f5 / f7);
        localMatrix.postScale(f8, f8);
        localMatrix.postTranslate((f4 - f6 * f8) / 2.0F, (f5 - f7 * f8) / 2.0F);
        break;
        this.m.reset();
        f1 = a(this.t);
        break label343;
        if (!paramBoolean) {
          break label639;
        }
        if (!this.d) {
          this.b = -1.0F;
        }
        if (!this.c) {
          this.a = -1.0F;
        }
        setImageMatrix(getImageViewMatrix());
        a(-i2, -i1);
        if (!this.q)
        {
          f1 = a(this.t);
          break label365;
        }
        if (Math.abs(f2 - f3) <= 0.001D) {
          break label633;
        }
        f1 = f1 / f4 * f2;
        break label365;
        if (this.i) {
          this.i = false;
        }
      } while (!this.h);
      this.h = false;
      return;
      f1 = 1.0F;
      break label365;
    }
  }
  
  public void setDisplayType$6cc409cc(int paramInt)
  {
    if (paramInt != this.t)
    {
      this.q = false;
      this.t = paramInt;
      this.h = true;
      requestLayout();
    }
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    setImageBitmap$39eee89d(paramBitmap);
  }
  
  public final void setImageBitmap$39eee89d(Bitmap paramBitmap)
  {
    if (paramBitmap != null)
    {
      b(new it.sephiroth.android.library.imagezoom.a.a(paramBitmap), null, -1.0F, -1.0F);
      return;
    }
    b(null, null, -1.0F, -1.0F);
  }
  
  public void setImageDrawable(Drawable paramDrawable)
  {
    b(paramDrawable, null, -1.0F, -1.0F);
  }
  
  public void setImageMatrix(Matrix paramMatrix)
  {
    Matrix localMatrix = getImageMatrix();
    if (((paramMatrix != null) || (localMatrix.isIdentity())) && (paramMatrix != null)) {
      localMatrix.equals(paramMatrix);
    }
    super.setImageMatrix(paramMatrix);
  }
  
  public void setImageResource(int paramInt)
  {
    setImageDrawable(getContext().getResources().getDrawable(paramInt));
  }
  
  protected void setMaxScale(float paramFloat)
  {
    this.a = paramFloat;
  }
  
  protected void setMinScale(float paramFloat)
  {
    this.b = paramFloat;
  }
  
  public void setOnDrawableChangedListener(f paramf)
  {
    this.j = paramf;
  }
  
  public void setOnLayoutChangeListener(g paramg)
  {
    this.y = paramg;
  }
  
  public void setScaleType(ImageView.ScaleType paramScaleType)
  {
    if (paramScaleType == ImageView.ScaleType.MATRIX)
    {
      super.setScaleType(paramScaleType);
      return;
    }
    Log.w("ImageViewTouchBase", "Unsupported scaletype. Only MATRIX can be used");
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\it\sephiroth\android\library\imagezoom\ImageViewTouchBase.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */