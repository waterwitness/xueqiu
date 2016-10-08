package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.view.at;
import android.support.v4.view.bf;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import java.util.Arrays;

public final class ar
{
  private static final Interpolator v = new Interpolator()
  {
    public final float getInterpolation(float paramAnonymousFloat)
    {
      paramAnonymousFloat -= 1.0F;
      return paramAnonymousFloat * (paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat * paramAnonymousFloat) + 1.0F;
    }
  };
  int a;
  int b;
  float[] c;
  float[] d;
  float[] e;
  float[] f;
  int g;
  float h;
  int i;
  int j;
  View k;
  private int l = -1;
  private int[] m;
  private int[] n;
  private int[] o;
  private VelocityTracker p;
  private float q;
  private ac r;
  private final as s;
  private boolean t;
  private final ViewGroup u;
  private final Runnable w = new Runnable()
  {
    public final void run()
    {
      ar.this.a(0);
    }
  };
  
  private ar(Context paramContext, ViewGroup paramViewGroup, as paramas)
  {
    if (paramViewGroup == null) {
      throw new IllegalArgumentException("Parent view may not be null");
    }
    if (paramas == null) {
      throw new IllegalArgumentException("Callback may not be null");
    }
    this.u = paramViewGroup;
    this.s = paramas;
    paramViewGroup = ViewConfiguration.get(paramContext);
    this.i = ((int)(paramContext.getResources().getDisplayMetrics().density * 20.0F + 0.5F));
    this.b = paramViewGroup.getScaledTouchSlop();
    this.q = paramViewGroup.getScaledMaximumFlingVelocity();
    this.h = paramViewGroup.getScaledMinimumFlingVelocity();
    this.r = ac.a(paramContext, v);
  }
  
  private static float a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = Math.abs(paramFloat1);
    if (f1 < paramFloat2) {
      paramFloat2 = 0.0F;
    }
    do
    {
      return paramFloat2;
      if (f1 <= paramFloat3) {
        break;
      }
      paramFloat2 = paramFloat3;
    } while (paramFloat1 > 0.0F);
    return -paramFloat3;
    return paramFloat1;
  }
  
  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 == 0) {
      return 0;
    }
    int i1 = this.u.getWidth();
    int i2 = i1 / 2;
    float f3 = Math.min(1.0F, Math.abs(paramInt1) / i1);
    float f1 = i2;
    float f2 = i2;
    f3 = (float)Math.sin((float)((f3 - 0.5F) * 0.4712389167638204D));
    paramInt2 = Math.abs(paramInt2);
    if (paramInt2 > 0) {}
    for (paramInt1 = Math.round(Math.abs((f3 * f2 + f1) / paramInt2) * 1000.0F) * 4;; paramInt1 = (int)((Math.abs(paramInt1) / paramInt3 + 1.0F) * 256.0F)) {
      return Math.min(paramInt1, 600);
    }
  }
  
  public static ar a(ViewGroup paramViewGroup, float paramFloat, as paramas)
  {
    paramViewGroup = new ar(paramViewGroup.getContext(), paramViewGroup, paramas);
    paramViewGroup.b = ((int)(paramViewGroup.b * (1.0F / paramFloat)));
    return paramViewGroup;
  }
  
  private void a(float paramFloat)
  {
    this.t = true;
    this.s.a(this.k, paramFloat);
    this.t = false;
    if (this.a == 1) {
      a(0);
    }
  }
  
  private void a(float paramFloat1, float paramFloat2, int paramInt)
  {
    int i2 = 0;
    if ((this.c == null) || (this.c.length <= paramInt))
    {
      localObject = new float[paramInt + 1];
      float[] arrayOfFloat1 = new float[paramInt + 1];
      float[] arrayOfFloat2 = new float[paramInt + 1];
      float[] arrayOfFloat3 = new float[paramInt + 1];
      int[] arrayOfInt1 = new int[paramInt + 1];
      int[] arrayOfInt2 = new int[paramInt + 1];
      int[] arrayOfInt3 = new int[paramInt + 1];
      if (this.c != null)
      {
        System.arraycopy(this.c, 0, localObject, 0, this.c.length);
        System.arraycopy(this.d, 0, arrayOfFloat1, 0, this.d.length);
        System.arraycopy(this.e, 0, arrayOfFloat2, 0, this.e.length);
        System.arraycopy(this.f, 0, arrayOfFloat3, 0, this.f.length);
        System.arraycopy(this.m, 0, arrayOfInt1, 0, this.m.length);
        System.arraycopy(this.n, 0, arrayOfInt2, 0, this.n.length);
        System.arraycopy(this.o, 0, arrayOfInt3, 0, this.o.length);
      }
      this.c = ((float[])localObject);
      this.d = arrayOfFloat1;
      this.e = arrayOfFloat2;
      this.f = arrayOfFloat3;
      this.m = arrayOfInt1;
      this.n = arrayOfInt2;
      this.o = arrayOfInt3;
    }
    Object localObject = this.c;
    this.e[paramInt] = paramFloat1;
    localObject[paramInt] = paramFloat1;
    localObject = this.d;
    this.f[paramInt] = paramFloat2;
    localObject[paramInt] = paramFloat2;
    localObject = this.m;
    int i4 = (int)paramFloat1;
    int i3 = (int)paramFloat2;
    if (i4 < this.u.getLeft() + this.i) {
      i2 = 1;
    }
    int i1 = i2;
    if (i3 < this.u.getTop() + this.i) {
      i1 = i2 | 0x4;
    }
    i2 = i1;
    if (i4 > this.u.getRight() - this.i) {
      i2 = i1 | 0x2;
    }
    i1 = i2;
    if (i3 > this.u.getBottom() - this.i) {
      i1 = i2 | 0x8;
    }
    localObject[paramInt] = i1;
    this.g |= 1 << paramInt;
  }
  
  private boolean a(float paramFloat1, float paramFloat2, int paramInt1, int paramInt2)
  {
    paramFloat1 = Math.abs(paramFloat1);
    paramFloat2 = Math.abs(paramFloat2);
    if (((this.m[paramInt1] & paramInt2) != paramInt2) || ((this.j & paramInt2) == 0) || ((this.o[paramInt1] & paramInt2) == paramInt2) || ((this.n[paramInt1] & paramInt2) == paramInt2) || ((paramFloat1 <= this.b) && (paramFloat2 <= this.b))) {}
    while (((this.n[paramInt1] & paramInt2) != 0) || (paramFloat1 <= this.b)) {
      return false;
    }
    return true;
  }
  
  private boolean a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i1 = this.k.getLeft();
    int i2 = this.k.getTop();
    paramInt1 -= i1;
    paramInt2 -= i2;
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      this.r.h();
      a(0);
      return false;
    }
    View localView = this.k;
    paramInt3 = b(paramInt3, (int)this.h, (int)this.q);
    paramInt4 = b(paramInt4, (int)this.h, (int)this.q);
    int i3 = Math.abs(paramInt1);
    int i4 = Math.abs(paramInt2);
    int i5 = Math.abs(paramInt3);
    int i6 = Math.abs(paramInt4);
    int i7 = i5 + i6;
    int i8 = i3 + i4;
    float f1;
    if (paramInt3 != 0)
    {
      f1 = i5 / i7;
      if (paramInt4 == 0) {
        break label231;
      }
    }
    label231:
    for (float f2 = i6 / i7;; f2 = i4 / i8)
    {
      paramInt3 = a(paramInt1, paramInt3, this.s.c(localView));
      paramInt4 = a(paramInt2, paramInt4, 0);
      float f3 = paramInt3;
      paramInt3 = (int)(f2 * paramInt4 + f1 * f3);
      this.r.a(i1, i2, paramInt1, paramInt2, paramInt3);
      a(2);
      return true;
      f1 = i3 / i8;
      break;
    }
  }
  
  private boolean a(View paramView, float paramFloat)
  {
    if (paramView == null) {}
    for (;;)
    {
      return false;
      if (this.s.c(paramView) > 0) {}
      for (int i1 = 1; (i1 != 0) && (Math.abs(paramFloat) > this.b); i1 = 0) {
        return true;
      }
    }
  }
  
  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    int i1 = Math.abs(paramInt1);
    if (i1 < paramInt2) {
      paramInt2 = 0;
    }
    do
    {
      return paramInt2;
      if (i1 <= paramInt3) {
        break;
      }
      paramInt2 = paramInt3;
    } while (paramInt1 > 0);
    return -paramInt3;
    return paramInt1;
  }
  
  private void b(float paramFloat1, float paramFloat2, int paramInt)
  {
    int i2 = 1;
    if (a(paramFloat1, paramFloat2, paramInt, 1)) {}
    for (;;)
    {
      int i1 = i2;
      if (a(paramFloat2, paramFloat1, paramInt, 4)) {
        i1 = i2 | 0x4;
      }
      i2 = i1;
      if (a(paramFloat1, paramFloat2, paramInt, 2)) {
        i2 = i1 | 0x2;
      }
      i1 = i2;
      if (a(paramFloat2, paramFloat1, paramInt, 8)) {
        i1 = i2 | 0x8;
      }
      if (i1 != 0)
      {
        int[] arrayOfInt = this.n;
        arrayOfInt[paramInt] |= i1;
        this.s.a(i1, paramInt);
      }
      return;
      i2 = 0;
    }
  }
  
  private void b(int paramInt)
  {
    if (this.c == null) {
      return;
    }
    this.c[paramInt] = 0.0F;
    this.d[paramInt] = 0.0F;
    this.e[paramInt] = 0.0F;
    this.f[paramInt] = 0.0F;
    this.m[paramInt] = 0;
    this.n[paramInt] = 0;
    this.o[paramInt] = 0;
    this.g &= (1 << paramInt ^ 0xFFFFFFFF);
  }
  
  private boolean b(View paramView, int paramInt)
  {
    if ((paramView == this.k) && (this.l == paramInt)) {
      return true;
    }
    if ((paramView != null) && (this.s.a(paramView)))
    {
      this.l = paramInt;
      a(paramView, paramInt);
      return true;
    }
    return false;
  }
  
  public static boolean b(View paramView, int paramInt1, int paramInt2)
  {
    if (paramView == null) {}
    while ((paramInt1 < paramView.getLeft()) || (paramInt1 >= paramView.getRight()) || (paramInt2 < paramView.getTop()) || (paramInt2 >= paramView.getBottom())) {
      return false;
    }
    return true;
  }
  
  private void c(MotionEvent paramMotionEvent)
  {
    int i2 = at.c(paramMotionEvent);
    int i1 = 0;
    while (i1 < i2)
    {
      int i3 = at.b(paramMotionEvent, i1);
      float f1 = at.c(paramMotionEvent, i1);
      float f2 = at.d(paramMotionEvent, i1);
      this.e[i3] = f1;
      this.f[i3] = f2;
      i1 += 1;
    }
  }
  
  private void d()
  {
    this.p.computeCurrentVelocity(1000, this.q);
    float f1 = a(bf.a(this.p, this.l), this.h, this.q);
    a(bf.b(this.p, this.l), this.h, this.q);
    a(f1);
  }
  
  public final void a()
  {
    this.l = -1;
    if (this.c != null)
    {
      Arrays.fill(this.c, 0.0F);
      Arrays.fill(this.d, 0.0F);
      Arrays.fill(this.e, 0.0F);
      Arrays.fill(this.f, 0.0F);
      Arrays.fill(this.m, 0);
      Arrays.fill(this.n, 0);
      Arrays.fill(this.o, 0);
      this.g = 0;
    }
    if (this.p != null)
    {
      this.p.recycle();
      this.p = null;
    }
  }
  
  final void a(int paramInt)
  {
    this.u.removeCallbacks(this.w);
    if (this.a != paramInt)
    {
      this.a = paramInt;
      this.s.a(paramInt);
      if (this.a == 0) {
        this.k = null;
      }
    }
  }
  
  public final void a(View paramView, int paramInt)
  {
    if (paramView.getParent() != this.u) {
      throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.u + ")");
    }
    this.k = paramView;
    this.l = paramInt;
    this.s.b(paramView);
    a(1);
  }
  
  public final boolean a(int paramInt1, int paramInt2)
  {
    if (!this.t) {
      throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }
    return a(paramInt1, paramInt2, (int)bf.a(this.p, this.l), (int)bf.b(this.p, this.l));
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    int i2 = at.a(paramMotionEvent);
    int i1 = at.b(paramMotionEvent);
    if (i2 == 0) {
      a();
    }
    if (this.p == null) {
      this.p = VelocityTracker.obtain();
    }
    this.p.addMovement(paramMotionEvent);
    switch (i2)
    {
    }
    while (this.a == 1)
    {
      return true;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      i1 = at.b(paramMotionEvent, 0);
      a(f1, f2, i1);
      paramMotionEvent = b((int)f1, (int)f2);
      if ((paramMotionEvent == this.k) && (this.a == 2)) {
        b(paramMotionEvent, i1);
      }
      if ((this.m[i1] & this.j) != 0)
      {
        this.s.c();
        continue;
        i2 = at.b(paramMotionEvent, i1);
        f1 = at.c(paramMotionEvent, i1);
        f2 = at.d(paramMotionEvent, i1);
        a(f1, f2, i2);
        if (this.a == 0)
        {
          if ((this.m[i2] & this.j) != 0) {
            this.s.c();
          }
        }
        else if (this.a == 2)
        {
          paramMotionEvent = b((int)f1, (int)f2);
          if (paramMotionEvent == this.k)
          {
            b(paramMotionEvent, i2);
            continue;
            if ((this.c != null) && (this.d != null))
            {
              int i3 = at.c(paramMotionEvent);
              i1 = 0;
              for (;;)
              {
                int i4;
                float f3;
                float f4;
                View localView;
                if (i1 < i3)
                {
                  i4 = at.b(paramMotionEvent, i1);
                  f1 = at.c(paramMotionEvent, i1);
                  f2 = at.d(paramMotionEvent, i1);
                  f3 = f1 - this.c[i4];
                  f4 = this.d[i4];
                  localView = b((int)f1, (int)f2);
                  if ((localView == null) || (!a(localView, f3))) {
                    break label465;
                  }
                  i2 = 1;
                  label380:
                  if (i2 == 0) {
                    break label471;
                  }
                  int i5 = localView.getLeft();
                  int i6 = (int)f3;
                  i6 = this.s.b(localView, i6 + i5);
                  localView.getTop();
                  this.s.d(localView);
                  int i7 = this.s.c(localView);
                  if ((i7 != 0) && ((i7 <= 0) || (i6 != i5))) {
                    break label471;
                  }
                }
                label465:
                label471:
                do
                {
                  c(paramMotionEvent);
                  break;
                  i2 = 0;
                  break label380;
                  b(f3, f2 - f4, i4);
                } while ((this.a == 1) || ((i2 != 0) && (b(localView, i4))));
                i1 += 1;
              }
              b(at.b(paramMotionEvent, i1));
              continue;
              a();
            }
          }
        }
      }
    }
    return false;
  }
  
  public final boolean a(View paramView, int paramInt1, int paramInt2)
  {
    this.k = paramView;
    this.l = -1;
    boolean bool = a(paramInt1, paramInt2, 0, 0);
    if ((!bool) && (this.a == 0) && (this.k != null)) {
      this.k = null;
    }
    return bool;
  }
  
  public final View b(int paramInt1, int paramInt2)
  {
    int i1 = this.u.getChildCount() - 1;
    while (i1 >= 0)
    {
      View localView = this.u.getChildAt(i1);
      if ((paramInt1 >= localView.getLeft()) && (paramInt1 < localView.getRight()) && (paramInt2 >= localView.getTop()) && (paramInt2 < localView.getBottom())) {
        return localView;
      }
      i1 -= 1;
    }
    return null;
  }
  
  public final void b()
  {
    a();
    if (this.a == 2)
    {
      this.r.b();
      this.r.c();
      this.r.h();
      int i1 = this.r.b();
      this.r.c();
      this.s.a(this.k, i1);
    }
    a(0);
  }
  
  public final void b(MotionEvent paramMotionEvent)
  {
    int i1 = 0;
    int i2 = 0;
    int i4 = at.a(paramMotionEvent);
    int i3 = at.b(paramMotionEvent);
    if (i4 == 0) {
      a();
    }
    if (this.p == null) {
      this.p = VelocityTracker.obtain();
    }
    this.p.addMovement(paramMotionEvent);
    float f1;
    float f2;
    switch (i4)
    {
    case 4: 
    default: 
    case 0: 
    case 5: 
      do
      {
        do
        {
          do
          {
            return;
            f1 = paramMotionEvent.getX();
            f2 = paramMotionEvent.getY();
            i1 = at.b(paramMotionEvent, 0);
            paramMotionEvent = b((int)f1, (int)f2);
            a(f1, f2, i1);
            b(paramMotionEvent, i1);
          } while ((this.m[i1] & this.j) == 0);
          this.s.c();
          return;
          i1 = at.b(paramMotionEvent, i3);
          f1 = at.c(paramMotionEvent, i3);
          f2 = at.d(paramMotionEvent, i3);
          a(f1, f2, i1);
          if (this.a != 0) {
            break;
          }
          b(b((int)f1, (int)f2), i1);
        } while ((this.m[i1] & this.j) == 0);
        this.s.c();
        return;
        i2 = (int)f1;
        i3 = (int)f2;
      } while (!b(this.k, i2, i3));
      b(this.k, i1);
      return;
    case 2: 
      if (this.a == 1)
      {
        i1 = at.a(paramMotionEvent, this.l);
        f1 = at.c(paramMotionEvent, i1);
        f2 = at.d(paramMotionEvent, i1);
        i3 = (int)(f1 - this.e[this.l]);
        i4 = (int)(f2 - this.f[this.l]);
        i2 = this.k.getLeft() + i3;
        this.k.getTop();
        int i6 = this.k.getLeft();
        int i5 = this.k.getTop();
        i1 = i2;
        if (i3 != 0)
        {
          i1 = this.s.b(this.k, i2);
          this.k.offsetLeftAndRight(i1 - i6);
        }
        if (i4 != 0)
        {
          i2 = this.s.d(this.k);
          this.k.offsetTopAndBottom(i2 - i5);
        }
        if ((i3 != 0) || (i4 != 0)) {
          this.s.a(this.k, i1);
        }
        c(paramMotionEvent);
        return;
      }
      i3 = at.c(paramMotionEvent);
      i1 = i2;
      while (i1 < i3)
      {
        i2 = at.b(paramMotionEvent, i1);
        f1 = at.c(paramMotionEvent, i1);
        f2 = at.d(paramMotionEvent, i1);
        float f3 = f1 - this.c[i2];
        b(f3, f2 - this.d[i2], i2);
        if (this.a == 1) {
          break;
        }
        View localView = b((int)f1, (int)f2);
        if ((a(localView, f3)) && (b(localView, i2))) {
          break;
        }
        i1 += 1;
      }
      c(paramMotionEvent);
      return;
    case 6: 
      i2 = at.b(paramMotionEvent, i3);
      if ((this.a == 1) && (i2 == this.l))
      {
        i3 = at.c(paramMotionEvent);
        if (i1 >= i3) {
          break label746;
        }
        i4 = at.b(paramMotionEvent, i1);
        if (i4 == this.l) {
          break label702;
        }
        f1 = at.c(paramMotionEvent, i1);
        f2 = at.d(paramMotionEvent, i1);
        if ((b((int)f1, (int)f2) != this.k) || (!b(this.k, i4))) {
          break label702;
        }
      }
      break;
    }
    label702:
    label746:
    for (i1 = this.l;; i1 = -1)
    {
      if (i1 == -1) {
        d();
      }
      b(i2);
      return;
      i1 += 1;
      break;
      if (this.a == 1) {
        d();
      }
      a();
      return;
      if (this.a == 1) {
        a(0.0F);
      }
      a();
      return;
    }
  }
  
  public final boolean c()
  {
    boolean bool2 = false;
    if (this.a == 2)
    {
      boolean bool3 = this.r.g();
      int i1 = this.r.b();
      int i2 = this.r.c();
      int i3 = i1 - this.k.getLeft();
      int i4 = i2 - this.k.getTop();
      if (i3 != 0) {
        this.k.offsetLeftAndRight(i3);
      }
      if (i4 != 0) {
        this.k.offsetTopAndBottom(i4);
      }
      if ((i3 != 0) || (i4 != 0)) {
        this.s.a(this.k, i1);
      }
      bool1 = bool3;
      if (bool3)
      {
        bool1 = bool3;
        if (i1 == this.r.d())
        {
          bool1 = bool3;
          if (i2 == this.r.e())
          {
            this.r.h();
            bool1 = false;
          }
        }
      }
      if (!bool1) {
        this.u.post(this.w);
      }
    }
    boolean bool1 = bool2;
    if (this.a == 2) {
      bool1 = true;
    }
    return bool1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\ar.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */