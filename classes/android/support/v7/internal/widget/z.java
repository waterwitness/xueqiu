package android.support.v7.internal.widget;

import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.PopupWindow;

final class z
  implements View.OnTouchListener
{
  private z(ListPopupWindow paramListPopupWindow) {}
  
  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    int j = (int)paramMotionEvent.getX();
    int k = (int)paramMotionEvent.getY();
    if ((i == 0) && (ListPopupWindow.b(this.a) != null) && (ListPopupWindow.b(this.a).isShowing()) && (j >= 0) && (j < ListPopupWindow.b(this.a).getWidth()) && (k >= 0) && (k < ListPopupWindow.b(this.a).getHeight())) {
      ListPopupWindow.d(this.a).postDelayed(ListPopupWindow.c(this.a), 250L);
    }
    for (;;)
    {
      return false;
      if (i == 1) {
        ListPopupWindow.d(this.a).removeCallbacks(ListPopupWindow.c(this.a));
      }
    }
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v7\internal\widget\z.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */