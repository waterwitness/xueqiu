package android.support.v4.view;

import android.view.View;
import java.lang.ref.WeakReference;

final class de
  implements Runnable
{
  WeakReference<View> a;
  dc b;
  
  private de(dd paramdd, dc paramdc, View paramView)
  {
    this.a = new WeakReference(paramView);
    this.b = paramdc;
  }
  
  public final void run()
  {
    View localView = (View)this.a.get();
    if (localView != null) {
      this.c.c(this.b, localView);
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\de.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */