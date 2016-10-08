package com.emilsjolander.components.stickylistheaders;

import android.content.Context;
import android.widget.Checkable;

class CheckableWrapperView
  extends WrapperView
  implements Checkable
{
  public CheckableWrapperView(Context paramContext)
  {
    super(paramContext);
  }
  
  public boolean isChecked()
  {
    return ((Checkable)this.mItem).isChecked();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    ((Checkable)this.mItem).setChecked(paramBoolean);
  }
  
  public void toggle()
  {
    if (!isChecked()) {}
    for (boolean bool = true;; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\com\emilsjolander\components\stickylistheaders\CheckableWrapperView.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */