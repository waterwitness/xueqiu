package se.emilsjolander.stickylistheaders;

import android.content.Context;
import android.widget.Checkable;

final class c
  extends t
  implements Checkable
{
  public c(Context paramContext)
  {
    super(paramContext);
  }
  
  public final boolean isChecked()
  {
    return ((Checkable)this.a).isChecked();
  }
  
  public final void setChecked(boolean paramBoolean)
  {
    ((Checkable)this.a).setChecked(paramBoolean);
  }
  
  public final void toggle()
  {
    if (!isChecked()) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\se\emilsjolander\stickylistheaders\c.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */