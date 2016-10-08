package android.support.v7.internal.view.menu;

import android.support.v7.c.b;
import android.view.CollapsibleActionView;
import android.view.View;
import android.widget.FrameLayout;

final class w
  extends FrameLayout
  implements CollapsibleActionView
{
  final b a;
  
  w(View paramView)
  {
    super(paramView.getContext());
    this.a = ((b)paramView);
    addView(paramView);
  }
  
  public final void onActionViewCollapsed()
  {
    this.a.b();
  }
  
  public final void onActionViewExpanded()
  {
    this.a.a();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\w.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */