package android.support.v4.view;

import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewParent;
import java.util.WeakHashMap;

class bj
  implements bv
{
  WeakHashMap<View, dc> a = null;
  
  public int a(View paramView)
  {
    return 2;
  }
  
  long a()
  {
    return 10L;
  }
  
  public void a(View paramView, float paramFloat) {}
  
  public void a(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramView.invalidate(paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public void a(View paramView, int paramInt, Paint paramPaint) {}
  
  public void a(View paramView, Paint paramPaint) {}
  
  public void a(View paramView, a parama) {}
  
  public void a(View paramView, Runnable paramRunnable)
  {
    paramView.postDelayed(paramRunnable, a());
  }
  
  public void a(View paramView, Runnable paramRunnable, long paramLong)
  {
    paramView.postDelayed(paramRunnable, a() + paramLong);
  }
  
  public boolean a(View paramView, int paramInt)
  {
    if ((paramView instanceof be))
    {
      paramView = (be)paramView;
      int i = paramView.computeHorizontalScrollOffset();
      int j = paramView.computeHorizontalScrollRange() - paramView.computeHorizontalScrollExtent();
      if (j != 0) {
        if (paramInt < 0) {
          if (i > 0) {
            paramInt = 1;
          }
        }
      }
      while (paramInt != 0)
      {
        return true;
        paramInt = 0;
        continue;
        if (i < j - 1) {
          paramInt = 1;
        } else {
          paramInt = 0;
        }
      }
    }
    return false;
  }
  
  public void b(View paramView, float paramFloat) {}
  
  public boolean b(View paramView)
  {
    return false;
  }
  
  public boolean b(View paramView, int paramInt)
  {
    if ((paramView instanceof be))
    {
      paramView = (be)paramView;
      int i = paramView.computeVerticalScrollOffset();
      int j = paramView.computeVerticalScrollRange() - paramView.computeVerticalScrollExtent();
      if (j != 0) {
        if (paramInt < 0) {
          if (i > 0) {
            paramInt = 1;
          }
        }
      }
      while (paramInt != 0)
      {
        return true;
        paramInt = 0;
        continue;
        if (i < j - 1) {
          paramInt = 1;
        } else {
          paramInt = 0;
        }
      }
    }
    return false;
  }
  
  public void c(View paramView, float paramFloat) {}
  
  public void c(View paramView, int paramInt) {}
  
  public boolean c(View paramView)
  {
    return false;
  }
  
  public void d(View paramView)
  {
    paramView.invalidate();
  }
  
  public void d(View paramView, float paramFloat) {}
  
  public int e(View paramView)
  {
    return 0;
  }
  
  public float f(View paramView)
  {
    return 1.0F;
  }
  
  public int g(View paramView)
  {
    return 0;
  }
  
  public int h(View paramView)
  {
    return 0;
  }
  
  public ViewParent i(View paramView)
  {
    return paramView.getParent();
  }
  
  public boolean j(View paramView)
  {
    boolean bool2 = false;
    paramView = paramView.getBackground();
    boolean bool1 = bool2;
    if (paramView != null)
    {
      bool1 = bool2;
      if (paramView.getOpacity() == -1) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean k(View paramView)
  {
    return true;
  }
  
  public float l(View paramView)
  {
    return 0.0F;
  }
  
  public float m(View paramView)
  {
    return 0.0F;
  }
  
  public int n(View paramView)
  {
    return bw.a(paramView);
  }
  
  public int o(View paramView)
  {
    return bw.b(paramView);
  }
  
  public dc p(View paramView)
  {
    return new dc(paramView);
  }
  
  public float q(View paramView)
  {
    return 0.0F;
  }
  
  public boolean r(View paramView)
  {
    return false;
  }
  
  public void s(View paramView) {}
  
  public void t(View paramView)
  {
    if ((paramView instanceof az)) {
      ((az)paramView).stopNestedScroll();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\bj.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */