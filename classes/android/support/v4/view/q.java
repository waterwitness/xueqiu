package android.support.v4.view;

import android.content.Context;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;

final class q
  implements n
{
  private final GestureDetector a;
  
  public q(Context paramContext, GestureDetector.OnGestureListener paramOnGestureListener)
  {
    this.a = new GestureDetector(paramContext, paramOnGestureListener, null);
  }
  
  public final boolean a(MotionEvent paramMotionEvent)
  {
    return this.a.onTouchEvent(paramMotionEvent);
  }
}


/* Location:              E:\apk\xueqiu2\classes-dex2jar.jar!\android\support\v4\view\q.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */