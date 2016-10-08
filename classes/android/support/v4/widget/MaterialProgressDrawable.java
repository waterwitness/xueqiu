package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.support.v4.view.b.a;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;

final class MaterialProgressDrawable
  extends Drawable
  implements Animatable
{
  private static final Interpolator b = new LinearInterpolator();
  private static final Interpolator c = new a();
  boolean a;
  private final ArrayList<Animation> d;
  private final x e;
  private float f;
  private View g;
  private Animation h;
  private double i;
  private double j;
  
  public final void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int k = paramCanvas.save();
    paramCanvas.rotate(this.f, localRect.exactCenterX(), localRect.exactCenterY());
    x localx = this.e;
    RectF localRectF = localx.a;
    localRectF.set(localRect);
    localRectF.inset(localx.g, localx.g);
    float f1 = 360.0F * (localx.d + localx.f);
    float f2 = (localx.e + localx.f) * 360.0F - f1;
    localx.b.setColor(localx.t);
    paramCanvas.drawArc(localRectF, f1, f2, false, localx.b);
    if (localx.k)
    {
      if (localx.l != null) {
        break label434;
      }
      localx.l = new Path();
      localx.l.setFillType(Path.FillType.EVEN_ODD);
    }
    for (;;)
    {
      float f3 = (int)localx.g / 2;
      float f4 = localx.m;
      float f5 = (float)(localx.n * Math.cos(0.0D) + localRect.exactCenterX());
      float f6 = (float)(localx.n * Math.sin(0.0D) + localRect.exactCenterY());
      localx.l.moveTo(0.0F, 0.0F);
      localx.l.lineTo(localx.o * localx.m, 0.0F);
      localx.l.lineTo(localx.o * localx.m / 2.0F, localx.p * localx.m);
      localx.l.offset(f5 - f3 * f4, f6);
      localx.l.close();
      localx.c.setColor(localx.t);
      paramCanvas.rotate(f1 + f2 - 5.0F, localRect.exactCenterX(), localRect.exactCenterY());
      paramCanvas.drawPath(localx.l, localx.c);
      if (localx.q < 255)
      {
        localx.r.setColor(localx.s);
        localx.r.setAlpha(255 - localx.q);
        paramCanvas.drawCircle(localRect.exactCenterX(), localRect.exactCenterY(), localRect.width() / 2, localx.r);
      }
      paramCanvas.restoreToCount(k);
      return;
      label434:
      localx.l.reset();
    }
  }
  
  public final int getAlpha()
  {
    return this.e.q;
  }
  
  public final int getIntrinsicHeight()
  {
    return (int)this.j;
  }
  
  public final int getIntrinsicWidth()
  {
    return (int)this.i;
  }
  
  public final int getOpacity()
  {
    return -3;
  }
  
  public final boolean isRunning()
  {
    ArrayList localArrayList = this.d;
    int m = localArrayList.size();
    int k = 0;
    while (k < m)
    {
      Animation localAnimation = (Animation)localArrayList.get(k);
      if ((localAnimation.hasStarted()) && (!localAnimation.hasEnded())) {
        return true;
      }
      k += 1;
    }
    return false;
  }
  
  public final void setAlpha(int paramInt)
  {
    this.e.q = paramInt;
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    x localx = this.e;
    localx.b.setColorFilter(paramColorFilter);
    localx.c();
  }
  
  public final void start()
  {
    this.h.reset();
    x localx = this.e;
    localx.h = localx.d;
    localx.i = localx.e;
    localx.j = localx.f;
    if (this.e.e != this.e.d)
    {
      this.a = true;
      this.h.setDuration(666L);
      this.g.startAnimation(this.h);
      return;
    }
    this.e.a();
    this.e.b();
    this.h.setDuration(1332L);
    this.g.startAnimation(this.h);
  }
  
  public final void stop()
  {
    this.g.clearAnimation();
    this.f = 0.0F;
    invalidateSelf();
    x localx = this.e;
    if (localx.k)
    {
      localx.k = false;
      localx.c();
    }
    this.e.a();
    this.e.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\MaterialProgressDrawable.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */