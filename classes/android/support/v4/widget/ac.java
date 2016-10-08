package android.support.v4.widget;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.animation.Interpolator;

public final class ac
{
  Object a;
  ad b;
  
  private ac(int paramInt, Context paramContext, Interpolator paramInterpolator)
  {
    if (paramInt >= 14) {
      this.b = new ag();
    }
    for (;;)
    {
      this.a = this.b.a(paramContext, paramInterpolator);
      return;
      if (paramInt >= 9) {
        this.b = new af();
      } else {
        this.b = new ae();
      }
    }
  }
  
  ac(Context paramContext, Interpolator paramInterpolator)
  {
    this(Build.VERSION.SDK_INT, paramContext, paramInterpolator);
  }
  
  public static ac a(Context paramContext, Interpolator paramInterpolator)
  {
    return new ac(paramContext, paramInterpolator);
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    this.b.a(this.a, paramInt1, paramInt2);
  }
  
  public final void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    this.b.a(this.a, paramInt1, paramInt2, paramInt3, paramInt4, paramInt5);
  }
  
  public final boolean a()
  {
    return this.b.a(this.a);
  }
  
  public final boolean a(int paramInt1, int paramInt2, int paramInt3)
  {
    return this.b.b(this.a, paramInt1, paramInt2, paramInt3);
  }
  
  public final int b()
  {
    return this.b.b(this.a);
  }
  
  public final int c()
  {
    return this.b.c(this.a);
  }
  
  public final int d()
  {
    return this.b.g(this.a);
  }
  
  public final int e()
  {
    return this.b.h(this.a);
  }
  
  public final float f()
  {
    return this.b.d(this.a);
  }
  
  public final boolean g()
  {
    return this.b.e(this.a);
  }
  
  public final void h()
  {
    this.b.f(this.a);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\widget\ac.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */