package pl.droidsonroids.gif;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.RectF;
import android.graphics.SurfaceTexture;
import android.os.Parcelable;
import android.support.annotation.FloatRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.TextureView;
import android.view.TextureView.SurfaceTextureListener;
import android.widget.ImageView.ScaleType;
import java.io.IOException;

@TargetApi(14)
public class GifTextureView
  extends TextureView
{
  private static final ImageView.ScaleType[] g = { ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE };
  private ImageView.ScaleType a = ImageView.ScaleType.FIT_CENTER;
  private final Matrix b = new Matrix();
  private i c;
  private boolean d;
  private e e;
  private float f = 1.0F;
  
  static
  {
    System.loadLibrary("pl_droidsonroids_gif_surface");
  }
  
  public GifTextureView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray;
    if (paramAttributeSet != null)
    {
      int i = paramAttributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "scaleType", -1);
      if ((i >= 0) && (i < g.length)) {
        this.a = g[i];
      }
      localTypedArray = getContext().obtainStyledAttributes(paramAttributeSet, n.GifTextureView, paramInt, 0);
      paramContext = new TypedValue();
      if (!localTypedArray.getValue(n.GifTextureView_gifSource, paramContext))
      {
        paramContext = null;
        this.c = paramContext;
        super.setOpaque(localTypedArray.getBoolean(n.GifTextureView_isOpaque, false));
        localTypedArray.recycle();
        this.d = g.a(this, paramAttributeSet, paramInt);
      }
    }
    for (;;)
    {
      if (!isInEditMode())
      {
        this.e = new e(this);
        if (this.c != null) {
          this.e.start();
        }
      }
      return;
      if (paramContext.resourceId != 0)
      {
        String str = localTypedArray.getResources().getResourceTypeName(paramContext.resourceId);
        if (("drawable".equals(str)) || ("raw".equals(str)))
        {
          paramContext = new k(localTypedArray.getResources(), paramContext.resourceId);
          break;
        }
        if (!"string".equals(str)) {
          throw new IllegalArgumentException("Expected string, drawable or raw resource, type " + str + " cannot be converted to GIF");
        }
      }
      paramContext = new j(localTypedArray.getResources().getAssets(), paramContext.string.toString());
      break;
      super.setOpaque(false);
    }
  }
  
  private void a(GifInfoHandle paramGifInfoHandle)
  {
    float f1 = 1.0F;
    Matrix localMatrix = new Matrix();
    float f2 = getWidth();
    float f3 = getHeight();
    float f4 = paramGifInfoHandle.b / f2;
    float f5 = paramGifInfoHandle.c / f3;
    RectF localRectF1 = new RectF(0.0F, 0.0F, paramGifInfoHandle.b, paramGifInfoHandle.c);
    RectF localRectF2 = new RectF(0.0F, 0.0F, f2, f3);
    switch (1.a[this.a.ordinal()])
    {
    }
    for (;;)
    {
      super.setTransform(localMatrix);
      return;
      localMatrix.setScale(f4, f5, f2 / 2.0F, f3 / 2.0F);
      continue;
      f1 = 1.0F / Math.min(f4, f5);
      localMatrix.setScale(f4 * f1, f1 * f5, f2 / 2.0F, f3 / 2.0F);
      continue;
      if ((paramGifInfoHandle.b <= f2) && (paramGifInfoHandle.c <= f3)) {}
      for (;;)
      {
        localMatrix.setScale(f4 * f1, f1 * f5, f2 / 2.0F, f3 / 2.0F);
        break;
        f1 = Math.min(1.0F / f4, 1.0F / f5);
      }
      localMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.CENTER);
      localMatrix.preScale(f4, f5);
      continue;
      localMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.END);
      localMatrix.preScale(f4, f5);
      continue;
      localMatrix.setRectToRect(localRectF1, localRectF2, Matrix.ScaleToFit.START);
      localMatrix.preScale(f4, f5);
      continue;
      localMatrix.set(this.b);
      localMatrix.preScale(f4, f5);
    }
  }
  
  private void setSuperSurfaceTextureListener(e parame)
  {
    super.setSurfaceTextureListener(parame);
  }
  
  @Nullable
  public IOException getIOException()
  {
    if (e.b(this.e) != null) {
      return e.b(this.e);
    }
    return GifIOException.a(e.a(this.e).f());
  }
  
  public ImageView.ScaleType getScaleType()
  {
    return this.a;
  }
  
  public TextureView.SurfaceTextureListener getSurfaceTextureListener()
  {
    return null;
  }
  
  public Matrix getTransform(Matrix paramMatrix)
  {
    Matrix localMatrix = paramMatrix;
    if (paramMatrix == null) {
      localMatrix = new Matrix();
    }
    localMatrix.set(this.b);
    return localMatrix;
  }
  
  protected void onDetachedFromWindow()
  {
    this.e.a(this);
    super.onDetachedFromWindow();
    SurfaceTexture localSurfaceTexture = getSurfaceTexture();
    if (localSurfaceTexture != null) {
      localSurfaceTexture.release();
    }
  }
  
  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (f)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    this.e.b = paramParcelable.a[0];
  }
  
  public Parcelable onSaveInstanceState()
  {
    this.e.b = e.a(this.e).m();
    Parcelable localParcelable = super.onSaveInstanceState();
    if (this.d) {}
    for (long[] arrayOfLong = this.e.b;; arrayOfLong = null) {
      return new f(localParcelable, arrayOfLong);
    }
  }
  
  public void setFreezesAnimation(boolean paramBoolean)
  {
    this.d = paramBoolean;
  }
  
  public void setImageMatrix(Matrix paramMatrix)
  {
    setTransform(paramMatrix);
  }
  
  public void setInputSource(@Nullable i parami)
  {
    try
    {
      this.e.a(this);
      this.c = parami;
      this.e = new e(this);
      if (parami != null) {
        this.e.start();
      }
      return;
    }
    finally {}
  }
  
  public void setOpaque(boolean paramBoolean)
  {
    if (paramBoolean != isOpaque())
    {
      super.setOpaque(paramBoolean);
      setInputSource(this.c);
    }
  }
  
  public void setScaleType(@NonNull ImageView.ScaleType paramScaleType)
  {
    this.a = paramScaleType;
    a(e.a(this.e));
  }
  
  public void setSpeed(@FloatRange float paramFloat)
  {
    this.f = paramFloat;
    e.a(this.e).a(paramFloat);
  }
  
  public void setSurfaceTexture(SurfaceTexture paramSurfaceTexture)
  {
    throw new UnsupportedOperationException("Changing SurfaceTexture is not supported");
  }
  
  public void setSurfaceTextureListener(TextureView.SurfaceTextureListener paramSurfaceTextureListener)
  {
    throw new UnsupportedOperationException("Changing SurfaceTextureListener is not supported");
  }
  
  public void setTransform(Matrix paramMatrix)
  {
    this.b.set(paramMatrix);
    a(e.a(this.e));
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\GifTextureView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */