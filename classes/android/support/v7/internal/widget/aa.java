package android.support.v7.internal.widget;

import android.widget.PopupWindow;

final class aa
  implements Runnable
{
  private aa(ListPopupWindow paramListPopupWindow) {}
  
  public final void run()
  {
    if ((ListPopupWindow.a(this.a) != null) && (ListPopupWindow.a(this.a).getCount() > ListPopupWindow.a(this.a).getChildCount()) && (ListPopupWindow.a(this.a).getChildCount() <= this.a.e))
    {
      ListPopupWindow.b(this.a).setInputMethodMode(2);
      this.a.b();
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\aa.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */