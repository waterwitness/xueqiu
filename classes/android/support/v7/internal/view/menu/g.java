package android.support.v7.internal.view.menu;

import android.content.Context;
import android.view.View;

final class g
  extends ab
{
  public g(c paramc, Context paramContext, p paramp, View paramView)
  {
    super(paramContext, paramp, paramView, true);
    this.c = paramc.f;
  }
  
  public final void onDismiss()
  {
    super.onDismiss();
    this.a.j.close();
    this.a.c = null;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\g.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */