package android.support.v4.view;

import android.view.View;
import android.view.ViewPropertyAnimator;
import java.util.WeakHashMap;

class df
  extends dd
{
  WeakHashMap<View, Integer> b = null;
  
  public final void a(dc paramdc, View paramView)
  {
    paramView.animate().cancel();
  }
  
  public final void a(dc paramdc, View paramView, float paramFloat)
  {
    paramView.animate().alpha(paramFloat);
  }
  
  public void a(dc paramdc, View paramView, do paramdo)
  {
    paramView.setTag(2113929216, paramdo);
    paramdc = new dg(paramdc);
    paramView.animate().setListener(new dm.1(paramdc, paramView));
  }
  
  public final void a(View paramView, long paramLong)
  {
    paramView.animate().setDuration(paramLong);
  }
  
  public final void b(dc paramdc, View paramView)
  {
    paramView.animate().start();
  }
  
  public final void b(dc paramdc, View paramView, float paramFloat)
  {
    paramView.animate().translationX(paramFloat);
  }
  
  public final void c(dc paramdc, View paramView, float paramFloat)
  {
    paramView.animate().translationY(paramFloat);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\df.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */