package android.support.v4.view;

import android.view.View;
import java.util.WeakHashMap;

class dd
  implements dl
{
  WeakHashMap<View, Runnable> a = null;
  
  private void d(dc paramdc, View paramView)
  {
    Runnable localRunnable = null;
    if (this.a != null) {
      localRunnable = (Runnable)this.a.get(paramView);
    }
    Object localObject = localRunnable;
    if (localRunnable == null)
    {
      localObject = new de(this, paramdc, paramView, (byte)0);
      if (this.a == null) {
        this.a = new WeakHashMap();
      }
      this.a.put(paramView, localObject);
    }
    paramView.removeCallbacks((Runnable)localObject);
    paramView.post((Runnable)localObject);
  }
  
  public void a(dc paramdc, View paramView)
  {
    d(paramdc, paramView);
  }
  
  public void a(dc paramdc, View paramView, float paramFloat)
  {
    d(paramdc, paramView);
  }
  
  public void a(dc paramdc, View paramView, do paramdo)
  {
    paramView.setTag(2113929216, paramdo);
  }
  
  public void a(View paramView, long paramLong) {}
  
  public void b(dc paramdc, View paramView)
  {
    if (this.a != null)
    {
      Runnable localRunnable = (Runnable)this.a.get(paramView);
      if (localRunnable != null) {
        paramView.removeCallbacks(localRunnable);
      }
    }
    c(paramdc, paramView);
  }
  
  public void b(dc paramdc, View paramView, float paramFloat)
  {
    d(paramdc, paramView);
  }
  
  final void c(dc paramdc, View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof do)) {}
    for (localObject = (do)localObject;; localObject = null)
    {
      Runnable localRunnable = dc.a(paramdc);
      paramdc = dc.b(paramdc);
      if (localRunnable != null) {
        localRunnable.run();
      }
      if (localObject != null)
      {
        ((do)localObject).a(paramView);
        ((do)localObject).b(paramView);
      }
      if (paramdc != null) {
        paramdc.run();
      }
      if (this.a != null) {
        this.a.remove(paramView);
      }
      return;
    }
  }
  
  public void c(dc paramdc, View paramView, float paramFloat)
  {
    d(paramdc, paramView);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\dd.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */