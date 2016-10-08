package android.support.v7.internal.widget;

import android.database.DataSetObserver;
import android.widget.PopupWindow;

final class x
  extends DataSetObserver
{
  private x(ListPopupWindow paramListPopupWindow) {}
  
  public final void onChanged()
  {
    if (this.a.a.isShowing()) {
      this.a.b();
    }
  }
  
  public final void onInvalidated()
  {
    this.a.c();
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\x.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */