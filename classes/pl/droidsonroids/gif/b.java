package pl.droidsonroids.gif;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.SystemClock;
import android.support.annotation.DrawableRes;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RawRes;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.widget.MediaController.MediaPlayerControl;
import java.io.File;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class b
  extends Drawable
  implements Animatable, MediaController.MediaPlayerControl
{
  final ScheduledThreadPoolExecutor a = d.a();
  volatile boolean b = true;
  long c = Long.MIN_VALUE;
  protected final Paint d = new Paint(6);
  final Bitmap e;
  final GifInfoHandle f;
  final ConcurrentLinkedQueue<Object> g = new ConcurrentLinkedQueue();
  final boolean h = true;
  final l i;
  ScheduledFuture<?> j;
  private final Rect k = new Rect();
  private ColorStateList l;
  private PorterDuffColorFilter m;
  private PorterDuff.Mode n;
  private final o o = new o(this);
  private final Rect p;
  private int q;
  private int r;
  private float s;
  private final RectF t = new RectF();
  
  public b(@Nullable ContentResolver paramContentResolver, @NonNull Uri paramUri)
  {
    this(GifInfoHandle.a(paramContentResolver, paramUri));
  }
  
  private b(@NonNull AssetFileDescriptor paramAssetFileDescriptor)
  {
    this(GifInfoHandle.a(paramAssetFileDescriptor));
  }
  
  public b(@NonNull Resources paramResources, @DrawableRes @RawRes int paramInt)
  {
    this(paramResources.openRawResourceFd(paramInt));
    TypedValue localTypedValue = new TypedValue();
    paramResources.getValue(paramInt, localTypedValue, true);
    int i1 = localTypedValue.density;
    if (i1 == 0)
    {
      paramInt = 160;
      i1 = paramResources.getDisplayMetrics().densityDpi;
      if ((paramInt <= 0) || (i1 <= 0)) {
        break label113;
      }
    }
    label113:
    for (float f1 = i1 / paramInt;; f1 = 1.0F)
    {
      this.r = ((int)(this.f.c * f1));
      this.q = ((int)(f1 * this.f.b));
      return;
      paramInt = i1;
      if (i1 != 65535) {
        break;
      }
      paramInt = 0;
      break;
    }
  }
  
  public b(@NonNull File paramFile)
  {
    this(GifInfoHandle.openFile(paramFile.getPath(), false));
  }
  
  private b(GifInfoHandle paramGifInfoHandle)
  {
    this.f = paramGifInfoHandle;
    this.e = Bitmap.createBitmap(this.f.b, this.f.c, Bitmap.Config.ARGB_8888);
    this.p = new Rect(0, 0, this.f.b, this.f.c);
    this.i = new l(this);
    this.o.a();
    this.q = this.f.b;
    this.r = this.f.c;
  }
  
  private void a()
  {
    if (this.j != null) {
      this.j.cancel(false);
    }
    this.i.removeMessages(-1);
  }
  
  final void a(long paramLong)
  {
    if (this.h)
    {
      this.c = 0L;
      this.i.sendEmptyMessageAtTime(-1, 0L);
      return;
    }
    a();
    this.j = this.a.schedule(this.o, Math.max(paramLong, 0L), TimeUnit.MILLISECONDS);
  }
  
  public final boolean canPause()
  {
    return true;
  }
  
  public final boolean canSeekBackward()
  {
    return this.f.d > 1;
  }
  
  public final boolean canSeekForward()
  {
    return this.f.d > 1;
  }
  
  public final void draw(Canvas paramCanvas)
  {
    int i1;
    if ((this.m != null) && (this.d.getColorFilter() == null))
    {
      this.d.setColorFilter(this.m);
      i1 = 1;
      if (this.d.getShader() != null) {
        break label156;
      }
      paramCanvas.drawBitmap(this.e, this.p, this.k, this.d);
    }
    for (;;)
    {
      if (i1 != 0) {
        this.d.setColorFilter(null);
      }
      if ((this.h) && (this.b) && (this.c != Long.MIN_VALUE))
      {
        long l1 = Math.max(0L, this.c - SystemClock.uptimeMillis());
        this.c = Long.MIN_VALUE;
        this.a.remove(this.o);
        this.j = this.a.schedule(this.o, l1, TimeUnit.MILLISECONDS);
      }
      return;
      i1 = 0;
      break;
      label156:
      paramCanvas.drawRoundRect(this.t, this.s, this.s, this.d);
    }
  }
  
  public final int getAlpha()
  {
    return this.d.getAlpha();
  }
  
  public final int getAudioSessionId()
  {
    return 0;
  }
  
  public final int getBufferPercentage()
  {
    return 100;
  }
  
  public final int getCurrentPosition()
  {
    return this.f.h();
  }
  
  public final int getDuration()
  {
    return this.f.g();
  }
  
  public final int getIntrinsicHeight()
  {
    return this.r;
  }
  
  public final int getIntrinsicWidth()
  {
    return this.q;
  }
  
  public final int getOpacity()
  {
    return -2;
  }
  
  public final boolean isPlaying()
  {
    return this.b;
  }
  
  public final boolean isRunning()
  {
    return this.b;
  }
  
  public final boolean isStateful()
  {
    return (super.isStateful()) || ((this.l != null) && (this.l.isStateful()));
  }
  
  protected final void onBoundsChange(Rect paramRect)
  {
    this.k.set(paramRect);
    this.t.set(this.k);
    paramRect = this.d.getShader();
    if (paramRect != null)
    {
      Matrix localMatrix = new Matrix();
      localMatrix.setTranslate(this.t.left, this.t.top);
      localMatrix.preScale(this.t.width() / this.e.getWidth(), this.t.height() / this.e.getHeight());
      paramRect.setLocalMatrix(localMatrix);
      this.d.setShader(paramRect);
    }
  }
  
  protected final boolean onStateChange(int[] paramArrayOfInt)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    PorterDuff.Mode localMode;
    if (this.l != null)
    {
      bool1 = bool2;
      if (this.n != null)
      {
        paramArrayOfInt = this.l;
        localMode = this.n;
        if ((paramArrayOfInt != null) && (localMode != null)) {
          break label52;
        }
      }
    }
    label52:
    for (paramArrayOfInt = null;; paramArrayOfInt = new PorterDuffColorFilter(paramArrayOfInt.getColorForState(getState(), 0), localMode))
    {
      this.m = paramArrayOfInt;
      bool1 = true;
      return bool1;
    }
  }
  
  public final void pause()
  {
    stop();
  }
  
  public final void seekTo(@IntRange final int paramInt)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("Position is not positive");
    }
    this.a.execute(new p(this)
    {
      public final void a()
      {
        b.this.f.a(paramInt, b.this.e);
        this.c.i.sendEmptyMessageAtTime(-1, 0L);
      }
    });
  }
  
  public final void setAlpha(@IntRange int paramInt)
  {
    this.d.setAlpha(paramInt);
  }
  
  public final void setColorFilter(@Nullable ColorFilter paramColorFilter)
  {
    this.d.setColorFilter(paramColorFilter);
  }
  
  @Deprecated
  public final void setDither(boolean paramBoolean)
  {
    this.d.setDither(paramBoolean);
    invalidateSelf();
  }
  
  public final void setFilterBitmap(boolean paramBoolean)
  {
    this.d.setFilterBitmap(paramBoolean);
    invalidateSelf();
  }
  
  public final boolean setVisible(boolean paramBoolean1, boolean paramBoolean2)
  {
    boolean bool = super.setVisible(paramBoolean1, paramBoolean2);
    if (!this.h)
    {
      if (!paramBoolean1) {
        break label48;
      }
      if (paramBoolean2) {
        this.a.execute(new p(this)
        {
          public final void a()
          {
            if (b.this.f.c()) {
              b.this.start();
            }
          }
        });
      }
      if (bool) {
        start();
      }
    }
    label48:
    while (!bool) {
      return bool;
    }
    stop();
    return bool;
  }
  
  public final void start()
  {
    try
    {
      if (this.b) {
        return;
      }
      this.b = true;
      a(this.f.b());
      return;
    }
    finally {}
  }
  
  public final void stop()
  {
    try
    {
      if (!this.b) {
        return;
      }
      this.b = false;
      a();
      this.f.d();
      return;
    }
    finally {}
  }
  
  public final String toString()
  {
    return String.format(Locale.US, "GIF: size: %dx%d, frames: %d, error: %d", new Object[] { Integer.valueOf(this.f.b), Integer.valueOf(this.f.c), Integer.valueOf(this.f.d), Integer.valueOf(this.f.f()) });
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\pl\droidsonroids\gif\b.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */