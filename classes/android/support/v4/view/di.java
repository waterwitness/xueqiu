package android.support.v4.view;

import android.view.View;
import android.view.ViewPropertyAnimator;

class di
  extends df
{
  public final void a(dc paramdc, View paramView, do paramdo)
  {
    if (paramdo != null)
    {
      paramView.animate().setListener(new dn.1(paramdo, paramView));
      return;
    }
    paramView.animate().setListener(null);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\di.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */