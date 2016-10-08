package android.support.v4.view;

import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.view.View;

class bm
  extends bl
{
  final long a()
  {
    return ValueAnimator.getFrameDelay();
  }
  
  public final void a(View paramView, float paramFloat)
  {
    paramView.setTranslationX(paramFloat);
  }
  
  public final void a(View paramView, int paramInt, Paint paramPaint)
  {
    paramView.setLayerType(paramInt, paramPaint);
  }
  
  public void a(View paramView, Paint paramPaint)
  {
    paramView.setLayerType(paramView.getLayerType(), paramPaint);
    paramView.invalidate();
  }
  
  public final void b(View paramView, float paramFloat)
  {
    paramView.setTranslationY(paramFloat);
  }
  
  public final void c(View paramView, float paramFloat)
  {
    paramView.setAlpha(paramFloat);
  }
  
  public final float f(View paramView)
  {
    return paramView.getAlpha();
  }
  
  public final int g(View paramView)
  {
    return paramView.getLayerType();
  }
  
  public final float l(View paramView)
  {
    return paramView.getTranslationX();
  }
  
  public final float m(View paramView)
  {
    return paramView.getTranslationY();
  }
  
  public final void s(View paramView)
  {
    paramView.setSaveFromParentEnabled(false);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\bm.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */