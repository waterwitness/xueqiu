package android.support.v4.view;

import android.graphics.Paint;
import android.os.Build.VERSION;
import android.support.annotation.FloatRange;
import android.view.View;
import android.view.ViewParent;

public final class ViewCompat
{
  static final bv a = new bj();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new bu();
      return;
    }
    if (i >= 21)
    {
      a = new bt();
      return;
    }
    if (i >= 19)
    {
      a = new bs();
      return;
    }
    if (i >= 17)
    {
      a = new bq();
      return;
    }
    if (i >= 16)
    {
      a = new bp();
      return;
    }
    if (i >= 15)
    {
      a = new bn();
      return;
    }
    if (i >= 14)
    {
      a = new bo();
      return;
    }
    if (i >= 11)
    {
      a = new bm();
      return;
    }
    if (i >= 9)
    {
      a = new bl();
      return;
    }
    if (i >= 7)
    {
      a = new bk();
      return;
    }
  }
  
  public static int a(View paramView)
  {
    return a.a(paramView);
  }
  
  public static void a(View paramView, float paramFloat)
  {
    a.a(paramView, paramFloat);
  }
  
  public static void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.a(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void a(View paramView, int paramInt, Paint paramPaint)
  {
    a.a(paramView, paramInt, paramPaint);
  }
  
  public static void a(View paramView, Paint paramPaint)
  {
    a.a(paramView, paramPaint);
  }
  
  public static void a(View paramView, a parama)
  {
    a.a(paramView, parama);
  }
  
  public static void a(View paramView, Runnable paramRunnable)
  {
    a.a(paramView, paramRunnable);
  }
  
  public static void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    a.a(paramView, paramRunnable, paramLong);
  }
  
  public static boolean a(View paramView, int paramInt)
  {
    return a.a(paramView, paramInt);
  }
  
  public static void b(View paramView, float paramFloat)
  {
    a.b(paramView, paramFloat);
  }
  
  public static boolean b(View paramView)
  {
    return a.b(paramView);
  }
  
  public static boolean b(View paramView, int paramInt)
  {
    return a.b(paramView, paramInt);
  }
  
  public static void c(View paramView, @FloatRange float paramFloat)
  {
    a.c(paramView, paramFloat);
  }
  
  public static void c(View paramView, int paramInt)
  {
    a.c(paramView, paramInt);
  }
  
  public static boolean c(View paramView)
  {
    return a.c(paramView);
  }
  
  public static void d(View paramView)
  {
    a.d(paramView);
  }
  
  public static void d(View paramView, float paramFloat)
  {
    a.d(paramView, paramFloat);
  }
  
  public static int e(View paramView)
  {
    return a.e(paramView);
  }
  
  public static float f(View paramView)
  {
    return a.f(paramView);
  }
  
  public static int g(View paramView)
  {
    return a.g(paramView);
  }
  
  public static int h(View paramView)
  {
    return a.h(paramView);
  }
  
  public static ViewParent i(View paramView)
  {
    return a.i(paramView);
  }
  
  public static boolean j(View paramView)
  {
    return a.j(paramView);
  }
  
  public static float k(View paramView)
  {
    return a.l(paramView);
  }
  
  public static float l(View paramView)
  {
    return a.m(paramView);
  }
  
  public static int m(View paramView)
  {
    return a.n(paramView);
  }
  
  public static int n(View paramView)
  {
    return a.o(paramView);
  }
  
  public static dc o(View paramView)
  {
    return a.p(paramView);
  }
  
  public static float p(View paramView)
  {
    return a.q(paramView);
  }
  
  public static boolean q(View paramView)
  {
    return a.r(paramView);
  }
  
  public static void r(View paramView)
  {
    a.s(paramView);
  }
  
  public static boolean s(View paramView)
  {
    return a.k(paramView);
  }
  
  public static void t(View paramView)
  {
    a.t(paramView);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\ViewCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */