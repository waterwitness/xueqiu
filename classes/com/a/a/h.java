package com.a.a;

import android.animation.Animator.AnimatorListener;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.graphics.PointF;
import android.view.animation.DecelerateInterpolator;
import com.a.a.d.e;
import com.a.a.d.f;
import com.a.a.d.g;

final class h
  implements e, f, g
{
  boolean a;
  boolean b;
  private i c;
  private com.a.a.d.d d;
  private long e;
  private float f;
  private float g;
  
  public h(i parami)
  {
    this.c = parami;
    this.a = false;
    this.b = parami.n;
    this.d = new com.a.a.d.d();
    this.d.a = this;
    this.d.b = this;
    this.d.c = this;
    parami.setOnTouchListener(this.d);
  }
  
  public final void a()
  {
    if (this.c.d())
    {
      Object localObject = this.c;
      a locala = ((i)localObject).b;
      float f1 = ((i)localObject).i;
      if (locala.b != null) {
        locala.b.cancel();
      }
      locala.b = ValueAnimator.ofFloat(new float[] { f1, 1.0F });
      locala.b.setInterpolator(new DecelerateInterpolator());
      localObject = new d(locala);
      locala.b.addUpdateListener((ValueAnimator.AnimatorUpdateListener)localObject);
      locala.b.addListener((Animator.AnimatorListener)localObject);
      locala.b.setDuration(400L);
      locala.b.start();
    }
  }
  
  public final void a(float paramFloat1, float paramFloat2)
  {
    this.e = System.currentTimeMillis();
    this.f = paramFloat1;
    this.g = paramFloat2;
  }
  
  public final void a(float paramFloat, PointF paramPointF)
  {
    float f1 = this.c.getZoom() * paramFloat;
    if (f1 < 1.0F) {
      paramFloat = 1.0F / this.c.getZoom();
    }
    for (;;)
    {
      i locali = this.c;
      locali.a(locali.i * paramFloat, paramPointF);
      return;
      if (f1 > 10.0F) {
        paramFloat = 10.0F / this.c.getZoom();
      }
    }
  }
  
  public final void b(float paramFloat1, float paramFloat2)
  {
    if ((this.c.d()) || (this.a))
    {
      i locali = this.c;
      locali.a(locali.g + paramFloat1, locali.h + paramFloat2);
    }
  }
  
  public final void c(float paramFloat1, float paramFloat2)
  {
    int k = 1;
    if (!this.c.d())
    {
      int i;
      if (this.a)
      {
        if (!this.b) {
          break label145;
        }
        paramFloat1 = paramFloat2 - this.g;
        long l1 = System.currentTimeMillis();
        long l2 = this.e;
        if (paramFloat1 <= 0.0F) {
          break label155;
        }
        i = -1;
        label54:
        if ((Math.abs(paramFloat1) < 50.0F) || (l1 - l2 > 250L)) {
          break label161;
        }
        j = 1;
        label79:
        if (j == 0)
        {
          paramFloat1 = Math.abs(paramFloat1);
          i locali = this.c;
          paramFloat2 = this.c.getOptimalPageWidth();
          if (paramFloat1 <= Math.abs(locali.i * paramFloat2 / 2.0F)) {
            break label167;
          }
        }
      }
      label145:
      label155:
      label161:
      label167:
      for (int j = k;; j = 0)
      {
        if (j == 0) {
          break label173;
        }
        this.c.a(i + this.c.getCurrentPage());
        return;
        paramFloat1 -= this.f;
        break;
        i = 1;
        break label54;
        j = 0;
        break label79;
      }
      label173:
      this.c.a(this.c.getCurrentPage());
      return;
    }
    this.c.b();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\a\a\h.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */