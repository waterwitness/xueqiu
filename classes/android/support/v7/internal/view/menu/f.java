package android.support.v7.internal.view.menu;

import android.content.Context;
import android.widget.ImageButton;

final class f
  extends ImageButton
  implements i
{
  public f(c paramc, Context paramContext)
  {
    super(paramContext, null, android.support.v7.b.c.actionOverflowButtonStyle);
    setClickable(true);
    setFocusable(true);
    setVisibility(0);
    setEnabled(true);
  }
  
  public final boolean c()
  {
    return false;
  }
  
  public final boolean d()
  {
    return false;
  }
  
  public final boolean performClick()
  {
    if (super.performClick()) {
      return true;
    }
    playSoundEffect(0);
    this.a.c();
    return true;
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\view\menu\f.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */