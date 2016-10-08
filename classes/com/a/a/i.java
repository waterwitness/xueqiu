package com.a.a;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import android.view.SurfaceView;
import android.view.animation.DecelerateInterpolator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;
import java.util.Vector;

public class i
  extends SurfaceView
{
  private static final String o = i.class.getSimpleName();
  private l A;
  private com.a.a.b.c B;
  private com.a.a.b.a C;
  private Paint D = new Paint();
  private Paint E;
  private Paint F = new Paint();
  private Paint G;
  private Paint H;
  private boolean I = false;
  private RectF J;
  private RectF K;
  private boolean L = false;
  e a = new e();
  a b = new a(this);
  h c = new h(this);
  int d;
  int e;
  int f;
  float g = 0.0F;
  float h = 0.0F;
  float i = 1.0F;
  int j = k.a;
  org.vudroid.a.a k;
  com.a.a.b.b l;
  int m = 0;
  boolean n = false;
  private int[] p;
  private int[] q;
  private int[] r;
  private int s;
  private int t;
  private float u;
  private float v;
  private RectF w;
  private RectF x;
  private boolean y = true;
  private g z;
  
  public i(Context paramContext)
  {
    super(paramContext, null);
    this.F.setStyle(Paint.Style.STROKE);
    this.E = new Paint();
    this.E.setColor(-16777216);
    this.E.setAlpha(20);
    this.G = new Paint();
    this.G.setStyle(Paint.Style.FILL);
    this.G.setColor(-16777216);
    this.G.setAlpha(50);
    this.H = new Paint();
    this.H.setStyle(Paint.Style.FILL);
    this.H.setColor(-16777216);
    this.H.setAlpha(50);
    setWillNotDraw(false);
  }
  
  private int a(final int paramInt1, final int paramInt2)
  {
    if (this.q != null) {
      if ((paramInt1 >= 0) && (paramInt1 < this.q.length)) {}
    }
    for (;;)
    {
      return 0;
      for (final int i1 = this.q[paramInt1]; (i1 >= 0) && (paramInt1 < this.d); i1 = paramInt1)
      {
        if (!this.a.a(paramInt1, i1, new RectF(0.0F, 0.0F, 1.0F, 1.0F))) {
          this.A.a(paramInt1, i1, (int)(this.u * 0.2F), (int)(this.v * 0.2F), new RectF(0.0F, 0.0F, 1.0F, 1.0F), true, 0);
        }
        float f2 = 1.0F / this.u;
        float f1 = 1.0F / this.v * 256.0F / this.i;
        f2 = f2 * 256.0F / this.i;
        int i2 = (int)Math.ceil(1.0F / f1);
        int i3 = (int)Math.ceil(1.0F / f2);
        final float f3 = 1.0F / i3;
        final float f4 = 1.0F / i2;
        f1 = -this.g;
        f2 = getWidth() / 2 + f1;
        f1 = -this.h + getHeight() / 2;
        if (this.n) {
          f2 -= paramInt1 * (this.u * this.i);
        }
        for (;;)
        {
          f2 /= this.u * this.i;
          int i5 = (int)(f1 / (this.v * this.i) * i2);
          int i4 = (int)(f2 * i3);
          i5 = com.a.a.d.i.a(i5, i2);
          i4 = com.a.a.d.i.a(i4, i3);
          a locala = new a(f3, f4, paramInt1, i1, paramInt2);
          new n(locala).a(i2, i3, i5, i4);
          return locala.a;
          f1 -= paramInt1 * (this.v * this.i);
        }
      }
    }
  }
  
  private void a(float paramFloat)
  {
    this.i = paramFloat;
    f();
  }
  
  private void a(Canvas paramCanvas, com.a.a.c.a parama)
  {
    RectF localRectF = parama.c;
    Bitmap localBitmap = parama.b;
    float f1;
    float f2;
    if (this.n)
    {
      f1 = parama.a * this.v * this.i;
      f2 = 0.0F;
    }
    for (;;)
    {
      paramCanvas.translate(f2, f1);
      parama = new Rect(0, 0, localBitmap.getWidth(), localBitmap.getHeight());
      float f3 = localRectF.left * this.u * this.i;
      float f4 = localRectF.top * this.v * this.i;
      float f5 = localRectF.width();
      float f6 = this.u;
      float f7 = this.i;
      float f8 = localRectF.height();
      float f9 = this.v;
      float f10 = this.i;
      localRectF = new RectF((int)f3, (int)f4, (int)(f3 + f5 * f6 * f7), (int)(f8 * f9 * f10 + f4));
      f3 = this.g + f2;
      f4 = this.h + f1;
      if ((localRectF.left + f3 < getWidth()) && (f3 + localRectF.right > 0.0F) && (localRectF.top + f4 < getHeight()) && (localRectF.bottom + f4 > 0.0F)) {
        break;
      }
      paramCanvas.translate(-f2, -f1);
      return;
      f2 = parama.a * this.u * this.i;
      f1 = 0.0F;
    }
    paramCanvas.drawBitmap(localBitmap, parama, localRectF, this.D);
    paramCanvas.translate(-f2, -f1);
  }
  
  private void a(Uri paramUri, com.a.a.b.b paramb, int[] paramArrayOfInt)
  {
    if (!this.y) {
      throw new IllegalStateException("Don't call load on a PDF View without recycling it first.");
    }
    if (paramArrayOfInt != null)
    {
      this.p = paramArrayOfInt;
      this.q = com.a.a.d.a.a(this.p);
      this.r = com.a.a.d.a.b(this.p);
    }
    this.l = paramb;
    this.z = new g(paramUri, this);
    this.z.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    this.A = new l(this);
    this.A.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
  }
  
  private float b(int paramInt)
  {
    if (this.n) {
      return -(paramInt * this.v) + (getHeight() / 2 - this.v / 2.0F);
    }
    return -(paramInt * this.u) + (getWidth() / 2 - this.u / 2.0F);
  }
  
  private void e()
  {
    if (this.J == null) {
      return;
    }
    if (this.i == 1.0F)
    {
      this.I = false;
      return;
    }
    float f1 = (-this.g - this.t * this.u * this.i) / (this.u * this.i) * this.J.width();
    float f2 = getWidth() / (this.u * this.i);
    float f3 = this.J.width();
    float f4 = -this.h / (this.v * this.i) * this.J.height();
    float f5 = getHeight() / (this.v * this.i);
    float f6 = this.J.height();
    this.K = new RectF(this.J.left + f1, this.J.top + f4, f1 + this.J.left + f2 * f3, this.J.top + f4 + f5 * f6);
    this.K.intersect(this.J);
    this.I = true;
  }
  
  private void f()
  {
    this.w = new RectF(0.0F, 0.0F, getWidth() / 2 - this.u * this.i / 2.0F, getHeight());
    this.x = new RectF(getWidth() / 2 + this.u * this.i / 2.0F, 0.0F, getWidth(), getHeight());
  }
  
  private void setDefaultPage(int paramInt)
  {
    this.m = paramInt;
  }
  
  private void setOnDrawListener(com.a.a.b.a parama)
  {
    this.C = parama;
  }
  
  private void setOnPageChangeListener(com.a.a.b.c paramc)
  {
    this.B = paramc;
  }
  
  private void setUserWantsMinimap(boolean paramBoolean)
  {
    this.L = paramBoolean;
  }
  
  public final void a()
  {
    if (this.A != null) {
      this.A.cancel(true);
    }
    if (this.z != null) {
      this.z.cancel(true);
    }
    e locale = this.a;
    Iterator localIterator = locale.b.iterator();
    while (localIterator.hasNext()) {
      ((com.a.a.c.a)localIterator.next()).b.recycle();
    }
    localIterator = locale.b.iterator();
    while (localIterator.hasNext()) {
      ((com.a.a.c.a)localIterator.next()).b.recycle();
    }
    localIterator = locale.c.iterator();
    while (localIterator.hasNext()) {
      ((com.a.a.c.a)localIterator.next()).b.recycle();
    }
    locale.a.clear();
    locale.b.clear();
    locale.c.clear();
    this.y = true;
    this.j = k.a;
  }
  
  public final void a(float paramFloat1, float paramFloat2)
  {
    float f3;
    float f2;
    float f1;
    if (this.n) {
      if (this.u * this.i < getWidth())
      {
        f3 = getWidth() / 2 - this.u * this.i / 2.0F;
        if (!d()) {
          break label299;
        }
        if (this.v * this.i >= getHeight()) {
          break label183;
        }
        this.I = false;
        f2 = getHeight() / 2 - (this.t + 0.5F) * this.v * this.i;
        f1 = f3;
      }
    }
    for (;;)
    {
      this.g = f1;
      this.h = f2;
      e();
      invalidate();
      return;
      if (paramFloat1 > 0.0F)
      {
        f3 = 0.0F;
        break;
      }
      f3 = paramFloat1;
      if (this.u * this.i + paramFloat1 >= getWidth()) {
        break;
      }
      f3 = getWidth() - this.u * this.i;
      break;
      label183:
      this.I = true;
      if (this.t * this.v * this.i + paramFloat2 > 0.0F)
      {
        f2 = -(this.t * this.v * this.i);
        f1 = f3;
      }
      else
      {
        f1 = f3;
        f2 = paramFloat2;
        if ((this.t + 1) * this.v * this.i + paramFloat2 < getHeight())
        {
          f2 = getHeight() - (this.t + 1) * this.v * this.i;
          f1 = f3;
          continue;
          label299:
          f2 = b(this.t + 1);
          paramFloat1 = b(this.t - 1);
          if (paramFloat2 < f2)
          {
            f1 = f3;
          }
          else
          {
            f1 = f3;
            f2 = paramFloat2;
            if (paramFloat2 > paramFloat1)
            {
              f2 = paramFloat1;
              f1 = f3;
              continue;
              if (this.v * this.i < getHeight()) {
                f3 = getHeight() / 2 - this.v * this.i / 2.0F;
              }
              for (;;)
              {
                if (d())
                {
                  if (this.u * this.i < getWidth())
                  {
                    this.I = false;
                    f1 = getWidth() / 2 - (this.t + 0.5F) * this.u * this.i;
                    f2 = f3;
                    break;
                    if (paramFloat2 > 0.0F)
                    {
                      f3 = 0.0F;
                      continue;
                    }
                    f3 = paramFloat2;
                    if (this.v * this.i + paramFloat2 >= getHeight()) {
                      continue;
                    }
                    f3 = getHeight() - this.v * this.i;
                    continue;
                  }
                  this.I = true;
                  if (this.t * this.u * this.i + paramFloat1 > 0.0F)
                  {
                    f1 = -(this.t * this.u * this.i);
                    f2 = f3;
                    break;
                  }
                  f1 = paramFloat1;
                  f2 = f3;
                  if ((this.t + 1) * this.u * this.i + paramFloat1 >= getWidth()) {
                    break;
                  }
                  f1 = getWidth() - (this.t + 1) * this.u * this.i;
                  f2 = f3;
                  break;
                }
              }
              f1 = b(this.t + 1);
              paramFloat2 = b(this.t - 1);
              if (paramFloat1 < f1)
              {
                f2 = f3;
              }
              else
              {
                f1 = paramFloat1;
                f2 = f3;
                if (paramFloat1 > paramFloat2)
                {
                  f1 = paramFloat2;
                  f2 = f3;
                }
              }
            }
          }
        }
      }
    }
  }
  
  public final void a(float paramFloat, PointF paramPointF)
  {
    float f1 = paramFloat / this.i;
    a(paramFloat);
    paramFloat = this.g;
    float f2 = this.h;
    a(paramFloat * f1 + (paramPointF.x - paramPointF.x * f1), paramPointF.y - f1 * paramPointF.y + f2 * f1);
  }
  
  final void a(int paramInt)
  {
    this.j = k.c;
    int i1;
    a locala;
    float f1;
    float f2;
    if (paramInt <= 0)
    {
      i1 = 0;
      this.s = i1;
      this.t = i1;
      paramInt = i1;
      if (this.r != null)
      {
        paramInt = i1;
        if (i1 >= 0)
        {
          paramInt = i1;
          if (i1 < this.r.length)
          {
            paramInt = this.r[i1];
            this.t = paramInt;
          }
        }
      }
      a(1.0F);
      if (!this.n) {
        break label256;
      }
      locala = this.b;
      f1 = this.h;
      f2 = b(paramInt);
      if (locala.b != null) {
        locala.b.cancel();
      }
      locala.b = ValueAnimator.ofFloat(new float[] { f1, f2 });
      locala.b.setInterpolator(new DecelerateInterpolator());
      locala.b.addUpdateListener(new c(locala));
      locala.b.setDuration(400L);
      locala.b.start();
    }
    for (;;)
    {
      b();
      if (this.B != null) {
        getPageCount();
      }
      return;
      if (this.p != null)
      {
        i1 = paramInt;
        if (paramInt < this.p.length) {
          break;
        }
        i1 = this.p.length - 1;
        break;
      }
      i1 = paramInt;
      if (paramInt < this.d) {
        break;
      }
      i1 = this.d - 1;
      break;
      label256:
      locala = this.b;
      f1 = this.g;
      f2 = b(paramInt);
      if (locala.b != null) {
        locala.b.cancel();
      }
      locala.b = ValueAnimator.ofFloat(new float[] { f1, f2 });
      locala.b.setInterpolator(new DecelerateInterpolator());
      locala.b.addUpdateListener(new b(locala));
      locala.b.setDuration(400L);
      locala.b.start();
    }
  }
  
  public final void b()
  {
    int i1 = 0;
    if ((this.u == 0.0F) || (this.v == 0.0F)) {
      return;
    }
    this.A.a.clear();
    e locale = this.a;
    locale.a.addAll(locale.b);
    locale.b.clear();
    int i2 = this.s;
    if (this.r != null) {
      i2 = this.r[this.s];
    }
    int i3 = 0;
    while ((i3 <= 1) && (i1 < com.a.a.d.c.a))
    {
      int i4 = i1 + a(i2 + i3, com.a.a.d.c.a - i1);
      i1 = i4;
      if (i3 != 0)
      {
        i1 = i4;
        if (i4 < com.a.a.d.c.a) {
          i1 = i4 + a(i2 - i3, com.a.a.d.c.a - i4);
        }
      }
      i3 += 1;
    }
    invalidate();
  }
  
  final void c()
  {
    if ((this.j == k.a) || (getWidth() == 0)) {
      return;
    }
    float f2 = getWidth();
    float f1 = getHeight();
    float f4 = this.e / this.f;
    float f3 = (float)Math.floor(f2 / f4);
    if (f3 > f1) {
      f2 = (float)Math.floor(f1 * f4);
    }
    for (;;)
    {
      this.u = f2;
      this.v = f1;
      f();
      f1 = Math.min(200.0F / this.u, 200.0F / this.v);
      f2 = this.u;
      f3 = this.v;
      this.J = new RectF(getWidth() - 5 - f2 * f1, 5.0F, getWidth() - 5, f1 * f3 + 5.0F);
      e();
      return;
      f1 = f3;
    }
  }
  
  public final boolean d()
  {
    return this.i != 1.0F;
  }
  
  public int getCurrentPage()
  {
    return this.s;
  }
  
  public float getCurrentXOffset()
  {
    return this.g;
  }
  
  public float getCurrentYOffset()
  {
    return this.h;
  }
  
  org.vudroid.a.a getDecodeService()
  {
    return this.k;
  }
  
  public float getOptimalPageWidth()
  {
    return this.u;
  }
  
  public int getPageCount()
  {
    if (this.p != null) {
      return this.p.length;
    }
    return this.d;
  }
  
  public float getZoom()
  {
    return this.i;
  }
  
  protected void onDetachedFromWindow()
  {
    a();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.drawColor(-1);
    if (this.j != k.c) {}
    do
    {
      return;
      float f1 = this.g;
      float f2 = this.h;
      paramCanvas.translate(f1, f2);
      Object localObject = this.a.c.iterator();
      while (((Iterator)localObject).hasNext()) {
        a(paramCanvas, (com.a.a.c.a)((Iterator)localObject).next());
      }
      localObject = this.a;
      Vector localVector = new Vector(((e)localObject).a);
      localVector.addAll(((e)localObject).b);
      localObject = localVector.iterator();
      while (((Iterator)localObject).hasNext()) {
        a(paramCanvas, (com.a.a.c.a)((Iterator)localObject).next());
      }
      if (this.C != null)
      {
        paramCanvas.translate(this.t * this.u * this.i, 0.0F);
        paramCanvas.translate(-(this.t * this.u * this.i), 0.0F);
      }
      paramCanvas.translate(-f1, -f2);
      paramCanvas.drawRect(this.w, this.E);
      paramCanvas.drawRect(this.x, this.E);
    } while ((!this.L) || (!this.I));
    paramCanvas.drawRect(this.J, this.G);
    paramCanvas.drawRect(this.K, this.H);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a locala = this.b;
    if (locala.b != null)
    {
      locala.b.cancel();
      locala.b = null;
    }
    c();
    b();
    if (this.n)
    {
      a(this.g, b(this.t));
      return;
    }
    a(b(this.t), this.h);
  }
  
  public void setSwipeVertical(boolean paramBoolean)
  {
    this.n = paramBoolean;
  }
  
  final class a
    implements o
  {
    int a = 0;
    
    public final boolean a(int paramInt1, int paramInt2)
    {
      float f4 = f3 * paramInt2;
      float f5 = f4 * paramInt1;
      float f2 = f3;
      float f3 = f4;
      float f7 = 256.0F / f2;
      float f6 = 256.0F / f3;
      float f1 = f2;
      if (f4 + f2 > 1.0F) {
        f1 = 1.0F - f4;
      }
      f2 = f3;
      if (f5 + f3 > 1.0F) {
        f2 = 1.0F - f5;
      }
      f3 = f7 * f1;
      f6 *= f2;
      RectF localRectF = new RectF(f4, f5, f1 + f4, f2 + f5);
      e locale;
      com.a.a.c.a locala1;
      if ((f3 != 0.0F) && (f6 != 0.0F))
      {
        locale = i.a(this.g);
        paramInt1 = paramInt1;
        paramInt2 = i1;
        int i = this.a;
        locala1 = new com.a.a.c.a(paramInt1, paramInt2, null, localRectF, false, 0);
        com.a.a.c.a locala2 = locale.find(locale.a, locala1);
        if (locala2 == null) {
          break label278;
        }
        locale.a.remove(locala2);
        locala2.e = i;
        locale.b.offer(locala2);
        paramInt1 = 1;
      }
      for (;;)
      {
        if (paramInt1 == 0) {
          i.b(this.g).a(paramInt1, i1, f3, f6, localRectF, false, this.a);
        }
        this.a += 1;
        if (this.a < paramInt2) {
          break;
        }
        return false;
        label278:
        if (locale.find(locale.b, locala1) != null) {
          paramInt1 = 1;
        } else {
          paramInt1 = 0;
        }
      }
      return true;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\a\a\i.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */