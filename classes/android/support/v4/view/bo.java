package android.support.v4.view;

import android.support.annotation.Nullable;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import java.lang.reflect.Field;
import java.util.WeakHashMap;

class bo
  extends bm
{
  static Field b;
  static boolean c = false;
  
  public final void a(View paramView, @Nullable a parama)
  {
    if (parama == null) {}
    for (parama = null;; parama = parama.a)
    {
      paramView.setAccessibilityDelegate((View.AccessibilityDelegate)parama);
      return;
    }
  }
  
  public final boolean a(View paramView, int paramInt)
  {
    return paramView.canScrollHorizontally(paramInt);
  }
  
  public final boolean b(View paramView)
  {
    if (c) {}
    for (;;)
    {
      return false;
      if (b == null) {}
      try
      {
        Field localField = View.class.getDeclaredField("mAccessibilityDelegate");
        b = localField;
        localField.setAccessible(true);
      }
      catch (Throwable paramView)
      {
        try
        {
          paramView = b.get(paramView);
          if (paramView == null) {
            continue;
          }
          return true;
        }
        catch (Throwable paramView)
        {
          c = true;
        }
        paramView = paramView;
        c = true;
        return false;
      }
    }
    return false;
  }
  
  public final boolean b(View paramView, int paramInt)
  {
    return paramView.canScrollVertically(paramInt);
  }
  
  public final dc p(View paramView)
  {
    if (this.a == null) {
      this.a = new WeakHashMap();
    }
    dc localdc2 = (dc)this.a.get(paramView);
    dc localdc1 = localdc2;
    if (localdc2 == null)
    {
      localdc1 = new dc(paramView);
      this.a.put(paramView, localdc1);
    }
    return localdc1;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\bo.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */